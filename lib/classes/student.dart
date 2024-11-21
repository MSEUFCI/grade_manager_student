class Student {
  final gwa;
  final String scholarship_type;
  final int total_units;
  final Map<String, dynamic> grade_status;
  final String fullname;
  final String course;

  const Student({
    required this.gwa,
    required this.scholarship_type,
    required this.total_units,
    required this.grade_status,
    required this.fullname,
    required this.course,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'gwa': var gwa,
        'scholarship_type': String scholarship_type,
        'total_units': int total_units,
        'grade_status': Map<String, dynamic> grade_status,
        'fullname': String fullname,
        'course': String course,
      } =>
        Student(
          gwa: gwa,
          scholarship_type: scholarship_type,
          total_units: total_units,
          grade_status: grade_status,
          fullname: fullname,
          course: course,
        ),
      _ => throw const FormatException('Failed to load student.'),
    };
  }
}
