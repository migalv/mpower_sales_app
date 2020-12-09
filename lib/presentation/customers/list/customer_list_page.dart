import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_app/application/customers/list/customer_list_bloc.dart';
import 'package:sales_app/injection.dart';
import 'package:sales_app/presentation/core/widgets/log_out_button.dart';
import 'package:sales_app/presentation/customers/list/widget/customer_list.dart';

class CustomerListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          BlocProvider(
            create: (context) => getIt<CustomerListBloc>()
              ..add(const CustomerListEvent.loadStarted()),
            child: CustomerList(),
          ),
        ],
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
