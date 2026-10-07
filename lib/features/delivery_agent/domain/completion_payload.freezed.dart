// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'completion_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryPersonSummary _$DeliveryPersonSummaryFromJson(
    Map<String, dynamic> json) {
  return _DeliveryPersonSummary.fromJson(json);
}

/// @nodoc
mixin _$DeliveryPersonSummary {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryPersonSummaryCopyWith<DeliveryPersonSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryPersonSummaryCopyWith<$Res> {
  factory $DeliveryPersonSummaryCopyWith(DeliveryPersonSummary value,
          $Res Function(DeliveryPersonSummary) then) =
      _$DeliveryPersonSummaryCopyWithImpl<$Res, DeliveryPersonSummary>;
  @useResult
  $Res call({String id, String name, String phone});
}

/// @nodoc
class _$DeliveryPersonSummaryCopyWithImpl<$Res,
        $Val extends DeliveryPersonSummary>
    implements $DeliveryPersonSummaryCopyWith<$Res> {
  _$DeliveryPersonSummaryCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryPersonSummaryImplCopyWith<$Res>
    implements $DeliveryPersonSummaryCopyWith<$Res> {
  factory _$$DeliveryPersonSummaryImplCopyWith(
          _$DeliveryPersonSummaryImpl value,
          $Res Function(_$DeliveryPersonSummaryImpl) then) =
      __$$DeliveryPersonSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String phone});
}

/// @nodoc
class __$$DeliveryPersonSummaryImplCopyWithImpl<$Res>
    extends _$DeliveryPersonSummaryCopyWithImpl<$Res,
        _$DeliveryPersonSummaryImpl>
    implements _$$DeliveryPersonSummaryImplCopyWith<$Res> {
  __$$DeliveryPersonSummaryImplCopyWithImpl(_$DeliveryPersonSummaryImpl _value,
      $Res Function(_$DeliveryPersonSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
  }) {
    return _then(_$DeliveryPersonSummaryImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryPersonSummaryImpl implements _DeliveryPersonSummary {
  const _$DeliveryPersonSummaryImpl(
      {required this.id, required this.name, required this.phone});

  factory _$DeliveryPersonSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryPersonSummaryImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String phone;

  @override
  String toString() {
    return 'DeliveryPersonSummary(id: $id, name: $name, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryPersonSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryPersonSummaryImplCopyWith<_$DeliveryPersonSummaryImpl>
      get copyWith => __$$DeliveryPersonSummaryImplCopyWithImpl<
          _$DeliveryPersonSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryPersonSummaryImplToJson(
      this,
    );
  }
}

abstract class _DeliveryPersonSummary implements DeliveryPersonSummary {
  const factory _DeliveryPersonSummary(
      {required final String id,
      required final String name,
      required final String phone}) = _$DeliveryPersonSummaryImpl;

  factory _DeliveryPersonSummary.fromJson(Map<String, dynamic> json) =
      _$DeliveryPersonSummaryImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryPersonSummaryImplCopyWith<_$DeliveryPersonSummaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CompletionTimeline _$CompletionTimelineFromJson(Map<String, dynamic> json) {
  return _CompletionTimeline.fromJson(json);
}

/// @nodoc
mixin _$CompletionTimeline {
  String get startedAt => throw _privateConstructorUsedError;
  String? get arrivedAtDestination => throw _privateConstructorUsedError;
  String get completedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletionTimelineCopyWith<CompletionTimeline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionTimelineCopyWith<$Res> {
  factory $CompletionTimelineCopyWith(
          CompletionTimeline value, $Res Function(CompletionTimeline) then) =
      _$CompletionTimelineCopyWithImpl<$Res, CompletionTimeline>;
  @useResult
  $Res call(
      {String startedAt, String? arrivedAtDestination, String completedAt});
}

/// @nodoc
class _$CompletionTimelineCopyWithImpl<$Res, $Val extends CompletionTimeline>
    implements $CompletionTimelineCopyWith<$Res> {
  _$CompletionTimelineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startedAt = null,
    Object? arrivedAtDestination = freezed,
    Object? completedAt = null,
  }) {
    return _then(_value.copyWith(
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
      arrivedAtDestination: freezed == arrivedAtDestination
          ? _value.arrivedAtDestination
          : arrivedAtDestination // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletionTimelineImplCopyWith<$Res>
    implements $CompletionTimelineCopyWith<$Res> {
  factory _$$CompletionTimelineImplCopyWith(_$CompletionTimelineImpl value,
          $Res Function(_$CompletionTimelineImpl) then) =
      __$$CompletionTimelineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String startedAt, String? arrivedAtDestination, String completedAt});
}

/// @nodoc
class __$$CompletionTimelineImplCopyWithImpl<$Res>
    extends _$CompletionTimelineCopyWithImpl<$Res, _$CompletionTimelineImpl>
    implements _$$CompletionTimelineImplCopyWith<$Res> {
  __$$CompletionTimelineImplCopyWithImpl(_$CompletionTimelineImpl _value,
      $Res Function(_$CompletionTimelineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startedAt = null,
    Object? arrivedAtDestination = freezed,
    Object? completedAt = null,
  }) {
    return _then(_$CompletionTimelineImpl(
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
      arrivedAtDestination: freezed == arrivedAtDestination
          ? _value.arrivedAtDestination
          : arrivedAtDestination // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletionTimelineImpl implements _CompletionTimeline {
  const _$CompletionTimelineImpl(
      {required this.startedAt,
      this.arrivedAtDestination,
      required this.completedAt});

  factory _$CompletionTimelineImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletionTimelineImplFromJson(json);

  @override
  final String startedAt;
  @override
  final String? arrivedAtDestination;
  @override
  final String completedAt;

  @override
  String toString() {
    return 'CompletionTimeline(startedAt: $startedAt, arrivedAtDestination: $arrivedAtDestination, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletionTimelineImpl &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.arrivedAtDestination, arrivedAtDestination) ||
                other.arrivedAtDestination == arrivedAtDestination) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startedAt, arrivedAtDestination, completedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletionTimelineImplCopyWith<_$CompletionTimelineImpl> get copyWith =>
      __$$CompletionTimelineImplCopyWithImpl<_$CompletionTimelineImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletionTimelineImplToJson(
      this,
    );
  }
}

abstract class _CompletionTimeline implements CompletionTimeline {
  const factory _CompletionTimeline(
      {required final String startedAt,
      final String? arrivedAtDestination,
      required final String completedAt}) = _$CompletionTimelineImpl;

  factory _CompletionTimeline.fromJson(Map<String, dynamic> json) =
      _$CompletionTimelineImpl.fromJson;

  @override
  String get startedAt;
  @override
  String? get arrivedAtDestination;
  @override
  String get completedAt;
  @override
  @JsonKey(ignore: true)
  _$$CompletionTimelineImplCopyWith<_$CompletionTimelineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompletionLocation _$CompletionLocationFromJson(Map<String, dynamic> json) {
  return _CompletionLocation.fromJson(json);
}

/// @nodoc
mixin _$CompletionLocation {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double? get distanceTraveledKm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletionLocationCopyWith<CompletionLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionLocationCopyWith<$Res> {
  factory $CompletionLocationCopyWith(
          CompletionLocation value, $Res Function(CompletionLocation) then) =
      _$CompletionLocationCopyWithImpl<$Res, CompletionLocation>;
  @useResult
  $Res call({double latitude, double longitude, double? distanceTraveledKm});
}

/// @nodoc
class _$CompletionLocationCopyWithImpl<$Res, $Val extends CompletionLocation>
    implements $CompletionLocationCopyWith<$Res> {
  _$CompletionLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? distanceTraveledKm = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      distanceTraveledKm: freezed == distanceTraveledKm
          ? _value.distanceTraveledKm
          : distanceTraveledKm // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletionLocationImplCopyWith<$Res>
    implements $CompletionLocationCopyWith<$Res> {
  factory _$$CompletionLocationImplCopyWith(_$CompletionLocationImpl value,
          $Res Function(_$CompletionLocationImpl) then) =
      __$$CompletionLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude, double? distanceTraveledKm});
}

/// @nodoc
class __$$CompletionLocationImplCopyWithImpl<$Res>
    extends _$CompletionLocationCopyWithImpl<$Res, _$CompletionLocationImpl>
    implements _$$CompletionLocationImplCopyWith<$Res> {
  __$$CompletionLocationImplCopyWithImpl(_$CompletionLocationImpl _value,
      $Res Function(_$CompletionLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? distanceTraveledKm = freezed,
  }) {
    return _then(_$CompletionLocationImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      distanceTraveledKm: freezed == distanceTraveledKm
          ? _value.distanceTraveledKm
          : distanceTraveledKm // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletionLocationImpl implements _CompletionLocation {
  const _$CompletionLocationImpl(
      {required this.latitude,
      required this.longitude,
      this.distanceTraveledKm});

  factory _$CompletionLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletionLocationImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double? distanceTraveledKm;

  @override
  String toString() {
    return 'CompletionLocation(latitude: $latitude, longitude: $longitude, distanceTraveledKm: $distanceTraveledKm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletionLocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.distanceTraveledKm, distanceTraveledKm) ||
                other.distanceTraveledKm == distanceTraveledKm));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, latitude, longitude, distanceTraveledKm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletionLocationImplCopyWith<_$CompletionLocationImpl> get copyWith =>
      __$$CompletionLocationImplCopyWithImpl<_$CompletionLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletionLocationImplToJson(
      this,
    );
  }
}

abstract class _CompletionLocation implements CompletionLocation {
  const factory _CompletionLocation(
      {required final double latitude,
      required final double longitude,
      final double? distanceTraveledKm}) = _$CompletionLocationImpl;

  factory _CompletionLocation.fromJson(Map<String, dynamic> json) =
      _$CompletionLocationImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double? get distanceTraveledKm;
  @override
  @JsonKey(ignore: true)
  _$$CompletionLocationImplCopyWith<_$CompletionLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CollectedPaymentSummary _$CollectedPaymentSummaryFromJson(
    Map<String, dynamic> json) {
  return _CollectedPaymentSummary.fromJson(json);
}

/// @nodoc
mixin _$CollectedPaymentSummary {
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectedPaymentSummaryCopyWith<CollectedPaymentSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectedPaymentSummaryCopyWith<$Res> {
  factory $CollectedPaymentSummaryCopyWith(CollectedPaymentSummary value,
          $Res Function(CollectedPaymentSummary) then) =
      _$CollectedPaymentSummaryCopyWithImpl<$Res, CollectedPaymentSummary>;
  @useResult
  $Res call({double amount, String currency, String method});
}

/// @nodoc
class _$CollectedPaymentSummaryCopyWithImpl<$Res,
        $Val extends CollectedPaymentSummary>
    implements $CollectedPaymentSummaryCopyWith<$Res> {
  _$CollectedPaymentSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? method = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectedPaymentSummaryImplCopyWith<$Res>
    implements $CollectedPaymentSummaryCopyWith<$Res> {
  factory _$$CollectedPaymentSummaryImplCopyWith(
          _$CollectedPaymentSummaryImpl value,
          $Res Function(_$CollectedPaymentSummaryImpl) then) =
      __$$CollectedPaymentSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, String currency, String method});
}

/// @nodoc
class __$$CollectedPaymentSummaryImplCopyWithImpl<$Res>
    extends _$CollectedPaymentSummaryCopyWithImpl<$Res,
        _$CollectedPaymentSummaryImpl>
    implements _$$CollectedPaymentSummaryImplCopyWith<$Res> {
  __$$CollectedPaymentSummaryImplCopyWithImpl(
      _$CollectedPaymentSummaryImpl _value,
      $Res Function(_$CollectedPaymentSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? method = null,
  }) {
    return _then(_$CollectedPaymentSummaryImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CollectedPaymentSummaryImpl implements _CollectedPaymentSummary {
  const _$CollectedPaymentSummaryImpl(
      {required this.amount, required this.currency, required this.method});

  factory _$CollectedPaymentSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CollectedPaymentSummaryImplFromJson(json);

  @override
  final double amount;
  @override
  final String currency;
  @override
  final String method;

  @override
  String toString() {
    return 'CollectedPaymentSummary(amount: $amount, currency: $currency, method: $method)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectedPaymentSummaryImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.method, method) || other.method == method));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency, method);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectedPaymentSummaryImplCopyWith<_$CollectedPaymentSummaryImpl>
      get copyWith => __$$CollectedPaymentSummaryImplCopyWithImpl<
          _$CollectedPaymentSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CollectedPaymentSummaryImplToJson(
      this,
    );
  }
}

abstract class _CollectedPaymentSummary implements CollectedPaymentSummary {
  const factory _CollectedPaymentSummary(
      {required final double amount,
      required final String currency,
      required final String method}) = _$CollectedPaymentSummaryImpl;

  factory _CollectedPaymentSummary.fromJson(Map<String, dynamic> json) =
      _$CollectedPaymentSummaryImpl.fromJson;

  @override
  double get amount;
  @override
  String get currency;
  @override
  String get method;
  @override
  @JsonKey(ignore: true)
  _$$CollectedPaymentSummaryImplCopyWith<_$CollectedPaymentSummaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CompletionVerification _$CompletionVerificationFromJson(
    Map<String, dynamic> json) {
  return _CompletionVerification.fromJson(json);
}

/// @nodoc
mixin _$CompletionVerification {
  bool get otpVerified => throw _privateConstructorUsedError;
  String? get barcodeScanned => throw _privateConstructorUsedError;
  CollectedPaymentSummary? get paymentCollected =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletionVerificationCopyWith<CompletionVerification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionVerificationCopyWith<$Res> {
  factory $CompletionVerificationCopyWith(CompletionVerification value,
          $Res Function(CompletionVerification) then) =
      _$CompletionVerificationCopyWithImpl<$Res, CompletionVerification>;
  @useResult
  $Res call(
      {bool otpVerified,
      String? barcodeScanned,
      CollectedPaymentSummary? paymentCollected});

  $CollectedPaymentSummaryCopyWith<$Res>? get paymentCollected;
}

/// @nodoc
class _$CompletionVerificationCopyWithImpl<$Res,
        $Val extends CompletionVerification>
    implements $CompletionVerificationCopyWith<$Res> {
  _$CompletionVerificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpVerified = null,
    Object? barcodeScanned = freezed,
    Object? paymentCollected = freezed,
  }) {
    return _then(_value.copyWith(
      otpVerified: null == otpVerified
          ? _value.otpVerified
          : otpVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      barcodeScanned: freezed == barcodeScanned
          ? _value.barcodeScanned
          : barcodeScanned // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCollected: freezed == paymentCollected
          ? _value.paymentCollected
          : paymentCollected // ignore: cast_nullable_to_non_nullable
              as CollectedPaymentSummary?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CollectedPaymentSummaryCopyWith<$Res>? get paymentCollected {
    if (_value.paymentCollected == null) {
      return null;
    }

    return $CollectedPaymentSummaryCopyWith<$Res>(_value.paymentCollected!,
        (value) {
      return _then(_value.copyWith(paymentCollected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompletionVerificationImplCopyWith<$Res>
    implements $CompletionVerificationCopyWith<$Res> {
  factory _$$CompletionVerificationImplCopyWith(
          _$CompletionVerificationImpl value,
          $Res Function(_$CompletionVerificationImpl) then) =
      __$$CompletionVerificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool otpVerified,
      String? barcodeScanned,
      CollectedPaymentSummary? paymentCollected});

  @override
  $CollectedPaymentSummaryCopyWith<$Res>? get paymentCollected;
}

/// @nodoc
class __$$CompletionVerificationImplCopyWithImpl<$Res>
    extends _$CompletionVerificationCopyWithImpl<$Res,
        _$CompletionVerificationImpl>
    implements _$$CompletionVerificationImplCopyWith<$Res> {
  __$$CompletionVerificationImplCopyWithImpl(
      _$CompletionVerificationImpl _value,
      $Res Function(_$CompletionVerificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpVerified = null,
    Object? barcodeScanned = freezed,
    Object? paymentCollected = freezed,
  }) {
    return _then(_$CompletionVerificationImpl(
      otpVerified: null == otpVerified
          ? _value.otpVerified
          : otpVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      barcodeScanned: freezed == barcodeScanned
          ? _value.barcodeScanned
          : barcodeScanned // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentCollected: freezed == paymentCollected
          ? _value.paymentCollected
          : paymentCollected // ignore: cast_nullable_to_non_nullable
              as CollectedPaymentSummary?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletionVerificationImpl implements _CompletionVerification {
  const _$CompletionVerificationImpl(
      {this.otpVerified = false, this.barcodeScanned, this.paymentCollected});

  factory _$CompletionVerificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletionVerificationImplFromJson(json);

  @override
  @JsonKey()
  final bool otpVerified;
  @override
  final String? barcodeScanned;
  @override
  final CollectedPaymentSummary? paymentCollected;

  @override
  String toString() {
    return 'CompletionVerification(otpVerified: $otpVerified, barcodeScanned: $barcodeScanned, paymentCollected: $paymentCollected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletionVerificationImpl &&
            (identical(other.otpVerified, otpVerified) ||
                other.otpVerified == otpVerified) &&
            (identical(other.barcodeScanned, barcodeScanned) ||
                other.barcodeScanned == barcodeScanned) &&
            (identical(other.paymentCollected, paymentCollected) ||
                other.paymentCollected == paymentCollected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, otpVerified, barcodeScanned, paymentCollected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletionVerificationImplCopyWith<_$CompletionVerificationImpl>
      get copyWith => __$$CompletionVerificationImplCopyWithImpl<
          _$CompletionVerificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletionVerificationImplToJson(
      this,
    );
  }
}

abstract class _CompletionVerification implements CompletionVerification {
  const factory _CompletionVerification(
          {final bool otpVerified,
          final String? barcodeScanned,
          final CollectedPaymentSummary? paymentCollected}) =
      _$CompletionVerificationImpl;

  factory _CompletionVerification.fromJson(Map<String, dynamic> json) =
      _$CompletionVerificationImpl.fromJson;

  @override
  bool get otpVerified;
  @override
  String? get barcodeScanned;
  @override
  CollectedPaymentSummary? get paymentCollected;
  @override
  @JsonKey(ignore: true)
  _$$CompletionVerificationImplCopyWith<_$CompletionVerificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProofOfDeliverySummary _$ProofOfDeliverySummaryFromJson(
    Map<String, dynamic> json) {
  return _ProofOfDeliverySummary.fromJson(json);
}

/// @nodoc
mixin _$ProofOfDeliverySummary {
  String? get recipientNameReceived => throw _privateConstructorUsedError;
  String? get signatureBase64OrUrl => throw _privateConstructorUsedError;
  String? get photoBase64OrUrl => throw _privateConstructorUsedError;
  String? get driverNotes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProofOfDeliverySummaryCopyWith<ProofOfDeliverySummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProofOfDeliverySummaryCopyWith<$Res> {
  factory $ProofOfDeliverySummaryCopyWith(ProofOfDeliverySummary value,
          $Res Function(ProofOfDeliverySummary) then) =
      _$ProofOfDeliverySummaryCopyWithImpl<$Res, ProofOfDeliverySummary>;
  @useResult
  $Res call(
      {String? recipientNameReceived,
      String? signatureBase64OrUrl,
      String? photoBase64OrUrl,
      String? driverNotes});
}

/// @nodoc
class _$ProofOfDeliverySummaryCopyWithImpl<$Res,
        $Val extends ProofOfDeliverySummary>
    implements $ProofOfDeliverySummaryCopyWith<$Res> {
  _$ProofOfDeliverySummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipientNameReceived = freezed,
    Object? signatureBase64OrUrl = freezed,
    Object? photoBase64OrUrl = freezed,
    Object? driverNotes = freezed,
  }) {
    return _then(_value.copyWith(
      recipientNameReceived: freezed == recipientNameReceived
          ? _value.recipientNameReceived
          : recipientNameReceived // ignore: cast_nullable_to_non_nullable
              as String?,
      signatureBase64OrUrl: freezed == signatureBase64OrUrl
          ? _value.signatureBase64OrUrl
          : signatureBase64OrUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      photoBase64OrUrl: freezed == photoBase64OrUrl
          ? _value.photoBase64OrUrl
          : photoBase64OrUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      driverNotes: freezed == driverNotes
          ? _value.driverNotes
          : driverNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProofOfDeliverySummaryImplCopyWith<$Res>
    implements $ProofOfDeliverySummaryCopyWith<$Res> {
  factory _$$ProofOfDeliverySummaryImplCopyWith(
          _$ProofOfDeliverySummaryImpl value,
          $Res Function(_$ProofOfDeliverySummaryImpl) then) =
      __$$ProofOfDeliverySummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? recipientNameReceived,
      String? signatureBase64OrUrl,
      String? photoBase64OrUrl,
      String? driverNotes});
}

/// @nodoc
class __$$ProofOfDeliverySummaryImplCopyWithImpl<$Res>
    extends _$ProofOfDeliverySummaryCopyWithImpl<$Res,
        _$ProofOfDeliverySummaryImpl>
    implements _$$ProofOfDeliverySummaryImplCopyWith<$Res> {
  __$$ProofOfDeliverySummaryImplCopyWithImpl(
      _$ProofOfDeliverySummaryImpl _value,
      $Res Function(_$ProofOfDeliverySummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipientNameReceived = freezed,
    Object? signatureBase64OrUrl = freezed,
    Object? photoBase64OrUrl = freezed,
    Object? driverNotes = freezed,
  }) {
    return _then(_$ProofOfDeliverySummaryImpl(
      recipientNameReceived: freezed == recipientNameReceived
          ? _value.recipientNameReceived
          : recipientNameReceived // ignore: cast_nullable_to_non_nullable
              as String?,
      signatureBase64OrUrl: freezed == signatureBase64OrUrl
          ? _value.signatureBase64OrUrl
          : signatureBase64OrUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      photoBase64OrUrl: freezed == photoBase64OrUrl
          ? _value.photoBase64OrUrl
          : photoBase64OrUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      driverNotes: freezed == driverNotes
          ? _value.driverNotes
          : driverNotes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProofOfDeliverySummaryImpl implements _ProofOfDeliverySummary {
  const _$ProofOfDeliverySummaryImpl(
      {this.recipientNameReceived,
      this.signatureBase64OrUrl,
      this.photoBase64OrUrl,
      this.driverNotes});

  factory _$ProofOfDeliverySummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProofOfDeliverySummaryImplFromJson(json);

  @override
  final String? recipientNameReceived;
  @override
  final String? signatureBase64OrUrl;
  @override
  final String? photoBase64OrUrl;
  @override
  final String? driverNotes;

  @override
  String toString() {
    return 'ProofOfDeliverySummary(recipientNameReceived: $recipientNameReceived, signatureBase64OrUrl: $signatureBase64OrUrl, photoBase64OrUrl: $photoBase64OrUrl, driverNotes: $driverNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProofOfDeliverySummaryImpl &&
            (identical(other.recipientNameReceived, recipientNameReceived) ||
                other.recipientNameReceived == recipientNameReceived) &&
            (identical(other.signatureBase64OrUrl, signatureBase64OrUrl) ||
                other.signatureBase64OrUrl == signatureBase64OrUrl) &&
            (identical(other.photoBase64OrUrl, photoBase64OrUrl) ||
                other.photoBase64OrUrl == photoBase64OrUrl) &&
            (identical(other.driverNotes, driverNotes) ||
                other.driverNotes == driverNotes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recipientNameReceived,
      signatureBase64OrUrl, photoBase64OrUrl, driverNotes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProofOfDeliverySummaryImplCopyWith<_$ProofOfDeliverySummaryImpl>
      get copyWith => __$$ProofOfDeliverySummaryImplCopyWithImpl<
          _$ProofOfDeliverySummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProofOfDeliverySummaryImplToJson(
      this,
    );
  }
}

abstract class _ProofOfDeliverySummary implements ProofOfDeliverySummary {
  const factory _ProofOfDeliverySummary(
      {final String? recipientNameReceived,
      final String? signatureBase64OrUrl,
      final String? photoBase64OrUrl,
      final String? driverNotes}) = _$ProofOfDeliverySummaryImpl;

  factory _ProofOfDeliverySummary.fromJson(Map<String, dynamic> json) =
      _$ProofOfDeliverySummaryImpl.fromJson;

  @override
  String? get recipientNameReceived;
  @override
  String? get signatureBase64OrUrl;
  @override
  String? get photoBase64OrUrl;
  @override
  String? get driverNotes;
  @override
  @JsonKey(ignore: true)
  _$$ProofOfDeliverySummaryImplCopyWith<_$ProofOfDeliverySummaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CompletionPayload _$CompletionPayloadFromJson(Map<String, dynamic> json) {
  return _CompletionPayload.fromJson(json);
}

/// @nodoc
mixin _$CompletionPayload {
  String get taskId => throw _privateConstructorUsedError;
  String get externalOrderId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DeliveryPersonSummary get deliveryPerson =>
      throw _privateConstructorUsedError;
  CompletionTimeline get timeline => throw _privateConstructorUsedError;
  CompletionLocation get deliveryLocation => throw _privateConstructorUsedError;
  CompletionVerification get verification => throw _privateConstructorUsedError;
  ProofOfDeliverySummary get proofOfDelivery =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompletionPayloadCopyWith<CompletionPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletionPayloadCopyWith<$Res> {
  factory $CompletionPayloadCopyWith(
          CompletionPayload value, $Res Function(CompletionPayload) then) =
      _$CompletionPayloadCopyWithImpl<$Res, CompletionPayload>;
  @useResult
  $Res call(
      {String taskId,
      String externalOrderId,
      String status,
      DeliveryPersonSummary deliveryPerson,
      CompletionTimeline timeline,
      CompletionLocation deliveryLocation,
      CompletionVerification verification,
      ProofOfDeliverySummary proofOfDelivery});

  $DeliveryPersonSummaryCopyWith<$Res> get deliveryPerson;
  $CompletionTimelineCopyWith<$Res> get timeline;
  $CompletionLocationCopyWith<$Res> get deliveryLocation;
  $CompletionVerificationCopyWith<$Res> get verification;
  $ProofOfDeliverySummaryCopyWith<$Res> get proofOfDelivery;
}

/// @nodoc
class _$CompletionPayloadCopyWithImpl<$Res, $Val extends CompletionPayload>
    implements $CompletionPayloadCopyWith<$Res> {
  _$CompletionPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? externalOrderId = null,
    Object? status = null,
    Object? deliveryPerson = null,
    Object? timeline = null,
    Object? deliveryLocation = null,
    Object? verification = null,
    Object? proofOfDelivery = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryPerson: null == deliveryPerson
          ? _value.deliveryPerson
          : deliveryPerson // ignore: cast_nullable_to_non_nullable
              as DeliveryPersonSummary,
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as CompletionTimeline,
      deliveryLocation: null == deliveryLocation
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as CompletionLocation,
      verification: null == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as CompletionVerification,
      proofOfDelivery: null == proofOfDelivery
          ? _value.proofOfDelivery
          : proofOfDelivery // ignore: cast_nullable_to_non_nullable
              as ProofOfDeliverySummary,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryPersonSummaryCopyWith<$Res> get deliveryPerson {
    return $DeliveryPersonSummaryCopyWith<$Res>(_value.deliveryPerson, (value) {
      return _then(_value.copyWith(deliveryPerson: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CompletionTimelineCopyWith<$Res> get timeline {
    return $CompletionTimelineCopyWith<$Res>(_value.timeline, (value) {
      return _then(_value.copyWith(timeline: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CompletionLocationCopyWith<$Res> get deliveryLocation {
    return $CompletionLocationCopyWith<$Res>(_value.deliveryLocation, (value) {
      return _then(_value.copyWith(deliveryLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CompletionVerificationCopyWith<$Res> get verification {
    return $CompletionVerificationCopyWith<$Res>(_value.verification, (value) {
      return _then(_value.copyWith(verification: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProofOfDeliverySummaryCopyWith<$Res> get proofOfDelivery {
    return $ProofOfDeliverySummaryCopyWith<$Res>(_value.proofOfDelivery,
        (value) {
      return _then(_value.copyWith(proofOfDelivery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompletionPayloadImplCopyWith<$Res>
    implements $CompletionPayloadCopyWith<$Res> {
  factory _$$CompletionPayloadImplCopyWith(_$CompletionPayloadImpl value,
          $Res Function(_$CompletionPayloadImpl) then) =
      __$$CompletionPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String taskId,
      String externalOrderId,
      String status,
      DeliveryPersonSummary deliveryPerson,
      CompletionTimeline timeline,
      CompletionLocation deliveryLocation,
      CompletionVerification verification,
      ProofOfDeliverySummary proofOfDelivery});

  @override
  $DeliveryPersonSummaryCopyWith<$Res> get deliveryPerson;
  @override
  $CompletionTimelineCopyWith<$Res> get timeline;
  @override
  $CompletionLocationCopyWith<$Res> get deliveryLocation;
  @override
  $CompletionVerificationCopyWith<$Res> get verification;
  @override
  $ProofOfDeliverySummaryCopyWith<$Res> get proofOfDelivery;
}

/// @nodoc
class __$$CompletionPayloadImplCopyWithImpl<$Res>
    extends _$CompletionPayloadCopyWithImpl<$Res, _$CompletionPayloadImpl>
    implements _$$CompletionPayloadImplCopyWith<$Res> {
  __$$CompletionPayloadImplCopyWithImpl(_$CompletionPayloadImpl _value,
      $Res Function(_$CompletionPayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? externalOrderId = null,
    Object? status = null,
    Object? deliveryPerson = null,
    Object? timeline = null,
    Object? deliveryLocation = null,
    Object? verification = null,
    Object? proofOfDelivery = null,
  }) {
    return _then(_$CompletionPayloadImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      externalOrderId: null == externalOrderId
          ? _value.externalOrderId
          : externalOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryPerson: null == deliveryPerson
          ? _value.deliveryPerson
          : deliveryPerson // ignore: cast_nullable_to_non_nullable
              as DeliveryPersonSummary,
      timeline: null == timeline
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as CompletionTimeline,
      deliveryLocation: null == deliveryLocation
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as CompletionLocation,
      verification: null == verification
          ? _value.verification
          : verification // ignore: cast_nullable_to_non_nullable
              as CompletionVerification,
      proofOfDelivery: null == proofOfDelivery
          ? _value.proofOfDelivery
          : proofOfDelivery // ignore: cast_nullable_to_non_nullable
              as ProofOfDeliverySummary,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CompletionPayloadImpl implements _CompletionPayload {
  const _$CompletionPayloadImpl(
      {required this.taskId,
      required this.externalOrderId,
      this.status = 'delivered',
      required this.deliveryPerson,
      required this.timeline,
      required this.deliveryLocation,
      required this.verification,
      required this.proofOfDelivery});

  factory _$CompletionPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$CompletionPayloadImplFromJson(json);

  @override
  final String taskId;
  @override
  final String externalOrderId;
  @override
  @JsonKey()
  final String status;
  @override
  final DeliveryPersonSummary deliveryPerson;
  @override
  final CompletionTimeline timeline;
  @override
  final CompletionLocation deliveryLocation;
  @override
  final CompletionVerification verification;
  @override
  final ProofOfDeliverySummary proofOfDelivery;

  @override
  String toString() {
    return 'CompletionPayload(taskId: $taskId, externalOrderId: $externalOrderId, status: $status, deliveryPerson: $deliveryPerson, timeline: $timeline, deliveryLocation: $deliveryLocation, verification: $verification, proofOfDelivery: $proofOfDelivery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletionPayloadImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.externalOrderId, externalOrderId) ||
                other.externalOrderId == externalOrderId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deliveryPerson, deliveryPerson) ||
                other.deliveryPerson == deliveryPerson) &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.verification, verification) ||
                other.verification == verification) &&
            (identical(other.proofOfDelivery, proofOfDelivery) ||
                other.proofOfDelivery == proofOfDelivery));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      taskId,
      externalOrderId,
      status,
      deliveryPerson,
      timeline,
      deliveryLocation,
      verification,
      proofOfDelivery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletionPayloadImplCopyWith<_$CompletionPayloadImpl> get copyWith =>
      __$$CompletionPayloadImplCopyWithImpl<_$CompletionPayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompletionPayloadImplToJson(
      this,
    );
  }
}

abstract class _CompletionPayload implements CompletionPayload {
  const factory _CompletionPayload(
          {required final String taskId,
          required final String externalOrderId,
          final String status,
          required final DeliveryPersonSummary deliveryPerson,
          required final CompletionTimeline timeline,
          required final CompletionLocation deliveryLocation,
          required final CompletionVerification verification,
          required final ProofOfDeliverySummary proofOfDelivery}) =
      _$CompletionPayloadImpl;

  factory _CompletionPayload.fromJson(Map<String, dynamic> json) =
      _$CompletionPayloadImpl.fromJson;

  @override
  String get taskId;
  @override
  String get externalOrderId;
  @override
  String get status;
  @override
  DeliveryPersonSummary get deliveryPerson;
  @override
  CompletionTimeline get timeline;
  @override
  CompletionLocation get deliveryLocation;
  @override
  CompletionVerification get verification;
  @override
  ProofOfDeliverySummary get proofOfDelivery;
  @override
  @JsonKey(ignore: true)
  _$$CompletionPayloadImplCopyWith<_$CompletionPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
