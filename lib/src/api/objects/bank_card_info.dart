// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Information about a bank card
@immutable
class BankCardInfo extends TdObject {
  const BankCardInfo({
    required this.title,
    required this.actions,
  });

  /// [title] Title of the bank card description
  final String title;

  /// [actions] Actions that can be done with the bank card number
  final List<BankCardActionOpenUrl> actions;

  static const String constructor = 'bankCardInfo';

  static BankCardInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BankCardInfo(
      title: json['title'] as String,
      actions: List<BankCardActionOpenUrl>.from(
          ((json['actions'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => BankCardActionOpenUrl.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'actions': actions.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BankCardInfo &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.actions, actions));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(actions)
      ]);
}
