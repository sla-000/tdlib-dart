import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The levels of live story group call messages have changed
@immutable
class UpdateGroupCallMessageLevels extends Update {
  const UpdateGroupCallMessageLevels({
    required this.levels,
  });

  /// [levels] New description of the levels in decreasing order of
  /// groupCallMessageLevel.min_star_count
  final List<GroupCallMessageLevel> levels;

  static const String constructor = 'updateGroupCallMessageLevels';

  static UpdateGroupCallMessageLevels? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateGroupCallMessageLevels(
      levels: List<GroupCallMessageLevel>.from(
          ((json['levels'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => GroupCallMessageLevel.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'levels': levels.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
