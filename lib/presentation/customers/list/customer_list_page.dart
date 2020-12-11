import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_app/application/customers/list/customer_list_bloc.dart';
import 'package:sales_app/injection.dart';
import 'package:sales_app/presentation/core/widgets/log_out_button.dart';
import 'package:sales_app/presentation/customers/list/widget/customer_list.dart';
import 'package:sales_app/presentation/routes/app_router.gr.dart';

class CustomerListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<CustomerListBloc>()..add(const CustomerListEvent.loadStarted()),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            _buildAppBar(context),
            CustomerList(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.navigator.pushCustomerCreationPage(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) => SliverAppBar(
        title: const Text("Customers"),
        centerTitle: true,
        floating: true,
        actions: <Widget>[
          LogOutButton(),
        ],
      );
}
