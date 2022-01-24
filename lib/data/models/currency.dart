class Currency {
  String? name;
  double? value;

  Currency({required this.name, required this.value});

  Currency.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['buy'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['name'] = name;
    data['value'] = value;
    return data;
  }

  @override
  String toString() {
    return '$name - $value';
  }
}
