// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to the Premium features screen of the application from
/// which the user can subscribe to Telegram Premium. Call getPremiumFeatures
/// with the given referrer to process the link
@immutable
class InternalLinkTypePremiumFeaturesPage extends InternalLinkType {
  const InternalLinkTypePremiumFeaturesPage({
    required this.referrer,
  });

  /// [referrer] Referrer specified in the link
  final String referrer;

  static const String constructor = 'internalLinkTypePremiumFeaturesPage';

  static InternalLinkTypePremiumFeaturesPage? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePremiumFeaturesPage(
      referrer: json['referrer'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'referrer': referrer,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InternalLinkTypePremiumFeaturesPage &&
          const DeepCollectionEquality().equals(other.referrer, referrer));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(referrer)]);
}
