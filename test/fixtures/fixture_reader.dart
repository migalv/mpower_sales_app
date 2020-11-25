import 'dart:convert';
import 'dart:io';

String stringFixture(String name) =>
    File('test/fixtures/$name').readAsStringSync();

Map<String, dynamic> jsonFixture(String name) {
  String jsonString = stringFixture(name);

  Map<String, dynamic> json = jsonDecode(jsonString) as Map<String, dynamic>;

  return json;
}
