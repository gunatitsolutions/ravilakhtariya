import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ravilakhtariya/Themes/app_image.dart';

class FetchImageWidget extends StatelessWidget {
  final String? imageString;
  final BoxFit? boxFit;
  final ImageProvider imageProvider;
  final double? width, height;

  const FetchImageWidget(
      {super.key,
      this.imageString,
      required this.imageProvider,
      this.width,
      this.height,
      this.boxFit = BoxFit.contain});

  @override
  Widget build(BuildContext context) {
    return cachedImage(context);
  }

  Widget cachedImage(BuildContext context) {
    return CachedNetworkImage(
        imageUrl: imageString ?? '',
        imageBuilder: (_, imageProvider) => imageWidget(),
        placeholder: (_, url) => assetImage(),
        errorWidget: (_, url, error) => assetImage());
  }

  Image imageWidget() {
    return (width == null && height == null)
        ? Image(
            image: imageProvider,
            fit: boxFit ?? BoxFit.contain,
          )
        : Image(
            image: imageProvider,
            width: width ?? 100,
            height: height ?? 100,
            fit: boxFit ?? BoxFit.contain,
          );
  }

  Image assetImage() {
    return (width == null && height == null)
        ? Image(
      image: AssetImage(AppImage.splash),
      fit: boxFit ?? BoxFit.contain,
    )
        : Image(
      image: imageProvider,
      width: width ?? 100,
      height: height ?? 100,
      fit: boxFit ?? BoxFit.contain,
    );
  }
}
