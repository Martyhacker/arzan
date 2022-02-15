class PostModel {
  final int id;
  final String images, title, content, contacts, updatedAt;
  final int likeCount, viewCount, shareCount, favoriteCount;
  PostModel(
      {required this.id,
      required this.images,
      required this.title,
      required this.content,
      required this.contacts,
      required this.updatedAt,
      required this.likeCount,
      required this.viewCount,
      required this.favoriteCount,
      required this.shareCount});

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        id: json['id'],
        title: json['title'],
        content: json['content'],
        contacts: json['contacts'],
        images: json['images'],
        favoriteCount: json['favoriteCount'],
        likeCount: json['likeCount'],
        shareCount: json['shareCount'],
        viewCount: json['viewCount'],
        updatedAt: json['updatedAt'],
      );
}
