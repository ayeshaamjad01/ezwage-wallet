class GetLinkedinPostsModel {
  static var currentPage;
  static var totalPages;
  static var PostsList;
  late int id;
  late String url;
  late String createdAt;
  late String updatedAt;
  late int status;

  GetLinkedinPostsModel(
      this.id, this.url, this.createdAt, this.updatedAt, this.status);

  GetLinkedinPostsModel.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    url = json['url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    status = json['status'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['status'] = this.status;
    return data;
  }
}
