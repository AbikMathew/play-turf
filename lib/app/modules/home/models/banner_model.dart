class BannerResponseModel {
  String? message;
  List<Banner>? banner;

  BannerResponseModel({this.message, this.banner});

  BannerResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['banner'] != null) {
      banner = <Banner>[];
      json['banner'].forEach((v) {
        banner!.add(Banner.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['message'] = message;
    if (banner != null) {
      data['banner'] = banner!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Banner {
  String? sId;
  String? bannerImage;
  String? description;
  int? iV;

  Banner({this.sId, this.bannerImage, this.description, this.iV});

  Banner.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    bannerImage = json['bannerImage'];
    description = json['description'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = sId;
    data['bannerImage'] = bannerImage;
    data['description'] = description;
    data['__v'] = iV;
    return data;
  }
}
