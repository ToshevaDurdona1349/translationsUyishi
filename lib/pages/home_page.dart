import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  PageController? _pageController;
  int _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          Container(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        color: Colors.yellow,
                        child: Text(
                          "Welcome".tr(),
                          style: TextStyle(fontSize: 26),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          color: Colors.green,
                          height: 45,
                          onPressed: () {
                            context.setLocale(Locale("en", "US"));
                          },
                          child: Text(
                            "English",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: MaterialButton(
                          color: Colors.red,
                          height: 45,
                          onPressed: () {
                            context.setLocale(Locale("ru", "RU"));
                          },
                          child: Text(
                            "Russian",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: MaterialButton(
                          color: Colors.blue,
                          height: 45,
                          onPressed: () {
                            context.setLocale(Locale("uz", "UZ"));
                          },
                          child: Text(
                            "Uzbek",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: MaterialButton(
                          color: Colors.orange,
                          height: 45,
                          onPressed: () {
                            context.setLocale(Locale("fr", "FR"));
                          },
                          child: Text(
                            "Franch",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        color: Colors.grey,
                        child: Text(
                          "Welcome".tr(),
                          style: TextStyle(fontSize: 26),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          color: Colors.green,
                          height: 45,
                          onPressed: () {
                            context.setLocale(Locale("en", "US"));
                          },
                          child: Text(
                            "English",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: MaterialButton(
                          color: Colors.red,
                          height: 45,
                          onPressed: () {
                            context.setLocale(Locale("ko", "KR"));
                          },
                          child: Text(
                            "Korean",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: MaterialButton(
                          color: Colors.blue,
                          height: 45,
                          onPressed: () {
                            context.setLocale(Locale("ja", "JP"));
                          },
                          child: Text(
                            "Japanece",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.g_translate), label: "Googl tranlation"),
          BottomNavigationBarItem(
              icon: Icon(Icons.translate), label: "Translation",),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow,
        backgroundColor: Colors.blue,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            _pageController!.animateToPage(index,
                duration: Duration(milliseconds: 200), curve: Curves.easeIn);
          });
        },
      ),
    );
  }
}
