import 'package:bm/Screens/drawer_screen.dart';
import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  loginPage({super.key});

  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff6610f2).withOpacity(0.75),
        child: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Card(
            elevation: 10,
            child: SizedBox(
              child: Card(
                elevation: 10,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              child: Icon(
                        Icons.business_sharp,
                        size: 100,
                      ))),
                      Expanded(
                          child: Card(
                        elevation: 10,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                const Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Divider(
                                  thickness: 1,
                                  color: Colors.black12,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "UserName",
                                      style: TextStyle(fontSize: 22),
                                    ),
                                  ],
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black12)),
                                    child: TextField(
                                      controller: controller,
                                      decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.all(5),
                                          hintText: "Enter Email"),
                                    )),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Password",
                                      style: TextStyle(fontSize: 22),
                                    ),
                                  ],
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black12)),
                                    child: TextField(
                                      controller: controller1,
                                      decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.all(5),
                                          hintText: "Enter Password"),
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Checkbox(value: true, onChanged: (valu) {}),
                                    const Text("Remember")
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      child: MaterialButton(
                                        onPressed: () {
                                          if (controller.text == "admin" &&
                                              controller1.text == "admin") {
                                            Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const DrawerScreen()),
                                              (Route<dynamic> route) => false,
                                            );
                                          }
                                        },
                                        color: const Color(0xff6610f2),
                                        child: const Text(
                                          "Login",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
