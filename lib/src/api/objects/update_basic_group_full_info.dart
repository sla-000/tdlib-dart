// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Some data in basicGroupFullInfo has been changed
@immutable
class UpdateBasicGroupFullInfo extends Update {
  const UpdateBasicGroupFullInfo({
    required this.basicGroupId,
    required this.basicGroupFullInfo,
  });

  /// [basicGroupId] Identifier of a basic group
  final int basicGroupId;

  /// [basicGroupFullInfo] New full information about the group
  final BasicGroupFullInfo basicGroupFullInfo;

  static const String constructor = 'updateBasicGroupFullInfo';

  static UpdateBasicGroupFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateBasicGroupFullInfo(
      basicGroupId: json['basic_group_id'] as int,
      basicGroupFullInfo: BasicGroupFullInfo.fromJson(
          json['basic_group_full_info'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'basic_group_id': basicGroupId,
        'basic_group_full_info': basicGroupFullInfo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateBasicGroupFullInfo &&
          const DeepCollectionEquality()
              .equals(other.basicGroupId, basicGroupId) &&
          const DeepCollectionEquality()
              .equals(other.basicGroupFullInfo, basicGroupFullInfo));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(basicGroupId),
        const DeepCollectionEquality().hash(basicGroupFullInfo)
      ]);
}
