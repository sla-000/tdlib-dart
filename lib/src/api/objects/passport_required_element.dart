// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Contains a description of the required Telegram Passport element that was
/// requested by a service
@immutable
class PassportRequiredElement extends TdObject {
  const PassportRequiredElement({
    required this.suitableElements,
  });

  /// [suitableElements] List of Telegram Passport elements any of which is
  /// enough to provide
  final List<PassportSuitableElement> suitableElements;

  static const String constructor = 'passportRequiredElement';

  static PassportRequiredElement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportRequiredElement(
      suitableElements: List<PassportSuitableElement>.from(
          ((json['suitable_elements'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PassportSuitableElement.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'suitable_elements':
            suitableElements.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PassportRequiredElement &&
          const DeepCollectionEquality()
              .equals(other.suitableElements, suitableElements));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(suitableElements)]);
}
