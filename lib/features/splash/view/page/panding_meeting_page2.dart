import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/constans/colors.dart';
import '../../../../routs/app_routs.dart';
import '../../controller/lets_meet_page2_controller.dart';
class PandingMeetingPage2 extends StatelessWidget {
   PandingMeetingPage2({super.key});

  final DateController controller = Get.find<DateController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UColors.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        leading: SizedBox(
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        color:Color(0x2F353314)
                    ),
                    color: Colors.white
                ),
                child: Center(child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Icon(Icons.arrow_back_ios,size: 15,),
                ))),
          ),
        ),
        backgroundColor: UColors.backgroundColor,
        title: Text("Pending Meeting",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Obx(() {
          String dateText = controller.selectedDate.value != null
              ? controller.selectedDate.value!.toLocal().toString().split(' ')[0]
              : "No date selected";

          String timeText = controller.selectedTimeText.value ?? "No time selected";

          return Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 127,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icon/Frame.svg'),
                        SizedBox(width: 5,),
                        Text("$dateText", style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: UColors.primaryColor,
                        )),
                        SizedBox(width: 5,),
                        Text("$timeText", style: const TextStyle(fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: UColors.primaryColor,)),
                      ],
                    ),SizedBox(height: 10),
                    Text("Wait For Your Meeting Date & Time",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15
                      ),
                    ),
                    SizedBox(height: 13.47,),
                    SvgPicture.asset('assets/image/Group1.svg'),
                    SizedBox(height: 14,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                
                      ),child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("https://dlsfkgdiug",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                          SvgPicture.asset('assets/icon/Frame1.svg'),
                        ],
                      ),
                    ),
                    ),
                    SizedBox(height: 127,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 44),
                      child: GestureDetector(onTap: (){
                        Get.toNamed(AppRoutes.AcountApproved);
                      },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 56,
                          decoration: BoxDecoration(
                              color: UColors.primaryColor,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(child: Text("Join Meeting",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 16,
                                color: Colors.white
                            ),
                          )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

