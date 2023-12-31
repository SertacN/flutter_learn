import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_learn/200/service/comment_model.dart';
import 'package:flutter_learn/200/service/post_model.dart';

abstract class IPostService {
  Future<List<PostModel>?> fetchPostItems();
  Future<bool> createPostItem({required PostModel model});
  Future<bool> updatePostItem({required PostModel model, required int id});
  Future<bool> deletePostItem({required int id});
  Future<List<CommentModel>?> getCommentSpesificId({required int id});
}

class PostService implements IPostService {
  final Dio _dio;
  PostService() : _dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  @override
  Future<List<PostModel>?> fetchPostItems() async {
    try {
      final response = await _dio.get(PostPath.posts.name);
      if (response.statusCode == HttpStatus.ok) {
        final datas = response.data;
        if (datas is List) {
          return datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } on DioException catch (exception) {
      _ShowDebug.showDioError(exception, this);
    }
    return null;
  }

  @override
  Future<bool> createPostItem({required PostModel model}) async {
    try {
      final response = await _dio.post(
        PostPath.posts.name,
        data: model,
        options: Options(contentType: Headers.jsonContentType),
      );
      return response.statusCode == HttpStatus.created;
    } on DioException catch (exception) {
      _ShowDebug.showDioError(exception, this);
    }
    return false;
  }

  @override
  Future<bool> updatePostItem({required PostModel model, required int id}) async {
    try {
      final response = await _dio.put(
        '${PostPath.posts.name}/$id',
        data: model,
        options: Options(contentType: Headers.jsonContentType),
      );
      return response.statusCode == HttpStatus.ok;
    } on DioException catch (exception) {
      _ShowDebug.showDioError(exception, this);
    }
    return false;
  }

  @override
  Future<bool> deletePostItem({required int id}) async {
    try {
      final response = await _dio.delete(
        '${PostPath.posts.name}/$id',
        options: Options(contentType: Headers.jsonContentType),
      );
      return response.statusCode == HttpStatus.ok;
    } on DioException catch (exception) {
      _ShowDebug.showDioError(exception, this);
    }
    return false;
  }

  @override
  Future<List<CommentModel>?> getCommentSpesificId({required int id}) async {
    try {
      final response = await _dio.get(CommentPath.comments.name, queryParameters: {'postId': id});
      if (response.statusCode == HttpStatus.ok) {
        final data = response.data;
        if (data is List) {
          return data.map((e) => CommentModel.fromJson(e)).toList();
        }
      }
    } on DioException catch (exception) {
      _ShowDebug.showDioError(exception, this);
    }

    return null;
  }
}

enum PostPath { posts }

enum CommentPath { comments }

class _ShowDebug {
  static void showDioError<T>(DioException error, T type) {
    if (kDebugMode) {
      print(error.message);
      print(type);
    }
  }
}
