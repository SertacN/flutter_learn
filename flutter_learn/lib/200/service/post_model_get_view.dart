import 'package:flutter/material.dart';
import 'package:flutter_learn/200/service/comment_view_query.dart';
import 'package:flutter_learn/200/service/post_model.dart';
import 'package:flutter_learn/200/service/post_service.dart';

class PostModelGetView extends StatefulWidget {
  const PostModelGetView({super.key});

  @override
  State<PostModelGetView> createState() => _PostModelGetViewState();
}

class _PostModelGetViewState extends State<PostModelGetView> with PaddingUtility {
  //Variables
  List<PostModel>? _items;
  bool _isLoading = false;
  late final IPostService _postService;

  //States
  @override
  void initState() {
    super.initState();
    _postService = PostService();
    _fetchPostItems();
  }

  //Methods
  Future<void> _fetchPostItems() async {
    _changeLoading();
    _items = await _postService.fetchPostItems();
    _changeLoading();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Widget _setLoadingState({required bool isLoading}) {
    return isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink();
  }

  //App
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [_setLoadingState(isLoading: _isLoading)],
      ),
      body: Padding(
        padding: horizontalPadding,
        child: ListView.builder(
          itemCount: _items?.length ?? 0,
          itemBuilder: (context, index) {
            return _PostCard(model: _items?[index]);
          },
        ),
      ),
    );
  }
}

//Custom Widgets
class _PostCard extends StatelessWidget with PaddingUtility {
  _PostCard({
    required PostModel? model,
  }) : _model = model;

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: horizontalPadding,
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return CommentViewQuery(id: _model?.id ?? 0);
              },
            ));
          },
          title: Text(_model?.title ?? ''),
          subtitle: Text(_model?.body ?? ''),
        ),
      ),
    );
  }
}

//Classes

mixin PaddingUtility {
  final EdgeInsetsGeometry horizontalPadding = const EdgeInsets.symmetric(horizontal: 12);
}
