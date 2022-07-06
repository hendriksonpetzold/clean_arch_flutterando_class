import 'package:clean_arch/domain/models/user.dart';

class Post {
  final String id;
  final String text;
  final int totalComments;
  final User user;

  Post({
    required this.user,
    required this.id,
    required this.text,
    required this.totalComments,
  });
}
