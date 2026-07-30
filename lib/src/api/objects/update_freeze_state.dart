// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The freeze state of the current user's account has changed
@immutable
class UpdateFreezeState extends Update {
  const UpdateFreezeState({
    required this.isFrozen,
    required this.freezingDate,
    required this.deletionDate,
    required this.appealLink,
  });

  /// [isFrozen] True, if the account is frozen
  final bool isFrozen;

  /// [freezingDate] Point in time (Unix timestamp) when the account was frozen;
  /// 0 if the account isn't frozen
  final int freezingDate;

  /// [deletionDate] Point in time (Unix timestamp) when the account will be
  /// deleted and can't be unfrozen; 0 if the account isn't frozen
  final int deletionDate;

  /// [appealLink] The link to open to send an appeal to unfreeze the account
  final String appealLink;

  static const String constructor = 'updateFreezeState';

  static UpdateFreezeState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFreezeState(
      isFrozen: (json['is_frozen'] as bool?) ?? false,
      freezingDate: (json['freezing_date'] as int?) ?? 0,
      deletionDate: (json['deletion_date'] as int?) ?? 0,
      appealLink: (json['appeal_link'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_frozen': isFrozen,
        'freezing_date': freezingDate,
        'deletion_date': deletionDate,
        'appeal_link': appealLink,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateFreezeState &&
          const DeepCollectionEquality().equals(other.isFrozen, isFrozen) &&
          const DeepCollectionEquality()
              .equals(other.freezingDate, freezingDate) &&
          const DeepCollectionEquality()
              .equals(other.deletionDate, deletionDate) &&
          const DeepCollectionEquality().equals(other.appealLink, appealLink));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isFrozen),
        const DeepCollectionEquality().hash(freezingDate),
        const DeepCollectionEquality().hash(deletionDate),
        const DeepCollectionEquality().hash(appealLink)
      ]);
}
