import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a type of the web browser which must be used to open the link
/// Returns [WebBrowserType]
@immutable
class GetLinkWebBrowserType extends TdFunction {
  const GetLinkWebBrowserType({
    required this.link,
  });

  /// [link] The HTTP link
  final String link;

  static const String constructor = 'getLinkWebBrowserType';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link': link,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
