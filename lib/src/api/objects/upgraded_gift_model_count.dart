// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a model of an upgraded gift with the number of gifts found
@immutable
class UpgradedGiftModelCount extends TdObject {
  const UpgradedGiftModelCount({
    required this.model,
    required this.totalCount,
  });

  /// [model] The model
  final UpgradedGiftModel model;

  /// [totalCount] Total number of gifts with the model
  final int totalCount;

  static const String constructor = 'upgradedGiftModelCount';

  static UpgradedGiftModelCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftModelCount(
      model:
          UpgradedGiftModel.fromJson(json['model'] as Map<String, dynamic>?)!,
      totalCount: (json['total_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'model': model.toJson(),
        'total_count': totalCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftModelCount &&
          const DeepCollectionEquality().equals(other.model, model) &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(model),
        const DeepCollectionEquality().hash(totalCount)
      ]);
}
