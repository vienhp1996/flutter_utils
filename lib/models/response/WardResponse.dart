class Ward {
  final String? id;
  final String? code;
  final String? name;
  final String? nameWithType;
  final String? type;

  const Ward({this.id, this.code, this.name, this.nameWithType, this.type});

  factory Ward.fromJson(Map<String, dynamic> json) {
    return Ward(
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
    return 'Ward{id: $id, code: $code, name: $name, nameWithType: $nameWithType, type: $type}';
  }
}

class WardResponse {
  List<Ward>? data;
  int? code;
  String? message;

  WardResponse({
    this.data,
    this.code,
    this.message,
  });

  factory WardResponse.fromJson(Map<String, dynamic> map) {
    var allWard = map['data'] as List;
    List<Ward> wardList = allWard.map((i) => Ward.fromJson(i)).toList();

    return WardResponse(
      data: wardList,
      code: 200,
      message: 'Successfully',
    );
  }
}
