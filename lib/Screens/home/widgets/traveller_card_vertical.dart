
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:totel/Common/Theme/theme.dart';
import 'package:totel/Screens/home/widgets/widgets.dart';
import 'package:totel/gen/assets.gen.dart';

class TravellerCardVertical extends StatelessWidget {
  const TravellerCardVertical({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(165, 165, 172, 0.31),
              offset: Offset(0, 2),
              blurRadius: 12,
            )
          ]),
      height: 490,
      child: ClickableWrapper(
        onPressed: () {},
        borderRadius: BorderRadius.circular(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: Assets.images.imageA.image().image,
                  ),
                  const Gap(16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Albert Flores',
                          style: AppTextStyle.headline5,
                        ),
                        Text(
                          'March 24, 2020',
                          style: AppTextStyle.caption,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                        color: AppColors.orange,
                        borderRadius: BorderRadius.circular(20)),
                    height: 31,
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: AppColors.white,
                        ),
                        const Gap(4),
                        Text(
                          '2.0',
                          style: AppTextStyle.body2
                              .copyWith(color: AppColors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                 SlidingImages(images: [Assets.images.imageA.path,Assets.images.imageB.path],),
                Positioned(
                  bottom: 22,
                  left: 33,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                        color: AppColors.purple,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'Male Only',
                      style:
                          AppTextStyle.body2.copyWith(color: AppColors.white),
                    ),
                  ),
                )
              ],
            ),
            const Gap(10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: AppColors.gray1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 12),
                        child: Text(
                          '4 Jun - 6 Jun',
                          style: AppTextStyle.body2.copyWith(
                              color: AppColors.gray,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const Gap(10),
                    Text(
                      'Hilton Miami Downtowss',
                      style: AppTextStyle.headline5
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Gap(6),
                    Text.rich(TextSpan(children: [
                      TextSpan(text: r'$100', style: AppTextStyle.headline5),
                      TextSpan(
                        text: ' / Day',
                        style:
                            AppTextStyle.body2.copyWith(color: AppColors.gray2),
                      )
                    ]))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
