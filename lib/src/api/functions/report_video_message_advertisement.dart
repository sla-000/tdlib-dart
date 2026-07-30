// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Reports a video message advertisement to Telegram moderators
/// Returns [ReportSponsoredResult]
@immutable
class ReportVideoMessageAdvertisement extends TdFunction {
  const ReportVideoMessageAdvertisement({
    required this.advertisementUniqueId,
    required this.optionId,
  });

  /// [advertisementUniqueId] Unique identifier of the advertisement
  final int advertisementUniqueId;

  /// [optionId] Option identifier chosen by the user; leave empty for the
  /// initial request
  final String optionId;

  static const String constructor = 'reportVideoMessageAdvertisement';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'advertisement_unique_id': advertisementUniqueId,
        'option_id': optionId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is ReportVideoMessageAdvertisement &&
          const DeepCollectionEquality()
              .equals(other.advertisementUniqueId, advertisementUniqueId) &&
          const DeepCollectionEquality().equals(other.optionId, optionId));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(advertisementUniqueId),
        const DeepCollectionEquality().hash(optionId)
      ]);
}
