import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:deliverzler/features/delivery_agent/domain/delivery_task.dart';
import 'package:deliverzler/features/delivery_agent/domain/completion_payload.dart';

void main() {
  group('Delivery Simulation & Integration Lifecycle Tests', () {
    final sampleMap = <String, dynamic>{
      'taskId': 'DEL-10023',
      'externalOrderId': 'ORD-9981',
      'clientApp': {
        'appId': 'com.example.storeapp',
        'appName': 'StoreApp',
        'webhookUrl': 'https://api.storeapp.com/v1/deliveries/webhook',
        'returnUrl': 'storeapp://delivery-callback?task_id=DEL-10023',
      },
      'deliveryPerson': {
        'id': 'DP-402',
        'name': 'Alex Smith',
        'phone': '+919876543210',
        'email': 'driver@deliveryboy.com',
        'avatarUrl': 'https://deliveryboy.com/avatars/dp402.png',
        'vehicle': {
          'type': 'Motorcycle',
          'model': 'Hero Splendor Plus',
          'licensePlate': 'KA-01-EQ-4920',
        },
      },
      'pickup': {
        'name': 'Koramangala Fulfillment Hub',
        'contactPerson': 'Hub Supervisor (Ramesh)',
        'phone': '+918023456789',
        'address': '80 Feet Rd, 4th Block, Koramangala, Bengaluru, Karnataka 560034',
        'latitude': 12.9352,
        'longitude': 77.6245,
        'timeWindowStart': '16:00',
        'timeWindowEnd': '17:00',
        'instructions': 'Collect from Loading Bay 3, scan QR at hub dispatch gate',
      },
      'destination': {
        'name': 'Arjun Sharma',
        'contactPerson': 'Arjun Sharma',
        'phone': '+919812345678',
        'alternatePhone': '+919812345679',
        'address': 'Flat 402, Green Glen Layout, Bellandur, Bengaluru, Karnataka 560103',
        'latitude': 12.9260,
        'longitude': 77.6762,
        'timeWindowStart': '17:30',
        'timeWindowEnd': '19:00',
        'instructions': 'Tower B, 4th floor, ring bell twice',
      },
      'packageDetails': {
        'packageId': 'PKG-88392',
        'trackingBarcode': 'TRK992834710',
        'category': 'Parcel',
        'itemsCount': 2,
        'weightKg': 2.5,
        'dimensionsCm': {
          'length': 30.0,
          'width': 20.0,
          'height': 15.0,
        },
        'description': 'Electronics & Mobile Accessories',
        'isFragile': true,
      },
      'payment': {
        'mode': 'Cash on Delivery',
        'amountDue': 450.00,
        'currency': 'INR',
        'isPrepaid': false,
      },
      'verificationRequirements': {
        'requireOtp': true,
        'expectedOtp': '4890',
        'requireRecipientSignature': true,
        'requireDeliveryPhoto': true,
        'requireBarcodeScan': true,
      },
      'status': 'on_the_way',
      'createdAt': '2026-10-07T15:30:00Z',
    };

    test('External JSON payload parses successfully into DeliveryTask with Indian localization', () {
      final task = DeliveryTask.fromJson(sampleMap);

      expect(task.taskId, 'DEL-10023');
      expect(task.externalOrderId, 'ORD-9981');
      expect(task.clientApp.appName, 'StoreApp');
      expect(task.deliveryPerson.name, 'Alex Smith');
      expect(task.deliveryPerson.vehicle?.licensePlate, 'KA-01-EQ-4920');
      expect(task.pickup.address, contains('Bengaluru'));
      expect(task.destination.contactPerson, 'Arjun Sharma');
      expect(task.destination.phone, '+919812345678');
      expect(task.payment.currency, 'INR');
      expect(task.payment.amountDue, 450.00);
      expect(task.payment.mode, 'Cash on Delivery');
      expect(task.verificationRequirements.requireOtp, isTrue);
      expect(task.verificationRequirements.expectedOtp, '4890');
      expect(task.status, TaskStatus.onTheWay);
    });

    test('CompletionPayload correctly serializes delivery confirmation & POD metadata', () {
      final now = DateTime.now().toIso8601String();
      final completion = CompletionPayload(
        taskId: 'DEL-10023',
        externalOrderId: 'ORD-9981',
        status: 'delivered',
        deliveryPerson: const DeliveryPersonSummary(
          id: 'DP-402',
          name: 'Alex Smith',
          phone: '+919876543210',
        ),
        timeline: CompletionTimeline(
          startedAt: '2026-10-07T15:30:00Z',
          arrivedAtDestination: now,
          completedAt: now,
        ),
        deliveryLocation: const CompletionLocation(
          latitude: 12.9260,
          longitude: 77.6762,
          distanceTraveledKm: 8.4,
        ),
        verification: const CompletionVerification(
          otpVerified: true,
          barcodeScanned: 'TRK992834710',
          paymentCollected: CollectedPaymentSummary(
            amount: 450.0,
            currency: 'INR',
            method: 'Cash',
          ),
        ),
        proofOfDelivery: const ProofOfDeliverySummary(
          recipientNameReceived: 'Arjun Sharma',
          driverNotes: 'Package delivered at door. Handed to Arjun.',
        ),
      );

      final json = completion.toJson();
      expect(json['taskId'], 'DEL-10023');
      expect(json['externalOrderId'], 'ORD-9981');
      expect(json['status'], 'delivered');
      expect(completion.deliveryPerson.name, 'Alex Smith');
      expect(completion.verification.otpVerified, isTrue);
      expect(completion.verification.barcodeScanned, 'TRK992834710');
      expect(completion.verification.paymentCollected?.currency, 'INR');
      expect(completion.verification.paymentCollected?.amount, 450.0);
      expect(completion.proofOfDelivery.recipientNameReceived, 'Arjun Sharma');
    });

    test('DeliveryTask roundtrip JSON serialization preserves all data', () {
      final original = DeliveryTask.fromJson(sampleMap);
      final jsonString = jsonEncode(original.toJson());
      final decodedMap = jsonDecode(jsonString) as Map<String, dynamic>;
      final copy = DeliveryTask.fromJson(decodedMap);

      expect(copy.taskId, original.taskId);
      expect(copy.status, original.status);
      expect(copy.destination.address, original.destination.address);
      expect(copy.deliveryPerson.name, original.deliveryPerson.name);
      expect(copy.deliveryPerson.vehicle?.licensePlate, original.deliveryPerson.vehicle?.licensePlate);
      expect(copy.payment.currency, 'INR');
      expect(copy.payment.amountDue, 450.0);
    });
  });
}
