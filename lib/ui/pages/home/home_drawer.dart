import 'package:favorcate/core/utils/log.dart';
import 'package:favorcate/ui/pages/filter/filter.dart';
import 'package:flutter/material.dart';
import 'package:favorcate/core/extension/int_extension.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      设置Drawer宽度的办法:给Drawer一个Container
      width: 260.px,
      child: Drawer(
        child: Column(
          children: <Widget>[
            buildHeaderView(context),
            buildListTile(context, Icon(Icons.settings), "设置过滤", () {
//              myLog('点击了过滤', StackTrace.current);
              Navigator.of(context).pop();//关闭Drawer
            Navigator.of(context).pushNamed(FilterScreen.routeName);
            }),
            buildListTile(context, Icon(Icons.close), "关闭侧边菜单", () {
              Navigator.of(context).pop();//关闭Drawer
//              myLog('点击了进餐', StackTrace.current);
            }),
          ],
        ),
      ),
    );
  }

//  创建头部方法
  Widget buildHeaderView(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 120.px,
        color: Colors.orange,
        margin: EdgeInsets.only(bottom: 20.px),
        alignment: Alignment(0, 0.3),
        child: Text("侧边菜单", style: Theme.of(context).textTheme.display3));
  }

// 创建Tile方法
  Widget buildListTile(
      BuildContext context, Widget icon, String title, Function callback) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: Theme.of(context).textTheme.display2,
      ),
      onTap: callback,
    );
  }
}
