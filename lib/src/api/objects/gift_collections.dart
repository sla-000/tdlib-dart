import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of gift collections
@immutable
class GiftCollections extends TdObject {
  const GiftCollections({
    required this.collections,
  });

  /// [collections] List of gift collections
  final List<GiftCollection> collections;

  static const String constructor = 'giftCollections';

  static GiftCollections? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GiftCollections(
      collections: List<GiftCollection>.from(
          ((json['collections'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => GiftCollection.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'collections': collections.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
