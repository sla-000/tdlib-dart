// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Returns information about a language pack. Returned language pack
/// identifier may be different from a provided one. Can be called before
/// authorization
/// Returns [LanguagePackInfo]
@immutable
class GetLanguagePackInfo extends TdFunction {
  const GetLanguagePackInfo({
    required this.languagePackId,
  });

  /// [languagePackId] Language pack identifier
  final String languagePackId;

  static const String constructor = 'getLanguagePackInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'language_pack_id': languagePackId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is GetLanguagePackInfo &&
          const DeepCollectionEquality()
              .equals(other.languagePackId, languagePackId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(languagePackId)]);
}
