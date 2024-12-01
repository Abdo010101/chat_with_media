import 'package:flutter/material.dart';
import 'package:media_chat/core/helpers/extention.dart';
import 'package:media_chat/core/routing/routes.dart';
import 'package:media_chat/core/theming/colors.dart';
import 'package:media_chat/core/theming/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.backgroundScaffodl,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  context.pushNamed(Routes.urlScreen);
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: ColorsManager.urlColor,
                      borderRadius: BorderRadius.circular(20)),
                  constraints: BoxConstraints.tight(const Size(200, 180)),
                  child: Text('URL', style: TextStyles.font14LightGrayRegular),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: ColorsManager.videoColor,
                    borderRadius: BorderRadius.circular(20)),
                alignment: Alignment.center,
                constraints: BoxConstraints.tight(const Size(200, 180)),
                child:
                    Text('Videoes', style: TextStyles.font14LightGrayRegular),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: ColorsManager.searchColor,
                    borderRadius: BorderRadius.circular(20)),
                constraints: BoxConstraints.tight(const Size(200, 180)),
                child: Text(
                  'Search',
                  style: TextStyles.font14LightGrayRegular,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
