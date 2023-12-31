import 'package:flutter/material.dart';
import 'package:flutter_learn/200/service/post_model.dart';
import 'package:flutter_learn/200/service/post_service.dart';

class PostModelCreateView extends StatefulWidget {
  const PostModelCreateView({super.key});

  @override
  State<PostModelCreateView> createState() => _PostModelCreateViewState();
}

class _PostModelCreateViewState extends State<PostModelCreateView> {
  //Variables
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();
  late final IPostService _postService;

  //States
  @override
  void initState() {
    super.initState();
    _postService = PostService();
  }

  //Methods
  Future<void> _createPostItem({required PostModel model}) async {
    await _postService.createPostItem(model: model);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        _PostTextField(controller: _titleController, label: 'Title'),
        _PostTextField(controller: _bodyController, label: 'Body'),
        _PostTextField(controller: _userIdController, label: 'Id'),
        ElevatedButton(
            onPressed: () {
              if (_titleController.text.isNotEmpty &&
                  _bodyController.text.isNotEmpty &&
                  _userIdController.text.isNotEmpty) {
                final model = PostModel(
                    title: _titleController.text,
                    body: _bodyController.text,
                    userId: int.tryParse(_userIdController.text));
                _createPostItem(model: model);
                _titleController.text = '';
                _bodyController.text = '';
                _userIdController.text = '';
              }
            },
            child: const Text('Submit')),
      ]),
    );
  }
}

//Custom Widgets
class _PostTextField extends StatelessWidget {
  const _PostTextField({required TextEditingController controller, this.label}) : _postController = controller;

  final TextEditingController _postController;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _postController,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(label: Text(label ?? '')),
    );
  }
}
