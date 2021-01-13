class Car {
  String name;
  int year;
  Car({this.name, this.year});

  @override
  String toString() {
    // TODO: implement toString
    return '${this.name} - ${this.year}';
  }

  Function handleEven;

  void doSomething() {
    print("car class");
    this.handleEven();
  }
}
