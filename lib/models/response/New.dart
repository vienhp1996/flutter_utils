class New {
  String? type;
  String? deletedBy;
  String? updatedBy;
  int? updatedAt;
  int? createdAt;
  String? companyId;
  String? priority;
  String? cover;
  String? storeId;
  String? title;
  int? deletedAt;
  bool? deleted;
  String? createdBy;
  bool? isActive;
  String? content;
  String? dayApply;
  String? deptId;
  String? id;
  List? files;
  int? countEmployeeConfirm;

  New(
      {this.type,
      this.deletedBy,
      this.updatedBy,
      this.updatedAt,
      this.createdAt,
      this.companyId,
      this.priority,
      this.cover,
      this.storeId,
      this.title,
      this.deletedAt,
      this.deleted,
      this.createdBy,
      this.isActive,
      this.content,
      this.dayApply,
      this.deptId,
      this.id,
      this.files,
      this.countEmployeeConfirm,});

  factory New.fromJson(Map<String, dynamic> json) {
    return New(
        type: json["type"],
        deletedBy: json["deleted_by"],
        updatedBy: json["updated_by"],
        updatedAt: json["updated_at"],
        createdAt: json["created_at"],
        companyId: json["company_id"],
        priority: json["priority"],
        cover: json["cover"],
        storeId: json["store_id"],
        title: json["title"],
        deletedAt: json["deleted_at"],
        deleted: json["deleted"],
        createdBy: json["created_by"],
        isActive: json["is_active"],
        content: json["content"],
        dayApply: json["day_apply"],
        deptId: json["dept_id"],
        id: json["id"],
        files: json["attach_file"] ?? [],
        countEmployeeConfirm: json["count_employee_confirm"] ?? 0,);
  }
}
