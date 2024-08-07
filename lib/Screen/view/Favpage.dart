import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/ExamProvider.dart';

class FavoritesPge extends StatelessWidget {
  const FavoritesPge({super.key});

  @override
  Widget build(BuildContext context) {
    ExamProvider examProvider =
        Provider.of<ExamProvider>(context, listen: true);
    ExamProvider examProviderfalse =
        Provider.of<ExamProvider>(context, listen: false);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                opacity: 9,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://tse2.mm.bing.net/th?id=OIP.faZDjSlwAgvRXr778l0-VgHaEn&pid=Api&P=0&h=180'))),
        child: ListView.builder(
          itemCount: examProvider.weather.length,
          itemBuilder: (context, index) {
            final quote =
                examProvider.weather[index].split('-').sublist(0, 1).join('-');
            final auther =
                examProvider.weather[index].split('-').sublist(1, 2).join('-');

            return Card(
              color: Colors.black12,
              child: ListTile(
                title: Text(quote,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                subtitle: Text(auther,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                trailing: InkWell(
                    onTap: () {
                      examProviderfalse.delete(index);
                    },
                    child: Icon(
                      CupertinoIcons.delete,
                      color: Colors.white,
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}
