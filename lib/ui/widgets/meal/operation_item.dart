import 'package:flutter/material.dart';
class HYOperationItem extends StatelessWidget {
 final Widget _icon;
 final String _title;
 HYOperationItem(this._icon,this._title);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _icon,
        Text(_title)
      ],
    );
  }
}
