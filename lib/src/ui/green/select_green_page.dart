import 'package:flutter/material.dart';

class SelectGreenPage extends StatefulWidget {
  SelectGreenPage({Key? key}) : super(key: key);

  @override
  State<SelectGreenPage> createState() => _SelectGreenPageState();
}

class _SelectGreenPageState extends State<SelectGreenPage> {
  Color imageColor = Color(0xFF32CD32);
  Color textColor = Color(0xFFFFFFFF);

  final List<ListStatus> _list = <ListStatus>[
    ListStatus(textData: '筋トレ', isCheck: false),
    ListStatus(textData: '読書', isCheck: false),
    ListStatus(textData: 'HTML勉強', isCheck: false),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tsumiagetter',
      theme: ThemeData(
        primaryColor: Color(0x32CD32),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: imageColor,
          leading: Icon(Icons.arrow_back),
          title: Center(
            child: Text(
              '今日の積み上げ',
              style: TextStyle(color: textColor),
            ),
          ),
          actions: [
            Icon(Icons.add),
            SizedBox(width: 20),
          ],
        ),
        body: Column(
          children: [
            Expanded(
                flex: 9,
                child: ListView(
                    children: _list
                        .map(
                          (ListStatus items) => Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Color(0xFF000000),
                            )),
                            child: CheckboxListTile(
                                title: Text(items.textData!),
                                value: items.isCheck,
                                onChanged: (bool? checkValue) {
                                  setState(() {
                                    items.isCheck = checkValue;
                                  });
                                }),
                          ),
                        )
                        .toList())),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: imageColor,
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {},
                      child: Text('決定')),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListStatus {
  String? textData;
  bool? isCheck;

  ListStatus({this.textData, this.isCheck});
}
