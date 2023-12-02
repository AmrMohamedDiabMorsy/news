

import 'package:flutter/material.dart';
import 'package:new_app/shared/network/remote/api_manager.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName= "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
      ),
      body: FutureBuilder(future: ApiManager.getSources(),
        builder: (context,snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(child: CircularProgressIndicator());
        }
        if(snapshot.hasError){
          return Text("something went Wrong");
        }
        var sourcse =snapshot.data?.sources??[];
        return ListView.builder(

            itemBuilder:(context , index){
              return Text(sourcse[index].name??"");
            },
            itemCount: sourcse.length,
        );
      },),
    );
  }
}
