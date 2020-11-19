import 'package:sales_app/domain/core/commercial_entities/i_commercial_entity.dart';

/// Interface defining a real person
abstract class IParticular extends ICommercialEntity {
  /// The last name of the person
  String get lastName;

  /// The birth date of the person
  DateTime get birthDate;
}
