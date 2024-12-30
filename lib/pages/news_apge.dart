import 'package:flutter/material.dart';
import 'package:news_app/provider.dart';
import 'package:provider/provider.dart';

class News extends StatelessWidget {
  var cat;
   News({required this.cat});

  @override
  Widget build(BuildContext context) {
    var p=Provider.of<myp>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: p.obj?.news.length,
          itemBuilder: (context, index) {
            if (p.obj==null)
              {
                p.fech(cat);
                return Center(child: CircularProgressIndicator(color: Colors.black,),);
              }
            p.fech(cat);
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10.0,
                child: Column(
                  children: [
                    Image(image: NetworkImage(p.obj?.news[index]["urlToImage"]?? "Null Image")),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: 350,
                          child: Text(p.obj?.news[index]["title"]?? "Null Title")),
                    ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                           width: 350,
                           child: Text(p.obj?.news[index]["description"]?? "Null description")),
                     )
              ],
                ),
              ),
            );
          },
      ),
    );
  }
}
