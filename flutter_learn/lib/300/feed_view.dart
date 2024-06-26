import 'package:flutter/material.dart';
import 'package:flutter_learn/200/service/post_model.dart';
import 'package:flutter_learn/200/service/post_service.dart';

class FeedView extends StatefulWidget {
  const FeedView({super.key});

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> with AutomaticKeepAliveClientMixin {
  final IPostService _postService = PostService();
  late final Future<List<PostModel>?> _futurePost;
  @override
  void initState() {
    super.initState();
    _futurePost = _postService.fetchPostItems();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
      ),
      appBar: AppBar(),
      body: FutureBuilder<List<PostModel>?>(
        future: _futurePost,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Placeholder();
            case ConnectionState.waiting:
              return const Center(child: CircularProgressIndicator.adaptive());
            case ConnectionState.active:
              return const Center(child: CircularProgressIndicator.adaptive());
            case ConnectionState.done:
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(child: ListTile(title: Text(snapshot.data?[index].title ?? '')));
                  },
                );
              } else {
                return const Placeholder();
              }
          }
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
