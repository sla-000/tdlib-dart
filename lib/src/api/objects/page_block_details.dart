// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A collapsible block
@immutable
class PageBlockDetails extends PageBlock {
  const PageBlockDetails({
    required this.header,
    required this.pageBlocks,
    required this.isOpen,
  });

  /// [header] Always visible heading for the block
  final RichText header;

  /// [pageBlocks] Block contents
  final List<PageBlock> pageBlocks;

  /// [isOpen] True, if the block is open by default
  final bool isOpen;

  static const String constructor = 'pageBlockDetails';

  static PageBlockDetails? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockDetails(
      header: RichText.fromJson(json['header'] as Map<String, dynamic>?)!,
      pageBlocks: List<PageBlock>.from(
          ((json['page_blocks'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PageBlock.fromJson(item as Map<String, dynamic>?))
              .toList()),
      isOpen: (json['is_open'] as bool?) ?? false,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'header': header.toJson(),
        'page_blocks': pageBlocks.map((item) => item.toJson()).toList(),
        'is_open': isOpen,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockDetails &&
          const DeepCollectionEquality().equals(other.header, header) &&
          const DeepCollectionEquality().equals(other.pageBlocks, pageBlocks) &&
          const DeepCollectionEquality().equals(other.isOpen, isOpen));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(header),
        const DeepCollectionEquality().hash(pageBlocks),
        const DeepCollectionEquality().hash(isOpen)
      ]);
}
