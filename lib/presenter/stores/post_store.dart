import 'package:clean_arch/domain/usecases/get_posts.dart';
import 'package:clean_arch/presenter/states/post_state.dart';
import 'package:flutter/cupertino.dart';

class PostStore extends ValueNotifier<PostState> {
  final GetPosts getPosts;

  PostStore(this.getPosts) : super(EmptyPostState());

  void emit(PostState newState) => value = newState;

  Future<void> fetchPosts() async {
    emit(LoadingPostState());

    final result = await getPosts.call();
    final newState = result.fold((l) {
      return ErrorPostState(l.message);
    }, (r) {
      return SucessPostState(r);
    });

    emit(newState);
  }
}
