import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/widgets/app_bar_screens.dart';
import 'package:alhayik/features/employee/item/cart/payment_method/ui/widgets/first_row_location.dart';
import 'package:alhayik/features/employee/item/cart/payment_method/ui/widgets/total_subtotal_button_checkout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int _selectedMethod = 1; // Default selected method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBaScreens(
                showicons: false,
                txt: 'Payment Method',
                showBackButton: true,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: const Divider(
                  color: MyColor.lightgrey,
                  thickness: 1.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Payment Method',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      'You Will review your order before payment',
                      style: TextStyle(
                        color: MyColor.midgrey,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    const FirstRowLocation()
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildPaymentOption(
                          1, 'Credit/ Debit Card', Icons.wallet),
                      _buildPaymentOption(
                          2, 'Online Wallet ', Icons.account_balance_wallet),
                      _buildPaymentOption(3, 'Cash on delivery', Icons.money),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.h),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TotalSubtotalButtonCheckout(),
              ),
               SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }

  // Widget to build each payment method option
  Widget _buildPaymentOption(int value, String title, IconData icon) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: MyColor.lightgrey,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.black,
                    size: 20.sp,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Radio<int>(
                value: value,
                groupValue: _selectedMethod,
                onChanged: (int? newValue) {
                  setState(() {
                    _selectedMethod = newValue!;
                  });
                },
                activeColor: MyColor.primaryColor,
              ),
            ],
          ),
          // Conditionally show the TextField when Credit/Debit Card is selected
          // if (_selectedMethod == 1 && value == 1)
          //   Padding(
          //     padding: EdgeInsets.only(top: 5.h),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           "Card Number",
          //           style: TextStyle(
          //             fontSize: 12.sp,
          //             fontWeight: FontWeight.w500,
          //             color: MyColor.midgrey,
          //           ),
          //         ),
          //         SizedBox(height: 5.h),
          //         TextField(
          //           decoration: InputDecoration(
          //             suffixIcon: Icon(Icons.arrow_forward_ios_rounded,size: 18.sp,color: MyColor.primaryColor,),
          //             hintText: 'Add Credit or debit card',
          //             border: OutlineInputBorder(
          //               borderRadius: BorderRadius.circular(5),
          //             ),
          //             contentPadding: EdgeInsets.symmetric(
          //               vertical: 10.h,
          //               horizontal: 10.w,
          //             ),
          //           ),
          //           keyboardType: TextInputType.number,
          //         ),
          //       ],
          //     ),
          //   ),

        ],
      ),
    );
  }
}
