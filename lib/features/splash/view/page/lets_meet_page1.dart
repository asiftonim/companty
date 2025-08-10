import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../core/constans/colors.dart';
import '../../../../core/constans/custom_textfield.dart';
import '../../../../routs/app_routs.dart';
class LetsMeetPage1 extends StatelessWidget {
  const LetsMeetPage1({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstNameController = TextEditingController();
    final TextEditingController lastNameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    final TextEditingController dobController = TextEditingController();
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
        title: Text("Let's Meet",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16.0,color:Colors.black), // Default style
                      children: [
                        TextSpan(text: 'First Name', style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(text: '*', style: TextStyle(fontWeight: FontWeight.w500, color:UColors.primaryColor )),
                      ],
                    ),
                  ),
                ],
              ),SizedBox(height: 10,),
              CustomTextFormField(
                hintText: 'Enter First Name',
                controller: firstNameController,
                obscureText: false,
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16.0,color:Colors.black), // Default style
                      children: [
                        TextSpan(text: 'Last Name', style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(text: '*', style: TextStyle(fontWeight: FontWeight.w500, color:UColors.primaryColor )),
                      ],
                    ),
                  ),
                ],
              ),SizedBox(height: 10,),
              CustomTextFormField(
                hintText: 'Enter Last Name',
                controller:lastNameController,
                obscureText: false,
              ),SizedBox(height: 10,),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16.0,color:Colors.black), // Default style
                      children: [
                        TextSpan(text: 'Email', style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(text: '*', style: TextStyle(fontWeight: FontWeight.w500, color:UColors.primaryColor )),
                      ],
                    ),
                  ),
                ],
              ),SizedBox(height: 10,),
              CustomTextFormField(
                hintText: 'Enter Your Email',
                controller: emailController,
                obscureText: false,
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16.0,color:Colors.black), // Default style
                      children: [
                        TextSpan(text: 'password', style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(text: '*', style: TextStyle(fontWeight: FontWeight.w500, color:UColors.primaryColor )),
                      ],
                    ),
                  ),
                ],
              ),SizedBox(height: 10,),
              CustomTextFormField(
                hintText: 'Enter Your Password',
                controller: passwordController,
                obscureText: true,
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16.0,color:Colors.black), // Default style
                      children: [
                        TextSpan(text: 'Phone Number', style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(text: '*', style: TextStyle(fontWeight: FontWeight.w500, color:UColors.primaryColor )),
                      ],
                    ),
                  ),
                ],
              ),SizedBox(height: 10,),
              CustomTextFormField(
                hintText: 'Enter Your Phone Number',
                controller: phoneController,
                keyboardType: TextInputType.number,
                obscureText: false,
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16.0,color:Colors.black), // Default style
                      children: [
                        TextSpan(text: 'Address', style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(text: '*', style: TextStyle(fontWeight: FontWeight.w500, color:UColors.primaryColor )),
                      ],
                    ),
                  ),
                ],
              ),SizedBox(height: 10,),
              CustomTextFormField(
                hintText: 'Enter Your Address',
                controller: addressController,
                obscureText: false,
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16.0,color:Colors.black), // Default style
                      children: [
                        TextSpan(text: 'Date Of Birth', style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(text: '*', style: TextStyle(fontWeight: FontWeight.w500, color:UColors.primaryColor )),
                      ],
                    ),
                  ),
                ],
              ),SizedBox(height: 10,),
              CustomTextFormField(
                hintText: 'Enter your date of birth',
                controller: dobController,
                obscureText: false,
                isDatePicker: true,
              ),SizedBox(height: 40,),
              GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoutes.letsMeetPage2);
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
    );
  }
}
