class Bored {
  String? _activity;
  String? _type;
  int? _participants;
  double? _price;
  String? _link;
  String? _key;
  double? _accessibility;

  Bored(
      {String? activity,
        String? type,
        int? participants,
        double? price,
        String? link,
        String? key,
        double? accessibility}) {
    if (activity != null) {
      this._activity = activity;
    }
    if (type != null) {
      this._type = type;
    }
    if (participants != null) {
      this._participants = participants;
    }
    if (price != null) {
      this._price = price;
    }
    if (link != null) {
      this._link = link;
    }
    if (key != null) {
      this._key = key;
    }
    if (accessibility != null) {
      this._accessibility = accessibility;
    }
  }

  String? get activity => _activity;
  set activity(String? activity) => _activity = activity;
  String? get type => _type;
  set type(String? type) => _type = type;
  int? get participants => _participants;
  set participants(int? participants) => _participants = participants;
  double? get price => _price;
  set price(double? price) => _price = price;
  String? get link => _link;
  set link(String? link) => _link = link;
  String? get key => _key;
  set key(String? key) => _key = key;
  double? get accessibility => _accessibility;
  set accessibility(double? accessibility) => _accessibility = accessibility;

  Bored.fromJson(Map<String, dynamic> json) {
    _activity = json['type'];
    _type = json['type'];
    _participants = json['participants'];
    _price = json['price'];
    _link = json['link'];
    _key = json['key'];
    _accessibility = json['accessibility'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['activity'] = this._activity;
    data['type'] = this._type;
    data['participants'] = this._participants;
    data['price'] = this._price;
    data['link'] = this._link;
    data['key'] = this._key;
    data['accessibility'] = this._accessibility;
    return data;
  }
}