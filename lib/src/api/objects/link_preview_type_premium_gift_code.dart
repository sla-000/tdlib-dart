// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a Telegram Premium gift code
@immutable
class LinkPreviewTypePremiumGiftCode extends LinkPreviewType {
  const LinkPreviewTypePremiumGiftCode();

  static const String constructor = 'linkPreviewTypePremiumGiftCode';

  static LinkPreviewTypePremiumGiftCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LinkPreviewTypePremiumGiftCode();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LinkPreviewTypePremiumGiftCode);

  @override
  int get hashCode => runtimeType.hashCode;
}
