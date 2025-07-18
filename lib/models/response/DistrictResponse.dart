class District {
  final String? id;
  final String? code;
  final String? name;
  final String? nameWithType;
  final String? type;

  const District({this.id, this.code, this.name, this.nameWithType, this.type});

  factory District.fromJson(Map<String, dynamic> json) {
    return District(
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
    return 'District{id: $id, code: $code, name: $name, nameWithType: $nameWithType, type: $type}';
  }
}

class DistrictResponse {
  List<District>? data;
  int? code;
  String? message;

  DistrictResponse({
    this.data,
    this.code,
    this.message,
  });

  factory DistrictResponse.fromJson(Map<String, dynamic> map) {
    var allDistrict = map['data'] as List;
    List<District> districtList = allDistrict.map((i) => District.fromJson(i)).toList();

    return DistrictResponse(
      data: districtList,
      code: 200,
      message: 'Successfully',
    );
  }
}
