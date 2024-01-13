import 'package:api_calling_with_bloc/data/post_item.dart';
import 'package:api_calling_with_bloc/data/repository/post_repository.dart';
import 'package:api_calling_with_bloc/logic/cubits/post_cubit/post_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCubit extends Cubit<PostState>{

  PostCubit(): super(PostLoadingState()){
    fetchPosts();
  }

  PostRepository postRepository = PostRepository();
  Future<void> fetchPosts() async {
    try {
      List<PostItem> posts = await postRepository.fetchPosts();
      emit(PostLoadedState(posts));
    } on DioException catch (e) {
      if(e.type == DioExceptionType.connectionError){
        emit(PostErrorState("Please check your internet connection!!"));
      }else{
        emit(PostErrorState(e.message.toString()));
      }
    }
  }
}