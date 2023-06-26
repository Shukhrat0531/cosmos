import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:cosmos/pages/cart/cart.dart';
import 'package:cosmos/pages/favorites/empty_favorites.dart';
import 'package:cosmos/pages/favorites/favorites.dart';
// import 'package:cosmos/pages/favorites/favorites.dart';
import 'package:cosmos/pages/home/ar_details/ar_detail.dart';
import 'package:cosmos/pages/home/game_detailist/game_detailist.dart';
import 'package:cosmos/pages/home/sets_details/sets_detailist.dart';
import 'package:cosmos/pages/main_page.dart';
import 'package:cosmos/pages/menu/log_oute.dart';
import 'package:cosmos/pages/menu/menu.dart';
import 'package:cosmos/pages/menu/menu_bonus.dart';
import 'package:cosmos/pages/menu/menu_help.dart';
import 'package:cosmos/pages/menu/menu_language.dart';
import 'package:cosmos/pages/menu/menu_order.dart';
import 'package:cosmos/pages/menu/menu_order_empty.dart';
import 'package:cosmos/pages/notification/natification.dart';
import 'package:cosmos/pages/orders/get_order.dart';
import 'package:cosmos/pages/orders/pay_order.dart';
import 'package:cosmos/pages/zer_page.dart';

import '../pages/authentiaction/confirmaton.dart';
import '../pages/authentiaction/real_register.dart';
import '../pages/authentiaction/reapit_conf.dart';
import '../pages/authentiaction/register.dart';
import '../pages/cart/empty_cart.dart';
import '../pages/home/home_page.dart';
import '../pages/notification/empty_natification.dart';
import '../pages/orders/faild_order.dart';
import '../pages/orders/get_continue.dart';
import '../pages/orders/succses_order.dart';
import '../pages/splash_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: ZeroPage, initial: true),
    AutoRoute(page: SplashScreen),
    AutoRoute(page: Regestration),
    AutoRoute(page: Confirmation),
    AutoRoute(page: Authorization),
    AutoRoute(page: AuthConf),
    AutoRoute(page: MainWidget, children: [
      AutoRoute(page: EmptyRouterPage, name: 'HomeRoutes', children: [
        AutoRoute(page: HomePage, path: ''),
        AutoRoute(page: GameDetailist,name: 'slider_details'),
        AutoRoute(page: ArDetail, path: 'ar_detail'),
        AutoRoute(page: SetsDetails, path: 'sets_detail'),
      ]),
      AutoRoute(page: EmptyRouterPage, name: 'Favorite', children: [
        AutoRoute(page: Favorites, path: ''),
        AutoRoute(page: EmptyFavotites, path: 'favorites'),
      ]),
      AutoRoute(page: EmptyRouterPage, name: 'Carts', children: [
        AutoRoute(page: Cart, path: ''),
        AutoRoute(page: CartEmpty, path: 'cart_empty'),
      ]),
      AutoRoute(page: EmptyRouterPage, name: 'Natifications', children: [
        AutoRoute(page: Natification, path: ''),
        AutoRoute(page: NotificationEmpty, path: 'natification_empty'),
      ]),
      AutoRoute(page: EmptyRouterPage, name: 'Menues', children: [
        AutoRoute(page: Menu, path: ''),
        AutoRoute(page: MenuOrder, path: 'menues_order'),
        AutoRoute(page: MenuLanguage, path: 'menues_language'),
        AutoRoute(page: MenuOrderEmpty, path: 'menues_order_empty'),
        AutoRoute(page: MenuBonus, path: 'menues_bonus'),
        AutoRoute(page: MenuHelp, path: 'menues_help'),
        AutoRoute(page: MenuLogOut, path: 'menues_help'),
      ])
    ]),
    AutoRoute(page: GetOrder),
    AutoRoute(page: PayOrder),
    AutoRoute(page: SuccsesOrder),
    AutoRoute(page: FaildOrder),
    AutoRoute(page: GetContinue),
  ],
)
class $FlutterRouter {}
