import 'package:flutter/material.dart';


void main() => runApp(const NavigationBarApp());
class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text("Посуточная аренда недвижимотси", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500, color: Color(0xFF01182E)),),

              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.public_outlined,color: Color(0xFFA7CBF9),),
                    hintText: "Где арендовать",
                    hintStyle: TextStyle(color: Color(0xFF0c59e0)),
                    border: InputBorder.none
                ),
              ),
              Divider(),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.access_time_filled,color: Color(0xFFA7CBF9),),
                    hintText: "Когда",
                    hintStyle: TextStyle(color: Color(0xFF0c59e0)),
                    border: InputBorder.none
                ),
              ),
              SizedBox(height: 50,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end,children: [Icon(Icons.home_outlined, color: Color(0xFF0c59e0), size: 50,), SizedBox(width: 80,)],),
                      Text("Мои заданиe", style: TextStyle(color: Color(0xFF0c59e0), fontSize: 23),),
                      Text("Предстоящие и предыдущие", style: TextStyle(color: Color(0xFFA5ABB4),fontSize: 20),)

                    ],
                  )
                ],
              ),
              SizedBox(height: 210,),
              nav()
            ],
          ),
        ),
      ),
    );
  }
}
Widget nav() {
  return BottomNavigationBar(
    selectedItemColor: Color(0xFF0c59e0),
    elevation: 0, //
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.key),
        label: 'Снять',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.discount_rounded),
        label: 'Сдать',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Профиль',
      ),
    ],
  );
}
