import 'package:contact_list_zuri_task_6/models/contact.dart';

class MockContact extends Contact {
  static fetchAll() {
    return Contact(contacts: <ContactDetail>[
      ContactDetail(
          name: "Mike Ricko",
          image: "assets/mike_pic.png",
          address: "address me is hrere",
          phoneNumber: "+23483452677213"),
      ContactDetail(
          name: "John Cambell",
          image: "assets/john_pic.png",
          address: "16 Apokoji rod",
          phoneNumber: "+1083976253"),
      ContactDetail(
          name: "Rose Cambell",
          image: "assets/don_pic.jpg",
          address: "Number 19 Horse street",
          phoneNumber: "+225906372180"),
    ]);
  }
}
