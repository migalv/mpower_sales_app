import 'package:sales_app/domain/core/unique_id.dart';

/// Interface that represents any type of entity that is present in a Data Base
abstract class IDBEntity {
  /// The unique identifier for the entity (mainly used for databases)
  UniqueId uid;
}
