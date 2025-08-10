import 'package:flutter/material.dart';
import '../../../../core/constans/colors.dart';
import '../../../../core/constans/custom_textfield.dart';
class SetUpYourProfile extends StatelessWidget {
  const SetUpYourProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController paymentController = TextEditingController();
    final TextEditingController experienceController = TextEditingController();
    final TextEditingController AboutController = TextEditingController();
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
        title: Text("Set Up Your Profile",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),

          child: Column(
            children: [
              SizedBox(height:10,),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16.0,color:Colors.black), // Default style
                      children: [
                        TextSpan(text: 'Payment Type', style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(text: '*', style: TextStyle(fontWeight: FontWeight.w500, color:UColors.primaryColor )),
                      ],
                    ),
                  ),
                ],
              ),SizedBox(height:10,),
              CustomTextFormField(
                hintText: 'Monthly',
                controller: paymentController,
                obscureText: false,
              ),SizedBox(height:10,),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16.0,color:Colors.black), // Default style
                      children: [
                        TextSpan(text: 'Experience', style: TextStyle(fontWeight: FontWeight.w500)),
                        TextSpan(text: '*', style: TextStyle(fontWeight: FontWeight.w500, color:UColors.primaryColor )),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height:10,),
              CustomTextFormField(
                hintText: 'Enter Experience',
                controller:experienceController,
                obscureText: false,
              )

            ],
          ),
        ),
      ),
    );
  }
}
