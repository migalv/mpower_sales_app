// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

// ignore: unused_element
  Battery battery(
      {@required String id,
      @required String name,
      @required String sku,
      @required String description}) {
    return Battery(
      id: id,
      name: name,
      sku: sku,
      description: description,
    );
  }

// ignore: unused_element
  Panel panel(
      {@required String id,
      @required String name,
      @required String sku,
      @required String description}) {
    return Panel(
      id: id,
      name: name,
      sku: sku,
      description: description,
    );
  }

// ignore: unused_element
  Load load(
      {@required String id,
      @required String name,
      @required String sku,
      @required String description}) {
    return Load(
      id: id,
      name: name,
      sku: sku,
      description: description,
    );
  }

// ignore: unused_element
  MPowerUnit mPowerUnit(
      {@required String id,
      @required String name,
      @required String sku,
      @required String description}) {
    return MPowerUnit(
      id: id,
      name: name,
      sku: sku,
      description: description,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  String get id;

  /// The name of the product
  String get name;

  /// A 3 digit & 3 letters unique identifier of the product. ex: ABC-123
  String get sku;

  /// The description of the product
  String get description;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result battery(String id, String name, String sku, String description),
    @required
        Result panel(String id, String name, String sku, String description),
    @required
        Result load(String id, String name, String sku, String description),
    @required
        Result mPowerUnit(
            String id, String name, String sku, String description),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result battery(String id, String name, String sku, String description),
    Result panel(String id, String name, String sku, String description),
    Result load(String id, String name, String sku, String description),
    Result mPowerUnit(String id, String name, String sku, String description),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result battery(Battery value),
    @required Result panel(Panel value),
    @required Result load(Load value),
    @required Result mPowerUnit(MPowerUnit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result battery(Battery value),
    Result panel(Panel value),
    Result load(Load value),
    Result mPowerUnit(MPowerUnit value),
    @required Result orElse(),
  });

  $ProductCopyWith<Product> get copyWith;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call({String id, String name, String sku, String description});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object sku = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      sku: sku == freezed ? _value.sku : sku as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class $BatteryCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory $BatteryCopyWith(Battery value, $Res Function(Battery) then) =
      _$BatteryCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String sku, String description});
}

/// @nodoc
class _$BatteryCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements $BatteryCopyWith<$Res> {
  _$BatteryCopyWithImpl(Battery _value, $Res Function(Battery) _then)
      : super(_value, (v) => _then(v as Battery));

  @override
  Battery get _value => super._value as Battery;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object sku = freezed,
    Object description = freezed,
  }) {
    return _then(Battery(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      sku: sku == freezed ? _value.sku : sku as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$Battery implements Battery {
  const _$Battery(
      {@required this.id,
      @required this.name,
      @required this.sku,
      @required this.description})
      : assert(id != null),
        assert(name != null),
        assert(sku != null),
        assert(description != null);

  @override
  final String id;
  @override

  /// The name of the product
  final String name;
  @override

  /// A 3 digit & 3 letters unique identifier of the product. ex: ABC-123
  final String sku;
  @override

  /// The description of the product
  final String description;

  @override
  String toString() {
    return 'Product.battery(id: $id, name: $name, sku: $sku, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Battery &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sku, sku) ||
                const DeepCollectionEquality().equals(other.sku, sku)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sku) ^
      const DeepCollectionEquality().hash(description);

  @override
  $BatteryCopyWith<Battery> get copyWith =>
      _$BatteryCopyWithImpl<Battery>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result battery(String id, String name, String sku, String description),
    @required
        Result panel(String id, String name, String sku, String description),
    @required
        Result load(String id, String name, String sku, String description),
    @required
        Result mPowerUnit(
            String id, String name, String sku, String description),
  }) {
    assert(battery != null);
    assert(panel != null);
    assert(load != null);
    assert(mPowerUnit != null);
    return battery(id, name, sku, description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result battery(String id, String name, String sku, String description),
    Result panel(String id, String name, String sku, String description),
    Result load(String id, String name, String sku, String description),
    Result mPowerUnit(String id, String name, String sku, String description),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (battery != null) {
      return battery(id, name, sku, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result battery(Battery value),
    @required Result panel(Panel value),
    @required Result load(Load value),
    @required Result mPowerUnit(MPowerUnit value),
  }) {
    assert(battery != null);
    assert(panel != null);
    assert(load != null);
    assert(mPowerUnit != null);
    return battery(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result battery(Battery value),
    Result panel(Panel value),
    Result load(Load value),
    Result mPowerUnit(MPowerUnit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (battery != null) {
      return battery(this);
    }
    return orElse();
  }
}

abstract class Battery implements Product {
  const factory Battery(
      {@required String id,
      @required String name,
      @required String sku,
      @required String description}) = _$Battery;

  @override
  String get id;
  @override

  /// The name of the product
  String get name;
  @override

  /// A 3 digit & 3 letters unique identifier of the product. ex: ABC-123
  String get sku;
  @override

  /// The description of the product
  String get description;
  @override
  $BatteryCopyWith<Battery> get copyWith;
}

/// @nodoc
abstract class $PanelCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory $PanelCopyWith(Panel value, $Res Function(Panel) then) =
      _$PanelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String sku, String description});
}

/// @nodoc
class _$PanelCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements $PanelCopyWith<$Res> {
  _$PanelCopyWithImpl(Panel _value, $Res Function(Panel) _then)
      : super(_value, (v) => _then(v as Panel));

  @override
  Panel get _value => super._value as Panel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object sku = freezed,
    Object description = freezed,
  }) {
    return _then(Panel(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      sku: sku == freezed ? _value.sku : sku as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$Panel implements Panel {
  const _$Panel(
      {@required this.id,
      @required this.name,
      @required this.sku,
      @required this.description})
      : assert(id != null),
        assert(name != null),
        assert(sku != null),
        assert(description != null);

  @override
  final String id;
  @override
  final String name;
  @override
  final String sku;
  @override
  final String description;

  @override
  String toString() {
    return 'Product.panel(id: $id, name: $name, sku: $sku, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Panel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sku, sku) ||
                const DeepCollectionEquality().equals(other.sku, sku)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sku) ^
      const DeepCollectionEquality().hash(description);

  @override
  $PanelCopyWith<Panel> get copyWith =>
      _$PanelCopyWithImpl<Panel>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result battery(String id, String name, String sku, String description),
    @required
        Result panel(String id, String name, String sku, String description),
    @required
        Result load(String id, String name, String sku, String description),
    @required
        Result mPowerUnit(
            String id, String name, String sku, String description),
  }) {
    assert(battery != null);
    assert(panel != null);
    assert(load != null);
    assert(mPowerUnit != null);
    return panel(id, name, sku, description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result battery(String id, String name, String sku, String description),
    Result panel(String id, String name, String sku, String description),
    Result load(String id, String name, String sku, String description),
    Result mPowerUnit(String id, String name, String sku, String description),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (panel != null) {
      return panel(id, name, sku, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result battery(Battery value),
    @required Result panel(Panel value),
    @required Result load(Load value),
    @required Result mPowerUnit(MPowerUnit value),
  }) {
    assert(battery != null);
    assert(panel != null);
    assert(load != null);
    assert(mPowerUnit != null);
    return panel(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result battery(Battery value),
    Result panel(Panel value),
    Result load(Load value),
    Result mPowerUnit(MPowerUnit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (panel != null) {
      return panel(this);
    }
    return orElse();
  }
}

abstract class Panel implements Product {
  const factory Panel(
      {@required String id,
      @required String name,
      @required String sku,
      @required String description}) = _$Panel;

  @override
  String get id;
  @override
  String get name;
  @override
  String get sku;
  @override
  String get description;
  @override
  $PanelCopyWith<Panel> get copyWith;
}

/// @nodoc
abstract class $LoadCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory $LoadCopyWith(Load value, $Res Function(Load) then) =
      _$LoadCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String sku, String description});
}

/// @nodoc
class _$LoadCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements $LoadCopyWith<$Res> {
  _$LoadCopyWithImpl(Load _value, $Res Function(Load) _then)
      : super(_value, (v) => _then(v as Load));

  @override
  Load get _value => super._value as Load;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object sku = freezed,
    Object description = freezed,
  }) {
    return _then(Load(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      sku: sku == freezed ? _value.sku : sku as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$Load implements Load {
  const _$Load(
      {@required this.id,
      @required this.name,
      @required this.sku,
      @required this.description})
      : assert(id != null),
        assert(name != null),
        assert(sku != null),
        assert(description != null);

  @override
  final String id;
  @override
  final String name;
  @override
  final String sku;
  @override
  final String description;

  @override
  String toString() {
    return 'Product.load(id: $id, name: $name, sku: $sku, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Load &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sku, sku) ||
                const DeepCollectionEquality().equals(other.sku, sku)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sku) ^
      const DeepCollectionEquality().hash(description);

  @override
  $LoadCopyWith<Load> get copyWith =>
      _$LoadCopyWithImpl<Load>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result battery(String id, String name, String sku, String description),
    @required
        Result panel(String id, String name, String sku, String description),
    @required
        Result load(String id, String name, String sku, String description),
    @required
        Result mPowerUnit(
            String id, String name, String sku, String description),
  }) {
    assert(battery != null);
    assert(panel != null);
    assert(load != null);
    assert(mPowerUnit != null);
    return load(id, name, sku, description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result battery(String id, String name, String sku, String description),
    Result panel(String id, String name, String sku, String description),
    Result load(String id, String name, String sku, String description),
    Result mPowerUnit(String id, String name, String sku, String description),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(id, name, sku, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result battery(Battery value),
    @required Result panel(Panel value),
    @required Result load(Load value),
    @required Result mPowerUnit(MPowerUnit value),
  }) {
    assert(battery != null);
    assert(panel != null);
    assert(load != null);
    assert(mPowerUnit != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result battery(Battery value),
    Result panel(Panel value),
    Result load(Load value),
    Result mPowerUnit(MPowerUnit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class Load implements Product {
  const factory Load(
      {@required String id,
      @required String name,
      @required String sku,
      @required String description}) = _$Load;

  @override
  String get id;
  @override
  String get name;
  @override
  String get sku;
  @override
  String get description;
  @override
  $LoadCopyWith<Load> get copyWith;
}

/// @nodoc
abstract class $MPowerUnitCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory $MPowerUnitCopyWith(
          MPowerUnit value, $Res Function(MPowerUnit) then) =
      _$MPowerUnitCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String sku, String description});
}

/// @nodoc
class _$MPowerUnitCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements $MPowerUnitCopyWith<$Res> {
  _$MPowerUnitCopyWithImpl(MPowerUnit _value, $Res Function(MPowerUnit) _then)
      : super(_value, (v) => _then(v as MPowerUnit));

  @override
  MPowerUnit get _value => super._value as MPowerUnit;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object sku = freezed,
    Object description = freezed,
  }) {
    return _then(MPowerUnit(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      sku: sku == freezed ? _value.sku : sku as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$MPowerUnit implements MPowerUnit {
  const _$MPowerUnit(
      {@required this.id,
      @required this.name,
      @required this.sku,
      @required this.description})
      : assert(id != null),
        assert(name != null),
        assert(sku != null),
        assert(description != null);

  @override
  final String id;
  @override
  final String name;
  @override
  final String sku;
  @override
  final String description;

  @override
  String toString() {
    return 'Product.mPowerUnit(id: $id, name: $name, sku: $sku, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MPowerUnit &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sku, sku) ||
                const DeepCollectionEquality().equals(other.sku, sku)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sku) ^
      const DeepCollectionEquality().hash(description);

  @override
  $MPowerUnitCopyWith<MPowerUnit> get copyWith =>
      _$MPowerUnitCopyWithImpl<MPowerUnit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result battery(String id, String name, String sku, String description),
    @required
        Result panel(String id, String name, String sku, String description),
    @required
        Result load(String id, String name, String sku, String description),
    @required
        Result mPowerUnit(
            String id, String name, String sku, String description),
  }) {
    assert(battery != null);
    assert(panel != null);
    assert(load != null);
    assert(mPowerUnit != null);
    return mPowerUnit(id, name, sku, description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result battery(String id, String name, String sku, String description),
    Result panel(String id, String name, String sku, String description),
    Result load(String id, String name, String sku, String description),
    Result mPowerUnit(String id, String name, String sku, String description),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (mPowerUnit != null) {
      return mPowerUnit(id, name, sku, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result battery(Battery value),
    @required Result panel(Panel value),
    @required Result load(Load value),
    @required Result mPowerUnit(MPowerUnit value),
  }) {
    assert(battery != null);
    assert(panel != null);
    assert(load != null);
    assert(mPowerUnit != null);
    return mPowerUnit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result battery(Battery value),
    Result panel(Panel value),
    Result load(Load value),
    Result mPowerUnit(MPowerUnit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (mPowerUnit != null) {
      return mPowerUnit(this);
    }
    return orElse();
  }
}

abstract class MPowerUnit implements Product {
  const factory MPowerUnit(
      {@required String id,
      @required String name,
      @required String sku,
      @required String description}) = _$MPowerUnit;

  @override
  String get id;
  @override
  String get name;
  @override
  String get sku;
  @override
  String get description;
  @override
  $MPowerUnitCopyWith<MPowerUnit> get copyWith;
}
