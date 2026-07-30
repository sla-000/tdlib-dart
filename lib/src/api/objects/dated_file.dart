// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// File with the date it was uploaded
@immutable
class DatedFile extends TdObject {
  const DatedFile({
    required this.file,
    required this.date,
  });

  /// [file] The file
  final File file;

  /// [date] Point in time (Unix timestamp) when the file was uploaded
  final int date;

  static const String constructor = 'datedFile';

  static DatedFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DatedFile(
      file: File.fromJson(json['file'] as Map<String, dynamic>?)!,
      date: json['date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'file': file.toJson(),
        'date': date,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is DatedFile &&
          const DeepCollectionEquality().equals(other.file, file) &&
          const DeepCollectionEquality().equals(other.date, date));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(file),
        const DeepCollectionEquality().hash(date)
      ]);
}
