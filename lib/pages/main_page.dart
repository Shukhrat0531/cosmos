import 'package:auto_route/auto_route.dart';
import 'package:cosmos/const/const.dart';
import 'package:cosmos/routes/routes.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  Future<void> _canPopSelf(TabsRouter tabsRouter) async {
    if (tabsRouter.current.router.canPop()) {
      await tabsRouter.current.router.popTop().then(
            (value) async => _canPopSelf(tabsRouter),
          );
    }
    return;
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoutes(),
        Favorite(),
        Carts(),
        Natifications(),
        Menues(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        final currentIndex =
            AutoTabsRouter.of(context, watch: true).activeIndex;
        return  Scaffold(
              body: FadeTransition(opacity: animation, child: child),
              bottomNavigationBar: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: tabsRouter.activeIndex,
                  onTap: (index) async => index == currentIndex
                      ? await _canPopSelf(tabsRouter)
                      : tabsRouter.setActiveIndex(index),
                  selectedFontSize: 12,
                  unselectedFontSize: 12,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: [
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            tabsRouter.activeIndex == 0
                              ? AppColors.primaryBottonBlue
                              : Color(0xFFA1A7B1), BlendMode.srcIn,
                      ),
                        child: SvgPicture.asset('assets/images/home.svg',
                          ),
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        tabsRouter.activeIndex == 1
                            ? AppColors.primaryBottonBlue
                            : Color(0xFFA1A7B1),
                        BlendMode.srcIn,
                      ),
                      child: SvgPicture.asset(
                        'assets/images/favorites.svg',
                      ),
                    ),
                      label: 'Search',
                    ),
                     BottomNavigationBarItem(
                      icon: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        tabsRouter.activeIndex == 2
                            ? AppColors.primaryBottonBlue
                            : Color(0xFFA1A7B1),
                        BlendMode.srcIn,
                      ),
                      child: SvgPicture.asset(
                        'assets/images/card_c.svg',
                      ),
                    ),
                      label: 'Bookmark',
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        tabsRouter.activeIndex == 3
                            ? AppColors.primaryBottonBlue
                            : Color(0xFFA1A7B1),
                        BlendMode.srcIn,
                      ),
                      child: SvgPicture.asset(
                        'assets/images/uved.svg',
                      ),
                    ),
                      label: 'Calendar',
                    ),
                    BottomNavigationBarItem(
                      icon: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        tabsRouter.activeIndex == 4
                            ? AppColors.primaryBottonBlue
                            : Color(0xFFA1A7B1),
                        BlendMode.srcIn,
                      ),
                      child: SvgPicture.asset(
                        'assets/images/menu.svg',
                      ),
                    ),
                      label: 'Notifications',
                    ),
                  ])
                  );
        
      },
    );
  }
}




















// class MainWidget extends StatefulWidget {
//   MainWidget({Key? key}) : super(key: key);

//   @override
//   _MainWidgetState createState() => _MainWidgetState();
// }

// class _MainWidgetState extends State<MainWidget> {
//   int _selectedIndex = 0;

  

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       body: _widgetOptions.elementAt(_selectedIndex),
//       bottomNavigationBar: BottomNavigationBar(
//         showUnselectedLabels: false,
//         unselectedItemColor: Color(0xFFA1A7B1),
//         unselectedLabelStyle: TextStyle(color: Color(0xFFA1A7B1)),
//         currentIndex: _selectedIndex,
//         selectedItemColor: AppColors.primaryBottonBlue,
//         onTap: (int index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           const BottomNavigationBarItem(
//             icon: Icon(Icons.bookmark_border),
//             label: 'Bookmark',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.calendar_today),
//             label: 'Calendar',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications_active_outlined),
//             label: 'Notifications',
//           ),
//         ],
//       ),

//     );
//   }
// }