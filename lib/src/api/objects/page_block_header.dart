// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A header; instant view only
@immutable
class PageBlockHeader extends PageBlock {
  const PageBlockHeader({
    required this.header,
  });

  /// [header] Header
  final RichText header;

  static const String constructor = 'pageBlockHeader';

  static PageBlockHeader? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockHeader(
      header: RichText.fromJson(json['header'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'header': header.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockHeader &&
          const DeepCollectionEquality().equals(other.header, header));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(header)]);
}
