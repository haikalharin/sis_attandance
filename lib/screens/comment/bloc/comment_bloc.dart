import 'package:sis_attendance/core/bloc/bloc_helper.dart';
import 'package:sis_attendance/core/bloc/generic_bloc_state.dart';
import 'package:sis_attendance/data/model/comment/comment.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repository/comment/comment_repository.dart';
import 'comment_event.dart';

typedef Emit = Emitter<GenericBlocState<Comment>>;

class CommentBloc extends Bloc<CommentEvent, GenericBlocState<Comment>> with BlocHelper<Comment> {
  CommentBloc({required this.commentRepository}) : super(GenericBlocState.loading()) {
    on<CommentFetched>(getComments);
    on<CommentCreated>(createComment);
    on<CommentDeleted>(deleteComment);
  }

  final CommentRepository commentRepository;

  Future<void> getComments(CommentFetched event, Emit emit) async {
    await getItems(commentRepository.getComments(event.postId), emit);
  }

  Future<void> createComment(CommentCreated event, Emit emit) async {
    await createItem(commentRepository.createComment(event.comment), emit);
  }

  Future<void> deleteComment(CommentDeleted event, Emit emit) async {
    await deleteItem(commentRepository.deleteComment(event.comment), emit);
  }
}
