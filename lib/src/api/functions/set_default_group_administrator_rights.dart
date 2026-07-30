// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets default administrator rights for adding the bot to basic group and
/// supergroup chats; for bots only
/// Returns [Ok]
@immutable
class SetDefaultGroupAdministratorRights extends TdFunction {
  const SetDefaultGroupAdministratorRights({
    this.defaultGroupAdministratorRights,
  });

  /// [defaultGroupAdministratorRights] Default administrator rights for adding
  /// the bot to basic group and supergroup chats; pass null to remove default
  /// rights
  final ChatAdministratorRights? defaultGroupAdministratorRights;

  static const String constructor = 'setDefaultGroupAdministratorRights';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'default_group_administrator_rights':
            defaultGroupAdministratorRights?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetDefaultGroupAdministratorRights &&
          const DeepCollectionEquality().equals(
              other.defaultGroupAdministratorRights,
              defaultGroupAdministratorRights));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(defaultGroupAdministratorRights)
      ]);
}
