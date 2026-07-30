// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes an additional payment option
@immutable
class PaymentOption extends TdObject {
  const PaymentOption({
    required this.title,
    required this.url,
  });

  /// [title] Title for the payment option
  final String title;

  /// [url] Payment form URL to be opened in a web view
  final String url;

  static const String constructor = 'paymentOption';

  static PaymentOption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentOption(
      title: (json['title'] as String?) ?? '',
      url: (json['url'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PaymentOption &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.url, url));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(url)
      ]);
}
