import 'package:equatable/equatable.dart';

/// Interface that represents any type of entity present in the application
abstract class IEntity extends Equatable {
  /// The unique identifier for the entity (mainly used for databases)
  String get id;

  @override
  List<Object> get props => [id];
}
