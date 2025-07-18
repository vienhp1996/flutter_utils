import 'package:flutter/material.dart';

class DialogUtils {
  static Future<bool?> customConfirmDialog({
    required BuildContext context,
    String title = 'Xác nhận',
    String content = 'Bạn có chắc chắn muốn thực hiện hành động này?',
    String cancelText = 'Hủy',
    String confirmText = 'Xác nhận',
    Function? onConfirm,
  }) async {
    return await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(cancelText),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
                if (onConfirm != null) {
                  onConfirm();
                }
              },
              child: Text(confirmText),
            ),
          ],
        );
      },
    );
  }
}
