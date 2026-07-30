// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The post must be approved or declined
@immutable
class SuggestedPostStatePending extends SuggestedPostState {
  const SuggestedPostStatePending();

  static const String constructor = 'suggestedPostStatePending';

  static SuggestedPostStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedPostStatePending();
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
      (other.runtimeType == runtimeType && other is SuggestedPostStatePending);

  @override
  int get hashCode => runtimeType.hashCode;
}
