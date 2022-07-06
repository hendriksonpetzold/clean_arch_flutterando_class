import 'package:clean_arch/presenter/states/post_state.dart';
import 'package:clean_arch/presenter/stores/post_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = context.watch<PostStore>();
    final state = store.value;
    Widget child = Container();

    if (state is SucessPostState) {
      child = ListView.builder(
          itemCount: state.posts.length,
          itemBuilder: (context, index) {
            final post = state.posts[index];
            return ListTile(
              title: Text(post.text),
            );
          });
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: child,
    );
  }
}
