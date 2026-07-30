// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The TON Gram revenue earned by the current user has changed. If Gram
/// transaction screen of the chat is opened, then getTonTransactions may be
/// called to fetch new transactions
@immutable
class UpdateGramRevenueStatus extends Update {
  const UpdateGramRevenueStatus({
    required this.status,
  });

  /// [status] New Gram revenue status
  final GramRevenueStatus status;

  static const String constructor = 'updateGramRevenueStatus';

  static UpdateGramRevenueStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateGramRevenueStatus(
      status:
          GramRevenueStatus.fromJson(json['status'] as Map<String, dynamic>?)!,
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
          other is UpdateGramRevenueStatus &&
          const DeepCollectionEquality().equals(other.status, status));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(status)]);
}
