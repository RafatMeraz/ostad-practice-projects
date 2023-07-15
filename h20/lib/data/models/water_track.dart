class WaterTrack {
  int? id;
  final String? timestamp;
  final int amount;

  WaterTrack({this.id, this.timestamp, required this.amount});

  factory WaterTrack.fromJson(Map<String, dynamic> json) {
    return WaterTrack(
        id: json['id'], timestamp: json['timestamp'], amount: json['amount']);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount
    };
  }
}
