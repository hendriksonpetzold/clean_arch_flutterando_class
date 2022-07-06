import 'package:clean_arch/domain/repositories/post_repository.dart';
import 'package:clean_arch/domain/usecases/get_post_comments_impl.dart';
import 'package:clean_arch/domain/usecases/get_post_impl.dart';
import 'package:clean_arch/domain/usecases/get_posts.dart';
import 'package:clean_arch/external/datasources/commnent_datascource_impl.dart';
import 'package:clean_arch/external/datasources/post_datascource_impl.dart';
import 'package:clean_arch/external/datasources/user_datascource_impl.dart';
import 'package:clean_arch/infra/datasources/comment_datasources.dart';
import 'package:clean_arch/infra/datasources/post_datasources.dart';
import 'package:clean_arch/infra/datasources/user_datasources.dart';
import 'package:clean_arch/infra/repositories/post_repository.dart';
import 'package:clean_arch/presenter/pages/post_page.dart';
import 'package:clean_arch/presenter/stores/post_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PostModule extends Module {
  @override
  List<Bind> get binds => [
        //datasource
        Bind.factory<UserDatasources>((i) => UserDatascourcesImpl()),
        Bind.factory<PostDatasources>((i) => PostDatascourcesImpl()),
        Bind.factory<CommentDatasources>((i) => CommentDatascourcesImpl()),
        //repository
        Bind.factory<PostRepository>((i) => PostRepositoryImpl(i(), i(), i())),
        //usercase
        Bind.factory((i) => GetPostImpl(i())),
        Bind.factory((i) => GetPostCommentsImpl(i())),
        //store
        Bind.singleton((i) => PostStore(i())),
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const PostPage())];
}
