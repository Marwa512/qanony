class SearchEntity {
  final String? image;
  final String? name;
  final String? address;
  final String? lawDegree;
  final double? rate;
  final int? cost;
  final List<String?> consultType;

  SearchEntity(this.address, this.lawDegree, this.rate, this.cost,
      this.consultType, this.image, this.name);
  @override
  String toString() {
    return 'ProfileEntity(image: $image, name: $name, address: $address, degree: $lawDegree, const: $cost , type $consultType ,)';
  }
}
