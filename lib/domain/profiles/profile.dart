import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

@freezed
abstract class Profile with _$Profile {
  const factory Profile({
    @required String id,
    @required String name,
    @required String email,

    /// The team ids in which this customer is in
    @required List<String> teamIds,
  }) = _Profile;
}
