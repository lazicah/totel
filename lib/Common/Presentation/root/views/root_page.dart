import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:totel/Common/Presentation/root/cubit/root_cubit.dart';
import 'package:totel/Common/Theme/colors/app_colors.dart';
import 'package:totel/Common/Theme/textstyles/textstyles.dart';
import 'package:totel/Screens/home/view/home_screen.dart';
import 'package:totel/gen/assets.gen.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key});

  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => const RootPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootCubit(),
      child: const _RootView(),
    );
  }
}

class _RootView extends StatelessWidget {
  const _RootView({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavigationItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        activeIcon: Assets.icons.home.svg(color: AppColors.primaryMain),
        icon: Assets.icons.home.svg(color: AppColors.gray),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        activeIcon: Assets.icons.map.svg(color: AppColors.primaryMain),
        icon: Assets.icons.map.svg(color: AppColors.gray),
        label: 'Map',
      ),
      BottomNavigationBarItem(
        activeIcon: Assets.icons.add.svg(color: AppColors.primaryMain),
        icon: Assets.icons.add.svg(color: AppColors.gray),
        label: 'Add',
      ),
      BottomNavigationBarItem(
        activeIcon: Assets.icons.post.svg(color: AppColors.primaryMain),
        icon: Assets.icons.post.svg(color: AppColors.gray),
        label: 'Post',
      ),
      BottomNavigationBarItem(
        activeIcon: Assets.icons.chat.svg(color: AppColors.primaryMain),
        icon: Assets.icons.chat.svg(color: AppColors.gray),
        label: 'Chat',
      ),
    ];

    return BlocBuilder<RootCubit, RootState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.currentPageIndex,
            children: const [
              HomeScreen(),
              _ComingSoonSceen(),
              _ComingSoonSceen(),
              _ComingSoonSceen(),
              _ComingSoonSceen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: bottomNavigationItems,
            currentIndex: state.currentPageIndex,
            onTap: context.read<RootCubit>().onPageChanged,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primaryMain,
            unselectedItemColor: AppColors.gray,
          ),
        );
      },
    );
  }
}

class _ComingSoonSceen extends StatelessWidget {
  const _ComingSoonSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Coming soon',
          style: AppTextStyle.headline3,
        ),
      ),
    );
  }
}
