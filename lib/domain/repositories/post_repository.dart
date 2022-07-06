import 'package:clean_arch/domain/erros/erros.dart';
import 'package:clean_arch/domain/models/comment.dart';
import 'package:clean_arch/domain/models/post.dart';
import 'package:fpdart/fpdart.dart';

abstract class PostRepository {
  Future<Either<PostExceptions, List<Post>>> getPost();
  Future<Either<PostExceptions, List<Comment>>> getPostComments(
    String postId,
  );
}
