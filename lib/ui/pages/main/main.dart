import 'package:favorcate/ui/pages/main/initialize_items.dart';
import 'package:flutter/material.dart';
import 'initialize_items.dart';
class HYMainScreen extends StatefulWidget {
//  写路由名字
static const String routeName="/";
  @override
  _HYMainScreenState createState() => _HYMainScreenState();
}

class _HYMainScreenState extends State<HYMainScreen> {
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 16,
        unselectedFontSize: 16,
        items: items,
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),

    );
  }
}
