import 'package:euc_grading_system/classes/student.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Student> fetchStudent() async {
  final response =
      // await http.get(Uri.parse('https://grade_manager.test/student/dashboard'));
      await http
          .get(Uri.https('grade_manager.test', '/student/dashboard/data'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Student.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load student');
  }
}
