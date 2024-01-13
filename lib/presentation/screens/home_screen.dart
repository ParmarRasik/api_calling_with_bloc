import 'package:api_calling_with_bloc/data/post_item.dart';
import 'package:api_calling_with_bloc/logic/cubits/post_cubit/post_cubit.dart';
import 'package:api_calling_with_bloc/logic/cubits/post_cubit/post_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "API Handling",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: BlocConsumer<PostCubit, PostState>(
          listener: (context, state) {
            if (state is PostErrorState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is PostLoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is PostLoadedState) {
              return ListView.builder(
                  itemCount: state.postsList.length,
                  itemBuilder: (context, index) {
                    PostItem postItem = state.postsList[index];
                    return ListTile(
                      title: Text(postItem.title.toString()),
                      subtitle: Text(postItem.status.toString()),
                      leading: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage(
                            postItem.thumbnail ?? "",
                          )),
                    );
                  });
            }

            return const Center(child: Text("An Error Occurred!"));
          },
        ),
      ),
    );
  }
}
