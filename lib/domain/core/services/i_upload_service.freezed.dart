// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'i_upload_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UploadServiceFailureTearOff {
  const _$UploadServiceFailureTearOff();

// ignore: unused_element
  UploadFailed uploadFailed(
      {@required List<IEntity> uploadedEntities, String errorMessage}) {
    return UploadFailed(
      uploadedEntities: uploadedEntities,
      errorMessage: errorMessage,
    );
  }

// ignore: unused_element
  UploadTimedout uploadTimedout({@required List<IEntity> uploadedEntities}) {
    return UploadTimedout(
      uploadedEntities: uploadedEntities,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UploadServiceFailure = _$UploadServiceFailureTearOff();

/// @nodoc
mixin _$UploadServiceFailure {
  List<IEntity> get uploadedEntities;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult uploadFailed(
            List<IEntity> uploadedEntities, String errorMessage),
    @required TResult uploadTimedout(List<IEntity> uploadedEntities),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult uploadFailed(List<IEntity> uploadedEntities, String errorMessage),
    TResult uploadTimedout(List<IEntity> uploadedEntities),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult uploadFailed(UploadFailed value),
    @required TResult uploadTimedout(UploadTimedout value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult uploadFailed(UploadFailed value),
    TResult uploadTimedout(UploadTimedout value),
    @required TResult orElse(),
  });

  $UploadServiceFailureCopyWith<UploadServiceFailure> get copyWith;
}

/// @nodoc
abstract class $UploadServiceFailureCopyWith<$Res> {
  factory $UploadServiceFailureCopyWith(UploadServiceFailure value,
          $Res Function(UploadServiceFailure) then) =
      _$UploadServiceFailureCopyWithImpl<$Res>;
  $Res call({List<IEntity> uploadedEntities});
}

/// @nodoc
class _$UploadServiceFailureCopyWithImpl<$Res>
    implements $UploadServiceFailureCopyWith<$Res> {
  _$UploadServiceFailureCopyWithImpl(this._value, this._then);

  final UploadServiceFailure _value;
  // ignore: unused_field
  final $Res Function(UploadServiceFailure) _then;

  @override
  $Res call({
    Object uploadedEntities = freezed,
  }) {
    return _then(_value.copyWith(
      uploadedEntities: uploadedEntities == freezed
          ? _value.uploadedEntities
          : uploadedEntities as List<IEntity>,
    ));
  }
}

/// @nodoc
abstract class $UploadFailedCopyWith<$Res>
    implements $UploadServiceFailureCopyWith<$Res> {
  factory $UploadFailedCopyWith(
          UploadFailed value, $Res Function(UploadFailed) then) =
      _$UploadFailedCopyWithImpl<$Res>;
  @override
  $Res call({List<IEntity> uploadedEntities, String errorMessage});
}

/// @nodoc
class _$UploadFailedCopyWithImpl<$Res>
    extends _$UploadServiceFailureCopyWithImpl<$Res>
    implements $UploadFailedCopyWith<$Res> {
  _$UploadFailedCopyWithImpl(
      UploadFailed _value, $Res Function(UploadFailed) _then)
      : super(_value, (v) => _then(v as UploadFailed));

  @override
  UploadFailed get _value => super._value as UploadFailed;

  @override
  $Res call({
    Object uploadedEntities = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(UploadFailed(
      uploadedEntities: uploadedEntities == freezed
          ? _value.uploadedEntities
          : uploadedEntities as List<IEntity>,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$UploadFailed implements UploadFailed {
  const _$UploadFailed({@required this.uploadedEntities, this.errorMessage})
      : assert(uploadedEntities != null);

  @override
  final List<IEntity> uploadedEntities;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'UploadServiceFailure.uploadFailed(uploadedEntities: $uploadedEntities, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UploadFailed &&
            (identical(other.uploadedEntities, uploadedEntities) ||
                const DeepCollectionEquality()
                    .equals(other.uploadedEntities, uploadedEntities)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uploadedEntities) ^
      const DeepCollectionEquality().hash(errorMessage);

  @override
  $UploadFailedCopyWith<UploadFailed> get copyWith =>
      _$UploadFailedCopyWithImpl<UploadFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult uploadFailed(
            List<IEntity> uploadedEntities, String errorMessage),
    @required TResult uploadTimedout(List<IEntity> uploadedEntities),
  }) {
    assert(uploadFailed != null);
    assert(uploadTimedout != null);
    return uploadFailed(uploadedEntities, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult uploadFailed(List<IEntity> uploadedEntities, String errorMessage),
    TResult uploadTimedout(List<IEntity> uploadedEntities),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadFailed != null) {
      return uploadFailed(uploadedEntities, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult uploadFailed(UploadFailed value),
    @required TResult uploadTimedout(UploadTimedout value),
  }) {
    assert(uploadFailed != null);
    assert(uploadTimedout != null);
    return uploadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult uploadFailed(UploadFailed value),
    TResult uploadTimedout(UploadTimedout value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadFailed != null) {
      return uploadFailed(this);
    }
    return orElse();
  }
}

abstract class UploadFailed implements UploadServiceFailure {
  const factory UploadFailed(
      {@required List<IEntity> uploadedEntities,
      String errorMessage}) = _$UploadFailed;

  @override
  List<IEntity> get uploadedEntities;
  String get errorMessage;
  @override
  $UploadFailedCopyWith<UploadFailed> get copyWith;
}

/// @nodoc
abstract class $UploadTimedoutCopyWith<$Res>
    implements $UploadServiceFailureCopyWith<$Res> {
  factory $UploadTimedoutCopyWith(
          UploadTimedout value, $Res Function(UploadTimedout) then) =
      _$UploadTimedoutCopyWithImpl<$Res>;
  @override
  $Res call({List<IEntity> uploadedEntities});
}

/// @nodoc
class _$UploadTimedoutCopyWithImpl<$Res>
    extends _$UploadServiceFailureCopyWithImpl<$Res>
    implements $UploadTimedoutCopyWith<$Res> {
  _$UploadTimedoutCopyWithImpl(
      UploadTimedout _value, $Res Function(UploadTimedout) _then)
      : super(_value, (v) => _then(v as UploadTimedout));

  @override
  UploadTimedout get _value => super._value as UploadTimedout;

  @override
  $Res call({
    Object uploadedEntities = freezed,
  }) {
    return _then(UploadTimedout(
      uploadedEntities: uploadedEntities == freezed
          ? _value.uploadedEntities
          : uploadedEntities as List<IEntity>,
    ));
  }
}

/// @nodoc
class _$UploadTimedout implements UploadTimedout {
  const _$UploadTimedout({@required this.uploadedEntities})
      : assert(uploadedEntities != null);

  @override
  final List<IEntity> uploadedEntities;

  @override
  String toString() {
    return 'UploadServiceFailure.uploadTimedout(uploadedEntities: $uploadedEntities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UploadTimedout &&
            (identical(other.uploadedEntities, uploadedEntities) ||
                const DeepCollectionEquality()
                    .equals(other.uploadedEntities, uploadedEntities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uploadedEntities);

  @override
  $UploadTimedoutCopyWith<UploadTimedout> get copyWith =>
      _$UploadTimedoutCopyWithImpl<UploadTimedout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult uploadFailed(
            List<IEntity> uploadedEntities, String errorMessage),
    @required TResult uploadTimedout(List<IEntity> uploadedEntities),
  }) {
    assert(uploadFailed != null);
    assert(uploadTimedout != null);
    return uploadTimedout(uploadedEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult uploadFailed(List<IEntity> uploadedEntities, String errorMessage),
    TResult uploadTimedout(List<IEntity> uploadedEntities),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadTimedout != null) {
      return uploadTimedout(uploadedEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult uploadFailed(UploadFailed value),
    @required TResult uploadTimedout(UploadTimedout value),
  }) {
    assert(uploadFailed != null);
    assert(uploadTimedout != null);
    return uploadTimedout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult uploadFailed(UploadFailed value),
    TResult uploadTimedout(UploadTimedout value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (uploadTimedout != null) {
      return uploadTimedout(this);
    }
    return orElse();
  }
}

abstract class UploadTimedout implements UploadServiceFailure {
  const factory UploadTimedout({@required List<IEntity> uploadedEntities}) =
      _$UploadTimedout;

  @override
  List<IEntity> get uploadedEntities;
  @override
  $UploadTimedoutCopyWith<UploadTimedout> get copyWith;
}
