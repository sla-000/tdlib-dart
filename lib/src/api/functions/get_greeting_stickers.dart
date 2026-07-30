// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns greeting stickers from regular sticker sets that can be used for
/// the start page of other users
/// Returns [Stickers]
@immutable
class GetGreetingStickers extends TdFunction {
  const GetGreetingStickers();

  static const String constructor = 'getGreetingStickers';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is GetGreetingStickers);

  @override
  int get hashCode => runtimeType.hashCode;
}
