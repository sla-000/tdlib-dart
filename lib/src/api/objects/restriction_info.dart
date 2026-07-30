// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains information about restrictions that must be applied to a chat or
/// a message
@immutable
class RestrictionInfo extends TdObject {
  const RestrictionInfo({
    required this.restrictionReason,
    required this.hasSensitiveContent,
  });

  /// [restrictionReason] A human-readable description of the reason why access
  /// to the content must be restricted. If empty, then the content can be
  /// accessed, but may be covered by hidden with 18+ spoiler anyway
  final String restrictionReason;

  /// [hasSensitiveContent] True, if media content of the messages must be
  /// hidden with 18+ spoiler. Use value of the option
  /// "can_ignore_sensitive_content_restrictions" to check whether the current
  /// user can ignore the restriction. If age verification parameters were
  /// received in updateAgeVerificationParameters, then the user must complete
  /// age verification to ignore the restriction. Set the option
  /// "ignore_sensitive_content_restrictions" to true if the user passes age
  /// verification
  final bool hasSensitiveContent;

  static const String constructor = 'restrictionInfo';

  static RestrictionInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RestrictionInfo(
      restrictionReason: json['restriction_reason'] as String,
      hasSensitiveContent: json['has_sensitive_content'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'restriction_reason': restrictionReason,
        'has_sensitive_content': hasSensitiveContent,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RestrictionInfo &&
          const DeepCollectionEquality()
              .equals(other.restrictionReason, restrictionReason) &&
          const DeepCollectionEquality()
              .equals(other.hasSensitiveContent, hasSensitiveContent));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(restrictionReason),
        const DeepCollectionEquality().hash(hasSensitiveContent)
      ]);
}
