// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes result of story report
@immutable
abstract class ReportStoryResult extends TdObject {
  const ReportStoryResult();

  static const String constructor = 'reportStoryResult';

  /// Inherited by:
  /// [ReportStoryResultOk]
  /// [ReportStoryResultOptionRequired]
  /// [ReportStoryResultTextRequired]
  static ReportStoryResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReportStoryResultOk.constructor:
        return ReportStoryResultOk.fromJson(json);
      case ReportStoryResultOptionRequired.constructor:
        return ReportStoryResultOptionRequired.fromJson(json);
      case ReportStoryResultTextRequired.constructor:
        return ReportStoryResultTextRequired.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ReportStoryResult);

  @override
  int get hashCode => runtimeType.hashCode;
}
