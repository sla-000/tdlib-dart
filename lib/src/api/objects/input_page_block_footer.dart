import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
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
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
