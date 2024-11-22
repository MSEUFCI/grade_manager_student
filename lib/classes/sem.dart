class Sem {
  // final int semId;
  // final int sem;
  // final String academic_year;
  final List semData;

  const Sem({
    // required this.semId,
    // required this.sem,
    // required this.academic_year,
    required this.semData,
  });

  factory Sem.fromJson(List json) {
    // print(json);

    try {
      return Sem(semData: json);
    } catch (e) {
      throw e;
    }

    // return switch (json) {
    //   {
    //     // 'sem_id': int semId,
    //     // 'sem': int sem,
    //     // 'academic_year': String academic_year,
    //     'semData': List<Map<String, dynamic>> semData
    //   } =>
    //     Sem(
    //       // semId: semId,
    //       // sem: sem,
    //       // academic_year: academic_year,
    //       semData: semData,
    //     ),
    //   _ => throw const FormatException('Failed to load sem.'),
    // };
  }
}
