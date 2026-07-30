// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to a language pack. Call getLanguagePackInfo with the
/// given language pack identifier to process the link. If the language pack
/// is found and the user wants to apply it, then call setOption for the
/// option "language_pack_id"
@immutable
class InternalLinkTypeLanguagePack extends InternalLinkType {
  const InternalLinkTypeLanguagePack({
    required this.languagePackId,
  });

  /// [languagePackId] Language pack identifier
  final String languagePackId;

  static const String constructor = 'internalLinkTypeLanguagePack';

  static InternalLinkTypeLanguagePack? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeLanguagePack(
      languagePackId: (json['language_pack_id'] as String?) ?? '',
    );
  }

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
          other is InternalLinkTypeLanguagePack &&
          const DeepCollectionEquality()
              .equals(other.languagePackId, languagePackId));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(languagePackId)]);
}
