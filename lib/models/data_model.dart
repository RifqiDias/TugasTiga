class Getdata {
  int price;
  String categories;
  int sellerId;
  String demografiWilayah;
  String description;
  String image;
  String jumlahAudien;
  String kecamatan;
  String kota;
  String provinsi;
  String location;
  String name;
  String targetAudien;
  String email;
  String firstname;
  String lastname;

  Getdata(
      {this.price,
      this.categories,
      this.sellerId,
      this.demografiWilayah,
      this.description,
      this.image,
      this.jumlahAudien,
      this.kecamatan,
      this.kota,
      this.provinsi,
      this.location,
      this.name,
      this.targetAudien,
      this.email,
      this.firstname,
      this.lastname});

  Getdata.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    categories = json['categories'];
    sellerId = json['seller_id'];
    demografiWilayah = json['demografi_wilayah'];
    description = json['description'];
    image = json['image'];
    jumlahAudien = json['jumlah_audien'];
    kecamatan = json['kecamatan'];
    kota = json['kota'];
    provinsi = json['provinsi'];
    location = json['location'];
    name = json['name'];
    targetAudien = json['target_audien'];
    email = json['email'];
    firstname = json['firstname'];
    lastname = json['lastname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price'] = this.price;
    data['categories'] = this.categories;
    data['seller_id'] = this.sellerId;
    data['demografi_wilayah'] = this.demografiWilayah;
    data['description'] = this.description;
    data['image'] = this.image;
    data['jumlah_audien'] = this.jumlahAudien;
    data['kecamatan'] = this.kecamatan;
    data['kota'] = this.kota;
    data['provinsi'] = this.provinsi;
    data['location'] = this.location;
    data['name'] = this.name;
    data['target_audien'] = this.targetAudien;
    data['email'] = this.email;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    return data;
  }
}