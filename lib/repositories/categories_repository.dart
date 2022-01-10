import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:licenta_georgebardas/models/category.dart';

class CategoriesRepository {
  Future<List<Category>?> getCategories() async {
    final List<Category>? list = [];
    await FirebaseFirestore.instance
        .collection("categories")
        .withConverter<Category>(
          fromFirestore: (snapshot, _) {
            return Category.fromJson(snapshot.data()!);
          },
          toFirestore: (data, _) => data.toJson(),
        )
        .get()
        .then((value) => value.docs.forEach((element) {
              list?.add(element.data());
            }));

    if (list?.isNotEmpty == true)
      return list;
    else
      return null;
  }
}
