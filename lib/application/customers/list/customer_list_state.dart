part of 'customer_list_bloc.dart';

@freezed
abstract class CustomerListState with _$CustomerListState {
  const factory CustomerListState.initial() = _Initial;
  const factory CustomerListState.loadInProgress() = _LoadInProgress;
  const factory CustomerListState.loadSuccess(List<Customer> customers) =
      _LoadSuccess;
  const factory CustomerListState.loadFailure(
    CustomerRepositoryFailure failure,
  ) = _LoadFailure;
}
