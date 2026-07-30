// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes a symbol shown on the pattern of an upgraded gift
@immutable
class UpgradedGiftSymbolCount extends TdObject {
  const UpgradedGiftSymbolCount({
    required this.symbol,
    required this.totalCount,
  });

  /// [symbol] The symbol
  final UpgradedGiftSymbol symbol;

  /// [totalCount] Total number of gifts with the symbol
  final int totalCount;

  static const String constructor = 'upgradedGiftSymbolCount';

  static UpgradedGiftSymbolCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftSymbolCount(
      symbol:
          UpgradedGiftSymbol.fromJson(json['symbol'] as Map<String, dynamic>?)!,
      totalCount: (json['total_count'] as int?) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'symbol': symbol.toJson(),
        'total_count': totalCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is UpgradedGiftSymbolCount &&
          const DeepCollectionEquality().equals(other.symbol, symbol) &&
          const DeepCollectionEquality().equals(other.totalCount, totalCount));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(symbol),
        const DeepCollectionEquality().hash(totalCount)
      ]);
}
