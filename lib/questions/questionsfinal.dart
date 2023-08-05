class questions {
  static var entries;

  const questions({
    required this.id,
    required this.subjectId,
    required this.question,
    required this.A,
    required this.B,
    required this.C,
    required this.D,
    required this.answer,
  });

  final int id;
  final int subjectId;
  final String question;
  final String A;
  final String B;
  final String C;
  final String D;
  final String answer;
}
