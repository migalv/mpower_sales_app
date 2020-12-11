import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_app/application/customers/list/customer_list_bloc.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/domain/customers/failures/customer_repository_failure.dart';
import 'package:sales_app/presentation/core/failure_widgets/default_failure_widget.dart';
import 'package:sales_app/presentation/customers/list/widget/customer_tile.dart';

class CustomerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerListBloc, CustomerListState>(
      builder: (context, state) => state.when(
        initial: () => _buildLoadInProgressWidget(),
        loadInProgress: () => _buildLoadInProgressWidget(),
        loadSuccess: (customers) => _buildLoadSuccessWidget(customers),
        loadFailure: (failure) => _buildFailureWidget(failure),
      ),
    );
  }

  Widget _buildLoadInProgressWidget() => const SliverFillRemaining(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );

  Widget _buildFailureWidget(CustomerRepositoryFailure failure) {
    return SliverFillRemaining(
      child: DefaultFailureWidget(
        messages: failure.defaultErrorMessages,
        icon: const Icon(
          Icons.error,
          size: 40.0,
        ),
      ),
    );
  }

  Widget _buildLoadSuccessWidget(List<Customer> customers) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return CustomerTile(
            customers[index],
            currentIndex: index,
            totalCustomers: customers.length,
          );
        },
        childCount: customers.length,
      ),
    );
  }
}
