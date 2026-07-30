// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The content must be middle-aligned
@immutable
class PageBlockVerticalAlignmentMiddle extends PageBlockVerticalAlignment {
  const PageBlockVerticalAlignmentMiddle();

  static const String constructor = 'pageBlockVerticalAlignmentMiddle';

  static PageBlockVerticalAlignmentMiddle? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PageBlockVerticalAlignmentMiddle();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockVerticalAlignmentMiddle);

  @override
  int get hashCode => runtimeType.hashCode;
}
