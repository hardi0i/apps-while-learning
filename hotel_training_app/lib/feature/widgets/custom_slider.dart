import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({
    super.key,
    required this.list,
  });

  final List<String> list;

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  int _currentIndex = 0;
  final pageController = PageController(
    initialPage: 0,
    viewportFraction: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 257.h,
          width: 343.w,
          child: PageView.builder(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            itemCount: widget.list.length,
            onPageChanged: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            itemBuilder: (ctx, i) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: widget.list[i],
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) => const Icon(
                      Icons.error,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        DotIndicator(
          currentIndex: _currentIndex,
          length: widget.list.length,
        ),
      ],
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.currentIndex,
    required this.length,
  });

  final int currentIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 8,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              5,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < length; i++)
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  color: currentIndex == i ? Colors.black : Colors.grey[300],
                  borderRadius: BorderRadius.circular(
                    50,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
