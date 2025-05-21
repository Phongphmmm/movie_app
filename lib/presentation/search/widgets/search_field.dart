import 'package:blog_app/presentation/search/bloc/search_cubit.dart';
import 'package:blog_app/presentation/search/bloc/search_option_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: context.read<SearchCubit>().textEditingController,
      onChanged: (value) {
        context
            .read<SearchCubit>()
            .search(value, context.read<SelectableOptionCubit>().state);
      },
      decoration: const InputDecoration(hintText: 'Search...'),
    );
  }
}
