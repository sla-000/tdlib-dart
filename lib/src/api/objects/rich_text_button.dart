// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A button
@immutable
class RichTextButton extends RichText {
  const RichTextButton({
    required this.button,
  });

  /// [button] The button
  final InlineButton button;

  static const String constructor = 'richTextButton';

  static RichTextButton? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextButton(
      button: InlineButton.fromJson(json['button'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'button': button.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RichTextButton &&
          const DeepCollectionEquality().equals(other.button, button));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(button)]);
}
