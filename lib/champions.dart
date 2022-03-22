class Champion {
  Champion({
    required this.version,
    required this.id,
    required this.key,
    required this.name,
    required this.title,
    required this.blurb,
    required this.info,
    required this.image,
    required this.tags,
    required this.partype,
    required this.stats,
  });
  late final String version;
  late final String id;
  late final String key;
  late final String name;
  late final String title;
  late final String blurb;
  late final Info info;
  late final Image image;
  late final List<String> tags;
  late final String partype;
  late final Stats stats;

  Champion.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    id = json['id'];
    key = json['key'];
    name = json['name'];
    title = json['title'];
    blurb = json['blurb'];
    info = Info.fromJson(json['info']);
    image = Image.fromJson(json['image']);
    tags = List.castFrom<dynamic, String>(json['tags']);
    partype = json['partype'];
    stats = Stats.fromJson(json['stats']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['version'] = version;
    _data['id'] = id;
    _data['key'] = key;
    _data['name'] = name;
    _data['title'] = title;
    _data['blurb'] = blurb;
    _data['info'] = info.toJson();
    _data['image'] = image.toJson();
    _data['tags'] = tags;
    _data['partype'] = partype;
    _data['stats'] = stats.toJson();
    return _data;
  }
}

class Info {
  Info({
    required this.attack,
    required this.defense,
    required this.magic,
    required this.difficulty,
  });
  late final int attack;
  late final int defense;
  late final int magic;
  late final int difficulty;

  Info.fromJson(Map<String, dynamic> json) {
    attack = json['attack'];
    defense = json['defense'];
    magic = json['magic'];
    difficulty = json['difficulty'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['attack'] = attack;
    _data['defense'] = defense;
    _data['magic'] = magic;
    _data['difficulty'] = difficulty;
    return _data;
  }
}

class Image {
  Image({
    required this.full,
    required this.sprite,
    required this.group,
    required this.x,
    required this.y,
    required this.w,
    required this.h,
  });
  late final String full;
  late final String sprite;
  late final String group;
  late final int x;
  late final int y;
  late final int w;
  late final int h;

  Image.fromJson(Map<String, dynamic> json) {
    full = json['full'];
    sprite = json['sprite'];
    group = json['group'];
    x = json['x'];
    y = json['y'];
    w = json['w'];
    h = json['h'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['full'] = full;
    _data['sprite'] = sprite;
    _data['group'] = group;
    _data['x'] = x;
    _data['y'] = y;
    _data['w'] = w;
    _data['h'] = h;
    return _data;
  }
}

class Stats {
  Stats({
    required this.hp,
    required this.hpperlevel,
    required this.mp,
    required this.mpperlevel,
    required this.movespeed,
    required this.armor,
    required this.armorperlevel,
    required this.spellblock,
    required this.spellblockperlevel,
    required this.attackrange,
    required this.hpregen,
    required this.hpregenperlevel,
    required this.mpregen,
    required this.mpregenperlevel,
    required this.crit,
    required this.critperlevel,
    required this.attackdamage,
    required this.attackdamageperlevel,
    required this.attackspeedperlevel,
    required this.attackspeed,
  });
  late final int hp;
  late final int hpperlevel;
  late final int mp;
  late final int mpperlevel;
  late final int movespeed;
  late final int armor;
  late final double armorperlevel;
  late final int spellblock;
  late final double spellblockperlevel;
  late final int attackrange;
  late final int hpregen;
  late final int hpregenperlevel;
  late final int mpregen;
  late final int mpregenperlevel;
  late final int crit;
  late final int critperlevel;
  late final int attackdamage;
  late final int attackdamageperlevel;
  late final double attackspeedperlevel;
  late final double attackspeed;

  Stats.fromJson(Map<String, dynamic> json) {
    hp = json['hp'];
    hpperlevel = json['hpperlevel'];
    mp = json['mp'];
    mpperlevel = json['mpperlevel'];
    movespeed = json['movespeed'];
    armor = json['armor'];
    armorperlevel = json['armorperlevel'];
    spellblock = json['spellblock'];
    spellblockperlevel = json['spellblockperlevel'];
    attackrange = json['attackrange'];
    hpregen = json['hpregen'];
    hpregenperlevel = json['hpregenperlevel'];
    mpregen = json['mpregen'];
    mpregenperlevel = json['mpregenperlevel'];
    crit = json['crit'];
    critperlevel = json['critperlevel'];
    attackdamage = json['attackdamage'];
    attackdamageperlevel = json['attackdamageperlevel'];
    attackspeedperlevel = json['attackspeedperlevel'];
    attackspeed = json['attackspeed'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['hp'] = hp;
    _data['hpperlevel'] = hpperlevel;
    _data['mp'] = mp;
    _data['mpperlevel'] = mpperlevel;
    _data['movespeed'] = movespeed;
    _data['armor'] = armor;
    _data['armorperlevel'] = armorperlevel;
    _data['spellblock'] = spellblock;
    _data['spellblockperlevel'] = spellblockperlevel;
    _data['attackrange'] = attackrange;
    _data['hpregen'] = hpregen;
    _data['hpregenperlevel'] = hpregenperlevel;
    _data['mpregen'] = mpregen;
    _data['mpregenperlevel'] = mpregenperlevel;
    _data['crit'] = crit;
    _data['critperlevel'] = critperlevel;
    _data['attackdamage'] = attackdamage;
    _data['attackdamageperlevel'] = attackdamageperlevel;
    _data['attackspeedperlevel'] = attackspeedperlevel;
    _data['attackspeed'] = attackspeed;
    return _data;
  }
}
