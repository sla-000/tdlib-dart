// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns saved animations
/// Returns [Animations]
@immutable
class GetSavedAnimations extends TdFunction {
  const GetSavedAnimations();

  static const String constructor = 'getSavedAnimations';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetSavedAnimations);

  @override
  int get hashCode => runtimeType.hashCode;
}
