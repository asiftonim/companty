import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../core/constans/colors.dart';
import '../../controller/splash_controller.dart';
class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 142),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Company',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                      letterSpacing: -0.96,
                      color: UColors.primaryColor,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Name',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                      letterSpacing: -0.96,
                      color: UColors.secondaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              SvgPicture.asset('assets/image/Layer_2.svg'),
              const SizedBox(height: 142),
              const SpinKitCircle(
                  color: Color(0xFF4FD1C5)),
            ],
          ),
        ),
      ),
    );
  }
}

