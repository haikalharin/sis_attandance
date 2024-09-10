import 'package:sis_attendance/core/network/api_result.dart';
import 'package:sis_attendance/core/repository/repository_helper.dart';
import 'package:sis_attendance/data/api/post/post_api.dart';
import 'package:sis_attendance/data/model/post/post.dart';
import 'package:sis_attendance/data/model/user/user.dart';

class PostRepository with RepositoryHelper<Post> {
  final PostApi postApi;

  const PostRepository({required this.postApi});

  Future<ApiResult<List<Post>>> getPosts(User user) async {
    return checkItemsFailOrSuccess(postApi.getUsers(user));
  }

  Future<ApiResult<bool>> createPost(Post post) async {
    return checkItemFailOrSuccess(postApi.createPost(post));
  }

  Future<ApiResult<bool>> updatePost(Post post) async {
    return checkItemFailOrSuccess(postApi.updatePost(post));
  }

  Future<ApiResult<bool>> deletePost(Post post) async {
    return checkItemFailOrSuccess(postApi.deletePost(post));
  }
}
