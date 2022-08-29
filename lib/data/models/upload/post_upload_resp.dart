class PostUploadResp {
  String? data;

  PostUploadResp({this.data});

  PostUploadResp.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.data != null) {
      data['data'] = this.data;
    }
    return data;
  }
}
