import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/delivery_task.dart';

part 'task_ingestion_service.g.dart';

@riverpod
class ActiveDeliveryTaskController extends _$ActiveDeliveryTaskController {
  @override
  DeliveryTask? build() {
    return _buildSampleDemoTask();
  }

  void setTask(DeliveryTask task) {
    state = task;
  }

  void updateStatus(TaskStatus status) {
    if (state != null) {
      state = state!.copyWith(status: status);
    }
  }

  bool ingestFromPayload(String rawPayload) {
    try {
      final decoded = jsonDecode(rawPayload);
      if (decoded is Map<String, dynamic>) {
        final task = DeliveryTask.fromJson(decoded);
        state = task;
        return true;
      }
    } catch (e) {
      debugPrint('Error parsing delivery task payload: $e');
    }
    return false;
  }

  static DeliveryTask _buildSampleDemoTask() {
    return const DeliveryTask(
      taskId: 'DEL-10023',
      externalOrderId: 'ORD-9981',
      clientApp: ClientAppInfo(
        appId: 'com.example.storeapp',
        appName: 'StoreApp',
        webhookUrl: 'https://api.storeapp.com/v1/deliveries/webhook',
        returnUrl: 'storeapp://delivery-callback?task_id=DEL-10023',
      ),
      deliveryPerson: DeliveryPersonInfo(
        id: 'DP-402',
        name: 'Alex Smith',
        phone: '+919876543210',
        email: 'driver@deliveryboy.com',
        avatarUrl: 'https://deliveryboy.com/avatars/dp402.png',
        vehicle: VehicleInfo(
          type: 'Motorcycle',
          model: 'Hero Splendor Plus',
          licensePlate: 'KA-01-EQ-4920',
        ),
      ),
      pickup: TaskLocation(
        name: 'Koramangala Fulfillment Hub',
        contactPerson: 'Hub Supervisor (Ramesh)',
        phone: '+918023456789',
        address: '80 Feet Rd, 4th Block, Koramangala, Bengaluru, Karnataka 560034',
        latitude: 12.9352,
        longitude: 77.6245,
        timeWindowStart: '16:00',
        timeWindowEnd: '17:00',
        instructions: 'Collect from Loading Bay 3, scan QR at hub dispatch gate',
      ),
      destination: TaskLocation(
        name: 'Arjun Sharma',
        contactPerson: 'Arjun Sharma',
        phone: '+919812345678',
        alternatePhone: '+919812345679',
        address: 'Flat 402, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103',
        latitude: 12.9260,
        longitude: 77.6762,
        timeWindowStart: '17:30',
        timeWindowEnd: '19:00',
        instructions: 'Tower B, 4th floor, ring bell twice',
      ),
      packageDetails: PackageDetails(
        packageId: 'PKG-88392',
        trackingBarcode: 'TRK992834710',
        category: 'Parcel',
        itemsCount: 2,
        weightKg: 2.5,
        dimensionsCm: PackageDimensions(length: 30, width: 20, height: 15),
        description: 'Electronics & Mobile Accessories',
        isFragile: true,
      ),
      payment: PaymentDetails(
        mode: 'Cash on Delivery',
        amountDue: 450.00,
        currency: 'INR',
        isPrepaid: false,
      ),
      verificationRequirements: VerificationRequirements(
        requireOtp: true,
        expectedOtp: '4890',
        requireRecipientSignature: true,
        requireDeliveryPhoto: true,
        requireBarcodeScan: true,
      ),
      status: TaskStatus.onTheWay,
      createdAt: '2026-10-07T15:30:00Z',
    );
  }
}
