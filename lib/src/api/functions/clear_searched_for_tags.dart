// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Clears the list of recently searched for hashtags or cashtags
/// Returns [Ok]
@immutable
class ClearSearchedForTags extends TdFunction {
  const ClearSearchedForTags({
    required this.clearCashtags,
  });

  /// [clearCashtags] Pass true to clear the list of recently searched for
  /// cashtags; otherwise, the list of recently searched for hashtags will be
  /// cleared
  final bool clearCashtags;

  static const String constructor = 'clearSearchedForTags';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'clear_cashtags': clearCashtags,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ClearSearchedForTags &&
          const DeepCollectionEquality()
              .equals(other.clearCashtags, clearCashtags));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(clearCashtags)]);
}
