import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flux_store/src/logic/bottom_navigation_cubit/bottom_navigation_screen_cubit.dart';
import 'package:flux_store/src/ui/home_screen_view.dart';
import 'package:hugeicons/hugeicons.dart';

class BottomNavigationBarScreenView extends StatelessWidget {
  static String routeName = "/BottomNavigationBarScreenView";

  const BottomNavigationBarScreenView({super.key});

  static Widget builder(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationScreenCubit(),
      child: const BottomNavigationBarScreenView(),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomeScreenView(),
      Container(
        height: 100,
        width: 100,
        color: Colors.amber,
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.blue,
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.green,
      ),
    ];
    return BlocBuilder<BottomNavigationScreenCubit, BottomNavigationScreenState>(
      builder: (context, state) {
        return Scaffold(
          body: screens[state.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.currentIndex,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.white,
            unselectedItemColor: const Color(0xff353946),
            elevation: 0,
            onTap: (index) {
              context.read<BottomNavigationScreenCubit>().changeIndex(index);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(HugeIcons.strokeRoundedHome01), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(HugeIcons.strokeRoundedSearch01), label: 'search'),
              BottomNavigationBarItem(icon: Icon(HugeIcons.strokeRoundedShoppingBag01), label: 'shop'),
              BottomNavigationBarItem(icon: Icon(HugeIcons.strokeRoundedUser), label: 'Setting'),
            ],
          ),
        );
      },
    );
  }
}
