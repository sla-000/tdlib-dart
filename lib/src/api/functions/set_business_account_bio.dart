// ignore: unused_import
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import '../tdapi.dart';

/// Changes the bio of a business account; for bots only
/// Returns [Ok]
@immutable
class SetBusinessAccountBio extends TdFunction {
  const SetBusinessAccountBio({
    required this.businessConnectionId,
    required this.bio,
  });

  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  /// [bio] The new value of the bio; 0-getOption("bio_length_max") characters
  /// without line feeds
  final String bio;

  static const String constructor = 'setBusinessAccountBio';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'business_connection_id': businessConnectionId,
        'bio': bio,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other.runtimeType == runtimeType &&
          other is SetBusinessAccountBio &&
          const DeepCollectionEquality()
              .equals(other.businessConnectionId, businessConnectionId) &&
          const DeepCollectionEquality().equals(other.bio, bio));

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(businessConnectionId),
        const DeepCollectionEquality().hash(bio)
      ]);
}
