// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Describes result of chat report
@immutable
abstract class ReportChatResult extends TdObject {
  const ReportChatResult();

  static const String constructor = 'reportChatResult';

  /// Inherited by:
  /// [ReportChatResultMessagesRequired]
  /// [ReportChatResultOk]
  /// [ReportChatResultOptionRequired]
  /// [ReportChatResultTextRequired]
  static ReportChatResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ReportChatResultMessagesRequired.constructor:
        return ReportChatResultMessagesRequired.fromJson(json);
      case ReportChatResultOk.constructor:
        return ReportChatResultOk.fromJson(json);
      case ReportChatResultOptionRequired.constructor:
        return ReportChatResultOptionRequired.fromJson(json);
      case ReportChatResultTextRequired.constructor:
        return ReportChatResultTextRequired.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType && other is ReportChatResult);

  @override
  int get hashCode => runtimeType.hashCode;
}
