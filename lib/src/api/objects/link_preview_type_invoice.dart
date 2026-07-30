// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// The link is a link to an invoice
@immutable
class LinkPreviewTypeInvoice extends LinkPreviewType {
  const LinkPreviewTypeInvoice();

  static const String constructor = 'linkPreviewTypeInvoice';

  static LinkPreviewTypeInvoice? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const LinkPreviewTypeInvoice();
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
      (other.runtimeType == runtimeType && other is LinkPreviewTypeInvoice);

  @override
  int get hashCode => runtimeType.hashCode;
}
