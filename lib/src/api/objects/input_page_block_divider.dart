// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An empty block separating the page
@immutable
class InputPageBlockDivider extends InputPageBlock {
  const InputPageBlockDivider();

  static const String constructor = 'inputPageBlockDivider';

  static InputPageBlockDivider? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InputPageBlockDivider();
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
      (other.runtimeType == runtimeType && other is InputPageBlockDivider);

  @override
  int get hashCode => runtimeType.hashCode;
}
