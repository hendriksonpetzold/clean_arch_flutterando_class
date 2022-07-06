import 'package:clean_arch/domain/erros/argument_exception.dart';
import 'package:clean_arch/domain/repositories/post_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:clean_arch/domain/models/comment.dart';

import 'package:clean_arch/domain/erros/erros.dart';

import './get_post_comments.dart';

class GetPostCommentsImpl implements GetPostComments {
  final PostRepository repository;

  GetPostCommentsImpl(this.repository);
  @override
  Future<Either<PostExceptions, List<Comment>>> call(String postId) async {
    if (postId.isEmpty) {
      return left(ArgumentException('postId is empty'));
    }
    return await repository.getPostComments(postId);
  }
}
