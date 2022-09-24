class ContractModel {
  final String name;
  final String date;
  final int quantity;
  final double price;
  ContractModel(
      {required this.name,
      required this.date,
      required this.quantity,
      required this.price});
}

class DailyProductionModel {
  final String bale_5;
  final String bale_10;
  final String slice;
  final String bombolino;
  DailyProductionModel(
      {required this.bale_5,
      required this.bale_10,
      required this.slice,
      required this.bombolino});
}
