import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chatpage1.dart';

const dGreen = Color(0xFF2ac0a6);
const dWhite = Color(0xFFe8f4f2);
const dBlack = Color(0xFF34322f);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mloukhia Redesign',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: dBlack,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: dWhite,
              size: 30,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: dWhite,
                size: 30,
              ),
            ),
          ]),
      body: Column(
        children: [
          MenuSection(),
          FavoriteSection(),
          Expanded(
            child: MessageSection(),
          )
        ],
      ),

    );
  }
}

class MenuSection extends StatelessWidget {
  final List menuItems = ["Message", "Online", "Profil"];

  MenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 25),
          child: Row(
            children: menuItems.map((item) {
              return Container(
                margin: const EdgeInsets.only(right: 55),
                child: Text(
                  item,
                  style: GoogleFonts.inter(
                    color: Colors.white60,
                    fontSize: 29,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class FavoriteSection extends StatelessWidget {
  FavoriteSection({Key? key}) : super(key: key);

  final List favoriteContacts = [
    {
      'name': "Jotaro",
      'profile': 'images/avatar/a1.jpg',
    },
    {
      'name': "Kisuke",
      'profile': 'images/avatar/a2.jpg',
    },
    {
      'name': "Guts",
      'profile': 'images/avatar/a3.jpg',
    },
    {
      'name': "Netero",
      'profile': 'images/avatar/a4.jpg',
    },
    {
      'name': "Johnny Joestar",
      'profile': 'images/avatar/a5.jpg',
    },
    {
      'name': "Makima",
      'profile': 'images/avatar/a6.jpg',
    },
    {
      'name': "Hawks",
      'profile': 'images/avatar/a7.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: dBlack,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "Favorite contacts",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: null,
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: favoriteContacts.map((favorite) {
                  return Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: dWhite,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(favorite['profile']),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          favorite['name'],
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MessageSection extends StatelessWidget {
  MessageSection({Key? key}) : super(key: key);

  final List messages = [
    {
      'senderProfile': 'images/avatar/a2.jpg',
      'senderName': 'Kisuke',
      'message': 'BANKAI',
      'unRead': 0,
      'date': '16:35',
    },
    {
      'senderProfile': 'images/avatar/a3.jpg',
      'senderName': 'Guts',
      'message': 'Griffith...',
      'unRead': 2,
      'date': '16:03',
    },
    {
      'senderProfile': 'images/avatar/a4.jpg',
      'senderName': 'Netero',
      'message': 'Meruem tes mort',
      'unRead': 6,
      'date': '15:16',
    },
    {
      'senderProfile': 'images/avatar/a5.jpg',
      'senderName': 'Johnny Joestar',
      'message': 'Steel Ball Run ?',
      'unRead': 0,
      'date': '13:58',
    },
    {
      'senderProfile': 'images/avatar/a6.jpg',
      'senderName': 'Makima',
      'message': 'Borrow money please',
      'unRead': 5,
      'date': '10:42',
    },
    {
      'senderProfile': 'images/avatar/a7.jpg',
      'senderName': 'Hawks',
      'message': 'Plan contre All for one',
      'unRead': 2,
      'date': '09:30',
    },
    {
      'senderProfile': 'images/avatar/Melvin.png',
      'senderName': 'Dark FAFUKE',
      'message': 'Borrow money please',
      'unRead': 0,
      'date': '09:07',
    },
    {
      'senderProfile': 'images/avatar/a10.jpg',
      'senderName': 'ZORO',
      'message': 'SANTORYU OGI !!!!!',
      'unRead': 3,
      'date': '07:31',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: messages.map((message) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatPage(),
                ),
              );
            },
            splashColor: dBlack,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 10, top: 15),
              child: Row(children: [
                Container(
                  width: 62,
                  height: 62,
                  margin: EdgeInsets.only(right: 23),
                  decoration: BoxDecoration(
                      color: dBlack,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          message['senderProfile'],
                        ),
                      )),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                message['senderName'],
                                style: GoogleFonts.inter(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    message['message'],
                                    style: GoogleFonts.inter(
                                      color: Colors.black87,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(message['date']),
                              message['unRead'] != 0
                                  ? Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: dBlack,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Text(
                                    message['unRead'].toString(),
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ))
                                  : Container()
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        color: Colors.grey[400],
                        height: 1,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          );
        }).toList(),
      ),
    );
  }
}
