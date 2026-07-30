// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A button that sends a callback query to a bot
@immutable
class InlineKeyboardButtonTypeCallback extends InlineKeyboardButtonType {
  const InlineKeyboardButtonTypeCallback({
    required this.data,
  });

  /// [data] Data to be sent to the bot via a callback query
  final String data;

  static const String constructor = 'inlineKeyboardButtonTypeCallback';

  static InlineKeyboardButtonTypeCallback? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineKeyboardButtonTypeCallback(
      data: json['data'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'data': data,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InlineKeyboardButtonTypeCallback &&
          const DeepCollectionEquality().equals(other.data, data));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(data)]);
}
