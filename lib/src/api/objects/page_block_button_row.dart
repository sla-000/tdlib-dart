// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// A list of buttons shown in a row
@immutable
class PageBlockButtonRow extends PageBlock {
  const PageBlockButtonRow({
    required this.buttons,
    this.align,
  });

  /// [buttons] The buttons
  final List<InlineButton> buttons;

  /// [align] Horizontal alignment of the buttons; may be null if the buttons
  /// must be shown full-width
  final PageBlockHorizontalAlignment? align;

  static const String constructor = 'pageBlockButtonRow';

  static PageBlockButtonRow? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockButtonRow(
      buttons: List<InlineButton>.from(((json['buttons'] as List<dynamic>?) ??
              <dynamic>[])
          .map((item) => InlineButton.fromJson(item as Map<String, dynamic>?))
          .toList()),
      align: PageBlockHorizontalAlignment.fromJson(
          json['align'] as Map<String, dynamic>?),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'buttons': buttons.map((item) => item.toJson()).toList(),
        'align': align?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is PageBlockButtonRow &&
          const DeepCollectionEquality().equals(other.buttons, buttons) &&
          const DeepCollectionEquality().equals(other.align, align));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(buttons),
        const DeepCollectionEquality().hash(align)
      ]);
}
