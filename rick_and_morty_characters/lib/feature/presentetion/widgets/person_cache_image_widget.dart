import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PersonCacheImage extends StatelessWidget {
  final String imageUrl;
  final double width, height;

  const PersonCacheImage({
    super.key,
    required this.height,
    required this.imageUrl,
    required this.width,
  });

  Widget _imageWidget(ImageProvider imageProvider) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            bottomLeft: Radius.circular(8),
          ),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: (context, url) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
      errorWidget: (context, url, error) {
        return _imageWidget(AssetImage('assets/images/noimage.jpg'));
      },
      imageUrl: imageUrl,
      width: width,
      height: height,
      imageBuilder: ((context, imageProvider) {
        return _imageWidget(imageProvider);
      }),
    );
  }
}
