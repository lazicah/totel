import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:totel/Common/Theme/theme.dart';
import 'package:totel/Screens/home/widgets/clickable_wrapper.dart';
import 'package:totel/gen/assets.gen.dart';

class TravellerCardHorizontal extends StatelessWidget {
  const TravellerCardHorizontal({
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
      height: 253,
      width: 220,
      child: ClickableWrapper(
        onPressed: () {},
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Assets.images.imageB.image(
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const Gap(10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hilton Miami Downtown',
                      style: AppTextStyle.body1
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Gap(4),
                    Text(
                      'Albert Flores',
                      style: AppTextStyle.body1,
                    ),
                    const Gap(4),
                    Text.rich(TextSpan(children: [
                      const TextSpan(text: r'$90'),
                      TextSpan(
                        text: ' / Day',
                        style:
                            AppTextStyle.body1.copyWith(color: AppColors.gray2),
                      )
                    ]))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
