import 'package:flutter/cupertino.dart';
import 'package:news_app/model.dart';
import 'package:news_app/serviecs.dart';

class myp extends ChangeNotifier
{
   model? obj;
   Future<void> fech(String cat)async
   {
     obj=await Api.Get(cat);
     notifyListeners();
   }
}