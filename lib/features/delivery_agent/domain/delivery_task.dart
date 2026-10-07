import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_task.freezed.dart';
part 'delivery_task.g.dart';

@freezed
class ClientAppInfo with _$ClientAppInfo {
  const factory ClientAppInfo({
    required String appId,
    required String appName,
    required String webhookUrl,
    String? returnUrl,
  }) = _ClientAppInfo;

  factory ClientAppInfo.fromJson(Map<String, dynamic> json) =>
      _$ClientAppInfoFromJson(json);
}

@freezed
class VehicleInfo with _$VehicleInfo {
  const factory VehicleInfo({
    required String type,
    String? model,
    required String licensePlate,
  }) = _VehicleInfo;

  factory VehicleInfo.fromJson(Map<String, dynamic> json) =>
      _$VehicleInfoFromJson(json);
}

@freezed
class DeliveryPersonInfo with _$DeliveryPersonInfo {
  const factory DeliveryPersonInfo({
    required String id,
    required String name,
    required String phone,
    String? email,
    String? avatarUrl,
    VehicleInfo? vehicle,
  }) = _DeliveryPersonInfo;

  factory DeliveryPersonInfo.fromJson(Map<String, dynamic> json) =>
      _$DeliveryPersonInfoFromJson(json);
}

@freezed
class TaskLocation with _$TaskLocation {
  const factory TaskLocation({
    required String name,
    String? contactPerson,
    required String phone,
    String? alternatePhone,
    required String address,
    required double latitude,
    required double longitude,
    String? timeWindowStart,
    String? timeWindowEnd,
    String? instructions,
  }) = _TaskLocation;

  factory TaskLocation.fromJson(Map<String, dynamic> json) =>
      _$TaskLocationFromJson(json);
}

@freezed
class PackageDimensions with _$PackageDimensions {
  const factory PackageDimensions({
    double? length,
    double? width,
    double? height,
  }) = _PackageDimensions;

  factory PackageDimensions.fromJson(Map<String, dynamic> json) =>
      _$PackageDimensionsFromJson(json);
}

@freezed
class PackageDetails with _$PackageDetails {
  const factory PackageDetails({
    required String packageId,
    required String trackingBarcode,
    @Default('parcel') String category,
    @Default(1) int itemsCount,
    @Default(1.0) double weightKg,
    PackageDimensions? dimensionsCm,
    String? description,
    @Default(false) bool isFragile,
  }) = _PackageDetails;

  factory PackageDetails.fromJson(Map<String, dynamic> json) =>
      _$PackageDetailsFromJson(json);
}

@freezed
class PaymentDetails with _$PaymentDetails {
  const factory PaymentDetails({
    @Default('prepaid') String mode,
    @Default(0.0) double amountDue,
    @Default('USD') String currency,
    @Default(true) bool isPrepaid,
  }) = _PaymentDetails;

  factory PaymentDetails.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsFromJson(json);
}

@freezed
class VerificationRequirements with _$VerificationRequirements {
  const factory VerificationRequirements({
    @Default(false) bool requireOtp,
    String? expectedOtp,
    @Default(false) bool requireRecipientSignature,
    @Default(false) bool requireDeliveryPhoto,
    @Default(false) bool requireBarcodeScan,
  }) = _VerificationRequirements;

  factory VerificationRequirements.fromJson(Map<String, dynamic> json) =>
      _$VerificationRequirementsFromJson(json);
}

enum TaskStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('assigned')
  assigned,
  @JsonValue('on_the_way')
  onTheWay,
  @JsonValue('arrived')
  arrived,
  @JsonValue('delivered')
  delivered,
  @JsonValue('failed')
  failed,
  @JsonValue('canceled')
  canceled,
}

@freezed
class DeliveryTask with _$DeliveryTask {
  const factory DeliveryTask({
    required String taskId,
    required String externalOrderId,
    required ClientAppInfo clientApp,
    required DeliveryPersonInfo deliveryPerson,
    required TaskLocation pickup,
    required TaskLocation destination,
    required PackageDetails packageDetails,
    required PaymentDetails payment,
    required VerificationRequirements verificationRequirements,
    @Default(TaskStatus.assigned) TaskStatus status,
    required String createdAt,
  }) = _DeliveryTask;

  factory DeliveryTask.fromJson(Map<String, dynamic> json) =>
      _$DeliveryTaskFromJson(json);
}
