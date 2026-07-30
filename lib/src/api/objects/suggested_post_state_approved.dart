// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The post was approved
@immutable
class SuggestedPostStateApproved extends SuggestedPostState {
  const SuggestedPostStateApproved();

  static const String constructor = 'suggestedPostStateApproved';

  static SuggestedPostStateApproved? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SuggestedPostStateApproved();
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
      (other.runtimeType == runtimeType && other is SuggestedPostStateApproved);

  @override
  int get hashCode => runtimeType.hashCode;
}
