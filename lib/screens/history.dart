import 'package:flutter/material.dart';

class History extends StatefulWidget {
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F'];
  final List<int> colorCodes = <int>[800, 600, 500, 700, 600, 500];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Histori Nilai'),
        ),
      ),
      body: Container(
        color: Color(0xFF736AB7),
        child: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical:10, horizontal: 15),
              decoration: BoxDecoration(boxShadow: [BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: new Offset(0.0, 10.0),
              )]),
              child: Center(
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                  color: Color(0xFF333366),
                  child: InkWell(
                    splashColor: Colors.black12.withAlpha(100),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Container(
                      width: 300,
                      height: 100,
                      child: Center(
                        child: ListTile(
                          title: Text(
                            'Materi ${entries[index]}', 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          subtitle: Text(
                            'Ini adalah materi ${entries[index]}', 
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 14
                            ),
                          ),
                          trailing: Icon(Icons.navigate_next),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            );
          }
        )
      )
    );
  }

}