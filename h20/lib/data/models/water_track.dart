class WaterTrack {
  final int? id, timestamp, consumeAmount;

  WaterTrack(this.id, this.timestamp, this.consumeAmount);

  factory WaterTrack.fromJson(Map<String, dynamic> json) {
    return WaterTrack(json['id'], json['timestamp'], json['amount']);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id' : id,
      'timestamp' : timestamp,
      'amount' : consumeAmount
    };
  }
}
