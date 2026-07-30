// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of media previews of a bot for the given language and the
/// list of languages for which the bot has dedicated previews
@immutable
class BotMediaPreviewInfo extends TdObject {
  const BotMediaPreviewInfo({
    required this.previews,
    required this.languageCodes,
  });

  /// [previews] List of media previews
  final List<BotMediaPreview> previews;

  /// [languageCodes] List of language codes for which the bot has dedicated
  /// previews
  final List<String> languageCodes;

  static const String constructor = 'botMediaPreviewInfo';

  static BotMediaPreviewInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotMediaPreviewInfo(
      previews: List<BotMediaPreview>.from(
          ((json['previews'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) =>
                  BotMediaPreview.fromJson(item as Map<String, dynamic>?))
              .toList()),
      languageCodes: List<String>.from(
          ((json['language_codes'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item as String)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'previews': previews.map((item) => item.toJson()).toList(),
        'language_codes': languageCodes.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BotMediaPreviewInfo &&
          const DeepCollectionEquality().equals(other.previews, previews) &&
          const DeepCollectionEquality()
              .equals(other.languageCodes, languageCodes));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(previews),
        const DeepCollectionEquality().hash(languageCodes)
      ]);
}
