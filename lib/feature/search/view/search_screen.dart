import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_chat/core/di/dependency_injection.dart';
import 'package:media_chat/core/helpers/extention.dart';
import 'package:media_chat/core/theming/style.dart';
import 'package:media_chat/core/widgets/app_button.dart';
import 'package:media_chat/core/widgets/app_text_form_filed.dart';
import 'package:media_chat/core/widgets/arrow_back.dart';
import 'package:media_chat/feature/search/logic/search_cubit.dart';
import 'package:media_chat/feature/search/logic/search_state.dart';
import 'package:media_chat/feature/search/view/widgtes/bloc_builder_search_result.dart';

class QuestionSearchScreen extends StatefulWidget {
  @override
  _QuestionSearchScreenState createState() => _QuestionSearchScreenState();
}

class _QuestionSearchScreenState extends State<QuestionSearchScreen> {
  final TextEditingController _questionController = TextEditingController();
  bool _isLoading = false;
  String? _result;

  @override
  void dispose() {
    _questionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: BlocProvider<SearchCubit>(
        create: (context) => getIt.get<SearchCubit>(),
        child: BlocBuilder<SearchCubit, SearchState>(
          buildWhen: (prev, curr) =>
              curr is SearchLoading ||
              curr is SearchSuccess ||
              curr is SearchError,
          builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                child: Form(
                  key: context.read<SearchCubit>().formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ArrowBack(
                        onTap: () => context.pop(),
                      ),
                      const SizedBox(height: 50),
                      AppTextFormField(
                        hintText: 'Enter Your Questions',
                        hintStyle: TextStyles.font14LightGrayRegular
                            .copyWith(color: Colors.grey),
                        controller:
                            context.read<SearchCubit>().searchController,
                        validator: (String? val) {
                          if (val.isNullorEmpty()) {
                            return 'Filed Must Not Empty';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BlocBuilderSearchResult(
                        searchState: state,
                      ),
                      const Spacer(),
                      _buildAskMeButton(context),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildAskMeButton(BuildContext context1) {
    return AppButton(
      onPressed: () {
        if (context1.read<SearchCubit>().formkey.currentState!.validate()) {
          context1.read<SearchCubit>().doSearch();
        }
      },
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      myText: 'Ask Me',
      backGroundColor: Colors.blue,
      iconPath: '',
    );
  }
}
