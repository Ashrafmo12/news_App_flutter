class model
{
  List news;
  model({required this.news});
  factory model.api(Map json)
  {
    return model(news: json["articles"]);
  }
}