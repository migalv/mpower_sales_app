import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/failures/customer_repository_failure.dart';
import 'package:sales_app/domain/customers/i_customer_repository.dart';

part 'customer_list_event.dart';
part 'customer_list_state.dart';
part 'customer_list_bloc.freezed.dart';

@injectable

/// BLoC responsible to listen & map the customers from the Customer Repository
class CustomerListBloc extends Bloc<CustomerListEvent, CustomerListState> {
  final ICustomerRepository _customerRepository;

  CustomerListBloc(this._customerRepository) : super(const _Initial());

  @override
  Stream<CustomerListState> mapEventToState(
    CustomerListEvent event,
  ) async* {
    yield* event.map(
      loadStarted: (e) async* {
        yield const CustomerListState.loadInProgress();
        yield* _customerRepository.customersStream.map(
          (event) {
            return event.fold(
              (failure) {
                return CustomerListState.loadFailure(failure);
              },
              (customers) {
                return CustomerListState.loadSuccess(customers);
              },
            );
          },
        );
      },
    );
  }
}
