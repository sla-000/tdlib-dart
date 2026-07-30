// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes settings for a business account start page to set
@immutable
class InputBusinessStartPage extends TdObject {
  const InputBusinessStartPage({
    required this.title,
    required this.message,
    this.sticker,
  });

  /// [title] Title text of the start page;
  /// 0-getOption("business_start_page_title_length_max") characters
  final String title;

  /// [message] Message text of the start page;
  /// 0-getOption("business_start_page_message_length_max") characters
  final String message;

  /// [sticker] Greeting sticker of the start page; pass null if none. The
  /// sticker must belong to a sticker set and must not be a custom emoji
  final InputFile? sticker;

  static const String constructor = 'inputBusinessStartPage';

  static InputBusinessStartPage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputBusinessStartPage(
      title: json['title'] as String,
      message: json['message'] as String,
      sticker: InputFile.fromJson(json['sticker'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'message': message,
        'sticker': sticker?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputBusinessStartPage &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.message, message) &&
          const DeepCollectionEquality().equals(other.sticker, sticker));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(message),
        const DeepCollectionEquality().hash(sticker)
      ]);
}
