import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/home/data/model/all_char_response_model.dart';
import 'package:rick_and_morty/home/logic/home_cubit.dart';
import 'package:rick_and_morty/home/logic/home_cubit.dart';
import 'package:rick_and_morty/home/ui/widgets/char_item.dart';

import '../../logic/home_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<HomeCubit>().emitCharStates();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) => current is Loading || current is Success || current is Error,
        builder: (context, state) {
         return  state.maybeWhen(

            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            success: (allCharResponseModel) {
              final allCharsList = allCharResponseModel.allCharsList;
              return ListView.builder(
                itemCount: allCharsList.length,
                itemBuilder: (context, index) {
                  return CharItem(
                    name: allCharsList[index].name,
                    imageUrl: allCharsList[index].image,
                  );
                },
              );
            },
            error: (message) {
              return Center(
                child: Text(message),
              );
            }, orElse: () {
              return const SizedBox.shrink();
         },

          );


          // return ListView.builder(
          //   itemCount: 10,
          //   itemBuilder: (context, index) {
          //     return CharItem(
          //         name: "omar", imageUrl: "https://via.placeholder.com/150");
          //   },
          // );

        },
      ),
    );
  }
}
