import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sales_app/infrastructure/core/firestore_collection_keys.dart';

extension FirestoreX on FirebaseFirestore {
  CollectionReference get customersCollection =>
      collection(FirestoreCollectionKeys.customers);

  CollectionReference get teamsCollection =>
      collection(FirestoreCollectionKeys.teams);
}
