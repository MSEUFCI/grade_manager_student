class Subject {
  final List semData;

  const Subject({
    required this.semData,
  });

  factory Subject.fromJson(List json) {
    print(json);

    try {
      return Subject(semData: json);
    } catch (e) {
      throw e;
    }
  }
}
