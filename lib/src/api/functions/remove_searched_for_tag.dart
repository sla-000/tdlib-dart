// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Removes a hashtag or a cashtag from the list of recently searched for
/// hashtags or cashtags
/// Returns [Ok]
@immutable
class RemoveSearchedForTag extends TdFunction {
  const RemoveSearchedForTag({
    required this.tag,
  });

  /// [tag] Hashtag or cashtag to delete
  final String tag;

  static const String constructor = 'removeSearchedForTag';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'tag': tag,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is RemoveSearchedForTag &&
          const DeepCollectionEquality().equals(other.tag, tag));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(tag)]);
}
