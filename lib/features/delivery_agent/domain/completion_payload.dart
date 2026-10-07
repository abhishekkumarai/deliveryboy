import 'package:freezed_annotation/freezed_annotation.dart';

part 'completion_payload.freezed.dart';
part 'completion_payload.g.dart';

@freezed
class DeliveryPersonSummary with _$DeliveryPersonSummary {
  const factory DeliveryPersonSummary({
    required String id,
    required String name,
    required String phone,
  }) = _DeliveryPersonSummary;

  factory DeliveryPersonSummary.fromJson(Map<String, dynamic> json) =>
      _$DeliveryPersonSummaryFromJson(json);
}

@freezed
class CompletionTimeline with _$CompletionTimeline {
  const factory CompletionTimeline({
    required String startedAt,
    String? arrivedAtDestination,
    required String completedAt,
  }) = _CompletionTimeline;

  factory CompletionTimeline.fromJson(Map<String, dynamic> json) =>
      _$CompletionTimelineFromJson(json);
}

@freezed
class CompletionLocation with _$CompletionLocation {
  const factory CompletionLocation({
    required double latitude,
    required double longitude,
    double? distanceTraveledKm,
  }) = _CompletionLocation;

  factory CompletionLocation.fromJson(Map<String, dynamic> json) =>
      _$CompletionLocationFromJson(json);
}

@freezed
class CollectedPaymentSummary with _$CollectedPaymentSummary {
  const factory CollectedPaymentSummary({
    required double amount,
    required String currency,
    required String method,
  }) = _CollectedPaymentSummary;

  factory CollectedPaymentSummary.fromJson(Map<String, dynamic> json) =>
      _$CollectedPaymentSummaryFromJson(json);
}

@freezed
class CompletionVerification with _$CompletionVerification {
  const factory CompletionVerification({
    @Default(false) bool otpVerified,
    String? barcodeScanned,
    CollectedPaymentSummary? paymentCollected,
  }) = _CompletionVerification;

  factory CompletionVerification.fromJson(Map<String, dynamic> json) =>
      _$CompletionVerificationFromJson(json);
}

@freezed
class ProofOfDeliverySummary with _$ProofOfDeliverySummary {
  const factory ProofOfDeliverySummary({
    String? recipientNameReceived,
    String? signatureBase64OrUrl,
    String? photoBase64OrUrl,
    String? driverNotes,
  }) = _ProofOfDeliverySummary;

  factory ProofOfDeliverySummary.fromJson(Map<String, dynamic> json) =>
      _$ProofOfDeliverySummaryFromJson(json);
}

@freezed
class CompletionPayload with _$CompletionPayload {
  const factory CompletionPayload({
    required String taskId,
    required String externalOrderId,
    @Default('delivered') String status,
    required DeliveryPersonSummary deliveryPerson,
    required CompletionTimeline timeline,
    required CompletionLocation deliveryLocation,
    required CompletionVerification verification,
    required ProofOfDeliverySummary proofOfDelivery,
  }) = _CompletionPayload;

  factory CompletionPayload.fromJson(Map<String, dynamic> json) =>
      _$CompletionPayloadFromJson(json);
}
