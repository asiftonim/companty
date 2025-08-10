import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/constans/colors.dart';
import '../../../../routs/app_routs.dart';
class AcountApproved extends StatelessWidget {
  const AcountApproved({super.key});

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
        title: Text("Account Approved",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 200,),
                SvgPicture.asset('assets/image/Group2.svg'),
                SizedBox(height: 11,),
                Text("Congratulation",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),SizedBox(height: 12,),
                Text("ou're now a Verified Cleaner on our platform! We're\nthrilled to welcome you to our sparkling community!🧹\n✨ Get ready to shine and make spaces spotless.",style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),),SizedBox(height: 240,),
                GestureDetector(onTap: (){
                  Get.toNamed(AppRoutes.SetUpYourProfile);
                },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: UColors.primaryColor
                      ),child: Center(child: Text("login",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
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
      ),

    );
  }
}
