class StoryData {
  final int id;
  final String name;
  final String imageFileName;
  final bool isViewed;
  final bool isBFF;
  final bool isLive;

  StoryData({
    required this.id,
    required this.name,
    required this.imageFileName,
    required this.isViewed,
    required this.isBFF,
    required this.isLive,
  });
}

class StoriesDatabase {
  static List<StoryData> get stories {
    return [
      StoryData(
        id: 1001,
        name: 'Your Story',
        imageFileName: 'assets/images/profile/rifaiPP.JPG',
        isViewed: false,
        isBFF: false,
        isLive: false,
      ),
      StoryData(
        id: 1009,
        name: 'laila_tul2604',
        imageFileName: 'assets/images/profile/laila_tul2604.jpg',
        isViewed: false,
        isBFF: true,
        isLive: false,
      ),
      StoryData(
        id: 1004,
        name: 'refina9574 ',
        imageFileName: 'assets/images/profile/refina9574.jpg',
        isViewed: false,
        isBFF: false,
        isLive: false,
      ),
      StoryData(
        id: 1002,
        name: 'cindykzr',
        imageFileName: 'assets/images/profile/cindykzr.jpg',
        isViewed: false,
        isBFF: false,
        isLive: true,
      ),
      StoryData(
        id: 1002,
        name: 'Sayang ku',
        imageFileName: 'assets/images/profile/blank.jpg',
        isViewed: false,
        isBFF: false,
        isLive: true,
      ),
      StoryData(
        id: 1002,
        name: 'kiranafiiaa',
        imageFileName: 'assets/images/profile/kiranafiiaa.jpg',
        isViewed: false,
        isBFF: false,
        isLive: true,
      ),
      StoryData(
        id: 1003,
        name: 'luanluan.id',
        imageFileName: 'assets/images/profile/luanluan.id.jpg',
        isViewed: false,
        isBFF: false,
        isLive: false,
      ),
      StoryData(
        id: 1005,
        name: 'jamie.franc',
        imageFileName: 'assets/images/profile/blank.jpg',
        isViewed: false,
        isBFF: false,
        isLive: false,
      ),
      StoryData(
        id: 1006,
        name: 'maxjacob',
        imageFileName: 'assets/images/profile/shella_anandareal.jpg',
        isViewed: false,
        isBFF: false,
        isLive: false,
      ),
      StoryData(
        id: 1007,
        name: 'panggil.nela',
        imageFileName: 'assets/images/profile/panggil.nela.jpg',
        isViewed: false,
        isBFF: false,
        isLive: false,
      ),
      StoryData(
        id: 1008,
        name: 'meritasfya_',
        imageFileName: 'assets/images/profile/meritasfya_.jpg',
        isViewed: false,
        isBFF: false,
        isLive: false,
      ),
      StoryData(
        id: 1010,
        name: 'hani.kdh',
        imageFileName: 'assets/images/profile/hani.kdh.jpg',
        isViewed: true,
        isBFF: false,
        isLive: false,
      ),
      StoryData(
        id: 1011,
        name: 'fauzana1515',
        imageFileName: 'assets/images/profile/fauzana1515.jpg',
        isViewed: true,
        isBFF: false,
        isLive: false,
      ),
    ];
  }
}
