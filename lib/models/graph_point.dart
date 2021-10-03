class GraphPoint {
  final int datetime;
  final int moodValue;
  final String? comment;

  GraphPoint({
    required this.datetime,
    required this.moodValue,
    this.comment,
  });

  Map<String, dynamic> toMap() {
    return {
      'datetime': datetime,
      'moodValue': moodValue,
      'comment': comment,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Dog{datetime: $datetime, moodValue: $moodValue, comment: $comment}';
  }
}
