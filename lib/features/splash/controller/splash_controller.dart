import 'package:get/get.dart';
import '../../../routs/app_routs.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(AppRoutes.selectRole);
    });
  }
}
