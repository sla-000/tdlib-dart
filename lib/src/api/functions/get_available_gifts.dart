// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns gifts that can be sent to other users and channel chats
/// Returns [AvailableGifts]
@immutable
class GetAvailableGifts extends TdFunction {
  const GetAvailableGifts();

  static const String constructor = 'getAvailableGifts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetAvailableGifts);

  @override
  int get hashCode => runtimeType.hashCode;
}
