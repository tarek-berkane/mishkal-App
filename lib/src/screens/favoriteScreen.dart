import 'package:flutter/material.dart';
import 'package:mishkal/src/Controller.dart';
import 'package:mishkal/src/models/Client.dart';
import 'package:mishkal/src/models/DataBase.dart';
import 'package:mishkal/src/widget/SavedWidget.dart';


class FavoriteS extends StatefulWidget {
  @override
  _FavoriteS createState() => _FavoriteS();
}

class _FavoriteS extends State<FavoriteS> {
  List<Client> lc;
  
  @override
  void initState() {
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('المفضلة',
          style: TextStyle(
            color: Color(Con.getColor('text')),
            fontSize: Con.getSizeTitle()
          ),),
          centerTitle: true,
          backgroundColor: Color(Con.getColor('appbar')),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                DataBaseP.db.deleteAll();
                setState(() {});
              },
            )
          ],
        ),
        backgroundColor: Color(Con.getColor('background')),
        body: FutureBuilder<List<Client>>(
          future: DataBaseP.db.getAllClients(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Client>> snapshot) {
            if(snapshot.data==null) {
              return Center(child:Text('لا توجد عناصر محفوضة',
              style: TextStyle(
                color: Color(Con.getColor('text')),
                fontSize: Con.getSize()
              ),));
            }
            else if (snapshot.data.isNotEmpty) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: 
                (BuildContext context, int index) {
                  Client item = snapshot.data[index];
                  return SavedW(this,item.id,item.orginal, item.tachkil);
                });
            }else {
              return Center(child:Text('لا توجد عناصر محفوضة',
              style: TextStyle(
                color: Color(Con.getColor('text')),
                fontSize: Con.getSize()
              ),));
            }
          },
        ));
  }
}
