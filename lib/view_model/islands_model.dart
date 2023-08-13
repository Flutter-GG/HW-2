class Islands {
  int? id;
  String? title;
  String? subtitle;
  String? description;
  int? approximateBudget;
  double? rating;
  String? thumbnail;
  String? name;
  String? person;
 

  Islands({
    this.id,
    this.title,
    this.subtitle,
    this.description,
    this.approximateBudget,
    this.rating,
    this.thumbnail,
    this.person,
    this.name,
  
  });

  Islands.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subtitle = json['subtitle'];
    description = json['description'];
    approximateBudget = json['ApproximateBudget'];
    rating = json['rating'];
    thumbnail = json['thumbnail'];
    name = json['name'];
    person = json['person'];
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['description'] = this.description;
    data['Approximate Budget'] = this.approximateBudget;
    data['rating'] = this.rating;
    data['thumbnail'] = this.thumbnail;
    data['name'] = this.name;
    data['person'] = this.person;
   
    return data;
  }
}
