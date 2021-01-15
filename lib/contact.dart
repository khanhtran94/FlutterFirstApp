class Contact {
  String name;
  int tel;

  Contact({this.name, this.tel});

  @override
  String toString() {
    return 'name: $name \n tel: $tel ';
  }
}
