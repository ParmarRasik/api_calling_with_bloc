import 'dart:convert';
/// id : 1
/// slug : "lorem-ipsum"
/// url : "https://jsonplaceholder.org/posts/lorem-ipsum"
/// title : "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
/// content : "Ante taciti nulla sit libero orci sed nam. Sagittis suspendisse gravida ornare iaculis cras nullam varius ac ullamcorper. Nunc euismod hendrerit netus ligula aptent potenti. Aliquam volutpat nibh scelerisque at. Ipsum molestie phasellus euismod sagittis mauris, erat ut. Gravida morbi, sagittis blandit quis ipsum mi mus semper dictum amet himenaeos. Accumsan non congue praesent interdum habitasse turpis orci. Ante curabitur porttitor ullamcorper sagittis sem donec, inceptos cubilia venenatis ac. Augue fringilla sodales in ullamcorper enim curae; rutrum hac in sociis! Scelerisque integer varius et euismod aenean nulla. Quam habitasse risus nullam enim. Ultrices etiam viverra mattis aliquam? Consectetur velit vel volutpat eget curae;. Volutpat class mus elementum pulvinar! Nisi tincidunt volutpat consectetur. Primis morbi pulvinar est montes diam himenaeos duis elit est orci. Taciti sociis aptent venenatis dui malesuada dui justo faucibus primis consequat volutpat. Rhoncus ante purus eros nibh, id et hendrerit pellentesque scelerisque vehicula sollicitudin quam. Hac class vitae natoque tortor dolor dui praesent suspendisse. Vehicula euismod tincidunt odio platea aenean habitasse neque ad proin. Bibendum phasellus enim fames risus eget felis et sem fringilla etiam. Integer."
/// image : "https://dummyimage.com/800x430/FFFFFF/lorem-ipsum.png&text=jsonplaceholder.org"
/// thumbnail : "https://dummyimage.com/200x200/FFFFFF/lorem-ipsum.png&text=jsonplaceholder.org"
/// status : "published"
/// category : "lorem"
/// publishedAt : "04/02/2023 13:25:21"
/// updatedAt : "14/03/2023 17:22:20"
/// userId : 1

PostItem postItemFromJson(String str) => PostItem.fromJson(json.decode(str));
String postItemToJson(PostItem data) => json.encode(data.toJson());
class PostItem {
  PostItem({
      num? id, 
      String? slug, 
      String? url, 
      String? title, 
      String? content, 
      String? image, 
      String? thumbnail, 
      String? status, 
      String? category, 
      String? publishedAt, 
      String? updatedAt, 
      num? userId,}){
    _id = id;
    _slug = slug;
    _url = url;
    _title = title;
    _content = content;
    _image = image;
    _thumbnail = thumbnail;
    _status = status;
    _category = category;
    _publishedAt = publishedAt;
    _updatedAt = updatedAt;
    _userId = userId;
}

  PostItem.fromJson(dynamic json) {
    _id = json['id'];
    _slug = json['slug'];
    _url = json['url'];
    _title = json['title'];
    _content = json['content'];
    _image = json['image'];
    _thumbnail = json['thumbnail'];
    _status = json['status'];
    _category = json['category'];
    _publishedAt = json['publishedAt'];
    _updatedAt = json['updatedAt'];
    _userId = json['userId'];
  }
  num? _id;
  String? _slug;
  String? _url;
  String? _title;
  String? _content;
  String? _image;
  String? _thumbnail;
  String? _status;
  String? _category;
  String? _publishedAt;
  String? _updatedAt;
  num? _userId;
PostItem copyWith({  num? id,
  String? slug,
  String? url,
  String? title,
  String? content,
  String? image,
  String? thumbnail,
  String? status,
  String? category,
  String? publishedAt,
  String? updatedAt,
  num? userId,
}) => PostItem(  id: id ?? _id,
  slug: slug ?? _slug,
  url: url ?? _url,
  title: title ?? _title,
  content: content ?? _content,
  image: image ?? _image,
  thumbnail: thumbnail ?? _thumbnail,
  status: status ?? _status,
  category: category ?? _category,
  publishedAt: publishedAt ?? _publishedAt,
  updatedAt: updatedAt ?? _updatedAt,
  userId: userId ?? _userId,
);
  num? get id => _id;
  String? get slug => _slug;
  String? get url => _url;
  String? get title => _title;
  String? get content => _content;
  String? get image => _image;
  String? get thumbnail => _thumbnail;
  String? get status => _status;
  String? get category => _category;
  String? get publishedAt => _publishedAt;
  String? get updatedAt => _updatedAt;
  num? get userId => _userId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['slug'] = _slug;
    map['url'] = _url;
    map['title'] = _title;
    map['content'] = _content;
    map['image'] = _image;
    map['thumbnail'] = _thumbnail;
    map['status'] = _status;
    map['category'] = _category;
    map['publishedAt'] = _publishedAt;
    map['updatedAt'] = _updatedAt;
    map['userId'] = _userId;
    return map;
  }

}