import 'package:clean_arch/domain/erros/erros.dart';
import 'package:clean_arch/domain/models/post.dart';
import 'package:fpdart/fpdart.dart';

abstract class GetPosts {
  Future<Either<PostExceptions, List<Post>>> call();
}
