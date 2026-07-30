// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Deletes saved order information
/// Returns [Ok]
@immutable
class DeleteSavedOrderInfo extends TdFunction {
  const DeleteSavedOrderInfo();

  static const String constructor = 'deleteSavedOrderInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is DeleteSavedOrderInfo);

  @override
  int get hashCode => runtimeType.hashCode;
}
