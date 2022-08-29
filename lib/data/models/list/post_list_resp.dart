class PostListResp {
  bool? hasMore;
  List<Comments>? comments;

  PostListResp({this.hasMore, this.comments});

  PostListResp.fromJson(Map<String, dynamic> json) {
    hasMore = json['hasMore'];
    if (json['comments'] != null) {
      comments = <Comments>[];
      json['comments'].forEach((v) {
        comments?.add(Comments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.hasMore != null) {
      data['hasMore'] = this.hasMore;
    }
    if (this.comments != null) {
      data['comments'] = this.comments?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Comments {
  Author? author;
  Board? board;
  String? created;
  String? id;
  List<String>? imageURLs;
  bool? internal;
  int? likeCount;
  List? mentions;
  Null? parentID;
  Post? post;
  bool? private;
  Null? reactions;
  Null? status;
  String? value;

  Comments(
      {this.author,
      this.board,
      this.created,
      this.id,
      this.imageURLs,
      this.internal,
      this.likeCount,
      this.mentions,
      this.parentID,
      this.post,
      this.private,
      this.reactions,
      this.status,
      this.value});

  Comments.fromJson(Map<String, dynamic> json) {
    author = json['author'] != null ? Author.fromJson(json['author']) : null;
    board = json['board'] != null ? Board.fromJson(json['board']) : null;
    created = json['created'];
    id = json['id'];
    imageURLs = json['imageURLs'].cast<String>();
    internal = json['internal'];
    likeCount = json['likeCount'];
    if (json['mentions'] != null) {
      mentions = [];
      json['mentions'].forEach((v) {
        mentions?.add(v);
      });
    }
    parentID = json['parentID'];
    post = json['post'] != null ? Post.fromJson(json['post']) : null;
    private = json['private'];
    reactions = json['reactions'];
    status = json['status'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.author != null) {
      data['author'] = this.author?.toJson();
    }
    if (this.board != null) {
      data['board'] = this.board?.toJson();
    }
    if (this.created != null) {
      data['created'] = this.created;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.imageURLs != null) {
      data['imageURLs'] = this.imageURLs;
    }
    if (this.internal != null) {
      data['internal'] = this.internal;
    }
    if (this.likeCount != null) {
      data['likeCount'] = this.likeCount;
    }
    if (this.mentions != null) {
      data['mentions'] = this.mentions?.map((v) => v).toList();
    }
    if (this.parentID != null) {
      data['parentID'] = this.parentID;
    }
    if (this.post != null) {
      data['post'] = this.post?.toJson();
    }
    if (this.private != null) {
      data['private'] = this.private;
    }
    if (this.reactions != null) {
      data['reactions'] = this.reactions;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.value != null) {
      data['value'] = this.value;
    }
    return data;
  }
}

class Author {
  String? created;
  String? email;
  String? id;
  bool? isAdmin;
  String? name;
  String? url;
  Null? userID;

  Author(
      {this.created,
      this.email,
      this.id,
      this.isAdmin,
      this.name,
      this.url,
      this.userID});

  Author.fromJson(Map<String, dynamic> json) {
    created = json['created'];
    email = json['email'];
    id = json['id'];
    isAdmin = json['isAdmin'];
    name = json['name'];
    url = json['url'];
    userID = json['userID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.created != null) {
      data['created'] = this.created;
    }
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.isAdmin != null) {
      data['isAdmin'] = this.isAdmin;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.userID != null) {
      data['userID'] = this.userID;
    }
    return data;
  }
}

class Board {
  String? created;
  String? id;
  String? name;
  int? postCount;
  String? url;

  Board({this.created, this.id, this.name, this.postCount, this.url});

  Board.fromJson(Map<String, dynamic> json) {
    created = json['created'];
    id = json['id'];
    name = json['name'];
    postCount = json['postCount'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.created != null) {
      data['created'] = this.created;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.postCount != null) {
      data['postCount'] = this.postCount;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    return data;
  }
}

class Post {
  Null? category;
  int? commentCount;
  String? details;
  String? id;
  List<String>? imageURLs;
  Jira? jira;
  int? score;
  String? status;
  List? tags;
  String? title;
  String? url;

  Post(
      {this.category,
      this.commentCount,
      this.details,
      this.id,
      this.imageURLs,
      this.jira,
      this.score,
      this.status,
      this.tags,
      this.title,
      this.url});

  Post.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    commentCount = json['commentCount'];
    details = json['details'];
    id = json['id'];
    imageURLs = json['imageURLs'].cast<String>();
    jira = json['jira'] != null ? Jira.fromJson(json['jira']) : null;
    score = json['score'];
    status = json['status'];
    if (json['tags'] != null) {
      tags = [];
      json['tags'].forEach((v) {
        tags?.add(v);
      });
    }
    title = json['title'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.category != null) {
      data['category'] = this.category;
    }
    if (this.commentCount != null) {
      data['commentCount'] = this.commentCount;
    }
    if (this.details != null) {
      data['details'] = this.details;
    }
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.imageURLs != null) {
      data['imageURLs'] = this.imageURLs;
    }
    if (this.jira != null) {
      data['jira'] = this.jira?.toJson();
    }
    if (this.score != null) {
      data['score'] = this.score;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.tags != null) {
      data['tags'] = this.tags?.map((v) => v).toList();
    }
    if (this.title != null) {
      data['title'] = this.title;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    return data;
  }
}

class Jira {
  List? linkedIssues;
  List? linkedIssueIDs;

  Jira({this.linkedIssues, this.linkedIssueIDs});

  Jira.fromJson(Map<String, dynamic> json) {
    if (json['linkedIssues'] != null) {
      linkedIssues = [];
      json['linkedIssues'].forEach((v) {
        linkedIssues?.add(v);
      });
    }
    if (json['linkedIssueIDs'] != null) {
      linkedIssueIDs = [];
      json['linkedIssueIDs'].forEach((v) {
        linkedIssueIDs?.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.linkedIssues != null) {
      data['linkedIssues'] = this.linkedIssues?.map((v) => v).toList();
    }
    if (this.linkedIssueIDs != null) {
      data['linkedIssueIDs'] = this.linkedIssueIDs?.map((v) => v).toList();
    }
    return data;
  }
}
