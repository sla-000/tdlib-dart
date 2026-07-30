import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a gift collection
@immutable
class LinkPreviewTypeGiftCollection extends LinkPreviewType {
  const LinkPreviewTypeGiftCollection({
    required this.icons,
  });

  /// [icons] Icons for some gifts from the collection; may be empty
  final List<Sticker> icons;

  static const String constructor = 'linkPreviewTypeGiftCollection';

  static LinkPreviewTypeGiftCollection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeGiftCollection(
      icons: List<Sticker>.from(
          ((json['icons'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Sticker.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'icons': icons.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
