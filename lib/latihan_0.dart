class Mamalia {
  void menyusui() {
    print('Bisa Menyusui.....');
  }
}

mixin Kemampuan {
  var lari = '30 km/jam';
}

class Orang extends Mamalia with Kemampuan {
  String name;
  int age;

  Orang({this.name = 'Dion', this.age = 28});
}

tambah(double angka1, double angka2) {
  double hasil = angka1 + angka2;
  return hasil;
}

void main() {
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }

  print('Halo bos');

  print(tambah(11, 25));

  var orang1 = new Orang(name: 'Dion', age: 29);
  print(orang1.name);
  print(orang1.age);
  orang1.menyusui();
  print(orang1.lari);

  var orang2 = Orang(name: 'Andrew', age: 30);
  print(orang2.name);
  print(orang2.age);
}
