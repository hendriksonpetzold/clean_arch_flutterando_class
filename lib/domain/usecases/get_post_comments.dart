import 'package:clean_arch/domain/erros/erros.dart';
import 'package:clean_arch/domain/models/comment.dart';
import 'package:fpdart/fpdart.dart';

abstract class GetPostComments {
  Future<Either<PostExceptions, List<Comment>>> call(String postId);
}
