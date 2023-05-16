class ClothesModel {
  final int? id;
  final String? name;
  final int price;
  int orderNumber;

  ClothesModel({this.id, this.name, required this.price, required this.orderNumber});

  static List<ClothesModel> list = [
    ClothesModel(
      id: 1,
      name: "Fijallravan",
      price: 35,
      orderNumber: 1,
    ),
    ClothesModel(
      id: 2,
      name: "sanDisk SSD" ,
      price: 35,
      orderNumber: 1,
    ),
    ClothesModel(
      id: 3,
      name: "Back ssss" ,
      price: 35,
      orderNumber: 1,
    ),
  ];
}