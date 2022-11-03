class Contact {
  List<ContactDetail>? contacts;

  Contact({this.contacts});

  // Contact.fromJson(Map<String, dynamic> json) {
  //   if (json['contacts'] != null) {
  //     contacts = <ContactDetail>[];
  //     json['contacts'].forEach((v) {
  //       contacts!.add(ContactDetail.fromJson(v));
  //     });
  //   }
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   if (contacts != null) {
  //     data['contacts'] = contacts!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }

}

// Contacts
class ContactDetail {
  String? name;
  String? image;
  String? address;
  String? phoneNumber;

  ContactDetail({this.name, this.image, this.address, this.phoneNumber});

//  ContactDetail.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     image = json['image'];
//     address = json['address'];
//     phoneNumber = json['phoneNumber'];
//   }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['name'] = name;
  //   data['image'] = image;
  //   data['address'] = address;
  //   data['phoneNumber'] = phoneNumber;
  //   return data;
  // }

}
