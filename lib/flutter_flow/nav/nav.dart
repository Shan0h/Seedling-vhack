import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => const SignInSignUpWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => const SignInSignUpWidget(),
        ),
        FFRoute(
          name: 'SelectFieldSoil',
          path: '/selectFieldSoil',
          builder: (context, params) => const SelectFieldSoilWidget(),
        ),
        FFRoute(
          name: 'SelectCrop',
          path: '/selectCrop',
          builder: (context, params) => const SelectCropWidget(),
        ),
        FFRoute(
          name: 'AddCrop',
          path: '/addCrop',
          builder: (context, params) => const AddCropWidget(),
        ),
        FFRoute(
          name: 'Scan1',
          path: '/scan1',
          builder: (context, params) => const Scan1Widget(),
        ),
        FFRoute(
          name: 'Scan2',
          path: '/scan2',
          builder: (context, params) => const Scan2Widget(),
        ),
        FFRoute(
          name: 'Scan3',
          path: '/scan3',
          builder: (context, params) => const Scan3Widget(),
        ),
        FFRoute(
          name: 'CropDetail',
          path: '/cropDetail',
          builder: (context, params) => const CropDetailWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'HomePage')
              : const HomePageWidget(),
        ),
        FFRoute(
          name: 'Diagnose1',
          path: '/diagnose1',
          builder: (context, params) => const Diagnose1Widget(),
        ),
        FFRoute(
          name: 'Diagnose2',
          path: '/diagnose2',
          builder: (context, params) => const Diagnose2Widget(),
        ),
        FFRoute(
          name: 'Location1',
          path: '/location1',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Location1')
              : const Location1Widget(),
        ),
        FFRoute(
          name: 'Location2',
          path: '/location2',
          builder: (context, params) => const Location2Widget(),
        ),
        FFRoute(
          name: 'Location3',
          path: '/location3',
          builder: (context, params) => const Location3Widget(),
        ),
        FFRoute(
          name: 'FieldOverview1',
          path: '/fieldOverview1',
          builder: (context, params) => const FieldOverview1Widget(),
        ),
        FFRoute(
          name: 'AddDevice1',
          path: '/addDevice1',
          builder: (context, params) => const AddDevice1Widget(),
        ),
        FFRoute(
          name: 'AddDevice2',
          path: '/addDevice2',
          builder: (context, params) => const AddDevice2Widget(),
        ),
        FFRoute(
          name: 'SoilStatus',
          path: '/soilStatus',
          builder: (context, params) => const SoilStatusWidget(),
        ),
        FFRoute(
          name: 'Irrigation1',
          path: '/irrigation1',
          builder: (context, params) => const Irrigation1Widget(),
        ),
        FFRoute(
          name: 'Irrigation2',
          path: '/irrigation2',
          builder: (context, params) => const Irrigation2Widget(),
        ),
        FFRoute(
          name: 'Forum_post',
          path: '/forumPost',
          builder: (context, params) => const ForumPostWidget(),
        ),
        FFRoute(
          name: 'ForumHomepage',
          path: '/forumHomepage',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'ForumHomepage')
              : const ForumHomepageWidget(),
        ),
        FFRoute(
          name: 'SocialPost',
          path: '/socialPost',
          builder: (context, params) => const SocialPostWidget(),
        ),
        FFRoute(
          name: 'Aboutus',
          path: '/aboutus',
          builder: (context, params) => const AboutusWidget(),
        ),
        FFRoute(
          name: 'HelpCenter',
          path: '/helpCenter',
          builder: (context, params) => const HelpCenterWidget(),
        ),
        FFRoute(
          name: 'PrivacyPolicy',
          path: '/privacyPolicy',
          builder: (context, params) => const PrivacyPolicyWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Profile')
              : const ProfileWidget(),
        ),
        FFRoute(
          name: 'TNC',
          path: '/tnc',
          builder: (context, params) => const TncWidget(),
        ),
        FFRoute(
          name: 'UpdateProfiles',
          path: '/updateProfiles',
          builder: (context, params) => const UpdateProfilesWidget(),
        ),
        FFRoute(
          name: 'SupportSystem',
          path: '/supportSystem',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'SupportSystem')
              : const SupportSystemWidget(),
        ),
        FFRoute(
          name: 'SupportSystemChat',
          path: '/supportSystemChat',
          builder: (context, params) => const SupportSystemChatWidget(),
        ),
        FFRoute(
          name: 'Notifications',
          path: '/notifications',
          builder: (context, params) => const NotificationsWidget(),
        ),
        FFRoute(
          name: 'SelectFieldIrrigation',
          path: '/selectFieldIrrigation',
          builder: (context, params) => const SelectFieldIrrigationWidget(),
        ),
        FFRoute(
          name: 'FieldOverview2',
          path: '/fieldOverview2',
          builder: (context, params) => const FieldOverview2Widget(),
        ),
        FFRoute(
          name: 'SignInSignUp',
          path: '/signInSignUp',
          builder: (context, params) => const SignInSignUpWidget(),
        ),
        FFRoute(
          name: 'MyFieldSetting',
          path: '/myFieldSetting',
          builder: (context, params) => const MyFieldSettingWidget(),
        ),
        FFRoute(
          name: 'MySettingFieldOverview',
          path: '/mySettingFieldOverview',
          builder: (context, params) => const MySettingFieldOverviewWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
