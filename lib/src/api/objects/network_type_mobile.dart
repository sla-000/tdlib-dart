// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A mobile network
@immutable
class NetworkTypeMobile extends NetworkType {
  const NetworkTypeMobile();

  static const String constructor = 'networkTypeMobile';

  static NetworkTypeMobile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NetworkTypeMobile();
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
      (other.runtimeType == runtimeType && other is NetworkTypeMobile);

  @override
  int get hashCode => runtimeType.hashCode;
}
