import 'package:favorcate/core/viewmodel/favor_view_model.dart';
import 'package:favorcate/ui/pages/detail/detail.dart';
import 'package:flutter/material.dart';

import 'package:favorcate/core/extension/int_extension.dart';
import 'package:favorcate/core/model/MealModel.dart';
import 'package:provider/provider.dart';

import 'operation_item.dart';

//定义常量
final cardRadius = 12.px;

class HYMealItem extends StatelessWidget {
  final MealModel _meal;

  HYMealItem(this._meal);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HYDetailScreen.routeName, arguments: _meal);
      },
      child: Card(
        margin: EdgeInsets.all(10.px),
        elevation: 5,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.px)),
        child: Column(
          children: <Widget>[buildBasicInfo(context), buildOperationInfo()],
        ),
      ),
    );
  }

  //  方法
  Widget buildBasicInfo(context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(cardRadius),
              topRight: Radius.circular(cardRadius)),
          child: Image.network(
            _meal.imageUrl,
            width: double.infinity,
            height: 250.px,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 28.px,
          bottom: 10.px,
          child: Container(
            width: 300.px,
            padding: EdgeInsets.symmetric(horizontal: 10.px, vertical: 5.px),
            decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(6.px)),
            child: Text(
              _meal.title,
              style: Theme
                  .of(context)
                  .textTheme
                  .display3
                  .copyWith(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  Widget buildOperationInfo() {
    return Padding(
      padding: EdgeInsets.all(5.px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          HYOperationItem(Icon(Icons.schedule), "${_meal.duration}分钟"),
          HYOperationItem(Icon(Icons.restaurant), "${_meal.complexStr}"),
          buildFavorItem(_meal)
//          HYOperationItem(Icon(Icons.favorite),"未收藏"),
        ],
      ),
    );
  }

//  封装收藏组件方法
  Widget buildFavorItem(MealModel meal) {
    return Consumer<FavorViewModel>(builder: (ctx, favorVM, child) {
//      判断是否收藏
    final iconData=favorVM.isFavor(meal)?Icons.favorite:Icons.favorite_border;
    final iconColor=favorVM.isFavor(meal)?Colors.red:Colors.black;
    final iconStr=favorVM.isFavor(meal)?"收藏":"未收藏";
    return GestureDetector(
        child: HYOperationItem(Icon(iconData,color: iconColor,), iconStr,textColor:iconColor),
        onTap: (){
          favorVM.handleMeal(meal);
        },
    );

    });
  }
}
