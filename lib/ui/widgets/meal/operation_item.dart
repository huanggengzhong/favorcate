import 'package:favorcate/core/extension/int_extension.dart';

import 'package:flutter/material.dart';

class HYOperationItem extends StatelessWidget {
  final Widget _icon;
  final String _title;
  final Color textColor;

  HYOperationItem(this._icon, this._title,
      {this.textColor = Colors.black}); //颜色可选参数,有默认值

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.px,
      padding: EdgeInsets.symmetric(vertical: 12.px),
//      color: Colors.red,//测试区域
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _icon,
          Text(
            _title,
            style: TextStyle(color: textColor),
          )
        ],
      ),
    );
  }
}
