import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds a custom text composition style to the list of used by the user
/// styles. May return an error with a message "TONES_SAVED_TOO_MANY" if the
/// maximum number of added custom styles
/// getOption("added_text_composition_style_count_max") has been reached
/// Returns [Ok]
@immutable
class AddTextCompositionStyle extends TdFunction {
  const AddTextCompositionStyle({
    required this.name,
  });

  /// [name] Name of the style
  final String name;

  static const String constructor = 'addTextCompositionStyle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
