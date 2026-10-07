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
        phone: '+1555019283',
        email: 'driver@deliveryboy.com',
        avatarUrl: 'https://deliveryboy.com/avatars/dp402.png',
        vehicle: VehicleInfo(
          type: 'Motorcycle',
          model: 'Honda Activa',
          licensePlate: 'NY-784-X',
        ),
      ),
      pickup: TaskLocation(
        name: 'Central Hub Warehouse',
        contactPerson: 'Warehouse Supervisor',
        phone: '+1234567890',
        address: '123 Main St, New York, NY',
        latitude: 40.7128,
        longitude: -74.0060,
        timeWindowStart: '16:00',
        timeWindowEnd: '17:00',
        instructions: 'Collect from Loading Bay 3, scan QR at dock',
      ),
      destination: TaskLocation(
        name: 'John Doe',
        contactPerson: 'John Doe',
        phone: '+1987654321',
        alternatePhone: '+1987654322',
        address: '456 Oak Ave, Apt 4B, Brooklyn, NY',
        latitude: 40.6782,
        longitude: -73.9442,
        timeWindowStart: '17:30',
        timeWindowEnd: '19:00',
        instructions: 'Gate code #4412, ring bell twice',
      ),
      packageDetails: PackageDetails(
        packageId: 'PKG-88392',
        trackingBarcode: 'TRK992834710',
        category: 'Parcel',
        itemsCount: 2,
        weightKg: 3.5,
        dimensionsCm: PackageDimensions(length: 30, width: 20, height: 15),
        description: 'Electronics & Accessories',
        isFragile: true,
      ),
      payment: PaymentDetails(
        mode: 'Cash on Delivery',
        amountDue: 45.50,
        currency: 'USD',
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
