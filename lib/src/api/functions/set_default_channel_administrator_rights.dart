// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Sets default administrator rights for adding the bot to channel chats; for
/// bots only
/// Returns [Ok]
@immutable
class SetDefaultChannelAdministratorRights extends TdFunction {
  const SetDefaultChannelAdministratorRights({
    this.defaultChannelAdministratorRights,
  });

  /// [defaultChannelAdministratorRights] Default administrator rights for
  /// adding the bot to channels; pass null to remove default rights
  final ChatAdministratorRights? defaultChannelAdministratorRights;

  static const String constructor = 'setDefaultChannelAdministratorRights';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'default_channel_administrator_rights':
            defaultChannelAdministratorRights?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetDefaultChannelAdministratorRights &&
          const DeepCollectionEquality().equals(
              other.defaultChannelAdministratorRights,
              defaultChannelAdministratorRights));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(defaultChannelAdministratorRights)
      ]);
}
