// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An HTTP URL needs to be open
@immutable
class LoginUrlInfoOpen extends LoginUrlInfo {
  const LoginUrlInfoOpen({
    required this.url,
    required this.skipConfirmation,
  });

  /// [url] The URL to open
  final String url;

  /// [skipConfirmation] True, if there is no need to show an ordinary open URL
  /// confirmation
  final bool skipConfirmation;

  static const String constructor = 'loginUrlInfoOpen';

  static LoginUrlInfoOpen? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LoginUrlInfoOpen(
      url: json['url'] as String,
      skipConfirmation: json['skip_confirmation'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'skip_confirmation': skipConfirmation,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is LoginUrlInfoOpen &&
          const DeepCollectionEquality().equals(other.url, url) &&
          const DeepCollectionEquality()
              .equals(other.skipConfirmation, skipConfirmation));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(skipConfirmation)
      ]);
}
