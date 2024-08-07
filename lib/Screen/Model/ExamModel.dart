

class  ExamModal{

   late List <Quotes> quotesList=[];

  ExamModal({ required this.quotesList});

  factory ExamModal.fromjson(Map m1){
        return ExamModal( quotesList: (m1 ['quotes'] as List ).map((e) => Quotes.fromjson(e)).toList() );
  }
}

class Quotes{

     late int id =0;
   late  String quote,author;

    Quotes(this.id, this.quote, this.author);

    factory Quotes.fromjson(Map m1){
      return  Quotes(m1['id'], m1['quote'], m1['author']);
    }


}
