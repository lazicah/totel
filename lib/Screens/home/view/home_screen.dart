import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:totel/Common/Theme/textstyles/app_textstyle.dart';
import 'package:totel/Common/Theme/theme.dart';
import 'package:totel/Screens/home/widgets/clickable_wrapper.dart';
import 'package:totel/Screens/home/widgets/widgets.dart';
import 'package:totel/gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBarWidget(),
              const Gap(10),
              SizedBox(
                height: 68,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(14),
                  itemBuilder: (context, index) {
                    final item = HorizontalChipData.list[index];
                    return ChipWidget(item: item);
                  },
                  separatorBuilder: (_, __) => const Gap(12),
                  itemCount: HorizontalChipData.list.length,
                ),
              ),
              const Gap(27),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [
                    Text(
                      'Fit in your choice',
                      style: AppTextStyle.headline5,
                    ),
                  ],
                ),
              ),
              const Gap(10),
              SizedBox(
                height: 270,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(14),
                  itemBuilder: (context, index) {
                    return const TravellerCardHorizontal();
                  },
                  separatorBuilder: (_, __) => const Gap(18),
                  itemCount: 4,
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Traveller in Miami',
                      style: AppTextStyle.headline5,
                    ),
                    Text(
                      '75 Posts',
                      style: AppTextStyle.body2.copyWith(color: AppColors.gray),
                    ),
                  ],
                ),
              ),
              const Gap(14),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(14),
                itemBuilder: (context, index) {
                  return const TravellerCardVertical();
                },
                separatorBuilder: (_, __) => const Gap(18),
                itemCount: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  final HorizontalChipData item;

  @override
  Widget build(BuildContext context) {
    return ClickableWrapper(
      onPressed: () {},
      borderRadius: BorderRadius.circular(25),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: AppColors.gray1),
        ),
        height: 40,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            children: [
              Icon(
                item.icon,
                color: AppColors.gray,
              ),
              const Gap(8),
              Text(
                item.label,
                style: AppTextStyle.body2.copyWith(
                    color: AppColors.gray, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: Assets.images.imageA.image().image,
          ),
          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: AppTextStyle.caption,
                ),
                Row(
                  children: [
                    Text(
                      'Miami,Florida',
                      style: AppTextStyle.headline5,
                    ),
                    const Icon(Icons.keyboard_arrow_down)
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.gray1)),
            height: 50,
            width: 50,
            child: Center(
              child: Icon(
                Icons.notifications,
                color: AppColors.primaryMain,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HorizontalChipData {
  final IconData icon;
  final String label;
  HorizontalChipData({
    required this.icon,
    required this.label,
  });

  static List<HorizontalChipData> list = [
    HorizontalChipData(icon: Icons.calendar_month, label: 'Dates'),
    HorizontalChipData(icon: Icons.rate_review, label: 'Rating 4.0+'),
    HorizontalChipData(icon: Icons.book_online, label: 'Booking Status'),
    HorizontalChipData(icon: Icons.money, label: 'Budget'),
  ];
}
