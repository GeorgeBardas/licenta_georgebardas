import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:licenta_georgebardas/models/purchase.dart';
import 'package:licenta_georgebardas/utils/constants.dart';

class PurchaseRepository {
  Future<void> addPurchase(Purchase purchase) async {
    await FirebaseFirestore.instance
        .collection(DATABASE_PURCHASES_KEY)
        .withConverter<Purchase>(
          fromFirestore: (snapshot, _) {
            return Purchase.fromJson(snapshot.data()!);
          },
          toFirestore: (data, _) => data.toJson(),
        )
        .add(purchase)
        .then((value) => value.update({"id": value.id}));
  }
}
