import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:totel/Common/Theme/colors/app_colors.dart';

class SlidingImages extends StatefulWidget {
  const SlidingImages({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<String> images;

  @override
  State<SlidingImages> createState() => _SlidingImagesState();
}

class _SlidingImagesState extends State<SlidingImages> {
  CarouselController carouselController = CarouselController();
  int _imageIndex = 0;

  Widget _buildIndicator(int selectedIndex) {
    final children = List.generate(widget.images.length, (index) {
      bool selected = selectedIndex == index;
      return Container(
        margin: const EdgeInsets.all(2),
        height: 5,
        width: selected ? 14 : 5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.5), color: AppColors.white),
      );
    });
    return Row(
      children: children,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          carouselController: carouselController,
          itemCount: widget.images.length,
          itemBuilder: (context, index, _) {
            return Image.asset(
              widget.images[index],
              width: double.infinity,
              fit: BoxFit.cover,
            );
          },
          options: CarouselOptions(
            height: 260,
            viewportFraction: 1,
            onPageChanged: (index, _) {
              setState(() {
                _imageIndex = index;
              });
            },
          ),
        ),
        Positioned(right: 22, bottom: 22, child: _buildIndicator(_imageIndex)),
      ],
    );
  }
}
