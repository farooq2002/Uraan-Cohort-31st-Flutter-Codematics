class UserLocation {
  final Street street;
  final String city;
  final String state;
  final String country;
  final String postCode;
  final LocationCoordinates coordinates;
  final LocationTimeZone timeZone;

  UserLocation(
      {required this.street,
      required this.city,
      required this.state,
      required this.country,
      required this.postCode,
      required this.coordinates,
      required this.timeZone});

  factory UserLocation.fromMap(Map<String, dynamic> json) {
    final coordinates = LocationCoordinates(
        latitude: json['location']['coordinates']['latitude'],
        longitude: json['location']['coordinates']['longitude']);

    final timezone = LocationTimeZone(
        description: json['location']['timezone']['description'],
        offSet: json['location']['timezone']['offset']);
    final streeT =
        Street(name: json['location']['street']['name'], number: json['location']['street']['number']);

    return UserLocation(
        city: json['location']['city'],
        country: json['location']['country'],
        postCode: json['location']['postcode'].toString(),
        state: json['location']['state'],
        coordinates: coordinates,
        street: streeT,
        timeZone: timezone);
  }
}

class LocationCoordinates {
  final String latitude;
  final String longitude;

  LocationCoordinates({required this.latitude, required this.longitude});
}

class Street {
  final int number;
  final String name;
  Street({required this.name, required this.number});
}

class LocationTimeZone {
  final String offSet;
  final String description;
  LocationTimeZone({required this.description, required this.offSet});
}
