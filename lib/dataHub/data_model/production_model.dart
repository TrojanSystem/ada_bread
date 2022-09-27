class ProductionModel {
  final int id;
  final String bale_5;
  final String bale_10;
  final String slice;
  final String bombolino;
  ProductionModel(
      {this.bale_5, this.id, this.bale_10, this.slice, this.bombolino});
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'bale_5': bale_5,
      'bale_10': bale_10,
      'slice': slice,
      'bombolino': bombolino
    };
  }

  static ProductionModel fromMap(Map<String, dynamic> map) {
    return ProductionModel(
        id: map['id'],
        bale_5: map['bale_5'],
        bale_10: map['bale_10'],
        slice: map['slice'],
        bombolino: map['bombolino']);
  }
}

class DailyProductionModel {
  final String bale_5;
  final String bale_10;
  final String slice;
  final String bombolino;
  DailyProductionModel({this.bale_5, this.bale_10, this.slice, this.bombolino});
}
