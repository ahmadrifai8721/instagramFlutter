import 'package:flutter/material.dart';
import 'package:instagram_fai/componen/Profile/AccountData.dart';

class Slidepanel extends StatelessWidget {
  const Slidepanel({super.key, required this.accounts});
  final List<Accountdata> accounts;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 4.0),
        decoration: const BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: accounts.length,
              itemBuilder: (context, i) {
                final account = accounts[i];
                return listAccount(account: account);
              },
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  margin: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Icon(Icons.add)),
                ),
                Text(
                  "Tambah Akun Instagram",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ));
  }
}

class listAccount extends StatelessWidget {
  const listAccount({super.key, required this.account});
  final Accountdata account;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 25,
          height: 25,
          margin: const EdgeInsets.all(10.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: Image.asset("assets/images/profile/${account.userImage}")),
        ),
        Text(
          account.username,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
