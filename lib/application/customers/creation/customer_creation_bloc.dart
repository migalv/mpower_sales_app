import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_app/domain/core/data_sources/i_cached_remote_data_source.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/failures/customer_repository_failure.dart';
import 'package:sales_app/domain/customers/i_customer_repository.dart';
import 'package:sales_app/domain/customers/phone_number/phone_number.dart';
import 'package:sales_app/domain/markets/market.dart';
import 'package:sales_app/domain/settings/document_type.dart';
import 'package:sales_app/domain/settings/i_settings_repository.dart';

part 'customer_creation_event.dart';
part 'customer_creation_state.dart';
part 'customer_creation_bloc.freezed.dart';

@injectable

/// BLoC responsible for the creation of customers
class CustomerCreationBloc
    extends Bloc<CustomerCreationEvent, CustomerCreationState> {
  final ICustomerRepository _customerRepository;
  final ICachedRemoteDataSource<Market> _marketDataSource;
  final ISettingRepository _settingRepository;

  List<DocumentType> documentTypes;

  CustomerCreationBloc(
    this._customerRepository,
    this._marketDataSource,
    this._settingRepository,
  ) : super(const _LoadInProgress());

  @override
  Stream<CustomerCreationState> mapEventToState(
    CustomerCreationEvent event,
  ) async* {
    yield* event.when(
      loadRequested: () async* {
        yield const CustomerCreationState.loadInProgress();

        final result = await _marketDataSource.get();

        yield* result.fold(
          (f) async* {
            yield CustomerCreationState.loadFailed(
              errorMessages: f.defaultErrorMessages,
            );
          },
          (market) async* {
            final result =
                _settingRepository.getDocumentTypeFor(market: market);
            yield* result.fold(
              (f) async* {
                yield CustomerCreationState.loadFailed(
                  errorMessages: f.defaultErrorMessages,
                );
              },
              (documentTypes) async* {
                documentTypes = documentTypes;
                yield CustomerCreationState.initialStep(
                  documentTypes: documentTypes,
                );
              },
            );
          },
        );
      },
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
            yield CustomerCreationState.initialStep(
              documentTypes: documentTypes,
            );
          },
          (r) async* {
            yield const CustomerCreationState.creationSuccess();
          },
        );
      },
    );
  }
}
