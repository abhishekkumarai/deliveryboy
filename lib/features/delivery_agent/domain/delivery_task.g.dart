// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientAppInfoImpl _$$ClientAppInfoImplFromJson(Map<String, dynamic> json) =>
    _$ClientAppInfoImpl(
      appId: json['appId'] as String,
      appName: json['appName'] as String,
      webhookUrl: json['webhookUrl'] as String,
      returnUrl: json['returnUrl'] as String?,
    );

Map<String, dynamic> _$$ClientAppInfoImplToJson(_$ClientAppInfoImpl instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'appName': instance.appName,
      'webhookUrl': instance.webhookUrl,
      'returnUrl': instance.returnUrl,
    };

_$VehicleInfoImpl _$$VehicleInfoImplFromJson(Map<String, dynamic> json) =>
    _$VehicleInfoImpl(
      type: json['type'] as String,
      model: json['model'] as String?,
      licensePlate: json['licensePlate'] as String,
    );

Map<String, dynamic> _$$VehicleInfoImplToJson(_$VehicleInfoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'model': instance.model,
      'licensePlate': instance.licensePlate,
    };

_$DeliveryPersonInfoImpl _$$DeliveryPersonInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryPersonInfoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      vehicle: json['vehicle'] == null
          ? null
          : VehicleInfo.fromJson(json['vehicle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DeliveryPersonInfoImplToJson(
        _$DeliveryPersonInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'avatarUrl': instance.avatarUrl,
      'vehicle': instance.vehicle,
    };

_$TaskLocationImpl _$$TaskLocationImplFromJson(Map<String, dynamic> json) =>
    _$TaskLocationImpl(
      name: json['name'] as String,
      contactPerson: json['contactPerson'] as String?,
      phone: json['phone'] as String,
      alternatePhone: json['alternatePhone'] as String?,
      address: json['address'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      timeWindowStart: json['timeWindowStart'] as String?,
      timeWindowEnd: json['timeWindowEnd'] as String?,
      instructions: json['instructions'] as String?,
    );

Map<String, dynamic> _$$TaskLocationImplToJson(_$TaskLocationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'contactPerson': instance.contactPerson,
      'phone': instance.phone,
      'alternatePhone': instance.alternatePhone,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timeWindowStart': instance.timeWindowStart,
      'timeWindowEnd': instance.timeWindowEnd,
      'instructions': instance.instructions,
    };

_$PackageDimensionsImpl _$$PackageDimensionsImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageDimensionsImpl(
      length: (json['length'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PackageDimensionsImplToJson(
        _$PackageDimensionsImpl instance) =>
    <String, dynamic>{
      'length': instance.length,
      'width': instance.width,
      'height': instance.height,
    };

_$PackageDetailsImpl _$$PackageDetailsImplFromJson(Map<String, dynamic> json) =>
    _$PackageDetailsImpl(
      packageId: json['packageId'] as String,
      trackingBarcode: json['trackingBarcode'] as String,
      category: json['category'] as String? ?? 'parcel',
      itemsCount: (json['itemsCount'] as num?)?.toInt() ?? 1,
      weightKg: (json['weightKg'] as num?)?.toDouble() ?? 1.0,
      dimensionsCm: json['dimensionsCm'] == null
          ? null
          : PackageDimensions.fromJson(
              json['dimensionsCm'] as Map<String, dynamic>),
      description: json['description'] as String?,
      isFragile: json['isFragile'] as bool? ?? false,
    );

Map<String, dynamic> _$$PackageDetailsImplToJson(
        _$PackageDetailsImpl instance) =>
    <String, dynamic>{
      'packageId': instance.packageId,
      'trackingBarcode': instance.trackingBarcode,
      'category': instance.category,
      'itemsCount': instance.itemsCount,
      'weightKg': instance.weightKg,
      'dimensionsCm': instance.dimensionsCm,
      'description': instance.description,
      'isFragile': instance.isFragile,
    };

_$PaymentDetailsImpl _$$PaymentDetailsImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDetailsImpl(
      mode: json['mode'] as String? ?? 'prepaid',
      amountDue: (json['amountDue'] as num?)?.toDouble() ?? 0.0,
      currency: json['currency'] as String? ?? 'USD',
      isPrepaid: json['isPrepaid'] as bool? ?? true,
    );

Map<String, dynamic> _$$PaymentDetailsImplToJson(
        _$PaymentDetailsImpl instance) =>
    <String, dynamic>{
      'mode': instance.mode,
      'amountDue': instance.amountDue,
      'currency': instance.currency,
      'isPrepaid': instance.isPrepaid,
    };

_$VerificationRequirementsImpl _$$VerificationRequirementsImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationRequirementsImpl(
      requireOtp: json['requireOtp'] as bool? ?? false,
      expectedOtp: json['expectedOtp'] as String?,
      requireRecipientSignature:
          json['requireRecipientSignature'] as bool? ?? false,
      requireDeliveryPhoto: json['requireDeliveryPhoto'] as bool? ?? false,
      requireBarcodeScan: json['requireBarcodeScan'] as bool? ?? false,
    );

Map<String, dynamic> _$$VerificationRequirementsImplToJson(
        _$VerificationRequirementsImpl instance) =>
    <String, dynamic>{
      'requireOtp': instance.requireOtp,
      'expectedOtp': instance.expectedOtp,
      'requireRecipientSignature': instance.requireRecipientSignature,
      'requireDeliveryPhoto': instance.requireDeliveryPhoto,
      'requireBarcodeScan': instance.requireBarcodeScan,
    };

_$DeliveryTaskImpl _$$DeliveryTaskImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryTaskImpl(
      taskId: json['taskId'] as String,
      externalOrderId: json['externalOrderId'] as String,
      clientApp:
          ClientAppInfo.fromJson(json['clientApp'] as Map<String, dynamic>),
      deliveryPerson: DeliveryPersonInfo.fromJson(
          json['deliveryPerson'] as Map<String, dynamic>),
      pickup: TaskLocation.fromJson(json['pickup'] as Map<String, dynamic>),
      destination:
          TaskLocation.fromJson(json['destination'] as Map<String, dynamic>),
      packageDetails: PackageDetails.fromJson(
          json['packageDetails'] as Map<String, dynamic>),
      payment: PaymentDetails.fromJson(json['payment'] as Map<String, dynamic>),
      verificationRequirements: VerificationRequirements.fromJson(
          json['verificationRequirements'] as Map<String, dynamic>),
      status: $enumDecodeNullable(_$TaskStatusEnumMap, json['status']) ??
          TaskStatus.assigned,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$DeliveryTaskImplToJson(_$DeliveryTaskImpl instance) =>
    <String, dynamic>{
      'taskId': instance.taskId,
      'externalOrderId': instance.externalOrderId,
      'clientApp': instance.clientApp,
      'deliveryPerson': instance.deliveryPerson,
      'pickup': instance.pickup,
      'destination': instance.destination,
      'packageDetails': instance.packageDetails,
      'payment': instance.payment,
      'verificationRequirements': instance.verificationRequirements,
      'status': _$TaskStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt,
    };

const _$TaskStatusEnumMap = {
  TaskStatus.pending: 'pending',
  TaskStatus.assigned: 'assigned',
  TaskStatus.onTheWay: 'on_the_way',
  TaskStatus.arrived: 'arrived',
  TaskStatus.delivered: 'delivered',
  TaskStatus.failed: 'failed',
  TaskStatus.canceled: 'canceled',
};
