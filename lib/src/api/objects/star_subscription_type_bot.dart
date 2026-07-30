// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a subscription in a bot or a business account
@immutable
class StarSubscriptionTypeBot extends StarSubscriptionType {
  const StarSubscriptionTypeBot({
    required this.isCanceledByBot,
    required this.title,
    required this.photo,
    required this.invoiceLink,
  });

  /// [isCanceledByBot] True, if the subscription was canceled by the bot and
  /// can't be extended
  final bool isCanceledByBot;

  /// [title] Subscription invoice title
  final String title;

  /// [photo] Subscription invoice photo
  final Photo photo;

  /// [invoiceLink] The link to the subscription invoice
  final String invoiceLink;

  static const String constructor = 'starSubscriptionTypeBot';

  static StarSubscriptionTypeBot? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StarSubscriptionTypeBot(
      isCanceledByBot: (json['is_canceled_by_bot'] as bool?) ?? false,
      title: (json['title'] as String?) ?? '',
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?)!,
      invoiceLink: (json['invoice_link'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_canceled_by_bot': isCanceledByBot,
        'title': title,
        'photo': photo.toJson(),
        'invoice_link': invoiceLink,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is StarSubscriptionTypeBot &&
          const DeepCollectionEquality()
              .equals(other.isCanceledByBot, isCanceledByBot) &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.photo, photo) &&
          const DeepCollectionEquality()
              .equals(other.invoiceLink, invoiceLink));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isCanceledByBot),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(photo),
        const DeepCollectionEquality().hash(invoiceLink)
      ]);
}
