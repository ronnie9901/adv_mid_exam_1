
import 'package:adv_mid_exam_1/Screen/Model/ExamModel.dart';
import 'package:adv_mid_exam_1/Screen/Provider/ExamProvider.dart';
import 'package:adv_mid_exam_1/Screen/view/Favpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ExamProvider examProvider=Provider.of<ExamProvider>(context,listen: true);
    ExamProvider examProviderfalse=Provider.of<ExamProvider>(context,listen: false);

    return Scaffold(

      body:  FutureBuilder(future: Provider.of<ExamProvider>(context).Jsonparsing(),builder: (context, snapshot) {

        if(snapshot.hasData){
           ExamModal? ha;
           ha= snapshot.data;
           return Container(height: double.infinity,width: double.infinity,decoration: BoxDecoration(color: Colors.black,image: DecorationImage(opacity:9 ,fit: BoxFit.cover,image: NetworkImage('https://tse1.mm.bing.net/th?id=OIP.BeSeISEmkAGH_-UYSvRVGQHaEK&pid=Api&P=0&h=180'))),
             child: PageView.builder(scrollDirection: Axis.vertical,itemBuilder: (context, index) => Center(
               child: ListTile(
                 leading: Text(ha!.quotesList[index].id.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                 title: Text(ha!.quotesList[index].quote,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                 subtitle: Text(ha!.quotesList[index].author,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                 trailing: InkWell(onTap: () {
                    examProviderfalse.Setfav(ha!.quotesList[index].author, ha!.quotesList[index].quote);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritesPge(),));

                 },child: Icon(Icons.favorite,color: Colors.white,)),
               ),
             ),),
           );
        }
        else if(snapshot.hasError){
          return Text('error : ${snapshot.hasError}');
        }
        else{
          return Center(child: CircularProgressIndicator());
        }


      },)

    );
  }
}
