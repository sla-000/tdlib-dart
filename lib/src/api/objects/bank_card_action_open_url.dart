// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an action associated with a bank card number
@immutable
class BankCardActionOpenUrl extends TdObject {
  const BankCardActionOpenUrl({
    required this.text,
    required this.url,
  });

  /// [text] Action text
  final String text;

  /// [url] The URL to be opened
  final String url;

  static const String constructor = 'bankCardActionOpenUrl';

  static BankCardActionOpenUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BankCardActionOpenUrl(
      text: json['text'] as String,
      url: json['url'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is BankCardActionOpenUrl &&
          const DeepCollectionEquality().equals(other.text, text) &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(text),
        const DeepCollectionEquality().hash(url)
      ]);
}
