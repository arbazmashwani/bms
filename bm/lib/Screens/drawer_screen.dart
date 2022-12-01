import 'package:bm/Screens/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final List<Widget> _screens = [
    Container(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.amberAccent,
    ),
    Container(
      color: Colors.green,
    ),
  ];

  int _selectedindex = 0;

  callScreens() {
    return _screens[_selectedindex];
  }

  String value = "2";

  final List<bool> _selected = List.generate(4, (i) => false);
  List Draweroptions = [
    "Daily Books",
    "Special Books",
    "Utilities",
    "Financial statements"
  ];
  List<String> dailybooklist = [
    "Purchase Invoice",
    "Sale Invoice",
    "Receipt",
    "Payments",
    "Journal Vouchers"
  ];
  List<String> specialbooklist = [
    "Assets Ledger",
    "Expensive Ledger",
    "liablities Ledger",
    "Revenue Ledger",
    "Capital Ledger",
    "Stock Ledger",
    "Stock Manager",
    "Account Manager",
  ];
  List<String> utilitieslist = [
    "Add/Remove User",
    "Backup Restore",
  ];
  List<String> finaciallist = [
    "Trial Balance",
    "Income Statement",
    "Balance Sheet",
    "Age Trial Balance"
  ];

  final List<IconData> iconslist = [
    Icons.dashboard,
    Icons.verified,
    Icons.people,
    Icons.report,
  ];

  @override
  void initState() {
    _selected[0] = true;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
          child: Column(
        children: [
          Expanded(
            child: Container(
                height: 10,
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                        flex: int.parse(value),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 4, right: 4, top: 4),
                          child: Container(
                            color: Color(0xfff7f7f7),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: const [
                                  SizedBox(
                                    child: CircleAvatar(
                                      radius: 30,
                                      child: Icon(Icons.business_sharp),
                                    ),
                                  ),
                                  Text(
                                    "BUSSINESS MANAGER",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 9,
                        child: Container(
                          color: Color(0xffFFFFFF),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.notifications),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Welcome: ADMIN",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSPWhDcrmhvY86Q42jr73c-812hSyMhO3DxTXRt2H6uxgiLKsnktZsZfJ-14AvPaqR01k&usqp=CAU"),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                )),
          ),
          Divider(
            thickness: 1,
            color: Colors.black12,
          ),
          Expanded(
            flex: 10,
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6, right: 6),
                      child: Scaffold(
                        backgroundColor: const Color(0xfff7f7f7),
                        body: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 10),
                              child: SizedBox(
                                height: 220,
                                child: ListView.builder(
                                  itemCount: Draweroptions.length,
                                  itemBuilder: (_, i) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          left: 2, right: 2, top: 5),
                                      child: Container(
                                        color: _selected[i]
                                            ? const Color(0xffffffff)
                                            : null,
                                        child: ListTile(
                                          tileColor: _selected[i]
                                              ? const Color(0xffffffff)
                                              : null, // If current item is selected show blue color
                                          title: Row(
                                            children: [
                                              Icon(
                                                iconslist[i],
                                                color: _selected[i]
                                                    ? const Color(0xff773cb1)
                                                    : null,
                                              ),
                                              const SizedBox(width: 15),
                                              Text(
                                                Draweroptions[i],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: _selected[i]
                                                        ? Colors.black
                                                        : const Color(
                                                            0xff6d7885),
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                          onTap: () => setState(() {
                                            _selected[0] = false;
                                            _selected[1] = false;
                                            _selected[2] = false;
                                            _selected[3] = false;

                                            _selected[i] = !_selected[i];

                                            _selectedindex = i;
                                            callScreens();
                                          }), // Reverse bool value
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 10),
                              child: Divider(
                                thickness: 1,
                                color: Colors.black12,
                              ),
                            ),
                            const SizedBox(
                              height: 100,
                            ),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      width: 1, color: Colors.black12),
                                ),
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => loginPage()),
                                    (Route<dynamic> route) => false,
                                  );
                                },
                                child: const Text(
                                  "logout",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      ),
                    )),
                Expanded(flex: 2, child: screenss()),
                Expanded(
                    flex: 8,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 0, left: 10, right: 10),
                      child: Container(
                        color: Color(0xfff7f7f7),
                      ),
                    )),
              ],
            ),
          )
        ],
      )),
    );
  }

  screens_children(int length, List<String> list) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: length,
                itemBuilder: (_, i) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.ac_unit),
                        title: Text(
                          list[i],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 12),
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.black12,
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  screenss() {
    if (_selected[0] == true) {
      return screens_children(dailybooklist.length, dailybooklist);
    } else if (_selected[1] == true) {
      return screens_children(specialbooklist.length, specialbooklist);
    } else if (_selected[2] == true) {
      return screens_children(utilitieslist.length, utilitieslist);
    } else if (_selected[3] == true) {
      return screens_children(finaciallist.length, finaciallist);
    }
  }
}
