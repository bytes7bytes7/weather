/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/clear.svg
  SvgGenImage get clear => const SvgGenImage('assets/icons/clear.svg');

  /// File path: assets/icons/clouds.svg
  SvgGenImage get clouds => const SvgGenImage('assets/icons/clouds.svg');

  /// File path: assets/icons/drizzle.svg
  SvgGenImage get drizzle => const SvgGenImage('assets/icons/drizzle.svg');

  /// File path: assets/icons/fog.svg
  SvgGenImage get fog => const SvgGenImage('assets/icons/fog.svg');

  /// File path: assets/icons/hide.svg
  SvgGenImage get hide => const SvgGenImage('assets/icons/hide.svg');

  /// File path: assets/icons/humidity.svg
  SvgGenImage get humidity => const SvgGenImage('assets/icons/humidity.svg');

  /// File path: assets/icons/location.svg
  SvgGenImage get location => const SvgGenImage('assets/icons/location.svg');

  /// File path: assets/icons/rain.svg
  SvgGenImage get rain => const SvgGenImage('assets/icons/rain.svg');

  /// File path: assets/icons/show.svg
  SvgGenImage get show => const SvgGenImage('assets/icons/show.svg');

  /// File path: assets/icons/snow.svg
  SvgGenImage get snow => const SvgGenImage('assets/icons/snow.svg');

  /// File path: assets/icons/thunderstorm.svg
  SvgGenImage get thunderstorm =>
      const SvgGenImage('assets/icons/thunderstorm.svg');

  /// File path: assets/icons/wind.svg
  SvgGenImage get wind => const SvgGenImage('assets/icons/wind.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        clear,
        clouds,
        drizzle,
        fog,
        hide,
        humidity,
        location,
        rain,
        show,
        snow,
        thunderstorm,
        wind
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/clear.png
  AssetGenImage get clear => const AssetGenImage('assets/images/clear.png');

  /// File path: assets/images/clouds.png
  AssetGenImage get clouds => const AssetGenImage('assets/images/clouds.png');

  /// File path: assets/images/drizzle.png
  AssetGenImage get drizzle => const AssetGenImage('assets/images/drizzle.png');

  /// File path: assets/images/fog.png
  AssetGenImage get fog => const AssetGenImage('assets/images/fog.png');

  /// File path: assets/images/rain.png
  AssetGenImage get rain => const AssetGenImage('assets/images/rain.png');

  /// File path: assets/images/snow.png
  AssetGenImage get snow => const AssetGenImage('assets/images/snow.png');

  /// File path: assets/images/thunderstorm.png
  AssetGenImage get thunderstorm =>
      const AssetGenImage('assets/images/thunderstorm.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [clear, clouds, drizzle, fog, rain, snow, thunderstorm];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
