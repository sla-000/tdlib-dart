// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The post was declined
@immutable
class SuggestedPostStateDeclined extends SuggestedPostState {
  const SuggestedPostStateDeclined();

  static const String constructor = 'suggestedPostStateDeclined';

  static SuggestedPostStateDeclined? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedPostStateDeclined();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is SuggestedPostStateDeclined);

  @override
  int get hashCode => runtimeType.hashCode;
}
