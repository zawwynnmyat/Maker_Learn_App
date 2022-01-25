class TutorialCategory {
  String image;
  String title;
  String count;
  String source;
  List<String> information;


  TutorialCategory(this.image,this.title,this.count,this.source,this.information);

  TutorialCategory.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    count = json['count'];
    source = json['source'];
    information = json['information'].cast<String>();
  }
}
