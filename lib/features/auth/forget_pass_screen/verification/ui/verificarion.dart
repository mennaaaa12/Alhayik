import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/features/auth/sign_in/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  final List<TextEditingController> _controllers = List.generate(4, (index) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());

  Color _getFieldColor(String value) {
    return RegExp(r'^[0-9]$').hasMatch(value) ? Colors.orange : MyColor.midgrey; 
  }

  void _onChanged(String value, int index) {
    if (value.length == 1) {
      if (index < 3) {
        FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
      }
    } else if (value.isEmpty) {
      if (index > 0) {
        FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
      }
    }
    setState(() {}); 
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Text(
                  'Verification',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 9.h),
                Text(
                  maxLines: 2,
                  'Please type the verification code.',
                  style: TextStyle(
                    color: MyColor.midgrey,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4, (index) {
                    return Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: index < 3 ? 10.w : 0), 
                        child: TextField(
                          controller: _controllers[index],
                          focusNode: _focusNodes[index],
                          onChanged: (value) => _onChanged(value, index), 
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: _getFieldColor(_controllers[index].text)), 
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: _getFieldColor(_controllers[index].text)),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: _getFieldColor(_controllers[index].text)), 
                            ),
                            counterText: '',
                          ),
                          style: const TextStyle(
                            color: Colors.black, 
                          ),
                          keyboardType: TextInputType.number, 
                          textAlign: TextAlign.center,
                          maxLength: 1, 
                        ),
                      ),
                    );
                  })),
                SizedBox(height: 60.h),
                CustomButton(
                  onPressed: () {
                  _showSendDoneDialog();
                  },
                  txt: 'Send',
                ),
                SizedBox(height: 60.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _showSendDoneDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle, // Success icon
                color: MyColor.primaryColor, 
                size: 24, // Size of the icon
              ),
              SizedBox(width: 8), // Space between icon and text
              Text('Success'), // Title text
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('OK', style: TextStyle(color: MyColor.primaryColor)),
            ),
          ],
        );
      },
    );
  }
}
