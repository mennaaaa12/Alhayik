import 'package:alhayik/core/constant/color/my_color.dart';
import 'package:alhayik/core/widgets/app_bar_screens.dart';
import 'package:alhayik/core/widgets/divder_horizontal.dart';
import 'package:alhayik/features/employee/item/cart/payment_method/payment_done/trace_order/ui/widget/custom_row_icon_and_txt_trace.dart';
import 'package:alhayik/features/employee/item/cart/payment_method/payment_done/trace_order/ui/widget/devider_vertical.dart';
import 'package:alhayik/features/employee/item/cart/payment_method/payment_done/trace_order/ui/widget/item_details.dart';
import 'package:alhayik/features/employee/item/cart/payment_method/payment_done/trace_order/ui/widget/order_details_after_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TraceOrder extends StatelessWidget {
  const TraceOrder({super.key});

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
                txt: 'Track Order',
                showBackButton: true,
              ),
              const DivderHorizontal(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const OrderDetailsAfterContainer(),
                    const DivderHorizontal(),
                    SizedBox(
                      height: 10.h,
                    ),
                    const ItemDetails(),
                    SizedBox(
                      height: 30.h,
                    ),
                    const CustomRowIconAndTxtTrace(
                      icon: FontAwesomeIcons.bagShopping,
                      txt1: 'Order Placed',
                      txt2: 'Mon 07,2024 | 07:75 pm',
                    ),
                    const DeviderVertical(),
                     const CustomRowIconAndTxtTrace(
                      icon: FontAwesomeIcons.solidMessage,
                      txt1: 'Waiting o be shipped',
                      txt2: 'Mon 10,2024 | 07:75 pm',
                    ),
                    const DeviderVertical(),
                     const CustomRowIconAndTxtTrace(
                      icon: FontAwesomeIcons.truckFast,
                      txt1: 'Order In Transit',
                      txt2: 'Mon 11,2024 | 07:75 pm',
                    ),
                    const DeviderVertical(
                      color: MyColor.midgrey,
                    ),
                     const CustomRowIconAndTxtTrace(
                      icon: Icons.thumb_up_alt_outlined,
                      txt1: 'Out Of Delivery',
                      txt2: 'Reached at Egypt',
                       color: MyColor.midgrey,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
