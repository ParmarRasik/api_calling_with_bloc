import 'package:api_calling_with_bloc/data/post_item.dart';

abstract class PostState{}

class PostLoadingState extends PostState{

}

class PostLoadedState extends PostState{
  final List<PostItem> postsList;

  PostLoadedState(this.postsList);
}

class PostErrorState extends PostState{
  final String error;

  PostErrorState(this.error);
}