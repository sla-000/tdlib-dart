// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The footer of the page
@immutable
class InputPageBlockFooter extends InputPageBlock {
  const InputPageBlockFooter({
    required this.footer,
  });

  /// [footer] Footer
  final RichText footer;

  static const String constructor = 'inputPageBlockFooter';

  static InputPageBlockFooter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPageBlockFooter(
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
          other is InputPageBlockFooter &&
          const DeepCollectionEquality().equals(other.footer, footer));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(footer)]);
}
