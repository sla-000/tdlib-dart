import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an instant view page for a web page
@immutable
class WebPageInstantView extends TdObject {
  const WebPageInstantView({
    required this.blocks,
    required this.viewCount,
    required this.version,
    required this.isRtl,
    required this.isFull,
    required this.feedbackLink,
  });

  /// [blocks] Content of the instant view page
  final List<PageBlock> blocks;

  /// [viewCount] Number of the instant view views; 0 if unknown
  final int viewCount;

  /// [version] Version of the instant view; currently, can be 1 or 2
  final int version;

  /// [isRtl] True, if the instant view must be shown from right to left
  final bool isRtl;

  /// [isFull] True, if the instant view contains the full page. A network
  /// request might be needed to get the full instant view
  final bool isFull;

  /// [feedbackLink] An internal link to be opened to leave feedback about the
  /// instant view
  final InternalLinkType feedbackLink;

  static const String constructor = 'webPageInstantView';

  static WebPageInstantView? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WebPageInstantView(
      blocks: List<PageBlock>.from(
          ((json['blocks'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PageBlock.fromJson(item))
              .toList()),
      viewCount: json['view_count'] as int,
      version: json['version'] as int,
      isRtl: json['is_rtl'] as bool,
      isFull: json['is_full'] as bool,
      feedbackLink: InternalLinkType.fromJson(
          json['feedback_link'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'blocks': blocks.map((item) => item.toJson()).toList(),
        'view_count': viewCount,
        'version': version,
        'is_rtl': isRtl,
        'is_full': isFull,
        'feedback_link': feedbackLink.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
