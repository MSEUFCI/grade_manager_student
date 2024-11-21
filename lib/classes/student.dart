class Student {
  final gwa;
  final String scholarship_type;
  final int total_units;
  final Map<String, int> grade_status;

  const Student({
    required this.gwa,
    required this.scholarship_type,
    required this.total_units,
    required this.grade_status,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'gwa': var gwa,
        'scholarship_type': String scholarship_type,
        'total_units': int total_units,
        'grade_status': Map<String, int> grade_status
      } =>
        Student(
            gwa: gwa,
            scholarship_type: scholarship_type,
            total_units: total_units,
            grade_status: grade_status),
      _ => throw const FormatException('Failed to load student.'),
    };
  }
}
