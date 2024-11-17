class Accountdata {
  final String userImage;
  final String username;

  Accountdata({
    required this.userImage,
    required this.username,
  });
}

class AccountsDatabase {
  static List<Accountdata> get Accounts {
    return [
      Accountdata(userImage: "rifaiPP.JPG", username: "ahmadrifai411"),
      Accountdata(userImage: "blank.jpg", username: "_ahmadrifai"),
      Accountdata(userImage: "blank.jpg", username: "Revila"),
    ];
  }
}
