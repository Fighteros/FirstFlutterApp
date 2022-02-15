

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterapp/layout/news-app/cubit/cubit.dart';

import '../../layout/news-app/cubit/states.dart';
import '../../shared/components/components.dart';

class SearchScreen extends StatelessWidget {

  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
        builder: (context, state) {
          var list = NewsCubit.get(context).search;
          return Scaffold(
            appBar: AppBar(),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: defaultFormField(
                      onChanged: (val) {
                        NewsCubit.get(context).getSearch(val);
                      },
                      controller: searchController,
                      type: TextInputType.text,
                      label: 'Search',
                      validator: (String? val) {
                        if (val!.isEmpty) {
                          return 'search must not be empty ';
                        }
                        return null;
                      },
                      prefixIcon: Icons.search),
                ),
                Expanded(child: articleBuilder(list, context))
              ],
            ),
          );
        },
        listener: (context, state){}
    );
  }
}
