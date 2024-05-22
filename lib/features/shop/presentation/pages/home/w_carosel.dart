import 'package:card_swiper/card_swiper.dart';
import 'package:fake_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeCarosel extends StatelessWidget {
  const HomeCarosel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(JSize.borderRadLg * 2),
        child: Swiper.children(
          curve: Curves.linear,
          autoplay: true,
          pagination: const SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                  color: Colors.white30,
                  activeColor: Colors.white,
                  size: 7.0,
                  activeSize: 8.0)),
          children: [
            Container(color: Colors.amber),
            Container(
              color: Colors.cyanAccent,
            ),
            Container(
              color: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}
