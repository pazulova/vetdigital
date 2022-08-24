import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../src.dart';
import '../widgets/widgets.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: const Text(AppString.news),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: BlocBuilder<NewsCubit, NewsState>(
          builder: (context, state) {
            if (state.status == FetchStatus.initial) {
              return const FetchInitialWidget();
            } else if (state.status == FetchStatus.loading) {
              return const FetchLoadingWidget();
            } else if (state.items != null) {
              return NewsList(state.items ?? []);
            } else if (state.status == FetchStatus.error) {
              return const FetchErrorWidget();
            } else {
              return const FetchUnkNown();
            }
          },
        ),
      ),
    );
  }
}
