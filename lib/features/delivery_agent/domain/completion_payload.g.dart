// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryPersonSummaryImpl _$$DeliveryPersonSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryPersonSummaryImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$DeliveryPersonSummaryImplToJson(
        _$DeliveryPersonSummaryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
    };

_$CompletionTimelineImpl _$$CompletionTimelineImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletionTimelineImpl(
      startedAt: json['startedAt'] as String,
      arrivedAtDestination: json['arrivedAtDestination'] as String?,
      completedAt: json['completedAt'] as String,
    );

Map<String, dynamic> _$$CompletionTimelineImplToJson(
        _$CompletionTimelineImpl instance) =>
    <String, dynamic>{
      'startedAt': instance.startedAt,
      'arrivedAtDestination': instance.arrivedAtDestination,
      'completedAt': instance.completedAt,
    };

_$CompletionLocationImpl _$$CompletionLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletionLocationImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      distanceTraveledKm: (json['distanceTraveledKm'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CompletionLocationImplToJson(
        _$CompletionLocationImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'distanceTraveledKm': instance.distanceTraveledKm,
    };

_$CollectedPaymentSummaryImpl _$$CollectedPaymentSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$CollectedPaymentSummaryImpl(
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      method: json['method'] as String,
    );

Map<String, dynamic> _$$CollectedPaymentSummaryImplToJson(
        _$CollectedPaymentSummaryImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'method': instance.method,
    };

_$CompletionVerificationImpl _$$CompletionVerificationImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletionVerificationImpl(
      otpVerified: json['otpVerified'] as bool? ?? false,
      barcodeScanned: json['barcodeScanned'] as String?,
      paymentCollected: json['paymentCollected'] == null
          ? null
          : CollectedPaymentSummary.fromJson(
              json['paymentCollected'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompletionVerificationImplToJson(
        _$CompletionVerificationImpl instance) =>
    <String, dynamic>{
      'otpVerified': instance.otpVerified,
      'barcodeScanned': instance.barcodeScanned,
      'paymentCollected': instance.paymentCollected,
    };

_$ProofOfDeliverySummaryImpl _$$ProofOfDeliverySummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$ProofOfDeliverySummaryImpl(
      recipientNameReceived: json['recipientNameReceived'] as String?,
      signatureBase64OrUrl: json['signatureBase64OrUrl'] as String?,
      photoBase64OrUrl: json['photoBase64OrUrl'] as String?,
      driverNotes: json['driverNotes'] as String?,
    );

Map<String, dynamic> _$$ProofOfDeliverySummaryImplToJson(
        _$ProofOfDeliverySummaryImpl instance) =>
    <String, dynamic>{
      'recipientNameReceived': instance.recipientNameReceived,
      'signatureBase64OrUrl': instance.signatureBase64OrUrl,
      'photoBase64OrUrl': instance.photoBase64OrUrl,
      'driverNotes': instance.driverNotes,
    };

_$CompletionPayloadImpl _$$CompletionPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletionPayloadImpl(
      taskId: json['taskId'] as String,
      externalOrderId: json['externalOrderId'] as String,
      status: json['status'] as String? ?? 'delivered',
      deliveryPerson: DeliveryPersonSummary.fromJson(
          json['deliveryPerson'] as Map<String, dynamic>),
      timeline:
          CompletionTimeline.fromJson(json['timeline'] as Map<String, dynamic>),
      deliveryLocation: CompletionLocation.fromJson(
          json['deliveryLocation'] as Map<String, dynamic>),
      verification: CompletionVerification.fromJson(
          json['verification'] as Map<String, dynamic>),
      proofOfDelivery: ProofOfDeliverySummary.fromJson(
          json['proofOfDelivery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CompletionPayloadImplToJson(
        _$CompletionPayloadImpl instance) =>
    <String, dynamic>{
      'taskId': instance.taskId,
      'externalOrderId': instance.externalOrderId,
      'status': instance.status,
      'deliveryPerson': instance.deliveryPerson,
      'timeline': instance.timeline,
      'deliveryLocation': instance.deliveryLocation,
      'verification': instance.verification,
      'proofOfDelivery': instance.proofOfDelivery,
    };
