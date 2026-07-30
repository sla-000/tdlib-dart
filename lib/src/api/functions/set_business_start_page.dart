// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the business start page of the current user. Requires Telegram
/// Business subscription
/// Returns [Ok]
@immutable
class SetBusinessStartPage extends TdFunction {
  const SetBusinessStartPage({
    this.startPage,
  });

  /// [startPage] The new start page of the business; pass null to remove custom
  /// start page
  final InputBusinessStartPage? startPage;

  static const String constructor = 'setBusinessStartPage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'start_page': startPage?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetBusinessStartPage &&
          const DeepCollectionEquality().equals(other.startPage, startPage));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(startPage)]);
}
