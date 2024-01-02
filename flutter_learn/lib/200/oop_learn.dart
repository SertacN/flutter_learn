import 'dart:io';

abstract class IFileDowload {
  bool? downloadItem(FileItem? fileItem);
}

class FileDownload implements IFileDowload {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw 'File Download has failed';

    return true;
  }
}

class SertacDowload extends IFileDowload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    // TODO: implement downloadItem
    throw UnimplementedError();
  }
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}

mixin ShareMixin on IFileDowload {
  void toShowFile() {}
}
