import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.book,
                        size: 30.0,
                        color: Colors.deepPurple,
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Text(
                        "Information",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 30.0,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Text(
                        "TUITKF",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(
                    thickness: 3.0,
                    color: Colors.white,
                  )
                ],
              )),
          Container(
            margin: const EdgeInsets.all(16.0),
            child: const Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "ASOSIY",
                      style: TextStyle(fontSize: 17.0),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.info,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "HAQIDA",
                      style: TextStyle(fontSize: 17.0),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.settings,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "SOZLAMALAR",
                      style: TextStyle(fontSize: 17.0),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.library_add,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "KUTUBXONA",
                      style: TextStyle(fontSize: 17.0),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "CREATOR",
                      style: TextStyle(fontSize: 17.0),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 400.0,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 30.0,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "+998 (94) 485-66-03",
                    style: TextStyle(fontSize: 17.0),
                  ),
                  SizedBox(
                    width: 5.0,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
