import 'package:get/get.dart';

import '../modules/no12_catagories2/bindings/catagories2_binding.dart';
import '../modules/no12_catagories2/views/catagories2_view.dart';
import '../modules/no13_catalog1/bindings/catalog1_binding.dart';
import '../modules/no13_catalog1/views/catalog1_view.dart';
import '../modules/no14_catalog2/bindings/catalog2_binding.dart';
import '../modules/no14_catalog2/views/catalog2_view.dart';
import '../modules/no11_catatories/bindings/catatories_binding.dart';
import '../modules/no11_catatories/views/catatories_view.dart';
import '../modules/no3_forgot_password/bindings/forgot_password_binding.dart';
import '../modules/no3_forgot_password/views/forgot_password_view.dart';

import '../modules/no2_login/bindings/login_binding.dart';
import '../modules/no2_login/views/login_view.dart';
import '../modules/no9_main2/bindings/main2_binding.dart';
import '../modules/no9_main2/views/main2_view.dart';
import '../modules/no10_main3/bindings/main3_binding.dart';
import '../modules/no10_main3/views/main3_view.dart';
import '../modules/no8_mainpage_1/bindings/mainpage_1_binding.dart';
import '../modules/no8_mainpage_1/views/mainpage_1_view.dart';
import '../modules/no16_filters/bindings/no16_filters_binding.dart';
import '../modules/no16_filters/views/no16_filters_view.dart';
import '../modules/no17_filter_list/bindings/no17_filter_list_binding.dart';
import '../modules/no17_filter_list/views/no17_filter_list_view.dart';
import '../modules/no18_selectsize/bindings/no18_selectsize_binding.dart';
import '../modules/no18_selectsize/views/no18_selectsize_view.dart';
import '../modules/no19_product_card/bindings/no19_product_card_binding.dart';
import '../modules/no19_product_card/views/no19_product_card_view.dart';
import '../modules/page_index/bindings/routes_binding.dart';
import '../modules/page_index/views/routes_view.dart';
import '../modules/no15_shortby/bindings/shortby_binding.dart';
import '../modules/no15_shortby/views/shortby_view.dart';
import '../modules/no1_signup/bindings/signup_binding.dart';
import '../modules/no1_signup/views/signup_view.dart';
import '../modules/no0_temp_widgets/bindings/temp_widgets_binding.dart';
import '../modules/no0_temp_widgets/views/temp_widgets_view.dart';
import '../modules/no4_visual_search/bindings/visual_search_binding.dart';
import '../modules/no4_visual_search/views/visual_search_view.dart';
import '../modules/no6_visual_search_crop_item/bindings/visual_search_crop_item_binding.dart';
import '../modules/no6_visual_search_crop_item/views/visual_search_crop_item_view.dart';
import '../modules/no7_visual_search_finding/bindings/visual_search_finding_binding.dart';
import '../modules/no7_visual_search_finding/views/visual_search_finding_view.dart';
import '../modules/no5_visual_search_taking_photo/bindings/visual_search_taking_photo_binding.dart';
import '../modules/no5_visual_search_taking_photo/views/visual_search_taking_photo_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROUTES;

  static final routes = [
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
    GetPage(
      name: _Paths.CATAGORIES2,
      page: () => const Catagories2View(),
      binding: Catagories2Binding(),
    ),
    GetPage(
      name: _Paths.CATALOG1,
      page: () => const Catalog1View(),
      binding: Catalog1Binding(),
    ),
    GetPage(
      name: _Paths.CATALOG2,
      page: () => const Catalog2View(),
      binding: Catalog2Binding(),
    ),
    GetPage(
      name: _Paths.SHORTBY,
      page: () => const ShortbyView(),
      binding: ShortbyBinding(),
    ),
    // GetPage(
    //   name: _Paths.NO_16,
    //   page: () => const No16View(),
    //   binding: No16Binding(),
    // ),
    GetPage(
      name: _Paths.NO16_FILTERS,
      page: () => No16FiltersView(),
      binding: No16FiltersBinding(),
    ),
    GetPage(
      name: _Paths.NO17_FILTER_LIST,
      page: () => No17FilterListView(),
      binding: No17FilterListBinding(),
    ),
    GetPage(
      name: _Paths.NO18_SELECTSIZE,
      page: () => No18SelectsizeView(),
      binding: No18SelectsizeBinding(),
    ),
    GetPage(
      name: _Paths.NO19_PRODUCT_CARD,
      page: () => const No19ProductCardView(),
      binding: No19ProductCardBinding(),
    ),
  ];
}
