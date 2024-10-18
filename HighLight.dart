import 'package:flutter/material.dart';

class HighLight extends StatefulWidget {
  const HighLight({super.key});

  @override
  State<HighLight> createState() => _HighLightState();
}

class _HighLightState extends State<HighLight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _searchField(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Favourite",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  Text(
                    "Add",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  const ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(right: 8.0, bottom: 400),
                      child: Icon(
                        Icons.star,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "Add Favourite",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    subtitle: Text(
                      "Add contacts to \'Favourites\' for quick access here and across Google services. This also help to improve your suggestion ",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, bottom: 12),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: double.infinity,
                      height: 40,
                      child: const Center(
                          child: Text(
                        "+ Add favourite",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recents",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  Icon(
                    Icons.more_vert_outlined,
                    size: 30,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Shahid",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      subtitle: Text(
                        "Today",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/shahidAliLeghari.jpeg"),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Shahid",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      subtitle: Text(
                        "Today",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/shahidAliLeghari.jpeg"),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Shahid",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      subtitle: Text(
                        "Today",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/shahidAliLeghari.jpeg"),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Shahid",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      subtitle: Text(
                        "Today",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/shahidAliLeghari.jpeg"),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Shahid",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      subtitle: Text(
                        "Today",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/shahidAliLeghari.jpeg"),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Shahid",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      subtitle: Text(
                        "Today",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/shahidAliLeghari.jpeg"),
                      ),
                      trailing: Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 34,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding _searchField() {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Search Contact",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 14,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/shahidAliLeghari.jpeg"),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
