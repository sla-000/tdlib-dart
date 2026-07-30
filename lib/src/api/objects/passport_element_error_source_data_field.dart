// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// One of the data fields contains an error. The error will be considered
/// resolved when the value of the field changes
@immutable
class PassportElementErrorSourceDataField extends PassportElementErrorSource {
  const PassportElementErrorSourceDataField({
    required this.fieldName,
  });

  /// [fieldName] Field name
  final String fieldName;

  static const String constructor = 'passportElementErrorSourceDataField';

  static PassportElementErrorSourceDataField? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementErrorSourceDataField(
      fieldName: (json['field_name'] as String?) ?? '',
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'field_name': fieldName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PassportElementErrorSourceDataField &&
          const DeepCollectionEquality().equals(other.fieldName, fieldName));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(fieldName)]);
}
