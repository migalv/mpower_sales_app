import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sales_app/domain/customers/customer.dart';

part 'customer_firefunc_dto.freezed.dart';
part 'customer_firefunc_dto.g.dart';

@freezed

/// Class used to transfer customer data with Firebase Cloud Functions
abstract class CustomerFireFuncDTO with _$CustomerFireFuncDTO {
  factory CustomerFireFuncDTO._({
    @required String customerId,
    @required String name,
    @required String teamId,
    @required String teamName,
    String surname,
    String nrc,
    String employeeNum,
    String nationalId,

    /// The type of customer (0: Person, 1: Company)
    @required int type,
  }) = _CustomerFireFuncDTO;

  factory CustomerFireFuncDTO.fromDomain(Customer customer) {
    return customer.when(
      particular:
          (id, team, name, lastName, phoneNumber, birthDate, particularId) {
        String nrc, employeeNum, nationalId;

        if (particularId != null) {
          switch (particularId.key) {
            case 'nrc':
              nrc = particularId.value;
              break;
            case 'employee_num':
              employeeNum = particularId.value;
              break;
            case 'national_id':
              nationalId = particularId.value;
              break;
          }
        }

        return CustomerFireFuncDTO._(
          customerId: id,
          name: name,
          surname: lastName,
          nrc: nrc,
          employeeNum: employeeNum,
          nationalId: nationalId,
          teamId: team.id,
          teamName: team.name,
          type: customer.type,
        );
      },
      company: (id, name, phoneNumber, team) {
        return CustomerFireFuncDTO._(
          customerId: id,
          name: name,
          teamId: team.id,
          teamName: team.name,
          type: customer.type,
        );
      },
    );
  }

  factory CustomerFireFuncDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerFireFuncDTOFromJson(json);
}
