import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {

    const listItems=[ListTile(tileColor: Colors.blue,title: Text("BIRINCIL OGE"),),
      ListTile(tileColor: Colors.red,title: Text("ikincil OGE"),),
      ListTile(tileColor: Colors.green,title: Text("ucuncul OGE"),),];

    List<String> names=["ali","selim","murat","serpil"];

    return Scaffold(

      body: Center(

        child: FractionallySizedBox(

          widthFactor: 0.8,
          heightFactor: 0.3,
          child: ListView.separated(//separator
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(8),
            separatorBuilder: (context,_){

              return VerticalDivider(width: 5,color: Colors.pinkAccent,);
            }
            ,
            itemCount:names.length,
            itemBuilder: (context,index){
              var containers=names.map((name)=>Container(height: 100,width: 100,margin:EdgeInsets.all(5),padding: EdgeInsets.all(5),color:Colors.blue,child:Text(name))).toList();
              //  return listItems[index];
              return containers[index];
            },

          ),
        ),
      ),
// la hangisi

    );
  }
}
// la niye olmuyo push