part of 'customer_list_bloc.dart';

@freezed
abstract class CustomerListEvent with _$CustomerListEvent {
  const factory CustomerListEvent.loadStarted() = _Started;
}
