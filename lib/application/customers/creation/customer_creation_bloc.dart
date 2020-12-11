import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/failures/customer_repository_failure.dart';
import 'package:sales_app/domain/customers/i_customer_repository.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';

part 'customer_creation_event.dart';
part 'customer_creation_state.dart';
part 'customer_creation_bloc.freezed.dart';

@injectable

/// BLoC responsible for the creation of customers
class CustomerCreationBloc
    extends Bloc<CustomerCreationEvent, CustomerCreationState> {
  final ICustomerRepository _customerRepository;

  CustomerCreationBloc(this._customerRepository) : super(const _InitialStep());

  @override
  Stream<CustomerCreationState> mapEventToState(
    CustomerCreationEvent event,
  ) async* {
    yield* event.when(
      saveButtonPressed: (
        customerName,
        customerSurname,
        countryCode,
        phoneNumber,
      ) async* {
        yield const CustomerCreationState.creationInProgress();

        final Customer newCustomer = Customer.person(
          name: customerName,
          surname: customerSurname,
          phoneNumber: PhoneNumber(
            code: countryCode.replaceAll("+", ""),
            number: phoneNumber.replaceAll(" ", ""),
          ),
        );
        final result = await _customerRepository.create(newCustomer);

        yield* result.fold(
          (f) async* {
            yield CustomerCreationState.creationFailure(failure: f);
          },
          (r) async* {
            yield const CustomerCreationState.creationSuccess();
          },
        );
      },
    );
  }
}
