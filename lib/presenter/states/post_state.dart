// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_arch/domain/models/post.dart';

abstract class PostState {}

class SucessPostState implements PostState {
  final List<Post> posts;
  SucessPostState(
    this.posts,
  );
}

class EmptyPostState extends SucessPostState {
  EmptyPostState() : super([]);
}

class LoadingPostState extends PostState {}

class ErrorPostState extends PostState {
  final String message;
  ErrorPostState(this.message);
}
