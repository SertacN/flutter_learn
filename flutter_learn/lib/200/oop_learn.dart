import 'dart:io';

// implement: üst sınıfta ne varsa hepsini kullanmak zorunda. boş dolu farketmez
// extends:   üst sınıfta içi boş olanları kullanmasakta olur. void toShare() {}
abstract class IFileDowload {
  bool? downloadItem(FileItem? fileItem);
  void toShare() {}
}

class FileDownload implements IFileDowload {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw 'File Download has failed';

    return true;
  }

  @override
  void toShare() {}
}

class SertacDowload extends IFileDowload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
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
