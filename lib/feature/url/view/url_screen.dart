import 'package:flutter/material.dart';
import 'package:media_chat/core/helpers/app_regex.dart';
import 'package:media_chat/core/helpers/extention.dart';
import 'package:media_chat/core/theming/colors.dart';
import 'package:media_chat/core/theming/style.dart';
import 'package:media_chat/core/widgets/app_button.dart';
import 'package:media_chat/core/widgets/app_text_form_filed.dart';
import 'package:media_chat/core/widgets/arrow_back.dart';

class UrlScreen extends StatelessWidget {
  UrlScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorsManager.backgroundScaffodl,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientBorderWidget(
                    onTap: () {
                      context.pop();
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Enter Your URL You Want,\nLet\'s Summarieze It ',
                    style: TextStyles.font14LightGrayRegular
                        .copyWith(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AppTextFormField(
                    hintText: 'https://example.com',
                    hintStyle: TextStyles.font14LightGrayRegular
                        .copyWith(color: Colors.grey),
                    controller: null,
                    validator: (String? val) {
                      if (val.isNullorEmpty()) {
                        return 'Filed Must Not Empty';
                      } else if (!AppRegex.isURl(val ?? 'hee')) {
                        return 'Enter Valid Url';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  AppTextFormField(
                    hintText: 'Enter Your Questions',
                    hintStyle: TextStyles.font14LightGrayRegular
                        .copyWith(color: Colors.grey),
                    controller: null,
                    validator: (String? val) {
                      if (val.isNullorEmpty()) {
                        return 'Filed Must Not Empty';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  const Spacer(),
                  AppButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        // call the api
                      }
                    },
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    myText: 'Ask Me',
                    backGroundColor: ColorsManager.buttomColorUrl,
                    iconPath: '',
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
