class ItemModel {
  final num price;
  final String name;
  final String category;
  final List ingredients;
  final String desc;

  ItemModel({
    required this.price,
    required this.name,
    required this.category,
    required this.ingredients,
    required this.desc,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'desc': desc,
        'price': price,
        'category': category,
        'ingredients': ingredients,
      };

  factory ItemModel.formJson(json) {
    return ItemModel(
      price: json['price'],
      name: json['name'],
      category: json['category'],
      ingredients: json['ingredients'],
      desc: json['desc'],
    );
  }
}
