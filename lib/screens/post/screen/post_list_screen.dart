import 'package:sis_attendance/common/app_extension.dart';
import 'package:sis_attendance/common/app_style.dart';
import 'package:sis_attendance/core/bloc/generic_bloc_state.dart';
import 'package:sis_attendance/core/dialog/retry_dialog.dart';
import 'package:sis_attendance/core/widget/empty_widget.dart';
import 'package:sis_attendance/core/widget/spinkit_indicator.dart';
import 'package:sis_attendance/data/model/post/post.dart';
import 'package:sis_attendance/data/model/user/user.dart';
import 'package:sis_attendance/screens/post/screen/create_post_screen.dart';
import 'package:sis_attendance/screens/post/screen/post_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/post_bloc.dart';
import '../bloc/post_event.dart';

class PostListScreen extends StatefulWidget {
  const PostListScreen({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  State<PostListScreen> createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    if (!mounted) return;
    context.read<PostBloc>().add(PostFetched(widget.user));
  }

  PreferredSizeWidget get appBar {
    return AppBar(
      title: const Text("Posts"),
      centerTitle: false,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back_outlined),
      ),
      actions: [
        IconButton(
          onPressed: () async => getData(),
          icon: const Icon(Icons.refresh),
        )
      ],
    );
  }

  Widget floatingActionButton(BuildContext context) {
    return FloatingActionButton.extended(
      icon: const Icon(Icons.note_add),
      label: const Text("Create a new post"),
      onPressed: () async {
        var resultFromCreatePostScreen = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => CreatePostScreen(user: widget.user),
          ),
        );
        if (resultFromCreatePostScreen != null && resultFromCreatePostScreen) {
          getData();
        }
      },
    );
  }

  Widget get header {
    return Card(
      child: Row(
        children: [
          Image.asset(widget.user.gender.name.getGenderWidget, height: 75),
          const SizedBox(width: 10),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.user.name, maxLines: 2, style: headLine4),
                const SizedBox(height: 5),
                Builder(
                  builder: (context) {
                    final postBloc = context.watch<PostBloc>();
                    return Text(
                      postBloc.getPostCount,
                      style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),
                    );
                  },
                )
              ],
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }

  Widget userPostItem(List<Post> posts) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: posts.length,
        itemBuilder: (_, index) {
          Post post = posts[index];
          return Center(
            child: GestureDetector(
              onTap: () async {
                var resultFromPostDetailScreen = await Navigator.push(
                  _,
                  MaterialPageRoute(
                    builder: (_) {
                      return PostDetailScreen(post: post, user: widget.user);
                    },
                  ),
                );

                if (resultFromPostDetailScreen != null && resultFromPostDetailScreen) {
                  getData();
                }
              },
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(post.title, maxLines: 2, style: headLine2),
                            const SizedBox(height: 10),
                            Text(
                              post.body,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios_sharp)
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton(context),
      appBar: appBar,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header,
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 15),
            child: Text("Posts", style: headLine1),
          ),
          BlocBuilder<PostBloc, GenericBlocState<Post>>(
            builder: (BuildContext context, GenericBlocState<Post> state) {
              switch (state.status) {
                case Status.empty:
                  return const EmptyWidget(message: "No post");
                case Status.loading:
                  return const Center(child: SpinKitIndicator());
                case Status.failure:
                  return RetryDialog(
                    title: state.error ?? "Error",
                    onCancelPressed: () => getData(),
                  );
                case Status.success:
                  return userPostItem(state.data ?? []);
              }
            },
          ),
        ],
      ),
    );
  }
}
