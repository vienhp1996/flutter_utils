import 'dart:convert';

convertJsonToString(source) {
  return json.encode(source);
}

convertStringToJson(String source) {
  return json.decode(source);
}

cloneObject(object) {
  return json.decode(json.encode(object));
}

Map<String, dynamic> mergeObject(a, b) {
  Map<String, dynamic> x = {...a, ...b};
  return x;
}

Map<String, dynamic> removeNullValues(Map<String, dynamic> inputMap) {
  Map<String, dynamic> resultMap = Map.from(inputMap);

  List<String> keysToRemove = [];

  resultMap.forEach((key, value) {
    if (value == null) {
      keysToRemove.add(key);
    }
  });

  for (var key in keysToRemove) {
    resultMap.remove(key);
  }

  return resultMap;
}

Map<String, dynamic> deepClone(Map original) {
  Map<String, dynamic> cloned = {};

  original.forEach((key, value) {
    if (value is Map) {
      cloned[key] = deepClone(value);
    } else {
      cloned[key] = value;
    }
  });

  return cloned;
}
