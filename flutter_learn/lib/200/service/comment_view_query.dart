import 'package:flutter/material.dart';
import 'package:flutter_learn/200/service/comment_model.dart';
import 'package:flutter_learn/200/service/post_service.dart';

class CommentViewQuery extends StatefulWidget {
  const CommentViewQuery({super.key, required this.id});
  final int id;
  @override
  State<CommentViewQuery> createState() => _CommentViewQueryState();
}

class _CommentViewQueryState extends State<CommentViewQuery> {
  late final IPostService _postService;
  List<CommentModel>? _items;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _postService = PostService();
    _getCommentItem();
  }

  void _loadingChange() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _getCommentItem() async {
    _loadingChange();
    _items = await _postService.getCommentSpesificId(id: widget.id);
    _loadingChange();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [_isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink()],
      ),
      body: ListView.builder(
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return ListTile(title: Text(_items?[index].email ?? ''));
        },
      ),
    );
  }
}
