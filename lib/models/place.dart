import 'package:flutter/foundation.dart';

enum BestTimeToVisit {
  Morning,
  Afternoon,
  Evening,
}

class Place {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final String description;
  final List<String> travelWays;
  final int duration;
  final BestTimeToVisit bestTime;
  final bool dummyBoolean1;
  final bool dummyBoolean2;

  const Place({
    @required this.id,
    @required this.categories,
    @required this.travelWays,
    @required this.bestTime,
    @required this.title,
    @required this.description,
    @required this.duration,
    @required this.dummyBoolean1,
    @required this.dummyBoolean2,
    @required this.imageUrl,
  });
}
