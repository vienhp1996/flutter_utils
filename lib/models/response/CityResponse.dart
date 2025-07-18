class City {
  final String? id;
  final String? code;
  final String? name;
  final String? nameWithType;
  final String? type;

  const City({this.id, this.code, this.name, this.nameWithType, this.type});

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json["id"],
      code: json["code"],
      name: json["name"],
      nameWithType: json["name_with_type"],
      type: json["type"],
    );
  }

  Map<String, dynamic> _toMap() {
    return {
      'id': id,
      'name': name,
      'code': code,
      'name_with_type': nameWithType,
      'type': type,
    };
  }

  dynamic get(String propertyName) {
    var mapRep = _toMap();
    if (mapRep.containsKey(propertyName)) {
      return mapRep[propertyName];
    }
    throw ArgumentError('propery not found');
  }

  @override
  String toString() {
    return 'City{id: $id, code: $code, name: $name, nameWithType: $nameWithType, type: $type}';
  }
}

class CityResponse {
  List<City>? data;
  int? code;
  String? message;

  CityResponse({
    this.data,
    this.code,
    this.message,
  });

  factory CityResponse.fromJson(Map<String, dynamic> map) {
    var allCity = map['data'] as List;
    List<City> cityList = allCity.map((i) => City.fromJson(i)).toList();

    return CityResponse(
      data: cityList,
      code: 200,
      message: 'Successfully',
    );
  }
}
