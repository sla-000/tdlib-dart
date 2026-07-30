// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns detailed Toncoin revenue statistics of the current user
/// Returns [TonRevenueStatistics]
@immutable
class GetTonRevenueStatistics extends TdFunction {
  const GetTonRevenueStatistics({
    required this.isDark,
  });

  /// [isDark] Pass true if a dark theme is used by the application
  final bool isDark;

  static const String constructor = 'getTonRevenueStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_dark': isDark,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetTonRevenueStatistics &&
          const DeepCollectionEquality().equals(other.isDark, isDark));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(isDark)]);
}
