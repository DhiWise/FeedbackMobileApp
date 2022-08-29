class PostCreateReq {
  String? apiKey;
  String? authorID;
  String? boardID;
  String? details;
  String? title;
  String? name;
  List<String>? imageURLs;

  PostCreateReq(
      {this.apiKey,
      this.authorID,
      this.boardID,
      this.details,
      this.title,
      this.name,
      this.imageURLs});

  PostCreateReq.fromJson(Map<String, dynamic> json) {
    apiKey = json['apiKey'];
    authorID = json['authorID'];
    boardID = json['boardID'];
    details = json['details'];
    title = json['title'];
    name = json['name'];
    imageURLs = json['imageURLs'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.apiKey != null) {
      data['apiKey'] = this.apiKey;
    }
    if (this.authorID != null) {
      data['authorID'] = this.authorID;
    }
    if (this.boardID != null) {
      data['boardID'] = this.boardID;
    }
    if (this.details != null) {
      data['details'] = this.details;
    }
    if (this.title != null) {
      data['title'] = this.title;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.imageURLs != null) {
      data['imageURLs'] = this.imageURLs;
    }
    return data;
  }
}
