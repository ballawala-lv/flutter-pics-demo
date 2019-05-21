class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);
  ImageModel.fromJson(Map<String, dynamic> parsedJson) { // Map where key is string and value is dynamic
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];

  }//named constructor

}