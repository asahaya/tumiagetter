import 'package:flutter/material.dart';

class SelectGreenPage extends StatefulWidget {
  SelectGreenPage({Key? key}) : super(key: key);

  @override
  State<SelectGreenPage> createState() => _SelectGreenPageState();
}

class _SelectGreenPageState extends State<SelectGreenPage> {
  Color imageColor = Color(0xFF32CD32);

  Color textColor = Color(0xFFFFFFFF);

  final textToDo = ['111', '222', '333'];

  bool onCheck=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: ListView.builder(
              itemCount: textToDo.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
                  child: CheckboxListTile(
                    title: Text(textToDo[index]),
                      onChanged:(bool? value){
                        setState(() {
                          onCheck=value!;
                        });
                      },
                      value: onCheck,
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
    );
  }
}
