import 'package:flutter/material.dart';
import 'package:sales_app/domain/customers/customer.dart';
import 'package:sales_app/core/extensions/string_extensions.dart';
import 'package:sales_app/presentation/customers/list/widget/customer_circle_avatar.dart';

class CustomerTile extends StatelessWidget {
  final Customer customer;

  /// If this tile is used you can pass in the total customers in the list
  ///
  /// This will allow the Tile to add dividers between them
  /// If you pass this parameter you should also pass in the [currentIndex]
  final int totalCustomers;

  /// If this tile is used you can pass current index in the list
  ///
  /// This will allow the Tile to add dividers between them
  /// /// If you pass this parameter you should also pass in the [totalCustomers]
  final int currentIndex;

  static const double _dividerLateralMargin = 16.0;

  const CustomerTile(
    this.customer, {
    Key key,
    this.totalCustomers,
    this.currentIndex,
  })  : assert(
          totalCustomers == null && currentIndex == null ||
              totalCustomers != null && currentIndex != null,
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    bool hasBottomDivider = true;
    bool hasTopDivider = true;

    if (totalCustomers != null && currentIndex == totalCustomers - 1) {
      hasBottomDivider = false;
    }
    if (currentIndex != null && currentIndex == 0) {
      hasTopDivider = false;
    }

    return Column(
      children: [
        if (hasTopDivider)
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: _dividerLateralMargin),
            child: Divider(height: 1),
          )
        else
          Container(),
        customer.map(
          person: (person) {
            String nameInitials = "N/A";

            if (person.name.isNotEmpty) {
              nameInitials = person.name.firstLetterInCaps;
            }

            if (person.surname?.isNotEmpty ?? false) {
              nameInitials += person.surname.firstLetterInCaps;
            }

            return ListTile(
              leading: CustomerCircleAvatar(initials: nameInitials),
              title: Text(person.name),
              subtitle: _buildPersonalId(person),
            );
          },
          company: (company) {
            String companyInitials = "N/A";
            String subtitle = "Type: Company";

            if (company.name.isNotEmpty) {
              companyInitials = company.name.firstLetterInCaps;
            }

            if (company.phoneNumber != null) {
              subtitle = company.phoneNumber.toString();
            }

            return ListTile(
              leading: CustomerCircleAvatar(initials: companyInitials),
              title: Text(company.name),
              subtitle: Text(subtitle),
            );
          },
        ),
        if (hasBottomDivider)
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: _dividerLateralMargin),
            child: Divider(height: 1),
          )
        else
          Container(),
      ],
    );
  }

  Widget _buildPersonalId(Person person) {
    if (person.personalId == null) {
      return Text(person.phoneNumber?.toString() ?? "Type: Person");
    }

    return person.personalId.when(
      nrc: (value) => Text("NRC: $value"),
      employeeNum: (value) => Text("Employee number: $value"),
      farmerId: (value) => Text("Farmer id: $value"),
      nationalId: (value) => Text("National id: $value"),
    );
  }
}
