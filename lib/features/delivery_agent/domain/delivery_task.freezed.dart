// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientAppInfo _$ClientAppInfoFromJson(Map<String, dynamic> json) {
  return _ClientAppInfo.fromJson(json);
}

/// @nodoc
mixin _$ClientAppInfo {
  String get appId => throw _privateConstructorUsedError;
  String get appName => throw _privateConstructorUsedError;
  String get webhookUrl => throw _privateConstructorUsedError;
  String? get returnUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientAppInfoCopyWith<ClientAppInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientAppInfoCopyWith<$Res> {
  factory $ClientAppInfoCopyWith(
          ClientAppInfo value, $Res Function(ClientAppInfo) then) =
      _$ClientAppInfoCopyWithImpl<$Res, ClientAppInfo>;
  @useResult
  $Res call(
      {String appId, String appName, String webhookUrl, String? returnUrl});
}

/// @nodoc
class _$ClientAppInfoCopyWithImpl<$Res, $Val extends ClientAppInfo>
    implements $ClientAppInfoCopyWith<$Res> {
  _$ClientAppInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? appName = null,
    Object? webhookUrl = null,
    Object? returnUrl = freezed,
  }) {
    return _then(_value.copyWith(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      webhookUrl: null == webhookUrl
          ? _value.webhookUrl
          : webhookUrl // ignore: cast_nullable_to_non_nullable
              as String,
      returnUrl: freezed == returnUrl
          ? _value.returnUrl
          : returnUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientAppInfoImplCopyWith<$Res>
    implements $ClientAppInfoCopyWith<$Res> {
  factory _$$ClientAppInfoImplCopyWith(
          _$ClientAppInfoImpl value, $Res Function(_$ClientAppInfoImpl) then) =
      __$$ClientAppInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String appId, String appName, String webhookUrl, String? returnUrl});
}

/// @nodoc
class __$$ClientAppInfoImplCopyWithImpl<$Res>
    extends _$ClientAppInfoCopyWithImpl<$Res, _$ClientAppInfoImpl>
    implements _$$ClientAppInfoImplCopyWith<$Res> {
  __$$ClientAppInfoImplCopyWithImpl(
      _$ClientAppInfoImpl _value, $Res Function(_$ClientAppInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? appName = null,
    Object? webhookUrl = null,
    Object? returnUrl = freezed,
  }) {
    return _then(_$ClientAppInfoImpl(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      appName: null == appName
          ? _value.appName
          : appName // ignore: cast_nullable_to_non_nullable
              as String,
      webhookUrl: null == webhookUrl
          ? _value.webhookUrl
          : webhookUrl // ignore: cast_nullable_to_non_nullable
              as String,
      returnUrl: freezed == returnUrl
          ? _value.returnUrl
          : returnUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientAppInfoImpl implements _ClientAppInfo {
  const _$ClientAppInfoImpl(
      {required this.appId,
      required this.appName,
      required this.webhookUrl,
      this.returnUrl});

  factory _$ClientAppInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientAppInfoImplFromJson(json);

  @override
  final String appId;
  @override
  final String appName;
  @override
  final String webhookUrl;
  @override
  final String? returnUrl;

  @override
  String toString() {
    return 'ClientAppInfo(appId: $appId, appName: $appName, webhookUrl: $webhookUrl, returnUrl: $returnUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientAppInfoImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.appName, appName) || other.appName == appName) &&
            (identical(other.webhookUrl, webhookUrl) ||
                other.webhookUrl == webhookUrl) &&
            (identical(other.returnUrl, returnUrl) ||
                other.returnUrl == returnUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appId, appName, webhookUrl, returnUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientAppInfoImplCopyWith<_$ClientAppInfoImpl> get copyWith =>
      __$$ClientAppInfoImplCopyWithImpl<_$ClientAppInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientAppInfoImplToJson(
      this,
    );
  }
}

abstract class _ClientAppInfo implements ClientAppInfo {
  const factory _ClientAppInfo(
      {required final String appId,
      required final String appName,
      required final String webhookUrl,
      final String? returnUrl}) = _$ClientAppInfoImpl;

  factory _ClientAppInfo.fromJson(Map<String, dynamic> json) =
      _$ClientAppInfoImpl.fromJson;

  @override
  String get appId;
  @override
  String get appName;
  @override
  String get webhookUrl;
  @override
  String? get returnUrl;
  @override
  @JsonKey(ignore: true)
  _$$ClientAppInfoImplCopyWith<_$ClientAppInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VehicleInfo _$VehicleInfoFromJson(Map<String, dynamic> json) {
  return _VehicleInfo.fromJson(json);
}

/// @nodoc
mixin _$VehicleInfo {
  String get type => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String get licensePlate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleInfoCopyWith<VehicleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleInfoCopyWith<$Res> {
  factory $VehicleInfoCopyWith(
          VehicleInfo value, $Res Function(VehicleInfo) then) =
      _$VehicleInfoCopyWithImpl<$Res, VehicleInfo>;
  @useResult
  $Res call({String type, String? model, String licensePlate});
}

/// @nodoc
class _$VehicleInfoCopyWithImpl<$Res, $Val extends VehicleInfo>
    implements $VehicleInfoCopyWith<$Res> {
  _$VehicleInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? model = freezed,
    Object? licensePlate = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleInfoImplCopyWith<$Res>
    implements $VehicleInfoCopyWith<$Res> {
  factory _$$VehicleInfoImplCopyWith(
          _$VehicleInfoImpl value, $Res Function(_$VehicleInfoImpl) then) =
      __$$VehicleInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String? model, String licensePlate});
}

/// @nodoc
class __$$VehicleInfoImplCopyWithImpl<$Res>
    extends _$VehicleInfoCopyWithImpl<$Res, _$VehicleInfoImpl>
    implements _$$VehicleInfoImplCopyWith<$Res> {
  __$$VehicleInfoImplCopyWithImpl(
      _$VehicleInfoImpl _value, $Res Function(_$VehicleInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? model = freezed,
    Object? licensePlate = null,
  }) {
    return _then(_$VehicleInfoImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleInfoImpl implements _VehicleInfo {
  const _$VehicleInfoImpl(
      {required this.type, this.model, required this.licensePlate});

  factory _$VehicleInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleInfoImplFromJson(json);

  @override
  final String type;
  @override
  final String? model;
  @override
  final String licensePlate;

  @override
  String toString() {
    return 'VehicleInfo(type: $type, model: $model, licensePlate: $licensePlate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleInfoImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.licensePlate, licensePlate) ||
                other.licensePlate == licensePlate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, model, licensePlate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleInfoImplCopyWith<_$VehicleInfoImpl> get copyWith =>
      __$$VehicleInfoImplCopyWithImpl<_$VehicleInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleInfoImplToJson(
      this,
    );
  }
}

abstract class _VehicleInfo implements VehicleInfo {
  const factory _VehicleInfo(
      {required final String type,
      final String? model,
      required final String licensePlate}) = _$VehicleInfoImpl;

  factory _VehicleInfo.fromJson(Map<String, dynamic> json) =
      _$VehicleInfoImpl.fromJson;

  @override
  String get type;
  @override
  String? get model;
  @override
  String get licensePlate;
  @override
  @JsonKey(ignore: true)
  _$$VehicleInfoImplCopyWith<_$VehicleInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryPersonInfo _$DeliveryPersonInfoFromJson(Map<String, dynamic> json) {
  return _DeliveryPersonInfo.fromJson(json);
}

/// @nodoc
mixin _$DeliveryPersonInfo {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  VehicleInfo? get vehicle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryPersonInfoCopyWith<DeliveryPersonInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryPersonInfoCopyWith<$Res> {
  factory $DeliveryPersonInfoCopyWith(
          DeliveryPersonInfo value, $Res Function(DeliveryPersonInfo) then) =
      _$DeliveryPersonInfoCopyWithImpl<$Res, DeliveryPersonInfo>;
  @useResult
  $Res call(
      {String id,
      String name,
      String phone,
      String? email,
      String? avatarUrl,
      VehicleInfo? vehicle});

  $VehicleInfoCopyWith<$Res>? get vehicle;
}

/// @nodoc
class _$DeliveryPersonInfoCopyWithImpl<$Res, $Val extends DeliveryPersonInfo>
    implements $DeliveryPersonInfoCopyWith<$Res> {
  _$DeliveryPersonInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? email = freezed,
    Object? avatarUrl = freezed,
    Object? vehicle = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as VehicleInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleInfoCopyWith<$Res>? get vehicle {
    if (_value.vehicle == null) {
      return null;
    }

    return $VehicleInfoCopyWith<$Res>(_value.vehicle!, (value) {
      return _then(_value.copyWith(vehicle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryPersonInfoImplCopyWith<$Res>
    implements $DeliveryPersonInfoCopyWith<$Res> {
  factory _$$DeliveryPersonInfoImplCopyWith(_$DeliveryPersonInfoImpl value,
          $Res Function(_$DeliveryPersonInfoImpl) then) =
      __$$DeliveryPersonInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String phone,
      String? email,
      String? avatarUrl,
      VehicleInfo? vehicle});

  @override
  $VehicleInfoCopyWith<$Res>? get vehicle;
}

/// @nodoc
class __$$DeliveryPersonInfoImplCopyWithImpl<$Res>
    extends _$DeliveryPersonInfoCopyWithImpl<$Res, _$DeliveryPersonInfoImpl>
    implements _$$DeliveryPersonInfoImplCopyWith<$Res> {
  __$$DeliveryPersonInfoImplCopyWithImpl(_$DeliveryPersonInfoImpl _value,
      $Res Function(_$DeliveryPersonInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? email = freezed,
    Object? avatarUrl = freezed,
    Object? vehicle = freezed,
  }) {
    return _then(_$DeliveryPersonInfoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicle: freezed == vehicle
          ? _value.vehicle
          : vehicle // ignore: cast_nullable_to_non_nullable
              as VehicleInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryPersonInfoImpl implements _DeliveryPersonInfo {
  const _$DeliveryPersonInfoImpl(
      {required this.id,
      required this.name,
      required this.phone,
      this.email,
      this.avatarUrl,
      this.vehicle});

  factory _$DeliveryPersonInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryPersonInfoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final String? email;
  @override
  final String? avatarUrl;
  @override
  final VehicleInfo? vehicle;

  @override
  String toString() {
    return 'DeliveryPersonInfo(id: $id, name: $name, phone: $phone, email: $email, avatarUrl: $avatarUrl, vehicle: $vehicle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryPersonInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.vehicle, vehicle) || other.vehicle == vehicle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, phone, email, avatarUrl, vehicle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryPersonInfoImplCopyWith<_$DeliveryPersonInfoImpl> get copyWith =>
      __$$DeliveryPersonInfoImplCopyWithImpl<_$DeliveryPersonInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryPersonInfoImplToJson(
      this,
    );
  }
}

abstract class _DeliveryPersonInfo implements DeliveryPersonInfo {
  const factory _DeliveryPersonInfo(
      {required final String id,
      required final String name,
      required final String phone,
      final String? email,
      final String? avatarUrl,
      final VehicleInfo? vehicle}) = _$DeliveryPersonInfoImpl;

  factory _DeliveryPersonInfo.fromJson(Map<String, dynamic> json) =
      _$DeliveryPersonInfoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  String? get email;
  @override
  String? get avatarUrl;
  @override
  VehicleInfo? get vehicle;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryPersonInfoImplCopyWith<_$DeliveryPersonInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskLocation _$TaskLocationFromJson(Map<String, dynamic> json) {
  return _TaskLocation.fromJson(json);
}

/// @nodoc
mixin _$TaskLocation {
  String get name => throw _privateConstructorUsedError;
  String? get contactPerson => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get alternatePhone => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String? get timeWindowStart => throw _privateConstructorUsedError;
  String? get timeWindowEnd => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskLocationCopyWith<TaskLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskLocationCopyWith<$Res> {
  factory $TaskLocationCopyWith(
          TaskLocation value, $Res Function(TaskLocation) then) =
      _$TaskLocationCopyWithImpl<$Res, TaskLocation>;
  @useResult
  $Res call(
      {String name,
      String? contactPerson,
      String phone,
      String? alternatePhone,
      String address,
      double latitude,
      double longitude,
      String? timeWindowStart,
      String? timeWindowEnd,
      String? instructions});
}

/// @nodoc
class _$TaskLocationCopyWithImpl<$Res, $Val extends TaskLocation>
    implements $TaskLocationCopyWith<$Res> {
  _$TaskLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? contactPerson = freezed,
    Object? phone = null,
    Object? alternatePhone = freezed,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? timeWindowStart = freezed,
    Object? timeWindowEnd = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contactPerson: freezed == contactPerson
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      alternatePhone: freezed == alternatePhone
          ? _value.alternatePhone
          : alternatePhone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      timeWindowStart: freezed == timeWindowStart
          ? _value.timeWindowStart
          : timeWindowStart // ignore: cast_nullable_to_non_nullable
              as String?,
      timeWindowEnd: freezed == timeWindowEnd
          ? _value.timeWindowEnd
          : timeWindowEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskLocationImplCopyWith<$Res>
    implements $TaskLocationCopyWith<$Res> {
  factory _$$TaskLocationImplCopyWith(
          _$TaskLocationImpl value, $Res Function(_$TaskLocationImpl) then) =
      __$$TaskLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? contactPerson,
      String phone,
      String? alternatePhone,
      String address,
      double latitude,
      double longitude,
      String? timeWindowStart,
      String? timeWindowEnd,
      String? instructions});
}

/// @nodoc
class __$$TaskLocationImplCopyWithImpl<$Res>
    extends _$TaskLocationCopyWithImpl<$Res, _$TaskLocationImpl>
    implements _$$TaskLocationImplCopyWith<$Res> {
  __$$TaskLocationImplCopyWithImpl(
      _$TaskLocationImpl _value, $Res Function(_$TaskLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? contactPerson = freezed,
    Object? phone = null,
    Object? alternatePhone = freezed,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? timeWindowStart = freezed,
    Object? timeWindowEnd = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_$TaskLocationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contactPerson: freezed == contactPerson
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      alternatePhone: freezed == alternatePhone
          ? _value.alternatePhone
          : alternatePhone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      timeWindowStart: freezed == timeWindowStart
          ? _value.timeWindowStart
          : timeWindowStart // ignore: cast_nullable_to_non_nullable
              as String?,
      timeWindowEnd: freezed == timeWindowEnd
          ? _value.timeWindowEnd
          : timeWindowEnd // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskLocationImpl implements _TaskLocation {
  const _$TaskLocationImpl(
      {required this.name,
      this.contactPerson,
      required this.phone,
      this.alternatePhone,
      required this.address,
      required this.latitude,
      required this.longitude,
      this.timeWindowStart,
      this.timeWindowEnd,
      this.instructions});

  factory _$TaskLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskLocationImplFromJson(json);

  @override
  final String name;
  @override
  final String? contactPerson;
  @override
  final String phone;
  @override
  final String? alternatePhone;
  @override
  final String address;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String? timeWindowStart;
  @override
  final String? timeWindowEnd;
  @override
  final String? instructions;

  @override
  String toString() {
    return 'TaskLocation(name: $name, contactPerson: $contactPerson, phone: $phone, alternatePhone: $alternatePhone, address: $address, latitude: $latitude, longitude: $longitude, timeWindowStart: $timeWindowStart, timeWindowEnd: $timeWindowEnd, instructions: $instructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskLocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.contactPerson, contactPerson) ||
                other.contactPerson == contactPerson) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.alternatePhone, alternatePhone) ||
                other.alternatePhone == alternatePhone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.timeWindowStart, timeWindowStart) ||
                other.timeWindowStart == timeWindowStart) &&
            (identical(other.timeWindowEnd, timeWindowEnd) ||
                other.timeWindowEnd == timeWindowEnd) &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      contactPerson,
      phone,
      alternatePhone,
      address,
      latitude,
      longitude,
      timeWindowStart,
      timeWindowEnd,
      instructions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskLocationImplCopyWith<_$TaskLocationImpl> get copyWith =>
      __$$TaskLocationImplCopyWithImpl<_$TaskLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskLocationImplToJson(
      this,
    );
  }
}

abstract class _TaskLocation implements TaskLocation {
  const factory _TaskLocation(
      {required final String name,
      final String? contactPerson,
      required final String phone,
      final String? alternatePhone,
      required final String address,
      required final double latitude,
      required final double longitude,
      final String? timeWindowStart,
      final String? timeWindowEnd,
      final String? instructions}) = _$TaskLocationImpl;

  factory _TaskLocation.fromJson(Map<String, dynamic> json) =
      _$TaskLocationImpl.fromJson;

  @override
  String get name;
  @override
  String? get contactPerson;
  @override
  String get phone;
  @override
  String? get alternatePhone;
  @override
  String get address;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String? get timeWindowStart;
  @override
  String? get timeWindowEnd;
  @override
  String? get instructions;
  @override
  @JsonKey(ignore: true)
  _$$TaskLocationImplCopyWith<_$TaskLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageDimensions _$PackageDimensionsFromJson(Map<String, dynamic> json) {
  return _PackageDimensions.fromJson(json);
}

/// @nodoc
mixin _$PackageDimensions {
  double? get length => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageDimensionsCopyWith<PackageDimensions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageDimensionsCopyWith<$Res> {
  factory $PackageDimensionsCopyWith(
          PackageDimensions value, $Res Function(PackageDimensions) then) =
      _$PackageDimensionsCopyWithImpl<$Res, PackageDimensions>;
  @useResult
  $Res call({double? length, double? width, double? height});
}

/// @nodoc
class _$PackageDimensionsCopyWithImpl<$Res, $Val extends PackageDimensions>
    implements $PackageDimensionsCopyWith<$Res> {
  _$PackageDimensionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageDimensionsImplCopyWith<$Res>
    implements $PackageDimensionsCopyWith<$Res> {
  factory _$$PackageDimensionsImplCopyWith(_$PackageDimensionsImpl value,
          $Res Function(_$PackageDimensionsImpl) then) =
      __$$PackageDimensionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? length, double? width, double? height});
}

/// @nodoc
class __$$PackageDimensionsImplCopyWithImpl<$Res>
    extends _$PackageDimensionsCopyWithImpl<$Res, _$PackageDimensionsImpl>
    implements _$$PackageDimensionsImplCopyWith<$Res> {
  __$$PackageDimensionsImplCopyWithImpl(_$PackageDimensionsImpl _value,
      $Res Function(_$PackageDimensionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? length = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$PackageDimensionsImpl(
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageDimensionsImpl implements _PackageDimensions {
  const _$PackageDimensionsImpl({this.length, this.width, this.height});

  factory _$PackageDimensionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageDimensionsImplFromJson(json);

  @override
  final double? length;
  @override
  final double? width;
  @override
  final double? height;

  @override
  String toString() {
    return 'PackageDimensions(length: $length, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageDimensionsImpl &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, length, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageDimensionsImplCopyWith<_$PackageDimensionsImpl> get copyWith =>
      __$$PackageDimensionsImplCopyWithImpl<_$PackageDimensionsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageDimensionsImplToJson(
      this,
    );
  }
}

abstract class _PackageDimensions implements PackageDimensions {
  const factory _PackageDimensions(
      {final double? length,
      final double? width,
      final double? height}) = _$PackageDimensionsImpl;

  factory _PackageDimensions.fromJson(Map<String, dynamic> json) =
      _$PackageDimensionsImpl.fromJson;

  @override
  double? get length;
  @override
  double? get width;
  @override
  double? get height;
  @override
  @JsonKey(ignore: true)
  _$$PackageDimensionsImplCopyWith<_$PackageDimensionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageDetails _$PackageDetailsFromJson(Map<String, dynamic> json) {
  return _PackageDetails.fromJson(json);
}

/// @nodoc
mixin _$PackageDetails {
  String get packageId => throw _privateConstructorUsedError;
  String get trackingBarcode => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get itemsCount => throw _privateConstructorUsedError;
  double get weightKg => throw _privateConstructorUsedError;
  PackageDimensions? get dimensionsCm => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get isFragile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageDetailsCopyWith<PackageDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageDetailsCopyWith<$Res> {
  factory $PackageDetailsCopyWith(
          PackageDetails value, $Res Function(PackageDetails) then) =
      _$PackageDetailsCopyWithImpl<$Res, PackageDetails>;
  @useResult
  $Res call(
      {String packageId,
      String trackingBarcode,
      String category,
      int itemsCount,
      double weightKg,
      PackageDimensions? dimensionsCm,
      String? description,
      bool isFragile});

  $PackageDimensionsCopyWith<$Res>? get dimensionsCm;
}

/// @nodoc
class _$PackageDetailsCopyWithImpl<$Res, $Val extends PackageDetails>
    implements $PackageDetailsCopyWith<$Res> {
  _$PackageDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageId = null,
    Object? trackingBarcode = null,
    Object? category = null,
    Object? itemsCount = null,
    Object? weightKg = null,
    Object? dimensionsCm = freezed,
    Object? description = freezed,
    Object? isFragile = null,
  }) {
    return _then(_value.copyWith(
      packageId: null == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as String,
      trackingBarcode: null == trackingBarcode
          ? _value.trackingBarcode
          : trackingBarcode // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      itemsCount: null == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int,
      weightKg: null == weightKg
          ? _value.weightKg
          : weightKg // ignore: cast_nullable_to_non_nullable
              as double,
      dimensionsCm: freezed == dimensionsCm
          ? _value.dimensionsCm
          : dimensionsCm // ignore: cast_nullable_to_non_nullable
              as PackageDimensions?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isFragile: null == isFragile
          ? _value.isFragile
          : isFragile // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PackageDimensionsCopyWith<$Res>? get dimensionsCm {
    if (_value.dimensionsCm == null) {
      return null;
    }

    return $PackageDimensionsCopyWith<$Res>(_value.dimensionsCm!, (value) {
      return _then(_value.copyWith(dimensionsCm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackageDetailsImplCopyWith<$Res>
    implements $PackageDetailsCopyWith<$Res> {
  factory _$$PackageDetailsImplCopyWith(_$PackageDetailsImpl value,
          $Res Function(_$PackageDetailsImpl) then) =
      __$$PackageDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String packageId,
      String trackingBarcode,
      String category,
      int itemsCount,
      double weightKg,
      PackageDimensions? dimensionsCm,
      String? description,
      bool isFragile});

  @override
  $PackageDimensionsCopyWith<$Res>? get dimensionsCm;
}

/// @nodoc
class __$$PackageDetailsImplCopyWithImpl<$Res>
    extends _$PackageDetailsCopyWithImpl<$Res, _$PackageDetailsImpl>
    implements _$$PackageDetailsImplCopyWith<$Res> {
  __$$PackageDetailsImplCopyWithImpl(
      _$PackageDetailsImpl _value, $Res Function(_$PackageDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageId = null,
    Object? trackingBarcode = null,
    Object? category = null,
    Object? itemsCount = null,
    Object? weightKg = null,
    Object? dimensionsCm = freezed,
    Object? description = freezed,
    Object? isFragile = null,
  }) {
    return _then(_$PackageDetailsImpl(
      packageId: null == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as String,
      trackingBarcode: null == trackingBarcode
          ? _value.trackingBarcode
          : trackingBarcode // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      itemsCount: null == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int,
      weightKg: null == weightKg
          ? _value.weightKg
          : weightKg // ignore: cast_nullable_to_non_nullable
              as double,
      dimensionsCm: freezed == dimensionsCm
          ? _value.dimensionsCm
          : dimensionsCm // ignore: cast_nullable_to_non_nullable
              as PackageDimensions?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isFragile: null == isFragile
          ? _value.isFragile
          : isFragile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageDetailsImpl implements _PackageDetails {
  const _$PackageDetailsImpl(
      {required this.packageId,
      required this.trackingBarcode,
      this.category = 'parcel',
      this.itemsCount = 1,
      this.weightKg = 1.0,
      this.dimensionsCm,
      this.description,
      this.isFragile = false});

  factory _$PackageDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageDetailsImplFromJson(json);

  @override
  final String packageId;
  @override
  final String trackingBarcode;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final int itemsCount;
  @override
  @JsonKey()
  final double weightKg;
  @override
  final PackageDimensions? dimensionsCm;
  @override
  final String? description;
  @override
  @JsonKey()
  final bool isFragile;

  @override
  String toString() {
    return 'PackageDetails(packageId: $packageId, trackingBarcode: $trackingBarcode, category: $category, itemsCount: $itemsCount, weightKg: $weightKg, dimensionsCm: $dimensionsCm, description: $description, isFragile: $isFragile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageDetailsImpl &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId) &&
            (identical(other.trackingBarcode, trackingBarcode) ||
                other.trackingBarcode == trackingBarcode) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.itemsCount, itemsCount) ||
                other.itemsCount == itemsCount) &&
            (identical(other.weightKg, weightKg) ||
                other.weightKg == weightKg) &&
            (identical(other.dimensionsCm, dimensionsCm) ||
                other.dimensionsCm == dimensionsCm) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isFragile, isFragile) ||
                other.isFragile == isFragile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, packageId, trackingBarcode,
      category, itemsCount, weightKg, dimensionsCm, description, isFragile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageDetailsImplCopyWith<_$PackageDetailsImpl> get copyWith =>
      __$$PackageDetailsImplCopyWithImpl<_$PackageDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageDetailsImplToJson(
      this,
    );
  }
}

abstract class _PackageDetails implements PackageDetails {
  const factory _PackageDetails(
      {required final String packageId,
      required final String trackingBarcode,
      final String category,
      final int itemsCount,
      final double weightKg,
      final PackageDimensions? dimensionsCm,
      final String? description,
      final bool isFragile}) = _$PackageDetailsImpl;

  factory _PackageDetails.fromJson(Map<String, dynamic> json) =
      _$PackageDetailsImpl.fromJson;

  @override
  String get packageId;
  @override
  String get trackingBarcode;
  @override
  String get category;
  @override
  int get itemsCount;
  @override
  double get weightKg;
  @override
  PackageDimensions? get dimensionsCm;
  @override
  String? get description;
  @override
  bool get isFragile;
  @override
  @JsonKey(ignore: true)
  _$$PackageDetailsImplCopyWith<_$PackageDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentDetails _$PaymentDetailsFromJson(Map<String, dynamic> json) {
  return _PaymentDetails.fromJson(json);
}

/// @nodoc
mixin _$PaymentDetails {
  String get mode => throw _privateConstructorUsedError;
  double get amountDue => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  bool get isPrepaid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDetailsCopyWith<PaymentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDetailsCopyWith<$Res> {
  factory $PaymentDetailsCopyWith(
          PaymentDetails value, $Res Function(PaymentDetails) then) =
      _$PaymentDetailsCopyWithImpl<$Res, PaymentDetails>;
  @useResult
  $Res call({String mode, double amountDue, String currency, bool isPrepaid});
}

/// @nodoc
class _$PaymentDetailsCopyWithImpl<$Res, $Val extends PaymentDetails>
    implements $PaymentDetailsCopyWith<$Res> {
  _$PaymentDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? amountDue = null,
    Object? currency = null,
    Object? isPrepaid = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      amountDue: null == amountDue
          ? _value.amountDue
          : amountDue // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      isPrepaid: null == isPrepaid
          ? _value.isPrepaid
          : isPrepaid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentDetailsImplCopyWith<$Res>
    implements $PaymentDetailsCopyWith<$Res> {
  factory _$$PaymentDetailsImplCopyWith(_$PaymentDetailsImpl value,
          $Res Function(_$PaymentDetailsImpl) then) =
      __$$PaymentDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mode, double amountDue, String currency, bool isPrepaid});
}

/// @nodoc
class __$$PaymentDetailsImplCopyWithImpl<$Res>
    extends _$PaymentDetailsCopyWithImpl<$Res, _$PaymentDetailsImpl>
    implements _$$PaymentDetailsImplCopyWith<$Res> {
  __$$PaymentDetailsImplCopyWithImpl(
      _$PaymentDetailsImpl _value, $Res Function(_$PaymentDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? amountDue = null,
    Object? currency = null,
    Object? isPrepaid = null,
  }) {
    return _then(_$PaymentDetailsImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      amountDue: null == amountDue
          ? _value.amountDue
          : amountDue // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      isPrepaid: null == isPrepaid
          ? _value.isPrepaid
          : isPrepaid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentDetailsImpl implements _PaymentDetails {
  const _$PaymentDetailsImpl(
      {this.mode = 'prepaid',
      this.amountDue = 0.0,
      this.currency = 'USD',
      this.isPrepaid = true});

  factory _$PaymentDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentDetailsImplFromJson(json);

  @override
  @JsonKey()
  final String mode;
  @override
  @JsonKey()
  final double amountDue;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final bool isPrepaid;

  @override
  String toString() {
    return 'PaymentDetails(mode: $mode, amountDue: $amountDue, currency: $currency, isPrepaid: $isPrepaid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDetailsImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.amountDue, amountDue) ||
                other.amountDue == amountDue) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.isPrepaid, isPrepaid) ||
                other.isPrepaid == isPrepaid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mode, amountDue, currency, isPrepaid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentDetailsImplCopyWith<_$PaymentDetailsImpl> get copyWith =>
      __$$PaymentDetailsImplCopyWithImpl<_$PaymentDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDetailsImplToJson(
      this,
    );
  }
}

abstract class _PaymentDetails implements PaymentDetails {
  const factory _PaymentDetails(
      {final String mode,
      final double amountDue,
      final String currency,
      final bool isPrepaid}) = _$PaymentDetailsImpl;

  factory _PaymentDetails.fromJson(Map<String, dynamic> json) =
      _$PaymentDetailsImpl.fromJson;

  @override
  String get mode;
  @override
  double get amountDue;
  @override
  String get currency;
  @override
  bool get isPrepaid;
  @override
  @JsonKey(ignore: true)
  _$$PaymentDetailsImplCopyWith<_$PaymentDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VerificationRequirements _$VerificationRequirementsFromJson(
    Map<String, dynamic> json) {
  return _VerificationRequirements.fromJson(json);
}

/// @nodoc
mixin _$VerificationRequirements {
  bool get requireOtp => throw _privateConstructorUsedError;
  String? get expectedOtp => throw _privateConstructorUsedError;
  bool get requireRecipientSignature => throw _privateConstructorUsedError;
  bool get requireDeliveryPhoto => throw _privateConstructorUsedError;
  bool get requireBarcodeScan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationRequirementsCopyWith<VerificationRequirements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationRequirementsCopyWith<$Res> {
  factory $VerificationRequirementsCopyWith(VerificationRequirements value,
          $Res Function(VerificationRequirements) then) =
      _$VerificationRequirementsCopyWithImpl<$Res, VerificationRequirements>;
  @useResult
  $Res call(
      {bool requireOtp,
      String? expectedOtp,
      bool requireRecipientSignature,
      bool requireDeliveryPhoto,
      bool requireBarcodeScan});
}

/// @nodoc
class _$VerificationRequirementsCopyWithImpl<$Res,
        $Val extends VerificationRequirements>
    implements $VerificationRequirementsCopyWith<$Res> {
  _$VerificationRequirementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requireOtp = null,
    Object? expectedOtp = freezed,
    Object? requireRecipientSignature = null,
    Object? requireDeliveryPhoto = null,
    Object? requireBarcodeScan = null,
  }) {
    return _then(_value.copyWith(
      requireOtp: null == requireOtp
          ? _value.requireOtp
          : requireOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      expectedOtp: freezed == expectedOtp
          ? _value.expectedOtp
          : expectedOtp // ignore: cast_nullable_to_non_nullable
              as String?,
      requireRecipientSignature: null == requireRecipientSignature
          ? _value.requireRecipientSignature
          : requireRecipientSignature // ignore: cast_nullable_to_non_nullable
              as bool,
      requireDeliveryPhoto: null == requireDeliveryPhoto
          ? _value.requireDeliveryPhoto
          : requireDeliveryPhoto // ignore: cast_nullable_to_non_nullable
              as bool,
      requireBarcodeScan: null == requireBarcodeScan
          ? _value.requireBarcodeScan
          : requireBarcodeScan // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerificationRequirementsImplCopyWith<$Res>
    implements $VerificationRequirementsCopyWith<$Res> {
  factory _$$VerificationRequirementsImplCopyWith(
          _$VerificationRequirementsImpl value,
          $Res Function(_$VerificationRequirementsImpl) then) =
      __$$VerificationRequirementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool requireOtp,
      String? expectedOtp,
      bool requireRecipientSignature,
      bool requireDeliveryPhoto,
      bool requireBarcodeScan});
}

/// @nodoc
class __$$VerificationRequirementsImplCopyWithImpl<$Res>
    extends _$VerificationRequirementsCopyWithImpl<$Res,
        _$VerificationRequirementsImpl>
    implements _$$VerificationRequirementsImplCopyWith<$Res> {
  __$$VerificationRequirementsImplCopyWithImpl(
      _$VerificationRequirementsImpl _value,
      $Res Function(_$VerificationRequirementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requireOtp = null,
    Object? expectedOtp = freezed,
    Object? requireRecipientSignature = null,
    Object? requireDeliveryPhoto = null,
    Object? requireBarcodeScan = null,
  }) {
    return _then(_$VerificationRequirementsImpl(
      requireOtp: null == requireOtp
          ? _value.requireOtp
          : requireOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      expectedOtp: freezed == expectedOtp
          ? _value.expectedOtp
          : expectedOtp // ignore: cast_nullable_to_non_nullable
              as String?,
      requireRecipientSignature: null == requireRecipientSignature
          ? _value.requireRecipientSignature
          : requireRecipientSignature // ignore: cast_nullable_to_non_nullable
              as bool,
      requireDeliveryPhoto: null == requireDeliveryPhoto
          ? _value.requireDeliveryPhoto
          : requireDeliveryPhoto // ignore: cast_nullable_to_non_nullable
              as bool,
      requireBarcodeScan: null == requireBarcodeScan
          ? _value.requireBarcodeScan
          : requireBarcodeScan // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationRequirementsImpl implements _VerificationRequirements {
  const _$VerificationRequirementsImpl(
      {this.requireOtp = false,
      this.expectedOtp,
      this.requireRecipientSignature = false,
      this.requireDeliveryPhoto = false,
      this.requireBarcodeScan = false});

  factory _$VerificationRequirementsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationRequirementsImplFromJson(json);

  @override
  @JsonKey()
  final bool requireOtp;
  @override
  final String? expectedOtp;
  @override
  @JsonKey()
  final bool requireRecipientSignature;
  @override
  @JsonKey()
  final bool requireDeliveryPhoto;
  @override
  @JsonKey()
  final bool requireBarcodeScan;

  @override
  String toString() {
    return 'VerificationRequirements(requireOtp: $requireOtp, expectedOtp: $expectedOtp, requireRecipientSignature: $requireRecipientSignature, requireDeliveryPhoto: $requireDeliveryPhoto, requireBarcodeScan: $requireBarcodeScan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationRequirementsImpl &&
            (identical(other.requireOtp, requireOtp) ||
                other.requireOtp == requireOtp) &&
            (identical(other.expectedOtp, expectedOtp) ||
                other.expectedOtp == expectedOtp) &&
            (identical(other.requireRecipientSignature,
                    requireRecipientSignature) ||
                other.requireRecipientSignature == requireRecipientSignature) &&
            (identical(other.requireDeliveryPhoto, requireDeliveryPhoto) ||
                other.requireDeliveryPhoto == requireDeliveryPhoto) &&
            (identical(other.requireBarcodeScan, requireBarcodeScan) ||
                other.requireBarcodeScan == requireBarcodeScan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, requireOtp, expectedOtp,
      requireRecipientSignature, requireDeliveryPhoto, requireBarcodeScan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationRequirementsImplCopyWith<_$VerificationRequirementsImpl>
      get copyWith => __$$VerificationRequirementsImplCopyWithImpl<
          _$VerificationRequirementsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationRequirementsImplToJson(
      this,
    );
  }
}

abstract class _VerificationRequirements implements VerificationRequirements {
  const factory _VerificationRequirements(
      {final bool requireOtp,
      final String? expectedOtp,
      final bool requireRecipientSignature,
      final bool requireDeliveryPhoto,
      final bool requireBarcodeScan}) = _$VerificationRequirementsImpl;

  factory _VerificationRequirements.fromJson(Map<String, dynamic> json) =
      _$VerificationRequirementsImpl.fromJson;

  @override
  bool get requireOtp;
  @override
  String? get expectedOtp;
  @override
  bool get requireRecipientSignature;
  @override
  bool get requireDeliveryPhoto;
  @override
  bool get requireBarcodeScan;
  @override
  @JsonKey(ignore: true)
  _$$VerificationRequirementsImplCopyWith<_$VerificationRequirementsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeliveryTask _$DeliveryTaskFromJson(Map<String, dynamic> json) {
  return _DeliveryTask.fromJson(json);
}

/// @nodoc
mixin _$DeliveryTask {
  String get taskId => throw _privateConstructorUsedError;
  String get externalOrderId => throw _privateConstructorUsedError;
  ClientAppInfo get clientApp => throw _privateConstructorUsedError;
  DeliveryPersonInfo get deliveryPerson => throw _privateConstructorUsedError;
  TaskLocation get pickup => throw _privateConstructorUsedError;
  TaskLocation get destination => throw _privateConstructorUsedError;
  PackageDetails get packageDetails => throw _privateConstructorUsedError;
  PaymentDetails get payment => throw _privateConstructorUsedError;
  VerificationRequirements get verificationRequirements =>
      throw _privateConstructorUsedError;
  TaskStatus get status => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryTaskCopyWith<DeliveryTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryTaskCopyWith<$Res> {
  factory $DeliveryTaskCopyWith(
          DeliveryTask value, $Res Function(DeliveryTask) then) =
      _$DeliveryTaskCopyWithImpl<$Res, DeliveryTask>;
  @useResult
  $Res call(
      {String taskId,
      String externalOrderId,
      ClientAppInfo clientApp,
      DeliveryPersonInfo deliveryPerson,
      TaskLocation pickup,
      TaskLocation destination,
      PackageDetails packageDetails,
      PaymentDetails payment,
      VerificationRequirements verificationRequirements,
      TaskStatus status,
      String createdAt});

  $ClientAppInfoCopyWith<$Res> get clientApp;
  $DeliveryPersonInfoCopyWith<$Res> get deliveryPerson;
  $TaskLocationCopyWith<$Res> get pickup;
  $TaskLocationCopyWith<$Res> get destination;
  $PackageDetailsCopyWith<$Res> get packageDetails;
  $PaymentDetailsCopyWith<$Res> get payment;
  $VerificationRequirementsCopyWith<$Res> get verificationRequirements;
}

/// @nodoc
class _$DeliveryTaskCopyWithImpl<$Res, $Val extends DeliveryTask>
    implements $DeliveryTaskCopyWith<$Res> {
  _$DeliveryTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? externalOrderId = null,
    Object? clientApp = null,
    Object? deliveryPerson = null,
    Object? pickup = null,
    Object? destination = null,
    Object? packageDetails = null,
    Object? payment = null,
    Object? verificationRequirements = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      externalOrderId: null == externalOrderId
          ? _value.externalOrderId
          : externalOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      clientApp: null == clientApp
          ? _value.clientApp
          : clientApp // ignore: cast_nullable_to_non_nullable
              as ClientAppInfo,
      deliveryPerson: null == deliveryPerson
          ? _value.deliveryPerson
          : deliveryPerson // ignore: cast_nullable_to_non_nullable
              as DeliveryPersonInfo,
      pickup: null == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as TaskLocation,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as TaskLocation,
      packageDetails: null == packageDetails
          ? _value.packageDetails
          : packageDetails // ignore: cast_nullable_to_non_nullable
              as PackageDetails,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentDetails,
      verificationRequirements: null == verificationRequirements
          ? _value.verificationRequirements
          : verificationRequirements // ignore: cast_nullable_to_non_nullable
              as VerificationRequirements,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientAppInfoCopyWith<$Res> get clientApp {
    return $ClientAppInfoCopyWith<$Res>(_value.clientApp, (value) {
      return _then(_value.copyWith(clientApp: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryPersonInfoCopyWith<$Res> get deliveryPerson {
    return $DeliveryPersonInfoCopyWith<$Res>(_value.deliveryPerson, (value) {
      return _then(_value.copyWith(deliveryPerson: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskLocationCopyWith<$Res> get pickup {
    return $TaskLocationCopyWith<$Res>(_value.pickup, (value) {
      return _then(_value.copyWith(pickup: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskLocationCopyWith<$Res> get destination {
    return $TaskLocationCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PackageDetailsCopyWith<$Res> get packageDetails {
    return $PackageDetailsCopyWith<$Res>(_value.packageDetails, (value) {
      return _then(_value.copyWith(packageDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentDetailsCopyWith<$Res> get payment {
    return $PaymentDetailsCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VerificationRequirementsCopyWith<$Res> get verificationRequirements {
    return $VerificationRequirementsCopyWith<$Res>(
        _value.verificationRequirements, (value) {
      return _then(_value.copyWith(verificationRequirements: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryTaskImplCopyWith<$Res>
    implements $DeliveryTaskCopyWith<$Res> {
  factory _$$DeliveryTaskImplCopyWith(
          _$DeliveryTaskImpl value, $Res Function(_$DeliveryTaskImpl) then) =
      __$$DeliveryTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String taskId,
      String externalOrderId,
      ClientAppInfo clientApp,
      DeliveryPersonInfo deliveryPerson,
      TaskLocation pickup,
      TaskLocation destination,
      PackageDetails packageDetails,
      PaymentDetails payment,
      VerificationRequirements verificationRequirements,
      TaskStatus status,
      String createdAt});

  @override
  $ClientAppInfoCopyWith<$Res> get clientApp;
  @override
  $DeliveryPersonInfoCopyWith<$Res> get deliveryPerson;
  @override
  $TaskLocationCopyWith<$Res> get pickup;
  @override
  $TaskLocationCopyWith<$Res> get destination;
  @override
  $PackageDetailsCopyWith<$Res> get packageDetails;
  @override
  $PaymentDetailsCopyWith<$Res> get payment;
  @override
  $VerificationRequirementsCopyWith<$Res> get verificationRequirements;
}

/// @nodoc
class __$$DeliveryTaskImplCopyWithImpl<$Res>
    extends _$DeliveryTaskCopyWithImpl<$Res, _$DeliveryTaskImpl>
    implements _$$DeliveryTaskImplCopyWith<$Res> {
  __$$DeliveryTaskImplCopyWithImpl(
      _$DeliveryTaskImpl _value, $Res Function(_$DeliveryTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? externalOrderId = null,
    Object? clientApp = null,
    Object? deliveryPerson = null,
    Object? pickup = null,
    Object? destination = null,
    Object? packageDetails = null,
    Object? payment = null,
    Object? verificationRequirements = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_$DeliveryTaskImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      externalOrderId: null == externalOrderId
          ? _value.externalOrderId
          : externalOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      clientApp: null == clientApp
          ? _value.clientApp
          : clientApp // ignore: cast_nullable_to_non_nullable
              as ClientAppInfo,
      deliveryPerson: null == deliveryPerson
          ? _value.deliveryPerson
          : deliveryPerson // ignore: cast_nullable_to_non_nullable
              as DeliveryPersonInfo,
      pickup: null == pickup
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as TaskLocation,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as TaskLocation,
      packageDetails: null == packageDetails
          ? _value.packageDetails
          : packageDetails // ignore: cast_nullable_to_non_nullable
              as PackageDetails,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentDetails,
      verificationRequirements: null == verificationRequirements
          ? _value.verificationRequirements
          : verificationRequirements // ignore: cast_nullable_to_non_nullable
              as VerificationRequirements,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryTaskImpl implements _DeliveryTask {
  const _$DeliveryTaskImpl(
      {required this.taskId,
      required this.externalOrderId,
      required this.clientApp,
      required this.deliveryPerson,
      required this.pickup,
      required this.destination,
      required this.packageDetails,
      required this.payment,
      required this.verificationRequirements,
      this.status = TaskStatus.assigned,
      required this.createdAt});

  factory _$DeliveryTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryTaskImplFromJson(json);

  @override
  final String taskId;
  @override
  final String externalOrderId;
  @override
  final ClientAppInfo clientApp;
  @override
  final DeliveryPersonInfo deliveryPerson;
  @override
  final TaskLocation pickup;
  @override
  final TaskLocation destination;
  @override
  final PackageDetails packageDetails;
  @override
  final PaymentDetails payment;
  @override
  final VerificationRequirements verificationRequirements;
  @override
  @JsonKey()
  final TaskStatus status;
  @override
  final String createdAt;

  @override
  String toString() {
    return 'DeliveryTask(taskId: $taskId, externalOrderId: $externalOrderId, clientApp: $clientApp, deliveryPerson: $deliveryPerson, pickup: $pickup, destination: $destination, packageDetails: $packageDetails, payment: $payment, verificationRequirements: $verificationRequirements, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryTaskImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.externalOrderId, externalOrderId) ||
                other.externalOrderId == externalOrderId) &&
            (identical(other.clientApp, clientApp) ||
                other.clientApp == clientApp) &&
            (identical(other.deliveryPerson, deliveryPerson) ||
                other.deliveryPerson == deliveryPerson) &&
            (identical(other.pickup, pickup) || other.pickup == pickup) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.packageDetails, packageDetails) ||
                other.packageDetails == packageDetails) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(
                    other.verificationRequirements, verificationRequirements) ||
                other.verificationRequirements == verificationRequirements) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      taskId,
      externalOrderId,
      clientApp,
      deliveryPerson,
      pickup,
      destination,
      packageDetails,
      payment,
      verificationRequirements,
      status,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryTaskImplCopyWith<_$DeliveryTaskImpl> get copyWith =>
      __$$DeliveryTaskImplCopyWithImpl<_$DeliveryTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryTaskImplToJson(
      this,
    );
  }
}

abstract class _DeliveryTask implements DeliveryTask {
  const factory _DeliveryTask(
      {required final String taskId,
      required final String externalOrderId,
      required final ClientAppInfo clientApp,
      required final DeliveryPersonInfo deliveryPerson,
      required final TaskLocation pickup,
      required final TaskLocation destination,
      required final PackageDetails packageDetails,
      required final PaymentDetails payment,
      required final VerificationRequirements verificationRequirements,
      final TaskStatus status,
      required final String createdAt}) = _$DeliveryTaskImpl;

  factory _DeliveryTask.fromJson(Map<String, dynamic> json) =
      _$DeliveryTaskImpl.fromJson;

  @override
  String get taskId;
  @override
  String get externalOrderId;
  @override
  ClientAppInfo get clientApp;
  @override
  DeliveryPersonInfo get deliveryPerson;
  @override
  TaskLocation get pickup;
  @override
  TaskLocation get destination;
  @override
  PackageDetails get packageDetails;
  @override
  PaymentDetails get payment;
  @override
  VerificationRequirements get verificationRequirements;
  @override
  TaskStatus get status;
  @override
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryTaskImplCopyWith<_$DeliveryTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
