import 'package:flutter/material.dart';
import '../utils/basic_import.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.borderColor,
    this.borderWidth = 0,
    this.height,
    this.buttonColor,
    this.buttonTextColor,
    this.shape,
    this.icon,
    this.fontSize,
    this.fontWeight,
    this.isLoading = false,
    this.primary = false,
    this.disable = false,
    this.padding,
  });

  final String title;
  final VoidCallback onPressed;
  final Color? borderColor;
  final double borderWidth;
  final double? height;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final OutlinedBorder? shape;
  final Widget? icon;
  final double? fontSize;
  final FontWeight? fontWeight;
  final bool isLoading;
  final bool primary;
  final bool disable;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Loader()
        : Container(
            height: height ?? Dimensions.buttonHeight * 0.8,
            width: double.infinity,
            padding: padding,
            child: ElevatedButton(
              onPressed: disable ? null : onPressed,
              style: ElevatedButton.styleFrom(
                padding: padding ??
                    EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSize * 0.4),
                elevation: 0,
                shape: shape ??
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(Dimensions.radius * 2.5),
                    ),
                backgroundColor:
                    disable ? CustomColor.disableColor : buttonColor,
                side: BorderSide(
                  width: borderWidth,
                  color: disable
                      ? CustomColor.disableColor
                      : borderColor ?? CustomColor.primary,
                ),
              ),
              child: TextWidget(
                title,
                fontSize: fontSize ?? Dimensions.titleMedium,
                fontWeight: fontWeight ?? FontWeight.w700,
                color: primary
                    ? CustomColor.primary
                    : buttonTextColor ?? Colors.black.withOpacity(0.25),
                maxLines: 1,
                textOverflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          );
  }
}
