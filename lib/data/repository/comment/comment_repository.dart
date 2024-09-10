import 'package:sis_attendance/core/network/api_result.dart';
import 'package:sis_attendance/core/repository/repository_helper.dart';
import 'package:sis_attendance/data/api/comment/comment_api.dart';
import 'package:sis_attendance/data/model/comment/comment.dart';

class CommentRepository with RepositoryHelper<Comment> {
  final CommentApi commentApi;

  CommentRepository({required this.commentApi});

  Future<ApiResult<bool>> createComment(Comment comment) async {
    return checkItemFailOrSuccess(commentApi.createComment(comment));
  }

  Future<ApiResult<bool>> deleteComment(Comment comment) async {
    return checkItemFailOrSuccess(commentApi.deleteComment(comment));
  }

  Future<ApiResult<List<Comment>>> getComments(int postId) async {
    return checkItemsFailOrSuccess(commentApi.getComments(postId));
  }
}
