class ItemModel {
  final int id;
  final String name;
  final Map<String, dynamic> price;
  final String category;
  final String? img;
  final List? ingredients;
  final bool? spicy;
  final String? addition;

  const ItemModel({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
    this.img,
    this.ingredients,
    this.spicy,
    this.addition,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'price': price,
        'category': category,
        'ingredients': ingredients,
        'img': img,
        'addition': addition,
        'spicy': spicy,
      };

  factory ItemModel.formJson(json) {
    return ItemModel(
        id: json['id'],
        price: json['price'],
        name: json['name'],
        category: json['category'],
        ingredients: json['ingredients'],
        img: json['img'],
        addition: json['addition'],
        spicy: json['spicy']);
  }
}
