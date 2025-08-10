import 'package:company/features/splash/view/page/LetsMeetPage2.dart';
import 'package:get/get.dart';
import '../features/splash/view/page/acount_approved.dart';
import '../features/splash/view/page/lets_meet_page1.dart';
import '../features/splash/view/page/panding_meeting_page2.dart';
import '../features/splash/view/page/pending_meeting.dart';
import '../features/splash/view/page/set_up_your_profile.dart';
import '../features/splash/view/page/splash_screen.dart';
import '../features/splash/view/page/select_role_screen.dart';
import 'app_routs.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: AppRoutes.selectRole,
      page: () => const SelectRoleScreen(),
    ),
    GetPage(
      name: AppRoutes.letsMeetPage1,  // Add the GetPage for LetsMeetPage1
      page: () => const LetsMeetPage1(),
    ),
    GetPage(
      name: AppRoutes.letsMeetPage2,  // Add the GetPage for LetsMeetPage1
      page: () =>  LetsMeetPage2(),
    ),
    GetPage(
      name: AppRoutes.PendingMeeting,  // Add the GetPage for LetsMeetPage1
      page: () =>  PendingMeeting (),
    ),
    GetPage(
      name: AppRoutes.PandingMeetingPage2,  // Add the GetPage for LetsMeetPage1
      page: () =>  PandingMeetingPage2 (),
    ),
    GetPage(
      name: AppRoutes.AcountApproved,  // Add the GetPage for LetsMeetPage1
      page: () =>  AcountApproved(),
    ),
    GetPage(
      name: AppRoutes.SetUpYourProfile,  // Add the GetPage for LetsMeetPage1
      page: () => SetUpYourProfile (),
    ),

  ];
}
