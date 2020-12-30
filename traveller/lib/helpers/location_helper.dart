const GOOGLE_API_KEY = 'AIzaSyCQowNrGHgxW2ms5cvPtfA9PzannMzWzC4';

class LocationHelper {
  static String generateLocationPreviewImage(
      {double lattitude, double longitude}) {
    return "https://maps.googleapis.com/maps/api/staticmap?center=&$lattitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:G%7C$lattitude,$longitude&key=$GOOGLE_API_KEY";
  }
}
