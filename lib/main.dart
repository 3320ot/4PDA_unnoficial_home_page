import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'resourses.dart';

const Color main_color = Color.fromARGB(255, 0, 114, 188);
const Color menu_color = Color.fromARGB(255, 9, 152, 198);
List<Widget> menu = List<Widget>.empty(growable: true);
bool menu1 = false;
bool menu2 = false;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: HomeBody()
          ),
          // bottomNavigationBar: Stack(
          //   alignment: AlignmentDirectional.topCenter,
          //   children: [
          //     Image.network("https://ds-assets.cdn.devapps.ru/UUBAZrot0mJntaW1KZGmkUz2KIoNSX63z1Gz2CJ69tjAHfVZ9FliMyJfkem.jpg"),
          //     Row(
          //       children: [
          //         const Spacer(),
          //         Container(
          //           padding: EdgeInsets.fromLTRB(0, 0, MediaQuery.of(context).size.width/34, 0),
          //           child: Image.asset("images/close_ad.png", width: 24,),
          //         )
          //       ],
          //     )
          //   ],
          // ), //Реклама отменяется
        )
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  _Menu createState() => _Menu();
}

class _Menu extends State<Menu>{
  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
  @override
  Widget build(BuildContext context) {
    menu.clear();
    Color MenuColor;
    Color MenuColor1;

    if(!menu1){ MenuColor = main_color; }
    else{ MenuColor = menu_color; }
    if(!menu2){ MenuColor1 = main_color; }
    else{ MenuColor1 = menu_color; }

    if(menu1){
      var a = ["Смартфоны", "Ноутбуки", "Аудио", "DevDB", "ТВ и Мониторы", "Бытовая техника", "ПК-железо"];
      var b = ["Новости, анонсы, рекомендации", "Новости, анонсы, рекомендации", "Новости, анонсы, рекомендации", "Каталог устройств", "Новости, анонсы, рекомендации", "Новости, анонсы, рекомендации", "Новости, анонсы, рекомендации"];
      for (int i = 0; i < 7; ++i){
        menu.add(
            Container(
                color: menu_color,
                padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 14
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(a[i], style: const TextStyle(color: Colors.white, fontSize: 17, fontStyle: FontStyle.normal), textAlign: TextAlign.start,),
                        Text(b[i], style: const TextStyle(color: Colors.white),),
                      ],
                    ),
                    const Spacer()
                  ],
                )
            )
        );
      }
    }
    if(menu2){
      var a = ["Смартфоны", "Планшеты", "Умные часы", "Аксессуары", "Ноутбуки", "Аудио"];
      var b = "Выбираем, тестируем, рассказываем";
      for (int i = 0; i < 6; ++i){
        menu.add(
            Container(
                color: menu_color,
                padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 14
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(a[i], style: const TextStyle(color: Colors.white, fontSize: 17, fontStyle: FontStyle.normal), textAlign: TextAlign.start,),
                        Text(b, style: const TextStyle(color: Colors.white),),
                      ],
                    ),
                    const Spacer()
                  ],
                )
            )
        );
      }
    }
    return ColoredBox(
      color: main_color,
      child: Column(
        children: [
          Row(
              children: [
                Container(width: 5,),
                TextButton(
                    onPressed: (){
                      menu1 = !menu1;
                      menu2 = false;
                      setState(() {});
                    },
                    style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      backgroundColor: MenuColor,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                      minimumSize: Size.zero,
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                    ),
                    child: const Text("ТЕХНИКА  ᵥ", style: TextStyle(color: Colors.white, fontFamily: "fontello"))
                ),
                TextButton(
                    onPressed: (){
                      menu2 = !menu2;
                      menu1 = false;
                      setState(() {});
                    },
                    style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      backgroundColor: MenuColor1,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                    ),
                    child: const Text("ОБЗОРЫ  ᵥ", style: TextStyle(color: Colors.white, fontFamily: "fontello"))
                ),
                TextButton(
                    onPressed: (){
                      setState(() {});
                    },
                    style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      backgroundColor: main_color,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                      minimumSize: Size.zero,
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                    ),
                    child: const Text("ИГРЫ", style: TextStyle(color: Colors.white, fontFamily: "fontello"))
                ),
                TextButton(
                    onPressed: (){
                      setState(() {});
                    },
                    style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      backgroundColor: main_color,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                      minimumSize: Size.zero,
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                    ),
                    child: const Text("ФОРУМ", style: TextStyle(color: Colors.white, fontFamily: "fontello"))
                ),
                const Spacer(),
                SvgPicture.string("""<svg style="height:1.8em;width:auto;position:relative;" width="269" height="67" viewBox="0 0 269 67" fill="none" xmlns="http://www.w3.org/2000/svg"><rect width="269" height="67" rx="33" fill="#192569"></rect><path d="m65.26 20.48h-5.26v25.7h5.26v-10.42h11.54v10.42h5.09v-25.7h-5.09v10.42h-11.54zm40.38 14.76c0 4.167-2.036 6.425-5.769 6.425s-5.77-2.257-5.77-6.598v-14.59h-5.09v14.76c0 7.293 3.903 11.46 10.86 11.46s10.86-4.167 10.86-11.63v-14.59h-5.09zm49.21-14.76-5.769 17.71-5.6-17.71h-5.43l8.824 25.7h4.242l5.769-16.84 5.6 16.84h4.411l8.654-25.7h-5.26l-5.599 17.71-5.77-17.71zm39.2 9.897h-9.333v-5.209h13.58v-4.688h-18.66v25.7h19.17v-4.688h-14.08v-6.425h9.333zm10.86-9.897h5.09v25.7h-5.09zm-72.62 20.32 2.206 5.383h5.43l-11.03-25.7-0.169-0.1737h-4.412l-11.03 25.87h5.26l2.206-5.036 0.169-0.3473zm-5.769-13.89 3.563 8.682 0.17 0.5209h-7.806l0.17-0.5209z" fill="#fff"></path></svg>""", height: 22),
                const Spacer(),
              ]
          ),
          Stack(
            children: [
              Wrap(
                children: [
                  ColoredBox(
                    color: const Color.fromARGB(255, 34, 51, 69),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 5,
                        children: [
                          Container(width: 3),
                          const Text("Популярные бренды", style: TextStyle(color: Color.fromARGB(255, 95, 102, 106), fontSize: 8)),
                          TextButton(
                              onPressed: (){},
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: const Size(54, 0),
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                              ),
                              child: Text("Huawei".toUpperCase(), style: const TextStyle(color: Color.fromARGB(255, 95, 102, 106), fontSize: 9))
                          ),
                          TextButton(
                              onPressed: (){},
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: const Size(54, 0),
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                              ),
                              child: Text("Samsung".toUpperCase(), style: const TextStyle(color: Color.fromARGB(255, 95, 102, 106), fontSize: 9))
                          ),
                          TextButton(
                              onPressed: (){},
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: const Size(54, 0),
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                              ),
                              child: Text("Honor".toUpperCase(), style: const TextStyle(color: Color.fromARGB(255, 95, 102, 106), fontSize: 9))
                          ),
                          TextButton(
                              onPressed: (){},
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: const Size(54, 0),
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                              ),
                              child: Text("Vivo".toUpperCase(), style: const TextStyle(color: Color.fromARGB(255, 95, 102, 106), fontSize: 9))
                          ),
                          TextButton(
                              onPressed: (){},
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                minimumSize: const Size(54, 0),
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                              ),
                              child: Text("Xiaomi".toUpperCase(), style: const TextStyle(color: Color.fromARGB(255, 95, 102, 106), fontSize: 9))
                          ),
                        ],
                      ),
                    ),
                  ),
                  ColoredBox(
                    color: const Color.fromARGB(255, 34, 51, 69),
                    child: Resourses(),)
                  ,
                ],
              ),
              Column(
                children: menu,
              ),
            ],
          ),
        ],
      )
    );
  }

}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ColoredBox(
            color: const Color.fromARGB(255, 34, 51, 69),
            child: Column(
              children: [
                Image.network("https://ds-assets.cdn.devapps.ru/aPMDS9c4oUz0WMtct9ciHwBPvPz1Txz0C1z03k0Z8WH9SXsp7sYCvA9Cwz0b3.jpg"),
                Container(
                  color: main_color,
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Row(
                    children: [
                      const Text(
                        "4",
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: "fontello",
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          backgroundColor: main_color,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        color: Colors.white,
                        child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width/1.8,
                                  height: 24,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      hintText: "поиск по сайту",
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      hintStyle: TextStyle(
                                        fontSize: 13,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "S",
                                  style: TextStyle(
                                      fontFamily: "fontello",
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.normal,
                                      color: main_color,
                                      backgroundColor: Colors.white
                                  ),
                                )
                              ],
                            )),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        color: menu_color,
                        child: const Text(
                          "⏎",
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: "fontello",
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.normal,
                            color: Colors.white,
                            backgroundColor: menu_color,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Menu(),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Wrap(
                    spacing: 4,
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 0, 114, 188),
                        child: const Center(child: Text("1", style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: "tahoma"))),
                        width: 36,
                        height: 36,
                      ),
                      const SizedBox(
                        child: Center(child: Text("2", style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: "tahoma"))),
                        width: 36,
                        height: 36,
                      ),
                      const SizedBox(
                        child: Center(child: Text("3", style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: "tahoma"))),
                        width: 36,
                        height: 36,
                      ),
                      const SizedBox(
                        child: Center(child: Text("4", style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: "tahoma"))),
                        width: 36,
                        height: 36,
                      ),
                      const SizedBox(
                        child: Center(child: Text("5", style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: "tahoma"))),
                        width: 36,
                        height: 36,
                      ),
                      const SizedBox(
                        child: Center(child: Text("6", style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: "tahoma"))),
                        width: 36,
                        height: 36,
                      ),
                      const SizedBox(
                        child: Center(child: Text("7", style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: "tahoma"))),
                        width: 36,
                        height: 36,
                      ),
                      const SizedBox(
                        child: Center(child: Text('›', style: TextStyle(color: Colors.white, fontSize: 24, fontFamily: "fontello"))),
                        width: 36,
                        height: 36,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 60),
                child: DefaultTextStyle(
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 114, 188)
                  ),
                  child: Wrap(
                    spacing: 12,
                    direction: Axis.vertical,
                    children: const [
                      Text("О проекте"),
                      Text("Обратная связь"),
                      Text("Вакансии"),
                      Text("Условия предоставления информации"),
                      Text("Отказ от ответственности"),
                      Text(""),
                      Text("Сотрудничество"),
                      Text("Размещение рекламы"),
                      Text("Для правообладателей"),
                      Text(""),
                      Text("Cooperation information in English"),
                    ],
                  ),
                )
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 24),
                child: DefaultTextStyle(
                  style: const TextStyle(color: Color.fromARGB(255, 0, 114, 188)),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("DevDB", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                          Text("Каталог мобильных\nустройств", style: TextStyle(fontSize: 13)),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("DevFAQ", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                          Text("База знаний по\nмобильным устройствам", style: TextStyle(fontSize: 13)),
                        ],
                      ),
                    ],
                  ),
                )
              )
            ],
          ),
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 0, 114, 188),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: DefaultTextStyle(
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("4", style: TextStyle(fontFamily: "fontello", fontSize: 25),),
                    Text(""),
                    Text("© 2005-2022, «4PDA».\n4PDA® - зарегистрированный товарный знак.", style: TextStyle(fontSize: 12))
                  ],
                ),
              )
            ),
          )
        ],
      )
    );
  }
}