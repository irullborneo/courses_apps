import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  final double width, height;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final BoxFit? fit;
  const CachedImage({Key? key, this.fit, this.borderRadius, this.margin, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl:
          'https://3.bp.blogspot.com/-CfcOEjhOTGM/WTlfTr7W3VI/AAAAAAAAADs/4xF-ASU5DIUULeSchEs8tPEV2Tudtqg6wCLcB/s1600/VR%2B1.png',
      imageBuilder: (context, imageProvider) {
        return Container(
          width: width,
          height: height,
          margin: margin,
          decoration: BoxDecoration(
              borderRadius: borderRadius,
              image:
              DecorationImage(image: imageProvider, fit: fit)),
        );
      },
      placeholder: (context, url) {
        return Container(
          width: width,
          height: height,
          margin: margin,
          decoration: BoxDecoration(
              borderRadius: borderRadius, color: Theme.of(context).disabledColor),
        );
      },
      errorWidget: (context, url, error) {
        return Container(
          width: width,
          height: height,
          margin: margin,
          decoration: BoxDecoration(
              borderRadius: borderRadius, color: Theme.of(context).disabledColor),
        );
      },
    );
  }
}
