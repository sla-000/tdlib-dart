// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The group call is accessible through a link
@immutable
class InputGroupCallLink extends InputGroupCall {
  const InputGroupCallLink({
    required this.link,
  });

  /// [link] The link for the group call
  final String link;

  static const String constructor = 'inputGroupCallLink';

  static InputGroupCallLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputGroupCallLink(
      link: json['link'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link': link,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputGroupCallLink &&
          const DeepCollectionEquality().equals(other.link, link));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(link)]);
}
