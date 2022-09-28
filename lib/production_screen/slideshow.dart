import 'package:ada_bread/production_screen/slideShowItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Slide extends StatelessWidget {
  final List production;
  const Slide({this.production});

  @override
  Widget build(BuildContext context) {
    double totProduced = (double.parse(production.first.bale_5) +
        double.parse(production.first.bale_10) +
        double.parse(production.first.slice) +
        double.parse(production.first.bombolino));

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        color: Colors.black12,
        child: FittedBox(
          alignment: Alignment.center,
          clipBehavior: Clip.antiAlias,
          child: ImageSlideshow(
            /// Width of the [ImageSlideshow].
            width: 500,

            /// Height of the [ImageSlideshow].
            height: 300,

            /// The page to show when first creating the [ImageSlideshow].
            initialPage: 0,

            /// The color to paint the indicator.
            indicatorColor: Colors.blue,
            indicatorRadius: 8,

            /// The color to paint behind th indicator.
            indicatorBackgroundColor: Colors.grey,

            /// The widgets to display in the [ImageSlideshow].
            /// Add the sample image file into the images folder
            children: [
              SlideShowItem(
                  bale_5: 'አጠቃላይ',
                  image: 'logo_2.jpg',
                  value: totProduced.toString()),
              SlideShowItem(
                  bale_5: 'ባለ 5 ብር',
                  image: 'bale_5.png',
                  value: production.first.bale_5.toString()),
              SlideShowItem(
                  bale_5: 'ባለ 10 ብር',
                  image: 'bale_10.png',
                  value: production.first.bale_10.toString()),
              SlideShowItem(
                  bale_5: 'ስላይስ',
                  image: 'slice.png',
                  value: production.first.slice.toString()),
              SlideShowItem(
                  bale_5: 'ቦምቦሊኖ',
                  image: 'donut.png',
                  value: production.first.bombolino.toString()),
            ],

            /// Called whenever the page in the center of the viewport changes.
            onPageChanged: (value) {},

            /// Auto scroll interval.
            /// Do not auto scroll with null or 0.
            autoPlayInterval: 5000,

            /// Loops back to first slide.
            isLoop: true,
          ),
        ),
      ),
    );
  }
}
