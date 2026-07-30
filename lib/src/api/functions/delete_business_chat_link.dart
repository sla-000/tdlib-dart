// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes a business chat link of the current account
/// Returns [Ok]
@immutable
class DeleteBusinessChatLink extends TdFunction {
  const DeleteBusinessChatLink({
    required this.link,
  });

  /// [link] The link to delete
  final String link;

  static const String constructor = 'deleteBusinessChatLink';

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
          other is DeleteBusinessChatLink &&
          const DeepCollectionEquality().equals(other.link, link));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(link)]);
}
