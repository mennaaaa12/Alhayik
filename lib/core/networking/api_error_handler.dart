import 'package:alhayik/core/networking/api_constant.dart';
import 'package:dio/dio.dart';

import 'api_error_model.dart';



enum DataSource {
  nOCONTENT,
  bADREQUEST,
  fORBIDDEN,
  uNAUTORISED,
  nOTFOUND,
  iNTERNALSERVERERROR,
  cONNECTTIMEOUT,
  cANCEL,
  rECIEVETIMEOUT,
  sENDTIMEOUT,
  cACHEERROR,
  nOINTERNETCONNECTION,
  // API_LOGIC_ERROR,
  dEFAULT
}

class ResponseCode {
  static const int sUCCESS = 200; // success with data
  static const int nOCONTENT = 201; // success with no data (no content)
  static const int bADREQUEST = 400; // failure, API rejected request
  static const int uNAUTORISED = 401; // failure, user is not authorised
  static const int fORBIDDEN = 403; //  failure, API rejected request
  static const int iNTERNALSERVERERROR = 500; // failure, crash in server side
  static const int nOTFOUND = 404; // failure, not found
  static const int aPILOGICERROR = 422; // API , lOGIC ERROR

  // local status code
  static const int cONNECTTIMEOUT = -1;
  static const int cANCEL = -2;
  static const int rECIEVETIMEOUT = -3;
  static const int sENDTIMEOUT = -4;
  static const int cACHEERROR = -5;
  static const int nOINTERNETCONNECTION = -6;
  static const int dEFAULT = -7;
}

class ResponseMessage {
  static const String nOCONTENT =
      ApiErrors.noContent; // success with no data (no content)
  static const String bADREQUEST =
      ApiErrors.badRequestError; // failure, API rejected request
  static const String uNAUTORISED =
      ApiErrors.unauthorizedError; // failure, user is not authorised
  static const String fORBIDDEN =
      ApiErrors.forbiddenError; //  failure, API rejected request
  static const String iNTERNALSERVERERROR =
      ApiErrors.internalServerError; // failure, crash in server side
  static const String nOTFOUND =
      ApiErrors.notFoundError; // failure, crash in server side

  // local status code
  static String cONNECTTIMEOUT = ApiErrors.timeoutError;
  static String cANCEL = ApiErrors.defaultError;
  static String rECIEVETIMEOUT = ApiErrors.timeoutError;
  static String sENDTIMEOUT = ApiErrors.timeoutError;
  static String cACHEERROR = ApiErrors.cacheError;
  static String nOINTERNETCONNECTION = ApiErrors.noInternetError;
  static String dEFAULT = ApiErrors.defaultError;
}

extension DataSourceExtension on DataSource {
  ApiErrorModel getFailure() {
    switch (this) {
      case DataSource.nOCONTENT:
        return ApiErrorModel(
            code: ResponseCode.nOCONTENT, message: ResponseMessage.nOCONTENT);
      case DataSource.bADREQUEST:
        return ApiErrorModel(
            code: ResponseCode.bADREQUEST,
            message: ResponseMessage.bADREQUEST);
      case DataSource.fORBIDDEN:
        return ApiErrorModel(
            code: ResponseCode.fORBIDDEN, message: ResponseMessage.fORBIDDEN);
      case DataSource.uNAUTORISED:
        return ApiErrorModel(
            code: ResponseCode.uNAUTORISED,
            message: ResponseMessage.uNAUTORISED);
      case DataSource.nOTFOUND:
        return ApiErrorModel(
            code: ResponseCode.nOTFOUND, message: ResponseMessage.nOTFOUND);
      case DataSource.iNTERNALSERVERERROR:
        return ApiErrorModel(
            code: ResponseCode.iNTERNALSERVERERROR,
            message: ResponseMessage.iNTERNALSERVERERROR);
      case DataSource.cONNECTTIMEOUT:
        return ApiErrorModel(
            code: ResponseCode.cONNECTTIMEOUT,
            message: ResponseMessage.cONNECTTIMEOUT);
      case DataSource.cANCEL:
        return ApiErrorModel(
            code: ResponseCode.cANCEL, message: ResponseMessage.cANCEL);
      case DataSource.rECIEVETIMEOUT:
        return ApiErrorModel(
            code: ResponseCode.rECIEVETIMEOUT,
            message: ResponseMessage.rECIEVETIMEOUT);
      case DataSource.sENDTIMEOUT:
        return ApiErrorModel(
            code: ResponseCode.sENDTIMEOUT,
            message: ResponseMessage.sENDTIMEOUT);
      case DataSource.cACHEERROR:
        return ApiErrorModel(
            code: ResponseCode.cACHEERROR,
            message: ResponseMessage.cACHEERROR);
      case DataSource.nOINTERNETCONNECTION:
        return ApiErrorModel(
            code: ResponseCode.nOINTERNETCONNECTION,
            message: ResponseMessage.nOINTERNETCONNECTION);
      case DataSource.dEFAULT:
        return ApiErrorModel(
            code: ResponseCode.dEFAULT, message: ResponseMessage.dEFAULT);
    }
  }
}

class ErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      // dio error so its an error from response of the API or from dio itself
      apiErrorModel = _handleError(error);
    } else {
      // default error
      apiErrorModel = DataSource.dEFAULT.getFailure();
    }
  }
}

ApiErrorModel _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.cONNECTTIMEOUT.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.sENDTIMEOUT.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.rECIEVETIMEOUT.getFailure();
    case DioExceptionType.badResponse:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return ApiErrorModel.fromJson(error.response!.data);
      } else {
        return DataSource.dEFAULT.getFailure();
      }
    case DioExceptionType.unknown:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return ApiErrorModel.fromJson(error.response!.data);
      } else {
        return DataSource.dEFAULT.getFailure();
      }
    case DioExceptionType.cancel:
      return DataSource.cANCEL.getFailure();
    case DioExceptionType.connectionError:
      return DataSource.dEFAULT.getFailure();
    case DioExceptionType.badCertificate:
      return DataSource.dEFAULT.getFailure();
    case DioExceptionType.badResponse:
      return DataSource.dEFAULT.getFailure();
  }
}

class ApiInternalStatus {
  static const int sUCCESS = 0;
  static const int fAILURE = 1;
}