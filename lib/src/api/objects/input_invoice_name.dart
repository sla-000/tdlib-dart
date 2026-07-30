// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// An invoice from a link of the type internalLinkTypeInvoice
@immutable
class InputInvoiceName extends InputInvoice {
  const InputInvoiceName({
    required this.name,
  });

  /// [name] Name of the invoice
  final String name;

  static const String constructor = 'inputInvoiceName';

  static InputInvoiceName? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInvoiceName(
      name: json['name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputInvoiceName &&
          const DeepCollectionEquality().equals(other.name, name));

  @override
  int get hashCode =>
      Object.hashAll([runtimeType, const DeepCollectionEquality().hash(name)]);
}
