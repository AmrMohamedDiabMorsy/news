class SourseResponse {
  SourseResponse({
      this.status, 
      this.sources,
      this.code,
    this.massage,
  });

  SourseResponse.fromJson(dynamic json) {
    status = json['status'];
    code = json['code'];
    massage  = json['massage'];
    if (json['sources'] != null) {
      sources = [];
      json['sources'].forEach((v) {
        sources?.add(Sources.fromJson(v));
      });
    }
  }
  String? status;
  String? code ;
  String? massage;
  List<Sources>? sources;


}

class Sources {
  Sources({
      this.id, 
      this.name, 
      this.description, 
      this.url, 
      this.category, 
      this.language, 
      this.country,});

  Sources.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    url = json['url'];
    category = json['category'];
    language = json['language'];
    country = json['country'];
  }
  String? id;
  String? name;
  String? description;
  String? url;
  String? category;
  String? language;
  String? country;



}