import 'package:favorcate/core/model/HYCategoryModel.dart';
import 'package:favorcate/core/service/json_parse.dart';
import 'package:flutter/material.dart';
import 'package:favorcate/core/extension/int_extension.dart';

import 'home_category_item.dart';

class HYHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<HYCategoryModel>>(
      //展示异步状态组件(用于异步loading加载,替换生命周期函数的方法)
      future: JsonParse.getCategoryData(),
      builder: (ctx, snapshot) {
        if (!snapshot.hasData){
          return Center(child: CircularProgressIndicator());
        }
        if(snapshot.error!=null) return Center(child: Text("请求失败"),);
        final categories=snapshot.data;
        return GridView.builder(
            padding: EdgeInsets.all(20.px),
            itemCount: categories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.px,
              mainAxisSpacing: 20.px,
              childAspectRatio: 1.5,
            ),
            itemBuilder: (ctx, index) {
              return HYHomeCategoryItem(categories[index]);
            });
      },
    );
  }
}
