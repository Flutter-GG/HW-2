class Mails {
  int? id;
  String? title;
  String? description;
  int? price;

  double? rating;
  int? stock;
  String? brand;

  String? thumbnail;
  List<String>? images;

  Mails(
      {this.id,
      this.title,
      this.description,
      this.price,
  
      this.rating,
      this.stock,
      this.brand,
   
      this.thumbnail,
      this.images});

  Mails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];

    rating = json['rating'];
    stock = json['stock'];
    brand = json['brand'];
 
    thumbnail = json['thumbnail'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
  
    data['rating'] = this.rating;
    data['stock'] = this.stock;
    data['brand'] = this.brand;

    data['thumbnail'] = this.thumbnail;
    data['images'] = this.images;
    return data;
  }
}