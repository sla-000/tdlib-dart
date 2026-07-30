// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The footer of a page
@immutable
class PageBlockFooter extends PageBlock {
  const PageBlockFooter({
    required this.footer,
  });

  /// [footer] Footer
  final RichText footer;

  static const String constructor = 'pageBlockFooter';

  static PageBlockFooter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockFooter(
      footer: RichText.fromJson(json['footer'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'footer': footer.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockFooter &&
          const DeepCollectionEquality().equals(other.footer, footer));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(footer)]);
}
