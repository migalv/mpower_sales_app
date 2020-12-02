import 'package:flutter_test/flutter_test.dart';
import 'package:sales_app/infrastructure/customers/customer_data_merger.dart';
import 'package:sales_app/infrastructure/customers/dtos/customer_dto.dart';

import '../../fixtures/fixture_reader.dart';

void main() {
  final customersJson =
      jsonFixtureAsMap('customers/customers.json')["customers"]
          as Map<String, dynamic>;

  final customersMap = customersJson.map((id, json) =>
      MapEntry(id, CustomerDTO.fromLocalDataSource(id: id, json: json)));

  group('merge', () {
    test(
      'should return remote data when no local data is newer',
      () async {
        // arrange
        // We add 1 to all the remote so they are all newer than local
        final remote = customersMap.map((id, dto) =>
            MapEntry(id, dto.copyWith(updatedAt: dto.updatedAt + 1)));
        final local = customersMap;
        final expected = remote.values.map((dto) => dto.toDomain()).toList();

        // act
        final result =
            CustomerDataMerger(remoteData: remote, localData: local).merge();

        // assert
        expect(result.toList(), expected);
      },
    );

    test(
      'should return local data when local data is newer than remote data',
      () async {
        // arrange
        final remote = customersMap;
        final local = customersMap.map((id, dto) =>
            MapEntry(id, dto.copyWith(updatedAt: dto.updatedAt + 1)));
        final expected = local.values.map((dto) => dto.toDomain()).toList();

        // act
        final result =
            CustomerDataMerger(remoteData: remote, localData: local).merge();

        // assert
        expect(result.toList(), expected);
      },
    );

    test(
      'should return remote data when local data has the same update time',
      () async {
        // arrange
        final remote = customersMap;
        final local = remote;
        final expected = remote.values.map((dto) => dto.toDomain()).toList();

        // act
        final result =
            CustomerDataMerger(remoteData: remote, localData: local).merge();

        // assert
        expect(result.toList(), expected);
      },
    );

    test(
      'should return both local & remote when no unique identifiers are equal',
      () async {
        // arrange
        final remote = customersMap;
        final local = remote.map((id, dto) =>
            MapEntry("${id}local", dto.copyWith(id: "${id}local")));
        final expectedDtos = remote.values.toList()..addAll(local.values);
        final expected = expectedDtos.map((dto) => dto.toDomain()).toList();
        // act
        final result =
            CustomerDataMerger(remoteData: remote, localData: local).merge();
        // assert
        expect(result.toList(), expected);
      },
    );

    test(
      'should return a merged Set of the local & remote data w/ different ids',
      () async {
        // arrange
        final remote = customersMap;
        final Map<String, CustomerDTO> local = {};
        int i = 0;
        for (final dto in remote.values) {
          // We change the id every 2 elements
          if (i % 2 == 0) {
            final newDTO = dto.copyWith(id: "${dto.id}-local");
            local[newDTO.id] = newDTO;
          } else {
            local[dto.id] = dto;
          }
          i++;
        }
        final remoteDTOs = remote.values.toList();
        final localDTOs = local.values
            .where((localDTO) => remote.containsKey(localDTO.id) == false);

        remoteDTOs.addAll(localDTOs);
        final expected = remoteDTOs.map((dto) => dto.toDomain()).toList();
        // act
        final result =
            CustomerDataMerger(remoteData: remote, localData: local).merge();
        // assert
        expect(result.toList(), expected);
      },
    );

    test(
      'should correctly merge local & remote based on their updated timestamps',
      () async {
        // arrange
        final List<CustomerDTO> expectedDTOs = [];
        final remote = customersMap;
        final Map<String, CustomerDTO> local = {};
        int i = 0;
        for (final dto in remote.values) {
          if (i % 2 == 0) {
            // We change the id every 2 elements
            final newDTO = dto.copyWith(id: "${dto.id}-local");
            local[newDTO.id] = newDTO;
            expectedDTOs.add(dto);
            expectedDTOs.add(newDTO);
          } else if (i % 3 == 0) {
            // We change the updated timestamp every 3 elements
            final newDTO = dto.copyWith(updatedAt: dto.updatedAt + i);
            local[newDTO.id] = newDTO;
            expectedDTOs.add(newDTO);
          } else {
            expectedDTOs.add(dto);
          }
          i++;
        }
        final expected = expectedDTOs.map((dto) => dto.toDomain()).toList();
        // act
        final result =
            CustomerDataMerger(remoteData: remote, localData: local).merge();
        // assert
        expect(result.toList(), containsAll(expected));
      },
    );
  });
}
