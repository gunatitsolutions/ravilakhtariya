import 'package:get/get.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:ravilakhtariya/Utils/Components/custom_button.dart';
import 'package:ravilakhtariya/Utils/Components/custom_sizedbox.dart';
import 'package:ravilakhtariya/Utils/Components/custom_text.dart';
import 'package:ravilakhtariya/Utils/NetworkManager/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

enum BottomSheetType { noInternet, exit, updateSheet }

class CSBottomSheet {
  static openBottomSheet(
      {required BottomSheetType bottomSheetType, VoidCallback? onTap}) {
    Get.bottomSheet(
      SizedBox(
        height: 42.h,
        child: IntrinsicHeight(
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(5.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                      minRadius: 15.w,
                      maxRadius: 15.w,
                      child: Icon(
                        getIcon(
                          bottomSheetType: bottomSheetType,
                        ),
                        size: 17.w,
                      )),
                  customSizedBox(3.h),
                  CustomText(
                    title: getBottomSheetTitle(
                      bottomSheetType: bottomSheetType,
                    ),
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                    maxLines: 3,
                  ),
                  customSizedBox(2.h),
                  getBtnRow(
                    bottomSheetType: bottomSheetType,
                    onTap: onTap,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      useRootNavigator: true,
      isDismissible: isDismissibleBottomSheet(
        bottomSheetType: bottomSheetType,
      ),
      enableDrag: isDismissibleBottomSheet(
        bottomSheetType: bottomSheetType,
      ),
    );
  }

  static isDismissibleBottomSheet({BottomSheetType? bottomSheetType}) {
    if (bottomSheetType == BottomSheetType.noInternet ||
        bottomSheetType == BottomSheetType.updateSheet) {
      return false;
    }
    return true;
  }

  static getBtnRow({BottomSheetType? bottomSheetType, VoidCallback? onTap}) {
    return SizedBox(
        width: 50.w,
        child: getYesBtn(bottomSheetType: bottomSheetType, onTap: onTap));
  }

  static getYesBtn({BottomSheetType? bottomSheetType, VoidCallback? onTap}) {
    return CustomButtonWidget(
      height: 6.h,
      btnText: getBtnTitle(bottomSheetType: bottomSheetType),
      textColor: AppColors.whiteColor,
      backgroundColor: AppColors.appThemeColor1,
      onTap: () {
        Get.back();
        if (bottomSheetType == BottomSheetType.noInternet) {
          if (Get.find<GetXNetworkManager>().connectionType != 0) {}
        }
      },
    );
  }

  static getNoBtn({BottomSheetType? bottomSheetType}) {
    if (bottomSheetType == BottomSheetType.exit) {
      return CustomButtonWidget(
        height: 6.h,
        btnText: 'No',
        textColor: AppColors.whiteColor,
        backgroundColor: AppColors.grayColor,
        onTap: () {
          Get.back();
        },
      );
    }
    return const SizedBox();
  }

  static getIcon({BottomSheetType? bottomSheetType}) {
    switch (bottomSheetType) {
      case BottomSheetType.noInternet:
        return Icons.wifi_off;
      case BottomSheetType.exit:
        return Icons.exit_to_app;
      default:
        return 'Login';
    }
  }

  static getBtnTitle({BottomSheetType? bottomSheetType}) {
    switch (bottomSheetType) {
      case BottomSheetType.updateSheet:
        return 'Update';
      default:
        return 'Yes';
    }
  }

  static getBottomSheetTitle({BottomSheetType? bottomSheetType}) {
    switch (bottomSheetType) {
      case BottomSheetType.noInternet:
        return 'No Internet Available';
      case BottomSheetType.exit:
        return 'Logout User';
      case BottomSheetType.updateSheet:
        return 'HexaDeals Request you to update your app new version available';
      default:
        return 'Please Login User';
    }
  }
}
