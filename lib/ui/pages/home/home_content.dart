import 'package:favorcate/core/model/HYCategoryModel.dart';
import 'package:favorcate/core/services/json_parse.dart';
import 'package:flutter/material.dart';
import 'package:favorcate/core/extension/int_extension.dart';


class HYHomeContent extends StatefulWidget {
  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  List<HYCategoryModel> _categories = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //这里拿到JSON文件转换后的数据
    JsonParse.getCategoryData().then((res) {
      setState(() {
        _categories = res;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: _categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.px,
          mainAxisSpacing: 20.px,
          childAspectRatio: 1.5,


        ),
        itemBuilder: (ctx,index){
        return Text(_categories[index].title);
        });
  }
}
