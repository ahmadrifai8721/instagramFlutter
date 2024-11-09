import 'dart:convert';

import 'package:random_name_generator/random_name_generator.dart';
import 'package:http/http.dart' as http;

class FeedsData {
  final String username;
  final String userImage;
  final String postImage;
  final String caption;

  FeedsData({
    required this.username,
    required this.userImage,
    required this.postImage,
    required this.caption,
  });
}

var randomNama = RandomNames(Zone.uk);
final String quoteURL = "https://api.adviceslip.com/advice";
String quote = 'Random Quote';
Future<void> generateQuote() async {
  try {
    final response = await http.get(Uri.parse(quoteURL));
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);

      quote = result["slip"]["advice"];
    } else {
      quote = 'Failed to fetch quote';
    }
  } catch (e) {
    quote = 'Failed to fetch quote';
  }
}

final List<String> captions = [
  "Life is an adventure, let's live it to the fullest",
  "The beauty of the beach with white sand and calm waves, dotted with green rocks and moss that adds to the charm of nature.",
  "Indulging in a delightful array of traditional Indonesian dishes—each bite tells a story of rich flavors and culinary heritage. 🍚🍽️✨",
  "Indulging in the rich flavors of Gado-Gado, a true taste of Indonesia. 🌿🥜🍲",
  "Embracing the vibrant outdoors with a touch of elegance and comfort. 🌼✨",
  "Rocking the casual look while proudly representing Catur Tunggal. 💪✨",
  "Collaborating in style. Turning ideas into reality, one step at a time. 💡✨",
  "Embracing the harmony of tradition and innovation with every step. 🌸💻",
  "Finding tranquility in nature's hidden gems. 💦🍃✨",
  "Bold colors and serene surroundings—finding beauty in the simple moments. 🍃❤️",
  "Elegance in simplicity, making every detail count. 🌸✨",
  "Embracing the art on my skin and the strength within. 🖤✨",
  "Join my live in Biggo Live",
  "Depo to my site PJ87.Judi",
  "Sunlit moments and summer vibes. Capturing the essence of tranquility. 🌞✨",
  "Tranquility along the river, where tradition and nature meet in perfect harmony. 🌄✨",
  "Lost in nature's tranquility, where the horizon meets my dreams. 🌿✨",
  "Embracing the city vibes with a splash of color in every strand. 🌈✨",
  "Grace in every move, celebrating our rich cultural heritage. 🌺🎭✨",
  "Heavenly vibes with a touch of the macabre. Celebrating the beauty in contrasts. 😇💀✨"
];

final List<FeedsData> posts = List.generate(20, (i) {
  return FeedsData(
      username: randomNama.womanFullName(),
      userImage: "ppc${i + 1}.jpg",
      postImage: "content${i + 1}.jpg",
      caption: captions[i]);
});
