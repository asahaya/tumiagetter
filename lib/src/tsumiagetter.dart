// ignore_for_file: inference_failure_on_function_return_type

import 'package:flutter/material.dart';

Color imageColor = const Color(0xFF32CD32);
Color textColor = const Color(0xFFFFFFFF);

final List<ListStatus> _list = <ListStatus>[
  ListStatus(textData: '筋トレ', isCheck: false),
  ListStatus(textData: '読書', isCheck: false),
  ListStatus(textData: 'HTML勉強', isCheck: false),
];

class Tumiagetter extends StatelessWidget {
  const Tumiagetter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SelectGreenPage(),
    );
  }
}


class SelectGreenPage extends StatelessWidget {
  const SelectGreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tsumiagetter',
      theme: ThemeData(
        primaryColor: const Color(0x0032cd32),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: imageColor,
          leading: const Icon(Icons.arrow_back),
          title: Center(
            child: Text(
              '今日の積み上げ',
              style: TextStyle(color: textColor),
            ),
          ),
          actions: const [
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
                      // ignore: use_decorated_box
                      (ListStatus items) => Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF000000),
                          ),
                        ),
                        child: CheckBoxListStatus(
                          textData: items.textData,
                          isCheck: items.isCheck,
                        ),
                        // CheckboxListTile(
                        //   activeColor: imageColor,
                        //   checkColor: const Color(0xFFFFFFFF),
                        //   title: Text(items.textData!),
                        //   value: items.isCheck,
                        //   onChanged: (bool? checkValue) {
                        //     setState(() {
                        //       items.isCheck = checkValue;
                        //     });
                        //   },
                        // ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: imageColor,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {},
                    child: const Text('決定'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CheckBoxListStatus extends StatefulWidget {
  CheckBoxListStatus({Key? key, this.textData, this.isCheck}) : super(key: key);

  String? textData;
  bool? isCheck;

  @override
  State<CheckBoxListStatus> createState() => _CheckBoxListStatusState();
}

class _CheckBoxListStatusState extends State<CheckBoxListStatus> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      activeColor: imageColor,
      checkColor: const Color(0xFFFFFFFF),
      title: Text(widget.textData ?? ''),
      value: widget.isCheck ?? false,
      onChanged: (bool? checkValue) {
        setState(() {
          widget.isCheck = checkValue ?? false;
        });
      },
    );
  }
}

class ListStatus {
  String? textData;
  bool? isCheck;

  // ignore: sort_constructors_first
  ListStatus({this.textData, this.isCheck});
}
