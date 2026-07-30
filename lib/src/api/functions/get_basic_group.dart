// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a basic group by its identifier. This is an
/// offline method if the current user is not a bot
/// Returns [BasicGroup]
@immutable
class GetBasicGroup extends TdFunction {
  const GetBasicGroup({
    required this.basicGroupId,
  });

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  static const String constructor = 'getBasicGroup';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'basic_group_id': basicGroupId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetBasicGroup &&
          const DeepCollectionEquality()
              .equals(other.basicGroupId, basicGroupId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(basicGroupId)]);
}
