import 'package:get/get.dart';

import '../modules/catatories/bindings/catatories_binding.dart';
import '../modules/catatories/views/catatories_view.dart';
import '../modules/forgot_password/bindings/forgot_password_binding.dart';
import '../modules/forgot_password/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/main2/bindings/main2_binding.dart';
import '../modules/main2/views/main2_view.dart';
import '../modules/main3/bindings/main3_binding.dart';
import '../modules/main3/views/main3_view.dart';
import '../modules/mainpage_1/bindings/mainpage_1_binding.dart';
import '../modules/mainpage_1/views/mainpage_1_view.dart';
import '../modules/routes/bindings/routes_binding.dart';
import '../modules/routes/views/routes_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/temp_widgets/bindings/temp_widgets_binding.dart';
import '../modules/temp_widgets/views/temp_widgets_view.dart';
import '../modules/visual_search/bindings/visual_search_binding.dart';
import '../modules/visual_search/views/visual_search_view.dart';
import '../modules/visual_search_crop_item/bindings/visual_search_crop_item_binding.dart';
import '../modules/visual_search_crop_item/views/visual_search_crop_item_view.dart';
import '../modules/visual_search_finding/bindings/visual_search_finding_binding.dart';
import '../modules/visual_search_finding/views/visual_search_finding_view.dart';
import '../modules/visual_search_taking_photo/bindings/visual_search_taking_photo_binding.dart';
import '../modules/visual_search_taking_photo/views/visual_search_taking_photo_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROUTES;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ROUTES,
      page: () => const RoutesView(),
      binding: RoutesBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.VISUAL_SEARCH,
      page: () => const VisualSearchView(),
      binding: VisualSearchBinding(),
    ),
    GetPage(
      name: _Paths.VISUAL_SEARCH_TAKING_PHOTO,
      page: () => const VisualSearchTakingPhotoView(),
      binding: VisualSearchTakingPhotoBinding(),
    ),
    GetPage(
      name: _Paths.VISUAL_SEARCH_CROP_ITEM,
      page: () => const VisualSearchCropItemView(),
      binding: VisualSearchCropItemBinding(),
    ),
    GetPage(
      name: _Paths.VISUAL_SEARCH_FINDING,
      page: () => const VisualSearchFindingView(),
      binding: VisualSearchFindingBinding(),
      children: [
        GetPage(
          name: _Paths.VISUAL_SEARCH_FINDING,
          page: () => const VisualSearchFindingView(),
          binding: VisualSearchFindingBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.MAINPAGE_1,
      page: () => const Mainpage1View(),
      binding: Mainpage1Binding(),
    ),
    GetPage(
      name: _Paths.TEMP_WIDGETS,
      page: () => const TempWidgetsView(),
      binding: TempWidgetsBinding(),
    ),
    GetPage(
      name: _Paths.MAIN2,
      page: () => const Main2View(),
      binding: Main2Binding(),
    ),
    GetPage(
      name: _Paths.MAIN3,
      page: () => const Main3View(),
      binding: Main3Binding(),
    ),
    GetPage(
      name: _Paths.CATATORIES,
      page: () => const CatatoriesView(),
      binding: CatatoriesBinding(),
    ),
  ];
}
