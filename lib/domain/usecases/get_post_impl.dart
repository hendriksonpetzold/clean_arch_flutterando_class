import 'package:clean_arch/domain/erros/erros.dart';
import 'package:clean_arch/domain/models/post.dart';
import 'package:clean_arch/domain/repositories/post_repository.dart';
import 'package:clean_arch/domain/usecases/get_posts.dart';
import 'package:fpdart/fpdart.dart';

class GetPostImpl implements GetPosts {
  PostRepository repository;
  GetPostImpl(
    this.repository,
  );

  @override
  Future<Either<PostExceptions, List<Post>>> call() async {
    return await repository.getPost();
  }
}
