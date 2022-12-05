import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApplicationConstants {
  static final baseUrl = '${dotenv.env['BASE_URL']}';
  static const splashLogo = 'assets/logo/spacex.svg';
  static const noSmallUrl =
      'https://www.shutterstock.com/image-vector/no-image-available-vector-illustration-600w-744886198.jpg';
  static const noLargeUrl =
      'https://www.pngkey.com/png/detail/829-8291321_open-red-url-icon-png.png';
}
