// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i31;
import 'package:auto_route/empty_router_widgets.dart' as _i13;
import 'package:flutter/material.dart' as _i32;

import '../pages/authentiaction/confirmaton.dart' as _i6;
import '../pages/authentiaction/real_register.dart' as _i3;
import '../pages/authentiaction/reapit_conf.dart' as _i4;
import '../pages/authentiaction/register.dart' as _i5;
import '../pages/cart/cart.dart' as _i20;
import '../pages/cart/empty_cart.dart' as _i21;
import '../pages/favorites/empty_favorites.dart' as _i19;
import '../pages/favorites/favorites.dart' as _i18;
import '../pages/home/ar_details/ar_detail.dart' as _i16;
import '../pages/home/game_detailist/game_detailist.dart' as _i15;
import '../pages/home/home_page.dart' as _i14;
import '../pages/home/sets_details/sets_detailist.dart' as _i17;
import '../pages/main_page.dart' as _i7;
import '../pages/menu/log_oute.dart' as _i30;
import '../pages/menu/menu.dart' as _i24;
import '../pages/menu/menu_bonus.dart' as _i28;
import '../pages/menu/menu_help.dart' as _i29;
import '../pages/menu/menu_language.dart' as _i26;
import '../pages/menu/menu_order.dart' as _i25;
import '../pages/menu/menu_order_empty.dart' as _i27;
import '../pages/notification/empty_natification.dart' as _i23;
import '../pages/notification/natification.dart' as _i22;
import '../pages/orders/faild_order.dart' as _i11;
import '../pages/orders/get_continue.dart' as _i12;
import '../pages/orders/get_order.dart' as _i8;
import '../pages/orders/pay_order.dart' as _i9;
import '../pages/orders/succses_order.dart' as _i10;
import '../pages/splash_screen.dart' as _i2;
import '../pages/zer_page.dart' as _i1;

class FlutterRouter extends _i31.RootStackRouter {
  FlutterRouter([_i32.GlobalKey<_i32.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i31.PageFactory> pagesMap = {
    ZeroRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.ZeroPage(),
      );
    },
    SplashScreen.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.SplashScreen(),
      );
    },
    Regestration.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.Regestration(),
      );
    },
    Confirmation.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.Confirmation(),
      );
    },
    Authorization.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.Authorization(),
      );
    },
    AuthConf.name: (routeData) {
      final args = routeData.argsAs<AuthConfArgs>();
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.AuthConf(
          key: args.key,
          smsFor: args.smsFor,
          phoneNumber: args.phoneNumber,
        ),
      );
    },
    MainWidget.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.MainWidget(),
      );
    },
    GetOrder.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.GetOrder(),
      );
    },
    PayOrder.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.PayOrder(),
      );
    },
    SuccsesOrder.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.SuccsesOrder(),
      );
    },
    FaildOrder.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.FaildOrder(),
      );
    },
    GetContinue.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.GetContinue(),
      );
    },
    HomeRoutes.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.EmptyRouterPage(),
      );
    },
    Favorite.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.EmptyRouterPage(),
      );
    },
    Carts.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.EmptyRouterPage(),
      );
    },
    Natifications.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.EmptyRouterPage(),
      );
    },
    Menues.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.HomePage(),
      );
    },
    Slider_details.name: (routeData) {
      final args = routeData.argsAs<Slider_detailsArgs>();
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i15.GameDetailist(
          key: args.key,
          id: args.id,
        ),
      );
    },
    ArDetail.name: (routeData) {
      final args = routeData.argsAs<ArDetailArgs>();
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i16.ArDetail(
          key: args.key,
          id: args.id,
        ),
      );
    },
    SetsDetails.name: (routeData) {
      final args = routeData.argsAs<SetsDetailsArgs>();
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i17.SetsDetails(
          key: args.key,
          id: args.id,
        ),
      );
    },
    Favorites.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.Favorites(),
      );
    },
    EmptyFavotites.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i19.EmptyFavotites(),
      );
    },
    Cart.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i20.Cart(),
      );
    },
    CartEmpty.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i21.CartEmpty(),
      );
    },
    Natification.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i22.Natification(),
      );
    },
    NotificationEmpty.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i23.NotificationEmpty(),
      );
    },
    Menu.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i24.Menu(),
      );
    },
    MenuOrder.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i25.MenuOrder(),
      );
    },
    MenuLanguage.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i26.MenuLanguage(),
      );
    },
    MenuOrderEmpty.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i27.MenuOrderEmpty(),
      );
    },
    MenuBonus.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i28.MenuBonus(),
      );
    },
    MenuHelp.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i29.MenuHelp(),
      );
    },
    MenuLogOut.name: (routeData) {
      return _i31.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i30.MenuLogOut(),
      );
    },
  };

  @override
  List<_i31.RouteConfig> get routes => [
        _i31.RouteConfig(
          ZeroRoute.name,
          path: '/',
        ),
        _i31.RouteConfig(
          SplashScreen.name,
          path: '/splash-screen',
        ),
        _i31.RouteConfig(
          Regestration.name,
          path: '/Regestration',
        ),
        _i31.RouteConfig(
          Confirmation.name,
          path: '/Confirmation',
        ),
        _i31.RouteConfig(
          Authorization.name,
          path: '/Authorization',
        ),
        _i31.RouteConfig(
          AuthConf.name,
          path: '/auth-conf',
        ),
        _i31.RouteConfig(
          MainWidget.name,
          path: '/main-widget',
          children: [
            _i31.RouteConfig(
              HomeRoutes.name,
              path: 'empty-router-page',
              parent: MainWidget.name,
              children: [
                _i31.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRoutes.name,
                ),
                _i31.RouteConfig(
                  Slider_details.name,
                  path: 'game-detailist',
                  parent: HomeRoutes.name,
                ),
                _i31.RouteConfig(
                  ArDetail.name,
                  path: 'ar_detail',
                  parent: HomeRoutes.name,
                ),
                _i31.RouteConfig(
                  SetsDetails.name,
                  path: 'sets_detail',
                  parent: HomeRoutes.name,
                ),
              ],
            ),
            _i31.RouteConfig(
              Favorite.name,
              path: 'empty-router-page',
              parent: MainWidget.name,
              children: [
                _i31.RouteConfig(
                  Favorites.name,
                  path: '',
                  parent: Favorite.name,
                ),
                _i31.RouteConfig(
                  EmptyFavotites.name,
                  path: 'favorites',
                  parent: Favorite.name,
                ),
              ],
            ),
            _i31.RouteConfig(
              Carts.name,
              path: 'empty-router-page',
              parent: MainWidget.name,
              children: [
                _i31.RouteConfig(
                  Cart.name,
                  path: '',
                  parent: Carts.name,
                ),
                _i31.RouteConfig(
                  CartEmpty.name,
                  path: 'cart_empty',
                  parent: Carts.name,
                ),
              ],
            ),
            _i31.RouteConfig(
              Natifications.name,
              path: 'empty-router-page',
              parent: MainWidget.name,
              children: [
                _i31.RouteConfig(
                  Natification.name,
                  path: '',
                  parent: Natifications.name,
                ),
                _i31.RouteConfig(
                  NotificationEmpty.name,
                  path: 'natification_empty',
                  parent: Natifications.name,
                ),
              ],
            ),
            _i31.RouteConfig(
              Menues.name,
              path: 'empty-router-page',
              parent: MainWidget.name,
              children: [
                _i31.RouteConfig(
                  Menu.name,
                  path: '',
                  parent: Menues.name,
                ),
                _i31.RouteConfig(
                  MenuOrder.name,
                  path: 'menues_order',
                  parent: Menues.name,
                ),
                _i31.RouteConfig(
                  MenuLanguage.name,
                  path: 'menues_language',
                  parent: Menues.name,
                ),
                _i31.RouteConfig(
                  MenuOrderEmpty.name,
                  path: 'menues_order_empty',
                  parent: Menues.name,
                ),
                _i31.RouteConfig(
                  MenuBonus.name,
                  path: 'menues_bonus',
                  parent: Menues.name,
                ),
                _i31.RouteConfig(
                  MenuHelp.name,
                  path: 'menues_help',
                  parent: Menues.name,
                ),
                _i31.RouteConfig(
                  MenuLogOut.name,
                  path: 'menues_help',
                  parent: Menues.name,
                ),
              ],
            ),
          ],
        ),
        _i31.RouteConfig(
          GetOrder.name,
          path: '/get-order',
        ),
        _i31.RouteConfig(
          PayOrder.name,
          path: '/pay-order',
        ),
        _i31.RouteConfig(
          SuccsesOrder.name,
          path: '/succses-order',
        ),
        _i31.RouteConfig(
          FaildOrder.name,
          path: '/faild-order',
        ),
        _i31.RouteConfig(
          GetContinue.name,
          path: '/get-continue',
        ),
      ];
}

/// generated route for
/// [_i1.ZeroPage]
class ZeroRoute extends _i31.PageRouteInfo<void> {
  const ZeroRoute()
      : super(
          ZeroRoute.name,
          path: '/',
        );

  static const String name = 'ZeroRoute';
}

/// generated route for
/// [_i2.SplashScreen]
class SplashScreen extends _i31.PageRouteInfo<void> {
  const SplashScreen()
      : super(
          SplashScreen.name,
          path: '/splash-screen',
        );

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i3.Regestration]
class Regestration extends _i31.PageRouteInfo<void> {
  const Regestration()
      : super(
          Regestration.name,
          path: '/Regestration',
        );

  static const String name = 'Regestration';
}

/// generated route for
/// [_i4.Confirmation]
class Confirmation extends _i31.PageRouteInfo<void> {
  const Confirmation()
      : super(
          Confirmation.name,
          path: '/Confirmation',
        );

  static const String name = 'Confirmation';
}

/// generated route for
/// [_i5.Authorization]
class Authorization extends _i31.PageRouteInfo<void> {
  const Authorization()
      : super(
          Authorization.name,
          path: '/Authorization',
        );

  static const String name = 'Authorization';
}

/// generated route for
/// [_i6.AuthConf]
class AuthConf extends _i31.PageRouteInfo<AuthConfArgs> {
  AuthConf({
    _i32.Key? key,
    required String smsFor,
    required String phoneNumber,
  }) : super(
          AuthConf.name,
          path: '/auth-conf',
          args: AuthConfArgs(
            key: key,
            smsFor: smsFor,
            phoneNumber: phoneNumber,
          ),
        );

  static const String name = 'AuthConf';
}

class AuthConfArgs {
  const AuthConfArgs({
    this.key,
    required this.smsFor,
    required this.phoneNumber,
  });

  final _i32.Key? key;

  final String smsFor;

  final String phoneNumber;

  @override
  String toString() {
    return 'AuthConfArgs{key: $key, smsFor: $smsFor, phoneNumber: $phoneNumber}';
  }
}

/// generated route for
/// [_i7.MainWidget]
class MainWidget extends _i31.PageRouteInfo<void> {
  const MainWidget({List<_i31.PageRouteInfo>? children})
      : super(
          MainWidget.name,
          path: '/main-widget',
          initialChildren: children,
        );

  static const String name = 'MainWidget';
}

/// generated route for
/// [_i8.GetOrder]
class GetOrder extends _i31.PageRouteInfo<void> {
  const GetOrder()
      : super(
          GetOrder.name,
          path: '/get-order',
        );

  static const String name = 'GetOrder';
}

/// generated route for
/// [_i9.PayOrder]
class PayOrder extends _i31.PageRouteInfo<void> {
  const PayOrder()
      : super(
          PayOrder.name,
          path: '/pay-order',
        );

  static const String name = 'PayOrder';
}

/// generated route for
/// [_i10.SuccsesOrder]
class SuccsesOrder extends _i31.PageRouteInfo<void> {
  const SuccsesOrder()
      : super(
          SuccsesOrder.name,
          path: '/succses-order',
        );

  static const String name = 'SuccsesOrder';
}

/// generated route for
/// [_i11.FaildOrder]
class FaildOrder extends _i31.PageRouteInfo<void> {
  const FaildOrder()
      : super(
          FaildOrder.name,
          path: '/faild-order',
        );

  static const String name = 'FaildOrder';
}

/// generated route for
/// [_i12.GetContinue]
class GetContinue extends _i31.PageRouteInfo<void> {
  const GetContinue()
      : super(
          GetContinue.name,
          path: '/get-continue',
        );

  static const String name = 'GetContinue';
}

/// generated route for
/// [_i13.EmptyRouterPage]
class HomeRoutes extends _i31.PageRouteInfo<void> {
  const HomeRoutes({List<_i31.PageRouteInfo>? children})
      : super(
          HomeRoutes.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'HomeRoutes';
}

/// generated route for
/// [_i13.EmptyRouterPage]
class Favorite extends _i31.PageRouteInfo<void> {
  const Favorite({List<_i31.PageRouteInfo>? children})
      : super(
          Favorite.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'Favorite';
}

/// generated route for
/// [_i13.EmptyRouterPage]
class Carts extends _i31.PageRouteInfo<void> {
  const Carts({List<_i31.PageRouteInfo>? children})
      : super(
          Carts.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'Carts';
}

/// generated route for
/// [_i13.EmptyRouterPage]
class Natifications extends _i31.PageRouteInfo<void> {
  const Natifications({List<_i31.PageRouteInfo>? children})
      : super(
          Natifications.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'Natifications';
}

/// generated route for
/// [_i13.EmptyRouterPage]
class Menues extends _i31.PageRouteInfo<void> {
  const Menues({List<_i31.PageRouteInfo>? children})
      : super(
          Menues.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'Menues';
}

/// generated route for
/// [_i14.HomePage]
class HomeRoute extends _i31.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i15.GameDetailist]
class Slider_details extends _i31.PageRouteInfo<Slider_detailsArgs> {
  Slider_details({
    _i32.Key? key,
    required int id,
  }) : super(
          Slider_details.name,
          path: 'game-detailist',
          args: Slider_detailsArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'Slider_details';
}

class Slider_detailsArgs {
  const Slider_detailsArgs({
    this.key,
    required this.id,
  });

  final _i32.Key? key;

  final int id;

  @override
  String toString() {
    return 'Slider_detailsArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i16.ArDetail]
class ArDetail extends _i31.PageRouteInfo<ArDetailArgs> {
  ArDetail({
    _i32.Key? key,
    required int id,
  }) : super(
          ArDetail.name,
          path: 'ar_detail',
          args: ArDetailArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'ArDetail';
}

class ArDetailArgs {
  const ArDetailArgs({
    this.key,
    required this.id,
  });

  final _i32.Key? key;

  final int id;

  @override
  String toString() {
    return 'ArDetailArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i17.SetsDetails]
class SetsDetails extends _i31.PageRouteInfo<SetsDetailsArgs> {
  SetsDetails({
    _i32.Key? key,
    required int id,
  }) : super(
          SetsDetails.name,
          path: 'sets_detail',
          args: SetsDetailsArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'SetsDetails';
}

class SetsDetailsArgs {
  const SetsDetailsArgs({
    this.key,
    required this.id,
  });

  final _i32.Key? key;

  final int id;

  @override
  String toString() {
    return 'SetsDetailsArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i18.Favorites]
class Favorites extends _i31.PageRouteInfo<void> {
  const Favorites()
      : super(
          Favorites.name,
          path: '',
        );

  static const String name = 'Favorites';
}

/// generated route for
/// [_i19.EmptyFavotites]
class EmptyFavotites extends _i31.PageRouteInfo<void> {
  const EmptyFavotites()
      : super(
          EmptyFavotites.name,
          path: 'favorites',
        );

  static const String name = 'EmptyFavotites';
}

/// generated route for
/// [_i20.Cart]
class Cart extends _i31.PageRouteInfo<void> {
  const Cart()
      : super(
          Cart.name,
          path: '',
        );

  static const String name = 'Cart';
}

/// generated route for
/// [_i21.CartEmpty]
class CartEmpty extends _i31.PageRouteInfo<void> {
  const CartEmpty()
      : super(
          CartEmpty.name,
          path: 'cart_empty',
        );

  static const String name = 'CartEmpty';
}

/// generated route for
/// [_i22.Natification]
class Natification extends _i31.PageRouteInfo<void> {
  const Natification()
      : super(
          Natification.name,
          path: '',
        );

  static const String name = 'Natification';
}

/// generated route for
/// [_i23.NotificationEmpty]
class NotificationEmpty extends _i31.PageRouteInfo<void> {
  const NotificationEmpty()
      : super(
          NotificationEmpty.name,
          path: 'natification_empty',
        );

  static const String name = 'NotificationEmpty';
}

/// generated route for
/// [_i24.Menu]
class Menu extends _i31.PageRouteInfo<void> {
  const Menu()
      : super(
          Menu.name,
          path: '',
        );

  static const String name = 'Menu';
}

/// generated route for
/// [_i25.MenuOrder]
class MenuOrder extends _i31.PageRouteInfo<void> {
  const MenuOrder()
      : super(
          MenuOrder.name,
          path: 'menues_order',
        );

  static const String name = 'MenuOrder';
}

/// generated route for
/// [_i26.MenuLanguage]
class MenuLanguage extends _i31.PageRouteInfo<void> {
  const MenuLanguage()
      : super(
          MenuLanguage.name,
          path: 'menues_language',
        );

  static const String name = 'MenuLanguage';
}

/// generated route for
/// [_i27.MenuOrderEmpty]
class MenuOrderEmpty extends _i31.PageRouteInfo<void> {
  const MenuOrderEmpty()
      : super(
          MenuOrderEmpty.name,
          path: 'menues_order_empty',
        );

  static const String name = 'MenuOrderEmpty';
}

/// generated route for
/// [_i28.MenuBonus]
class MenuBonus extends _i31.PageRouteInfo<void> {
  const MenuBonus()
      : super(
          MenuBonus.name,
          path: 'menues_bonus',
        );

  static const String name = 'MenuBonus';
}

/// generated route for
/// [_i29.MenuHelp]
class MenuHelp extends _i31.PageRouteInfo<void> {
  const MenuHelp()
      : super(
          MenuHelp.name,
          path: 'menues_help',
        );

  static const String name = 'MenuHelp';
}

/// generated route for
/// [_i30.MenuLogOut]
class MenuLogOut extends _i31.PageRouteInfo<void> {
  const MenuLogOut()
      : super(
          MenuLogOut.name,
          path: 'menues_help',
        );

  static const String name = 'MenuLogOut';
}
