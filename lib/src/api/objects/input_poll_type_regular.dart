// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A regular poll
@immutable
class InputPollTypeRegular extends InputPollType {
  const InputPollTypeRegular({
    required this.allowAddingOptions,
  });

  /// [allowAddingOptions] True, if answer options can be added to the poll
  /// after creation; not supported in channel chats and for anonymous polls
  final bool allowAddingOptions;

  static const String constructor = 'inputPollTypeRegular';

  static InputPollTypeRegular? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputPollTypeRegular(
      allowAddingOptions: json['allow_adding_options'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'allow_adding_options': allowAddingOptions,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is InputPollTypeRegular &&
          const DeepCollectionEquality()
              .equals(other.allowAddingOptions, allowAddingOptions));

  @override
  int get hashCode => Object.hashAll(
      [runtimeType, const DeepCollectionEquality().hash(allowAddingOptions)]);
}
