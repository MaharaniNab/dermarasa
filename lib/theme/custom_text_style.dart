import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyMediumSalsa => theme.textTheme.bodyMedium!.salsa;
  static get bodyMediumSalsa13 => theme.textTheme.bodyMedium!.salsa.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumSalsaDeeporangeA200 =>
      theme.textTheme.bodyMedium!.salsa.copyWith(
        color: appTheme.deepOrangeA200,
        fontSize: 13.fSize,
      );
  static get bodyMediumSalsaDeeporangeA200_1 =>
      theme.textTheme.bodyMedium!.salsa.copyWith(
        color: appTheme.deepOrangeA200,
      );
  static get bodyMediumSalsaGray400 =>
      theme.textTheme.bodyMedium!.salsa.copyWith(
        color: appTheme.gray400,
      );
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallSalsa => theme.textTheme.bodySmall!.salsa;
  static get bodySmallSalsaGray800 => theme.textTheme.bodySmall!.salsa.copyWith(
        color: appTheme.gray800,
      );
  // Label text style
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400.withOpacity(0.9),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBluegray400Medium =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400.withOpacity(0.9),
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimaryContainerSemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBold_1 => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallRoboto => theme.textTheme.titleSmall!.roboto;
  static get titleSmallRoboto_1 => theme.textTheme.titleSmall!.roboto;
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get salsa {
    return copyWith(
      fontFamily: 'Salsa',
    );
  }
}
