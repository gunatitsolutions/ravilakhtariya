import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:ravilakhtariya/Themes/app_image.dart';
import 'package:ravilakhtariya/Utils/mixins/network_state_mixin.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ScreenWidget extends StatelessWidget {
  final Widget? child;
  final NetworkState state;
  final bool? replace;
  final String? emptyTitle;
  final String? emptyDesc;
  final String? emptyImage;
  final String? errorTitle;
  final String? errorDesc;
  final String? errorImage;
  final VoidCallback? retry;
  final bool? showRetry;
  final bool showErrorWidget;
  final bool showEmptyWidget;

  const ScreenWidget({
    super.key,
    this.child,
    required this.state,
    this.replace = false,
    this.showErrorWidget = false,
    this.showEmptyWidget = false,
    this.emptyTitle,
    this.emptyDesc,
    this.emptyImage,
    this.errorTitle,
    this.errorDesc,
    this.errorImage,
    this.retry,
    this.showRetry,
  });

  @override
  Widget build(BuildContext context) {
    if (replace ?? false) {
      return loadingWidget();
    }
    return Stack(
      children: [
        child ?? const SizedBox.shrink(),
        loadingWidget(),
      ],
    );
  }

  Widget loadingWidget() {
    switch (state) {
      case NetworkState.loading:
        return customLoaderWidget();
      case NetworkState.error:
        return showErrorWidget ? errorWidget() : const SizedBox.shrink();
      case NetworkState.empty:
        return showEmptyWidget ? emptyWidget() : const SizedBox.shrink();
      default:
        return const SizedBox.shrink();
    }
  }

  Widget customLoaderWidget() {
    return SizedBox(
      width: 100.w,
      height: 100.h,
      child: Center(
        child: SizedBox(
          width: 50.w,
          height: 50.w,
          child: Center(
            child: SpinKitThreeBounce(
              color: AppColors.whiteColor,
              size: 10.0.w,
            ),
          ),
        ),
      ),
    );
  }

  Widget errorWidget() {
    return SizedBox(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
        ),
        child: AspectRatio(
          aspectRatio: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Image(
                  image: AssetImage(errorImage ?? AppImage.raviLakhtariya),
                ),
              ),
              SizedBox(
                height: 1.w,
              ),
              titles(errorTitle ?? 'error'.tr),
              SizedBox(
                height: 1.w,
              ),
              descriptions(errorDesc ?? 'somethingWentWrong'.tr),
              retryButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget emptyWidget() {
    return SizedBox(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
        ),
        child: AspectRatio(
          aspectRatio: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Image(
                  image: AssetImage(emptyImage ?? AppImage.raviLakhtariya),
                ),
              ),
              SizedBox(
                height: 1.w,
              ),
              titles(emptyTitle ?? 'empty'.tr),
              SizedBox(
                height: 1.w,
              ),
              descriptions(emptyDesc ?? 'notFound'.tr),
              retryButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget titles(String? title) {
    return Text(
      emptyTitle ?? 'empty'.tr,
      style: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.grayColor.shade700,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget descriptions(String? title) {
    return Text(
      title ?? '',
      style: TextStyle(
        fontSize: 11.sp,
        color: AppColors.grayColor.shade500,
      ),
      textAlign: TextAlign.center,
      maxLines: 3,
    );
  }

  Widget retryButton() {
    return (showRetry ?? false)
        ? Padding(
            padding: EdgeInsets.symmetric(
              vertical: 2.h,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                backgroundColor: AppColors.blackColor,
              ),
              onPressed: retry,
              child: Text(
                'retry'.tr,
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        : const SizedBox.shrink();
  }
}
