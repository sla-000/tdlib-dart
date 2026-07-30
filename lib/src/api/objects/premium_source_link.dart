// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A user opened an internal link of the type
/// internalLinkTypePremiumFeaturesPage
@immutable
class PremiumSourceLink extends PremiumSource {
  const PremiumSourceLink({
    required this.referrer,
  });

  /// [referrer] The referrer from the link
  final String referrer;

  static const String constructor = 'premiumSourceLink';

  static PremiumSourceLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumSourceLink(
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
          other is PremiumSourceLink &&
          const DeepCollectionEquality().equals(other.referrer, referrer));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(referrer)]);
}
