/// score : 0.7039152
/// show : {"id":34653,"url":"https://www.tvmaze.com/shows/34653/all-american","name":"All American","type":"Scripted","language":"English","genres":["Drama","Sports"],"status":"Running","runtime":60,"averageRuntime":60,"premiered":"2018-10-10","ended":null,"officialSite":"http://www.cwtv.com/shows/all-american/","schedule":{"time":"20:00","days":["Monday"]},"rating":{"average":6},"weight":98,"network":{"id":5,"name":"The CW","country":{"name":"United States","code":"US","timezone":"America/New_York"},"officialSite":"https://www.cwtv.com/"},"webChannel":null,"dvdCountry":null,"externals":{"tvrage":null,"thetvdb":348200,"imdb":"tt7414406"},"image":{"medium":"https://static.tvmaze.com/uploads/images/medium_portrait/425/1064746.jpg","original":"https://static.tvmaze.com/uploads/images/original_untouched/425/1064746.jpg"},"summary":"<p>When a rising high school football player from South Central L.A. is recruited to play for Beverly Hills High, the wins, losses and struggles of two families from vastly different worlds — Compton and Beverly Hills — begin to collide. Inspired by the life of pro football player Spencer Paysinger.</p>","updated":1727235154,"_links":{"self":{"href":"https://api.tvmaze.com/shows/34653"},"previousepisode":{"href":"https://api.tvmaze.com/episodes/2851558","name":"I Do (Part II)"}}}

class Moviemodel {
  Moviemodel({
    num? score,
    Show? show,
  }) {
    _score = score;
    _show = show;
  }

  Moviemodel.fromJson(dynamic json) {
    _score = json['score'];
    _show = json['show'] != null ? Show.fromJson(json['show']) : null;
  }
  num? _score;
  Show? _show;
  Moviemodel copyWith({
    num? score,
    Show? show,
  }) =>
      Moviemodel(
        score: score ?? _score,
        show: show ?? _show,
      );
  num? get score => _score;
  Show? get show => _show;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['score'] = _score;
    if (_show != null) {
      map['show'] = _show?.toJson();
    }
    return map;
  }
}

/// id : 34653
/// url : "https://www.tvmaze.com/shows/34653/all-american"
/// name : "All American"
/// type : "Scripted"
/// language : "English"
/// genres : ["Drama","Sports"]
/// status : "Running"
/// runtime : 60
/// averageRuntime : 60
/// premiered : "2018-10-10"
/// ended : null
/// officialSite : "http://www.cwtv.com/shows/all-american/"
/// schedule : {"time":"20:00","days":["Monday"]}
/// rating : {"average":6}
/// weight : 98
/// network : {"id":5,"name":"The CW","country":{"name":"United States","code":"US","timezone":"America/New_York"},"officialSite":"https://www.cwtv.com/"}
/// webChannel : null
/// dvdCountry : null
/// externals : {"tvrage":null,"thetvdb":348200,"imdb":"tt7414406"}
/// image : {"medium":"https://static.tvmaze.com/uploads/images/medium_portrait/425/1064746.jpg","original":"https://static.tvmaze.com/uploads/images/original_untouched/425/1064746.jpg"}
/// summary : "<p>When a rising high school football player from South Central L.A. is recruited to play for Beverly Hills High, the wins, losses and struggles of two families from vastly different worlds — Compton and Beverly Hills — begin to collide. Inspired by the life of pro football player Spencer Paysinger.</p>"
/// updated : 1727235154
/// _links : {"self":{"href":"https://api.tvmaze.com/shows/34653"},"previousepisode":{"href":"https://api.tvmaze.com/episodes/2851558","name":"I Do (Part II)"}}

class Show {
  Show({
    num? id,
    String? url,
    String? name,
    String? type,
    String? language,
    List<String>? genres,
    String? status,
    num? runtime,
    num? averageRuntime,
    String? premiered,
    dynamic ended,
    String? officialSite,
    Schedule? schedule,
    Rating? rating,
    num? weight,
    Network? network,
    dynamic webChannel,
    dynamic dvdCountry,
    Externals? externals,
    Image? image,
    String? summary,
    num? updated,
    Links? links,
  }) {
    _id = id;
    _url = url;
    _name = name;
    _type = type;
    _language = language;
    _genres = genres;
    _status = status;
    _runtime = runtime;
    _averageRuntime = averageRuntime;
    _premiered = premiered;
    _ended = ended;
    _officialSite = officialSite;
    _schedule = schedule;
    _rating = rating;
    _weight = weight;
    _network = network;
    _webChannel = webChannel;
    _dvdCountry = dvdCountry;
    _externals = externals;
    _image = image;
    _summary = summary;
    _updated = updated;
    _links = links;
  }

  Show.fromJson(dynamic json) {
    _id = json['id'];
    _url = json['url'];
    _name = json['name'];
    _type = json['type'];
    _language = json['language'];
    _genres = json['genres'] != null ? json['genres'].cast<String>() : [];
    _status = json['status'];
    _runtime = json['runtime'];
    _averageRuntime = json['averageRuntime'];
    _premiered = json['premiered'];
    _ended = json['ended'];
    _officialSite = json['officialSite'];
    _schedule =
        json['schedule'] != null ? Schedule.fromJson(json['schedule']) : null;
    _rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
    _weight = json['weight'];
    _network =
        json['network'] != null ? Network.fromJson(json['network']) : null;
    _webChannel = json['webChannel'];
    _dvdCountry = json['dvdCountry'];
    _externals = json['externals'] != null
        ? Externals.fromJson(json['externals'])
        : null;
    _image = json['image'] != null ? Image.fromJson(json['image']) : null;
    _summary = json['summary'];
    _updated = json['updated'];
    _links = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }
  num? _id;
  String? _url;
  String? _name;
  String? _type;
  String? _language;
  List<String>? _genres;
  String? _status;
  num? _runtime;
  num? _averageRuntime;
  String? _premiered;
  dynamic _ended;
  String? _officialSite;
  Schedule? _schedule;
  Rating? _rating;
  num? _weight;
  Network? _network;
  dynamic _webChannel;
  dynamic _dvdCountry;
  Externals? _externals;
  Image? _image;
  String? _summary;
  num? _updated;
  Links? _links;
  Show copyWith({
    num? id,
    String? url,
    String? name,
    String? type,
    String? language,
    List<String>? genres,
    String? status,
    num? runtime,
    num? averageRuntime,
    String? premiered,
    dynamic ended,
    String? officialSite,
    Schedule? schedule,
    Rating? rating,
    num? weight,
    Network? network,
    dynamic webChannel,
    dynamic dvdCountry,
    Externals? externals,
    Image? image,
    String? summary,
    num? updated,
    Links? links,
  }) =>
      Show(
        id: id ?? _id,
        url: url ?? _url,
        name: name ?? _name,
        type: type ?? _type,
        language: language ?? _language,
        genres: genres ?? _genres,
        status: status ?? _status,
        runtime: runtime ?? _runtime,
        averageRuntime: averageRuntime ?? _averageRuntime,
        premiered: premiered ?? _premiered,
        ended: ended ?? _ended,
        officialSite: officialSite ?? _officialSite,
        schedule: schedule ?? _schedule,
        rating: rating ?? _rating,
        weight: weight ?? _weight,
        network: network ?? _network,
        webChannel: webChannel ?? _webChannel,
        dvdCountry: dvdCountry ?? _dvdCountry,
        externals: externals ?? _externals,
        image: image ?? _image,
        summary: summary ?? _summary,
        updated: updated ?? _updated,
        links: links ?? _links,
      );
  num? get id => _id;
  String? get url => _url;
  String? get name => _name;
  String? get type => _type;
  String? get language => _language;
  List<String>? get genres => _genres;
  String? get status => _status;
  num? get runtime => _runtime;
  num? get averageRuntime => _averageRuntime;
  String? get premiered => _premiered;
  dynamic get ended => _ended;
  String? get officialSite => _officialSite;
  Schedule? get schedule => _schedule;
  Rating? get rating => _rating;
  num? get weight => _weight;
  Network? get network => _network;
  dynamic get webChannel => _webChannel;
  dynamic get dvdCountry => _dvdCountry;
  Externals? get externals => _externals;
  Image? get image => _image;
  String? get summary => _summary;
  num? get updated => _updated;
  Links? get links => _links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['url'] = _url;
    map['name'] = _name;
    map['type'] = _type;
    map['language'] = _language;
    map['genres'] = _genres;
    map['status'] = _status;
    map['runtime'] = _runtime;
    map['averageRuntime'] = _averageRuntime;
    map['premiered'] = _premiered;
    map['ended'] = _ended;
    map['officialSite'] = _officialSite;
    if (_schedule != null) {
      map['schedule'] = _schedule?.toJson();
    }
    if (_rating != null) {
      map['rating'] = _rating?.toJson();
    }
    map['weight'] = _weight;
    if (_network != null) {
      map['network'] = _network?.toJson();
    }
    map['webChannel'] = _webChannel;
    map['dvdCountry'] = _dvdCountry;
    if (_externals != null) {
      map['externals'] = _externals?.toJson();
    }
    if (_image != null) {
      map['image'] = _image?.toJson();
    }
    map['summary'] = _summary;
    map['updated'] = _updated;
    if (_links != null) {
      map['_links'] = _links?.toJson();
    }
    return map;
  }
}

/// self : {"href":"https://api.tvmaze.com/shows/34653"}
/// previousepisode : {"href":"https://api.tvmaze.com/episodes/2851558","name":"I Do (Part II)"}

class Links {
  Links({
    Self? self,
    Previousepisode? previousepisode,
  }) {
    _self = self;
    _previousepisode = previousepisode;
  }

  Links.fromJson(dynamic json) {
    _self = json['self'] != null ? Self.fromJson(json['self']) : null;
    _previousepisode = json['previousepisode'] != null
        ? Previousepisode.fromJson(json['previousepisode'])
        : null;
  }
  Self? _self;
  Previousepisode? _previousepisode;
  Links copyWith({
    Self? self,
    Previousepisode? previousepisode,
  }) =>
      Links(
        self: self ?? _self,
        previousepisode: previousepisode ?? _previousepisode,
      );
  Self? get self => _self;
  Previousepisode? get previousepisode => _previousepisode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_self != null) {
      map['self'] = _self?.toJson();
    }
    if (_previousepisode != null) {
      map['previousepisode'] = _previousepisode?.toJson();
    }
    return map;
  }
}

/// href : "https://api.tvmaze.com/episodes/2851558"
/// name : "I Do (Part II)"

class Previousepisode {
  Previousepisode({
    String? href,
    String? name,
  }) {
    _href = href;
    _name = name;
  }

  Previousepisode.fromJson(dynamic json) {
    _href = json['href'];
    _name = json['name'];
  }
  String? _href;
  String? _name;
  Previousepisode copyWith({
    String? href,
    String? name,
  }) =>
      Previousepisode(
        href: href ?? _href,
        name: name ?? _name,
      );
  String? get href => _href;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = _href;
    map['name'] = _name;
    return map;
  }
}

/// href : "https://api.tvmaze.com/shows/34653"

class Self {
  Self({
    String? href,
  }) {
    _href = href;
  }

  Self.fromJson(dynamic json) {
    _href = json['href'];
  }
  String? _href;
  Self copyWith({
    String? href,
  }) =>
      Self(
        href: href ?? _href,
      );
  String? get href => _href;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = _href;
    return map;
  }
}

/// medium : "https://static.tvmaze.com/uploads/images/medium_portrait/425/1064746.jpg"
/// original : "https://static.tvmaze.com/uploads/images/original_untouched/425/1064746.jpg"

class Image {
  Image({
    String? medium,
    String? original,
  }) {
    _medium = medium;
    _original = original;
  }

  Image.fromJson(dynamic json) {
    _medium = json['medium'];
    _original = json['original'];
  }
  String? _medium;
  String? _original;
  Image copyWith({
    String? medium,
    String? original,
  }) =>
      Image(
        medium: medium ?? _medium,
        original: original ?? _original,
      );
  String? get medium => _medium;
  String? get original => _original;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['medium'] = _medium;
    map['original'] = _original;
    return map;
  }
}

/// tvrage : null
/// thetvdb : 348200
/// imdb : "tt7414406"

class Externals {
  Externals({
    dynamic tvrage,
    num? thetvdb,
    String? imdb,
  }) {
    _tvrage = tvrage;
    _thetvdb = thetvdb;
    _imdb = imdb;
  }

  Externals.fromJson(dynamic json) {
    _tvrage = json['tvrage'];
    _thetvdb = json['thetvdb'];
    _imdb = json['imdb'];
  }
  dynamic _tvrage;
  num? _thetvdb;
  String? _imdb;
  Externals copyWith({
    dynamic tvrage,
    num? thetvdb,
    String? imdb,
  }) =>
      Externals(
        tvrage: tvrage ?? _tvrage,
        thetvdb: thetvdb ?? _thetvdb,
        imdb: imdb ?? _imdb,
      );
  dynamic get tvrage => _tvrage;
  num? get thetvdb => _thetvdb;
  String? get imdb => _imdb;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tvrage'] = _tvrage;
    map['thetvdb'] = _thetvdb;
    map['imdb'] = _imdb;
    return map;
  }
}

/// id : 5
/// name : "The CW"
/// country : {"name":"United States","code":"US","timezone":"America/New_York"}
/// officialSite : "https://www.cwtv.com/"

class Network {
  Network({
    num? id,
    String? name,
    Country? country,
    String? officialSite,
  }) {
    _id = id;
    _name = name;
    _country = country;
    _officialSite = officialSite;
  }

  Network.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _country =
        json['country'] != null ? Country.fromJson(json['country']) : null;
    _officialSite = json['officialSite'];
  }
  num? _id;
  String? _name;
  Country? _country;
  String? _officialSite;
  Network copyWith({
    num? id,
    String? name,
    Country? country,
    String? officialSite,
  }) =>
      Network(
        id: id ?? _id,
        name: name ?? _name,
        country: country ?? _country,
        officialSite: officialSite ?? _officialSite,
      );
  num? get id => _id;
  String? get name => _name;
  Country? get country => _country;
  String? get officialSite => _officialSite;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    if (_country != null) {
      map['country'] = _country?.toJson();
    }
    map['officialSite'] = _officialSite;
    return map;
  }
}

/// name : "United States"
/// code : "US"
/// timezone : "America/New_York"

class Country {
  Country({
    String? name,
    String? code,
    String? timezone,
  }) {
    _name = name;
    _code = code;
    _timezone = timezone;
  }

  Country.fromJson(dynamic json) {
    _name = json['name'];
    _code = json['code'];
    _timezone = json['timezone'];
  }
  String? _name;
  String? _code;
  String? _timezone;
  Country copyWith({
    String? name,
    String? code,
    String? timezone,
  }) =>
      Country(
        name: name ?? _name,
        code: code ?? _code,
        timezone: timezone ?? _timezone,
      );
  String? get name => _name;
  String? get code => _code;
  String? get timezone => _timezone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['code'] = _code;
    map['timezone'] = _timezone;
    return map;
  }
}

/// average : 6

class Rating {
  Rating({
    num? average,
  }) {
    _average = average;
  }

  Rating.fromJson(dynamic json) {
    _average = json['average'];
  }
  num? _average;
  Rating copyWith({
    num? average,
  }) =>
      Rating(
        average: average ?? _average,
      );
  num? get average => _average;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['average'] = _average;
    return map;
  }
}

/// time : "20:00"
/// days : ["Monday"]

class Schedule {
  Schedule({
    String? time,
    List<String>? days,
  }) {
    _time = time;
    _days = days;
  }

  Schedule.fromJson(dynamic json) {
    _time = json['time'];
    _days = json['days'] != null ? json['days'].cast<String>() : [];
  }
  String? _time;
  List<String>? _days;
  Schedule copyWith({
    String? time,
    List<String>? days,
  }) =>
      Schedule(
        time: time ?? _time,
        days: days ?? _days,
      );
  String? get time => _time;
  List<String>? get days => _days;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = _time;
    map['days'] = _days;
    return map;
  }
}
