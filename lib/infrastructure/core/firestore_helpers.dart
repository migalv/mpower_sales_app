import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sales_app/domain/auth/i_auth_repository.dart';
import 'package:sales_app/domain/core/errors.dart';
import 'package:sales_app/injection.dart';

extension FirestoreX on FirebaseFirestore {
  /// The user must be already authenticated when calling this method.
  /// Otherwise, throws [NotAuthenticatedError].
  DocumentReference userDocument() {
    final userOption = getIt<IAuthRepository>().getSignedInUser();
    final user = userOption
        .getOrElse(() => throw NotAuthenticatedError())
        .getOrElse(() => throw NotAuthenticatedError());

    return FirebaseFirestore.instance.collection('profiles').doc(user.id);
  }

  CollectionReference get ordersCollection => collection('orders');
}
