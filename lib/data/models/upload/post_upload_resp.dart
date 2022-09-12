class PostUploadResp {
  String? fileName;
  String? fileExt;
  int? fileSize;
  String? fileId;
  String? url;

  PostUploadResp(
      {this.fileName, this.fileExt, this.fileSize, this.fileId, this.url});

  PostUploadResp.fromJson(Map<String, dynamic> json) {
    fileName = json['FileName'];
    fileExt = json['FileExt'];
    fileSize = json['FileSize'];
    fileId = json['FileId'];
    url = json['Url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.fileName != null) {
      data['FileName'] = this.fileName;
    }
    if (this.fileExt != null) {
      data['FileExt'] = this.fileExt;
    }
    if (this.fileSize != null) {
      data['FileSize'] = this.fileSize;
    }
    if (this.fileId != null) {
      data['FileId'] = this.fileId;
    }
    if (this.url != null) {
      data['Url'] = this.url;
    }
    return data;
  }
}
