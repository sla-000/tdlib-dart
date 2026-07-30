// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Checks whether a file can be downloaded and saved locally by Web App
/// request
/// Returns [Ok]
@immutable
class CheckWebAppFileDownload extends TdFunction {
  const CheckWebAppFileDownload({
    required this.botUserId,
    required this.fileName,
    required this.url,
  });

  /// [botUserId] Identifier of the bot, providing the Web App
  final int botUserId;

  /// [fileName] Name of the file
  final String fileName;

  /// [url] URL of the file
  final String url;

  static const String constructor = 'checkWebAppFileDownload';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'bot_user_id': botUserId,
        'file_name': fileName,
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is CheckWebAppFileDownload &&
          const DeepCollectionEquality().equals(other.botUserId, botUserId) &&
          const DeepCollectionEquality().equals(other.fileName, fileName) &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(botUserId),
        const DeepCollectionEquality().hash(fileName),
        const DeepCollectionEquality().hash(url)
      ]);
}
