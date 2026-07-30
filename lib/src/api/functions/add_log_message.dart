// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Adds a message to TDLib internal log. Can be called synchronously
/// Returns [Ok]
@immutable
class AddLogMessage extends TdFunction {
  const AddLogMessage({
    required this.verbosityLevel,
    required this.text,
  });

  /// [verbosityLevel] The minimum verbosity level needed for the message to be
  /// logged; 0-1023
  final int verbosityLevel;

  /// [text] Text of a message to log
  final String text;

  static const String constructor = 'addLogMessage';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'verbosity_level': verbosityLevel,
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is AddLogMessage &&
          const DeepCollectionEquality()
              .equals(other.verbosityLevel, verbosityLevel) &&
          const DeepCollectionEquality().equals(other.text, text));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(verbosityLevel),
        const DeepCollectionEquality().hash(text)
      ]);
}
