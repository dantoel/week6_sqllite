class Item {
  int? _id;
  String? _name;
  int? _price;
  int? _stok;
  String? _kodebarang;
  get stok => this._stok;

  set stok(value) => this._stok = value;

  get kodebarang => this._kodebarang;

  set kodebarang(value) => this._kodebarang = value;

  get id => this._id;

  get name => this._name;

  set name(value) => this._name = value;

  get price => this._price;

  set price(value) => this._price = value;
  //Setter Getter

// konstruktor untuk set name dan price secara bersamaan
  Item(this._name, this._price, this._stok, this._kodebarang);
// konstruktor untuk konversi dari Map ke Item (database)
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._price = map['price'];
    this.stok = map['stok'];
    this.kodebarang = map['kodebarang'];
  }
// konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['price'] = price;
    map['stok'] = stok;
    map['kodebarang'] = kodebarang;
    return map;
  }
}
