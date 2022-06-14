import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedAvatar extends StatelessWidget {
  final double? radius;
  const CachedAvatar({Key? key, this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return CircleAvatar(
    //   radius: radius,
    //   backgroundColor: Colors.white,
    // );

    return CachedNetworkImage(
      imageUrl:
          "https://www.ub.edu/private-pensions/wp-content/uploads/2021/04/cristina_roy-e1618856689542.jpg",
      imageBuilder: (context, imageProvider) {
        return CircleAvatar(
          radius: radius,
          backgroundImage: imageProvider,
        );
      },
      placeholder: (context, url) {
        return CircleAvatar(
          radius: radius,
          backgroundColor: Colors.white,
        );
      },
      errorWidget: (context, url, error) {
        return CircleAvatar(
          radius: radius,
          backgroundColor: Colors.white,
        );
      },
    );
  }
}
