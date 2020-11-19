// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AttachmentTearOff {
  const _$AttachmentTearOff();

// ignore: unused_element
  _Attachment call(
      {@required String label, @required String name, @required String url}) {
    return _Attachment(
      label: label,
      name: name,
      url: url,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Attachment = _$AttachmentTearOff();

/// @nodoc
mixin _$Attachment {
  String get label;
  String get name;
  String get url;

  $AttachmentCopyWith<Attachment> get copyWith;
}

/// @nodoc
abstract class $AttachmentCopyWith<$Res> {
  factory $AttachmentCopyWith(
          Attachment value, $Res Function(Attachment) then) =
      _$AttachmentCopyWithImpl<$Res>;
  $Res call({String label, String name, String url});
}

/// @nodoc
class _$AttachmentCopyWithImpl<$Res> implements $AttachmentCopyWith<$Res> {
  _$AttachmentCopyWithImpl(this._value, this._then);

  final Attachment _value;
  // ignore: unused_field
  final $Res Function(Attachment) _then;

  @override
  $Res call({
    Object label = freezed,
    Object name = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed ? _value.label : label as String,
      name: name == freezed ? _value.name : name as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
abstract class _$AttachmentCopyWith<$Res> implements $AttachmentCopyWith<$Res> {
  factory _$AttachmentCopyWith(
          _Attachment value, $Res Function(_Attachment) then) =
      __$AttachmentCopyWithImpl<$Res>;
  @override
  $Res call({String label, String name, String url});
}

/// @nodoc
class __$AttachmentCopyWithImpl<$Res> extends _$AttachmentCopyWithImpl<$Res>
    implements _$AttachmentCopyWith<$Res> {
  __$AttachmentCopyWithImpl(
      _Attachment _value, $Res Function(_Attachment) _then)
      : super(_value, (v) => _then(v as _Attachment));

  @override
  _Attachment get _value => super._value as _Attachment;

  @override
  $Res call({
    Object label = freezed,
    Object name = freezed,
    Object url = freezed,
  }) {
    return _then(_Attachment(
      label: label == freezed ? _value.label : label as String,
      name: name == freezed ? _value.name : name as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

/// @nodoc
class _$_Attachment implements _Attachment {
  const _$_Attachment(
      {@required this.label, @required this.name, @required this.url})
      : assert(label != null),
        assert(name != null),
        assert(url != null);

  @override
  final String label;
  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'Attachment(label: $label, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Attachment &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url);

  @override
  _$AttachmentCopyWith<_Attachment> get copyWith =>
      __$AttachmentCopyWithImpl<_Attachment>(this, _$identity);
}

abstract class _Attachment implements Attachment {
  const factory _Attachment(
      {@required String label,
      @required String name,
      @required String url}) = _$_Attachment;

  @override
  String get label;
  @override
  String get name;
  @override
  String get url;
  @override
  _$AttachmentCopyWith<_Attachment> get copyWith;
}
