//这里直接使用调用父级组件的构造写法
import 'package:flutter/material.dart';

class HomeAppBar extends AppBar {
 HomeAppBar(BuildContext context):super(

       title: Text("美食广场"),
       leading: IconButton(icon: Icon(Icons.reorder),onPressed: (){
             Scaffold.of(context).openDrawer();
           },
       ),

//这是在home里加Drawer的效果,缺点底部导航无法覆盖
//         一定要使用Builder组件获取Scaffold的上下文,openDrawer才有效
//       leading: Builder(
//         builder: (ctx){
//           return IconButton(icon: Icon(Icons.reorder),onPressed: (){
//             Scaffold.of(ctx).openDrawer();
//           },);
//         },
//       )

 );
}
