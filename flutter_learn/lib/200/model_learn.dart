// ignore_for_file: unused_field
// SERVICE / API
class PostModelApi {
  final int? userId;
  final int? id;
  final String? title;
  String? body;

  void updateBody(String? data) {
    if (data != null && data.isNotEmpty) {
      body = data;
    }
  }

  PostModelApi({this.userId, this.id, this.title, this.body});

  PostModelApi copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModelApi(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}

// LOCAL
class PostModelLocal {
  final int userId;
  final int id;
  final String title;
  String body;

  void updateBody(String data) {
    body = data;
  }

  PostModelLocal({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
}

// PRIVATE VARIABLE LOCAL
class PostModelPrivateLocal {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  int get userId => _userId;
  PostModelPrivateLocal({
    required int userId,
    required int id,
    required String title,
    required String body,
  })  : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}

class PostModel1 {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  int userId;
  int id;
  String title;
  String body;

  PostModel2(this.userId, this.id, this.title, this.body);
}

class PostModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel3(this.userId, this.id, this.title, this.body);
}

class PostModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel4({required this.userId, required this.id, required this.title, required this.body});
}

// *****
class PostModel5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  int get userId => _userId;
  PostModel5({
    required int userId,
    required int id,
    required String title,
    required String body,
  })  : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}

class PostModel6 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel6({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
}

class PostModel7 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel7({
    int userId = 0,
    int id = 0,
    String title = '',
    String body = '',
  }) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
}

// SERVICE / API
class PostModel8 {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModel8(this.userId, this.id, this.title, this.body);
}
