import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../core/constans/colors.dart';
import '../../../../routs/app_routs.dart';
class SelectRoleScreen extends StatelessWidget {
  const SelectRoleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UColors.backgroundColor,
      body: SafeArea(
          child:Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 17,),
                    SvgPicture.asset('assets/image/logo-31.svg'),
                    SizedBox(height: 12,),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 24.0,color: UColors.primaryColor), // Default style
                        children: [
                          TextSpan(text: 'Select', style: TextStyle(fontWeight: FontWeight.w600)),
                          TextSpan(text: ' Role', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
                        ],
                      ),
                    ),SizedBox(height: 15,),
                    Text("Choose Your Specific Role",
                      style: TextStyle(
                        color:  UColors.grayText,
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),SizedBox(height: 32,),
                    Container(
                      height: 88,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: UColors.container,
                        borderRadius: BorderRadius.circular(21),
                      ),child: Center(
                        child: Text("Users",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                        )),
                    ),SizedBox(height: 16),
                    Container(
                      height: 88,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xFFEAF8F0),
                        borderRadius: BorderRadius.circular(21),
                        border: Border.all(
                            width: 1,
                          color: UColors.primaryColor
                        )
                      ),child: Center(
                        child: Text("Cleaner",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                          ),
                        )),
                    ),SizedBox(height: 360),
                
                    GestureDetector(
                      onTap: (){
                        Get.toNamed(AppRoutes.letsMeetPage1);
                      },
                      child: Container(
                        height: 56,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: UColors.primaryColor,
                            borderRadius: BorderRadius.circular(15),
                        ),child: Center(
                          child: Text("Next",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),
                          )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
