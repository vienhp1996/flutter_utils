class Shift {
  final String? id;
  final String? name;
  final String? type;
  final String? timeStart;
  final String? timeEnd;
  final String? deptId;
  final bool? isActive;
  final int? order;
  final String? conditionGoLate;
  final String? conditionLeaveEarly;
  final bool? isCheckout;
  final String? payType;
  final String? storeId;
  final String? timeBreak;
  final String? timeFormulaType;
  final String? date;
  final String? timeBreakStart;
  final String? timeBreakEnd;
  final bool? isOverTime;
  final String? salaryType;
  final num? salaryMoney;
  final String? refShiftParentId;

  const Shift({
    this.id,
    this.name,
    this.type,
    this.timeStart,
    this.timeEnd,
    this.deptId,
    this.isActive,
    this.order,
    this.conditionGoLate,
    this.conditionLeaveEarly,
    this.isCheckout,
    this.payType,
    this.storeId,
    this.timeBreak,
    this.timeFormulaType,
    this.date,
    this.timeBreakStart,
    this.timeBreakEnd,
    this.isOverTime,
    this.salaryType,
    this.salaryMoney,
    this.refShiftParentId,
  });

  factory Shift.fromJson(Map<String, dynamic> json) {
    return Shift(
      id: json["id"],
      name: json["name"],
      type: json["type"],
      timeStart: json["time_start"],
      timeEnd: json["time_end"],
      deptId: json["dept_id"],
      isActive: json["is_active"],
      order: json["order"],
      conditionGoLate: json["condition_go_late"],
      conditionLeaveEarly: json["condition_leave_early"],
      isCheckout: json["is_checkout"],
      payType: json["pay_type"],
      storeId: json["store_id"],
      timeBreak: json["time_break"],
      timeFormulaType: json["time_formula_type"],
      date: json["date"],
      timeBreakStart: json["time_break_start"],
      timeBreakEnd: json["time_break_end"],
      isOverTime: json['is_overtime'] ?? false,
      salaryType: json['overtime_salary_type'] ?? 'PERCENT',
      salaryMoney: json['overtime_salary_money'] ?? 100,
      refShiftParentId: json['ref_shift_parent_id'],
    );
  }

  Map<String, dynamic> _toMap() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'timeStart': timeStart,
      'timeEnd': timeEnd,
      'deptId': deptId,
      'isActive': isActive,
      'order': order,
      'conditionGoLate': conditionGoLate,
      'conditionLeaveEarly': conditionLeaveEarly,
      'isCheckout': isCheckout,
      'payType': payType,
      'storeId': storeId,
      'timeBreak': timeBreak,
      'timeFormulaType': timeFormulaType,
      'date': date,
      'timeBreakStart': timeBreakStart,
      'timeBreakEnd': timeBreakEnd,
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
    return 'Shift{id: $id, name: $name, type: $type, timeStart: $timeStart, timeEnd: $timeEnd, deptId: $deptId, timeBreakStart: $timeBreakStart, timeBreakEnd: $timeBreakEnd}';
  }
}

class ShiftResponse {
  List<Shift>? data;
  int? code;
  String? message;

  ShiftResponse({
    this.data,
    this.code,
    this.message,
  });

  factory ShiftResponse.fromJson(Map<String, dynamic> map) {
    var all = map['data'] as List;
    List<Shift> shiftList = all.map((i) => Shift.fromJson(i)).toList();
    return ShiftResponse(
      data: shiftList,
      code: 200,
      message: 'Successfully',
    );
  }
}
