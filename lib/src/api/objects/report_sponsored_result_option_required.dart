// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The user must choose an option to report the message and repeat request
/// with the chosen option
@immutable
class ReportSponsoredResultOptionRequired extends ReportSponsoredResult {
  const ReportSponsoredResultOptionRequired({
    required this.title,
    required this.options,
  });

  /// [title] Title for the option choice
  final String title;

  /// [options] List of available options
  final List<ReportOption> options;

  static const String constructor = 'reportSponsoredResultOptionRequired';

  static ReportSponsoredResultOptionRequired? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportSponsoredResultOptionRequired(
      title: json['title'] as String,
      options: List<ReportOption>.from(
          ((json['options'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ReportOption.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'options': options.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReportSponsoredResultOptionRequired &&
          const DeepCollectionEquality().equals(other.title, title) &&
          const DeepCollectionEquality().equals(other.options, options));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(options)
      ]);
}
