import 'package:flutter/material.dart';

class InterestData {
  String names;
  String pic;

  InterestData({
    this.names,
    this.pic,
  });
}

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class Interest {
  const Interest(this.name);
  final String name;
}
