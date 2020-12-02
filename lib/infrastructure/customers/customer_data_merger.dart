import 'package:meta/meta.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';

class CustomerDataMerger {
  final Map<String, CustomerDTO> remoteData;
  final Map<String, CustomerDTO> localData;

  Set<Customer> _customers;
  Set<Customer> get mergedData => _customers;

  /// Merges Remote Customers with Local Customers with the following rules
  ///
  /// **Rules:** If an remote & local customer exist with the same id the rule
  /// is to take the newest version, checking the [updatedAt] of both customers
  CustomerDataMerger({@required this.remoteData, @required this.localData})
      : assert(remoteData != null && localData != null) {
    _customers = {};
  }

  /// Merges local & remote data with the rules of the used merger
  Set<Customer> merge() {
    final localCopy = Map<String, CustomerDTO>.from(localData);
    final remoteCopy = Map<String, CustomerDTO>.from(remoteData);
    _customers = {};

    remoteCopy.forEach((id, remoteDTO) {
      Customer customer;
      final localDTO = localCopy.remove(id);

      // Conflict! 2 DTOs with same id exist
      if (localDTO != null) {
        // Resolve conflict (remote DTO unless local is newer)
        if (localDTO.updatedAt > remoteDTO.updatedAt) {
          customer = localDTO.toDomain();
        } else {
          customer = remoteDTO.toDomain();
        }
      } else {
        customer = remoteDTO.toDomain();
      }

      _customers.add(customer);
    });

    _customers.addAll(localCopy.values.map((dto) => dto.toDomain()));

    return _customers;
  }
}
