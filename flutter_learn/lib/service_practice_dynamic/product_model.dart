class ProductModel {
  List<ProductData>? data;
  int? statusCode;
  bool? isSuccess;
  void errors;
  void tokens;

  ProductModel({this.data, this.statusCode, this.isSuccess, this.errors, this.tokens});

  ProductModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <ProductData>[];
      json['data'].forEach((v) {
        data!.add(ProductData.fromJson(v));
      });
    }
    statusCode = json['statusCode'];
    isSuccess = json['isSuccess'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['statusCode'] = statusCode;
    data['isSuccess'] = isSuccess;

    return data;
  }
}

class ProductData {
  String? sId;
  String? title;
  int? price;

  ProductData({this.sId, this.title, this.price});

  ProductData.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['title'] = title;
    data['price'] = price;
    return data;
  }
}
