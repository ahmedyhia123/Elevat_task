class ProductModel {
  final String image;
  final String title;
  final dynamic price;
  final dynamic rate;

  ProductModel({
    required this.image,
    required this.title,
    required this.price,
    required this.rate,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      image: json['image'],
      title: json['title'],
      price: json['price'] ,
      rate: json['rating']['rate'] ,
    );
  }
}