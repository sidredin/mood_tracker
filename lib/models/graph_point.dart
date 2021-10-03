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

  @override
  String toString() {
    return 'GraphPoint{datetime: $datetime, moodValue: $moodValue, comment: $comment}';
  }
}
