class TimeOff {
  final String? id;
  final String? type;
  final String? employeeId;
  final String? dateStartOff;
  final String? partStartOff;
  final String? dateEndOff;
  final String? partEndOff;
  final String? shiftId;
  final String? employeeHelpId;
  final String? note;
  final String? status;
  final String? storeId;

  const TimeOff(
      {this.id,
      this.type,
      this.employeeId,
      this.dateStartOff,
      this.partStartOff,
      this.dateEndOff,
      this.partEndOff,
      this.shiftId,
      this.employeeHelpId,
      this.note,
      this.status,
      this.storeId,});

  factory TimeOff.fromJson(Map<String, dynamic> json) {
    return TimeOff(
        id: json["id"],
        type: json["type"],
        employeeId: json["employee_id"],
        dateStartOff: json["date_start_off"],
        partStartOff: json["part_start_off"],
        dateEndOff: json["date_end_off"],
        partEndOff: json["part_end_off"],
        shiftId: json["shift_id"],
        employeeHelpId: json["employee_help_id"],
        note: json["note"],
        status: json["status"],
        storeId: json["store_id"],);
  }

  @override
  String toString() {
    return 'TimeOff{id: $id, type: $type,  employeeId: $employeeId, dateStartOff: $dateStartOff, partStartOff: $partStartOff, dateEndOff: $dateEndOff, partEndOff: $partEndOff, shiftId: $shiftId, employeeHelpId: $employeeHelpId, note: $note, status: $status}';
  }
}

class TimeOffResponse {
  List<TimeOff>? data;
  int? code;
  String? message;

  TimeOffResponse({
    this.data,
    this.code,
    this.message,
  });

  factory TimeOffResponse.fromJson(Map<String, dynamic> map) {
    var all = map['data'] as List;
    List<TimeOff> timeOffList = all.map((i) => TimeOff.fromJson(i)).toList();

    return TimeOffResponse(
      data: timeOffList,
      code: 200,
      message: 'Successfully',
    );
  }
}
