import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A link
@immutable
class InputPollMediaLink extends InputPollMedia {
  const InputPollMediaLink({
    required this.url,
  });

  /// [url] URL of the link
  final String url;

  static const String constructor = 'inputPollMediaLink';

  static InputPollMediaLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollMediaLink(
      url: json['url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
