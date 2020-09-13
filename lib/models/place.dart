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
  final int duration;
  final double distance;
  final bool under2km;
  final bool under5km;
  final bool morethan7km;

  const Place({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.description,
    @required this.duration,
    @required this.distance,
    @required this.under2km,
    @required this.under5km,
    @required this.morethan7km,
    @required this.imageUrl,
  });
}
