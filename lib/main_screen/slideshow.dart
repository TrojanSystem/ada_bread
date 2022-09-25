import 'package:ada_bread/main_screen/slideShowItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Slide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
            indicatorRadius: 5,

            /// The color to paint behind th indicator.
            indicatorBackgroundColor: Colors.grey,

            /// The widgets to display in the [ImageSlideshow].
            /// Add the sample image file into the images folder
            children: [
              SlideShowItem(bale_5: 'አጠቃላይ', image: 'logo_2.jpg'),
              SlideShowItem(bale_5: 'ባለ 5 ብር', image: 'bale_5.png'),
              SlideShowItem(bale_5: 'ባለ 10 ብር', image: 'bale_10.png'),
              SlideShowItem(bale_5: 'ስላይስ', image: 'slice.png'),
              SlideShowItem(bale_5: 'ቦምቦሊኖ', image: 'donut.png'),
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
