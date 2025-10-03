class CategoryModel {
  int id;
  String name;
  bool isSelected;

  CategoryModel({
    required this.id,
    required this.name,
    this.isSelected = false,
  });

  @override
  String toString() {
    return 'CategoryModel{id: $id, name: $name, isSelected: $isSelected}';
  }
}
