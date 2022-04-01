import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

var image = "https://ds-assets.cdn.devapps.ru/SKj7QLa1UbIk3kFcmFmtAwz2PYhz017onz0EZBBdQeG9VsG.jpg";
var text = "Название статьи";
var date = "Date";
var cc = "0";

class Resourses extends StatefulWidget{
  @override
  _Resourses createState() => _Resourses();
}
const List cp1251 = [
  '\u0000',
  '\u0001',
  '\u0002',
  '\u0003',
  '\u0004',
  '\u0005',
  '\u0006',
  '\u0007',
  '\u0008',
  '\u0009',
  '\n',
  '\u000B',
  '\u000C',
  '\r',
  '\u000E',
  '\u000F',
  '\u0010',
  '\u0011',
  '\u0012',
  '\u0013',
  '\u0014',
  '\u0015',
  '\u0016',
  '\u0017',
  '\u0018',
  '\u0019',
  '\u001A',
  '\u001B',
  '\u001C',
  '\u001D',
  '\u001E',
  '\u001F',
  '\u0020',
  '\u0021',
  '\u0022',
  '\u0023',
  '\u0024',
  '\u0025',
  '\u0026',
  '\'',
  '\u0028',
  '\u0029',
  '\u002A',
  '\u002B',
  '\u002C',
  '\u002D',
  '\u002E',
  '\u002F',
  '\u0030',
  '\u0031',
  '\u0032',
  '\u0033',
  '\u0034',
  '\u0035',
  '\u0036',
  '\u0037',
  '\u0038',
  '\u0039',
  '\u003A',
  '\u003B',
  '\u003C',
  '\u003D',
  '\u003E',
  '\u003F',
  '\u0040',
  '\u0041',
  '\u0042',
  '\u0043',
  '\u0044',
  '\u0045',
  '\u0046',
  '\u0047',
  '\u0048',
  '\u0049',
  '\u004A',
  '\u004B',
  '\u004C',
  '\u004D',
  '\u004E',
  '\u004F',
  '\u0050',
  '\u0051',
  '\u0052',
  '\u0053',
  '\u0054',
  '\u0055',
  '\u0056',
  '\u0057',
  '\u0058',
  '\u0059',
  '\u005A',
  '\u005B',
  '\\',
  '\u005D',
  '\u005E',
  '\u005F',
  '\u0060',
  '\u0061',
  '\u0062',
  '\u0063',
  '\u0064',
  '\u0065',
  '\u0066',
  '\u0067',
  '\u0068',
  '\u0069',
  '\u006A',
  '\u006B',
  '\u006C',
  '\u006D',
  '\u006E',
  '\u006F',
  '\u0070',
  '\u0071',
  '\u0072',
  '\u0073',
  '\u0074',
  '\u0075',
  '\u0076',
  '\u0077',
  '\u0078',
  '\u0079',
  '\u007A',
  '\u007B',
  '\u007C',
  '\u007D',
  '\u007E',
  '\u007F',
  '\u0402',
  '\u0403',
  '\u201A',
  '\u0453',
  '\u201E',
  '\u2026',
  '\u2020',
  '\u2021',
  '\u20AC',
  '\u2030',
  '\u0409',
  '\u2039',
  '\u040A',
  '\u040C',
  '\u040B',
  '\u040F',
  '\u0452',
  '\u2018',
  '\u2019',
  '\u201C',
  '\u201D',
  '\u2022',
  '\u2013',
  '\u2014',
  '\uFFFD',
  '\u2122',
  '\u0459',
  '\u203A',
  '\u045A',
  '\u045C',
  '\u045B',
  '\u045F',
  '\u00A0',
  '\u040E',
  '\u045E',
  '\u0408',
  '\u00A4',
  '\u0490',
  '\u00A6',
  '\u00A7',
  '\u0401',
  '\u00A9',
  '\u0404',
  '\u00AB',
  '\u00AC',
  '\u00AD',
  '\u00AE',
  '\u0407',
  '\u00B0',
  '\u00B1',
  '\u0406',
  '\u0456',
  '\u0491',
  '\u00B5',
  '\u00B6',
  '\u00B7',
  '\u0451',
  '\u2116',
  '\u0454',
  '\u00BB',
  '\u0458',
  '\u0405',
  '\u0455',
  '\u0457',
  '\u0410',
  '\u0411',
  '\u0412',
  '\u0413',
  '\u0414',
  '\u0415',
  '\u0416',
  '\u0417',
  '\u0418',
  '\u0419',
  '\u041A',
  '\u041B',
  '\u041C',
  '\u041D',
  '\u041E',
  '\u041F',
  '\u0420',
  '\u0421',
  '\u0422',
  '\u0423',
  '\u0424',
  '\u0425',
  '\u0426',
  '\u0427',
  '\u0428',
  '\u0429',
  '\u042A',
  '\u042B',
  '\u042C',
  '\u042D',
  '\u042E',
  '\u042F',
  '\u0430',
  '\u0431',
  '\u0432',
  '\u0433',
  '\u0434',
  '\u0435',
  '\u0436',
  '\u0437',
  '\u0438',
  '\u0439',
  '\u043A',
  '\u043B',
  '\u043C',
  '\u043D',
  '\u043E',
  '\u043F',
  '\u0440',
  '\u0441',
  '\u0442',
  '\u0443',
  '\u0444',
  '\u0445',
  '\u0446',
  '\u0447',
  '\u0448',
  '\u0449',
  '\u044A',
  '\u044B',
  '\u044C',
  '\u044D',
  '\u044E',
  '\u044F'
];

class _Resourses extends State<Resourses>{
  var all_data;
  @override
  void initState() {
    super .initState();
  }
  @override
  Widget build(BuildContext context) {
    var item_list = <Widget>[
      const Spacer(),
    ];
    return FutureBuilder(
        builder: (context, snapshot){
          if (snapshot.hasData){
            all_data = snapshot.data;
            for (int i = 1; i < all_data[0]; ++i){
              text = all_data[1][i];
              image = all_data[2][i];
              date = all_data[3][i];
              cc = all_data[4][i];
              item_list.add(item(text, image, date, cc));
            }
          }
          return Wrap (
              direction: Axis.vertical,
              spacing: 10,
              children: item_list
          );
        },
      future: Data().update(),
    );
  }
}

class item extends StatelessWidget {
  var name = "";
  String im = "";
  String date_data = "";
  String comment_count = "";

  item(this.name, this.im, this.date_data, this.comment_count);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(13),
      child: Wrap(
        spacing: 15,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(2.0),
            child: Image.network(im, width: MediaQuery.of(context).size.width/2-20,),
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                const Spacer(),
                Row(
                  children: [
                    Text(date_data, style: const TextStyle(color: Color.fromARGB(255, 148, 157, 176), fontFamily: "tahoma"),),
                    const Spacer(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("c ", style: TextStyle(fontFamily: "fontello", color: Color.fromARGB(255, 181, 187, 200), fontSize: 9)),
                        Text(comment_count, style: const TextStyle(color: Color.fromARGB(255, 181, 187, 200))),
                      ],
                    )
                  ],
                )
              ],
            ),
            height: MediaQuery.of(context).size.width/2-59,
            width: MediaQuery.of(context).size.width/2-20,
          ),
        ],
      ),
    );
  }
}

class Data {
  int size = 0;
  List<String> data = [];
  List<String> data1 = [];
  List<String> data2 = [];
  List<String> data3 = [];

  Future<List<Object>> update() async {
    final a = encode((await http.Client().get(Uri.parse("https://4pda.to/"))).bodyBytes);
    final _data = RegExp('<article class="post .+\n.+', multiLine: true).allMatches(a);
    var _title;
    var _pic;
    var _date;
    var _cc;
    var _c1;
    size = _data.length;
    data.clear();
    data1.clear();
    data2.clear();
    data3.clear();
    for (var i in _data){
      var o = i.group(0);
      if (o != null){
        _title = RegExp('title=".+">').firstMatch(o)?.group(0);
        _pic = RegExp('src="https://.+\.jpg"').firstMatch(o)?.group(0);
        _date = RegExp('<em class="date">.+</em>').firstMatch(o)?.group(0);
        _cc = RegExp('title=".+</a><div class="p-description"><em').firstMatch(o)?.group(0);
        _c1 = RegExp('>.+</').firstMatch(_cc)?.group(0);
        data.add(_title.substring(7, _title.indexOf('">')));
        if (_pic != null){
          data1.add((_pic.substring(5, _pic.length-1)));
        } else {
          data1.add("https://res.cloudinary.com/teepublic/image/private/s--NkspL6KL--/t_Preview/b_rgb:ffffff,c_lpad,f_jpg,h_630,q_90,w_1200/v1527296869/production/designs/2723988_2.jpg");
        }
        data2.add(_date.substring(17, _date.length-5));
        data3.add(_c1.substring(1, _c1.length-2));
      }
    }
    return [size, data, data1, data2, data3];
  }

  String encode(Uint8List data){
    StringBuffer out = StringBuffer();
    for (int i in data){
      out.write(cp1251[i]);
    }
    return out.toString();
  }
}