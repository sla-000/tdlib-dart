// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link forces restore of App Store purchases when opened. For official
/// iOS application only
@immutable
class InternalLinkTypeRestorePurchases extends InternalLinkType {
  const InternalLinkTypeRestorePurchases();

  static const String constructor = 'internalLinkTypeRestorePurchases';

  static InternalLinkTypeRestorePurchases? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeRestorePurchases();
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
          other is InternalLinkTypeRestorePurchases);

  @override
  int get hashCode => runtimeType.hashCode;
}
