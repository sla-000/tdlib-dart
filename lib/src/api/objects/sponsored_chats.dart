// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a list of sponsored chats
@immutable
class SponsoredChats extends TdObject {
  const SponsoredChats({
    required this.chats,
  });

  /// [chats] List of sponsored chats
  final List<SponsoredChat> chats;

  static const String constructor = 'sponsoredChats';

  static SponsoredChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SponsoredChats(
      chats: List<SponsoredChat>.from(((json['chats'] as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => SponsoredChat.fromJson(item as Map<String, dynamic>?))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chats': chats.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SponsoredChats &&
          const DeepCollectionEquality().equals(other.chats, chats));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(chats)]);
}
