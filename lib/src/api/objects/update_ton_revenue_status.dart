// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The Toncoin revenue earned by the current user has changed. If Toncoin
/// transaction screen of the chat is opened, then getTonTransactions may be
/// called to fetch new transactions
@immutable
class UpdateTonRevenueStatus extends Update {
  const UpdateTonRevenueStatus({
    required this.status,
  });

  /// [status] New Toncoin revenue status
  final TonRevenueStatus status;

  static const String constructor = 'updateTonRevenueStatus';

  static UpdateTonRevenueStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTonRevenueStatus(
      status:
          TonRevenueStatus.fromJson(json['status'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'status': status.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpdateTonRevenueStatus &&
          const DeepCollectionEquality().equals(other.status, status));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(status)]);
}
