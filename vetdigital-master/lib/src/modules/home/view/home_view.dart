import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../src.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
      ),
      body: const Center(
        child: Text('HomeView'),
      ),
      bottomNavigationBar: BlocBuilder<HomeCubit, int>(
        builder: (context, state) {
          return ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            child: SizedBox(
              height: 100,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: true,
                showUnselectedLabels: false,
                currentIndex: state,
                backgroundColor: AppColors.mainColor,
                iconSize: 30,
                items: const [
                  // BottomNavigationBarItem(
                  //   icon: SvgPicture.asset('assets/icons/home.svg'),
                  //   label: ' ',
                  //   activeIcon: SvgPicture.asset('assets/icons/selected_home.svg'),
                  // ),
                  // BottomNavigationBarItem(
                  //   icon: SvgPicture.asset('assets/icons/news.svg'),
                  //   label: ' ',
                  //   activeIcon: SvgPicture.asset('assets/icons/selected_news.svg'),
                  // ),
                  // BottomNavigationBarItem(
                  //   icon: SvgPicture.asset('assets/icons/veterinar.svg'),
                  //   label: ' ',
                  //   activeIcon: SvgPicture.asset('assets/icons/selected_vet.svg'),
                  // ),
                ],
                onTap: context.read<HomeCubit>().change,
              ),
            ),
          );
        },
      ),
    );
  }
}
