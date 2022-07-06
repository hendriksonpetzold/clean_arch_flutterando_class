// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:fpdart/fpdart.dart';

import 'package:clean_arch/domain/erros/erros.dart';
import 'package:clean_arch/domain/models/comment.dart';
import 'package:clean_arch/domain/models/post.dart';
import 'package:clean_arch/domain/repositories/post_repository.dart';
import 'package:clean_arch/infra/datasources/comment_datasources.dart';
import 'package:clean_arch/infra/datasources/post_datasources.dart';
import 'package:clean_arch/infra/datasources/user_datasources.dart';

class PostRepositoryImpl extends PostRepository {
  final UserDatasources userDatascources;
  final PostDatasources postDatascources;
  final CommentDatasources commentDatascources;
  PostRepositoryImpl(
    this.userDatascources,
    this.postDatascources,
    this.commentDatascources,
  );
  @override
  Future<Either<PostExceptions, List<Post>>> getPost() {
    //TODO IMPLEMENTS BACKEND
    //final listComments = commentDatascources.getComments();
    //final listPost = postDatascources.getPost();
    //final listUsers = userDatascources.getUsers();
    throw UnimplementedError();
  }

  @override
  Future<Either<PostExceptions, List<Comment>>> getPostComments(
      String postId) async {
    //final list = await commentDatascources.getComments();
    throw UnimplementedError();
  }
}
