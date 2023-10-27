// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const SIGNUP = _Paths.SIGNUP;
  static const LOGIN = _Paths.LOGIN;
  static const ROUTES = _Paths.ROUTES;
  static const FORGOT_PASSWORD = _Paths.FORGOT_PASSWORD;
  static const VISUAL_SEARCH = _Paths.VISUAL_SEARCH;
  static const VISUAL_SEARCH_TAKING_PHOTO = _Paths.VISUAL_SEARCH_TAKING_PHOTO;
  static const VISUAL_SEARCH_CROP_ITEM = _Paths.VISUAL_SEARCH_CROP_ITEM;
  static const VISUAL_SEARCH_FINDING = _Paths.VISUAL_SEARCH_FINDING;
  // static const VISUAL_SEARCH_FINDING = _Paths.VISUAL_SEARCH_FINDING;
  static const MAINPAGE_1 = _Paths.MAINPAGE_1;
  static const TEMP_WIDGETS = _Paths.TEMP_WIDGETS;
  static const MAIN2 = _Paths.MAIN2;
  static const MAIN3 = _Paths.MAIN3;
  static const CATATORIES = _Paths.CATATORIES;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const SIGNUP = '/signup';
  static const LOGIN = '/login';
  static const ROUTES = '/routes';
  static const FORGOT_PASSWORD = '/forgot-password';
  static const VISUAL_SEARCH = '/visual-search';
  static const VISUAL_SEARCH_TAKING_PHOTO = '/visual-search-taking-photo';
  static const VISUAL_SEARCH_CROP_ITEM = '/visual-search-crop-item';
  static const VISUAL_SEARCH_FINDING = '/visual-search-finding';
  // static const VISUAL_SEARCH_FINDING = '/visual-search-finding';
  static const MAINPAGE_1 = '/mainpage-1';
  static const TEMP_WIDGETS = '/temp-widgets';
  static const MAIN2 = '/main2';
  static const MAIN3 = '/main3';
  static const CATATORIES = '/catatories';
}
