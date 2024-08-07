
import 'package:adv_mid_exam_1/Screen/Api/ApiHelper.dart';
import 'package:adv_mid_exam_1/Screen/Model/ExamModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ExamProvider extends ChangeNotifier{

    ApiHelper apiHelper =ApiHelper();
    ExamModal? examModal;
    Future<ExamModal? > Jsonparsing () async {
      final  data = await apiHelper.fatchdata();
      ExamModal examModal = ExamModal.fromjson(data);
      return  examModal;

    }
   List <String>weather=[];
    Future<void> Setfav( String  qoute, String auther) async {

      String data = "$qoute - $auther";
      SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
      weather.add(data);
      sharedPreferences.setStringList('weather', weather);
    }
    Future<void>  Getfav() async {
      SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
      sharedPreferences.getStringList('weather');

    }


    void delete(int index){
      weather.removeAt(index);

    }
}