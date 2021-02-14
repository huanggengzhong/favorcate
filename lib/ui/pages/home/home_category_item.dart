import 'package:favorcate/core/model/HYCategoryModel.dart';
import 'package:favorcate/ui/pages/meal/meal.dart';
import 'package:flutter/material.dart';
import 'package:favorcate/core/extension/int_extension.dart';
class HYHomeCategoryItem extends StatelessWidget {
  final HYCategoryModel _category;
  HYHomeCategoryItem(this._category);
  @override
  Widget build(BuildContext context) {
    final bgColor=_category.cColor;
    final title=_category.title;
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(HYMealScreen.routeName,arguments:_category );
      },
      child: Container(
          decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(12.px),
              gradient: LinearGradient(
                  colors: [
                    bgColor.withOpacity(.8),//渐变一半
                    bgColor
                  ]
              )
          ),
          alignment: Alignment.center,
//            copyWith是加粗
          child: Text(title,style: Theme.of(context).textTheme.display2.copyWith(fontWeight: FontWeight.bold),)),
    );
  }
}
