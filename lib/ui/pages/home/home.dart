import 'package:flutter/material.dart';

import 'home_app_bar.dart';
import 'home_content.dart';
//import 'home_drawer.dart';

class HYHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(context),
      body: HYHomeContent(),
//      drawer: HomeDrawer(),//这里显示的话底部导航无法覆盖
    );
  }
}
