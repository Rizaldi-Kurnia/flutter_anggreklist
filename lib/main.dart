import 'package:flutter/material.dart';

void main() {
  runApp(Anggreklist());
}

class Anggreklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Anggrek List";

    List<Choice> choices = const <Choice>[
      const Choice( title: 'Anggrek Kasut Kumis'
          , description: 'Genus Paphiopedilum diperkirakan memiliki 60 atau 70 spesies, anggrek ini banyak ditemui di Himalaya, Asia Selatan, Indonesia terutama di Sumatera, Jawa, Kalimantan dan Papua. Anggrek yang dijuluki sebagai anggrek kantung ini hidup ideal pada temperatur 18,5 sampai 20 derajat Celcius. Golongan ini juga dikenal sebagai anggrek ‘sandal nona’ atau ‘lady slipper’, dinamakan demikian karena bibir bunganya menyerupai sebuah kantung besar dan mirip sebuah sandal. Selain sebutan diatas anggrek ini juga sering diberi alias sebagai anggrek kasut kumis.'
          , imglink:'https://www.anggrekmania.com/wp-content/uploads/2018/10/Anggrek-Kasut-Kumis.jpg'),

      const Choice(title: 'Anggrek Shenzhen Nongke'
          , description: 'Anggrek yang ada sekarang ini ada yang tumbuh alami, ada juga yang hasil persilangan. Anggrek Shenzhen Nongke adalah hasil persilangan yang dilakukan oleh manusia. Anggrek Shenzhen Nongke dikembangkan oleh perusahaan agrikultur Shenzhen Nongke. Nama perusahaan itu kemudian menjadi nama bunga anggrek ini. Anggrek Shenzhen Nongke berwarna kuning kehijauan dengan bagian lidah berwarna merah hati bercampur putih. Seperti anggrek pada umumnya, anggrek ini memiliki 5 kelopak bunga.Para peneliti memerlukan waktu 8 tahun untuk membudidayakannya. Perlu waktu 5 tahun untuk melihat anggrek ini berbunga. Anggrek ini sangat langka. Pada tahun 2005, anggrek Shenzhen Nongke pernah terjual dalam lelang dengan harga 1,68 juta yuan atau sekitar 2 miliar rupiah. Itu menjadikan bunga ini sebagai anggrek termahal di dunia. Uniknya, nama orang yang membeli anggrek ini tidak diketahui.',
          imglink:'https://www.anggrekmania.com/wp-content/uploads/2018/10/Anggrek-Shenzhen-Nongke.jpg'),

      const Choice(title: 'Anggrek Tebu'
            ,description: 'Anggrek tebu (Grammatophyllum speciosum) merupakan anggrek terbesar, paling besar dan paling berat diantara jenis-jenis anggrek lainnya. Dalam satu rumpun dewasa, anggrek tebu dapat mencapai berat lebih dari 1 ton dan mempunyai panjang malai hingga 3 meter dengan diameter malai sekitar 1,5-2 cm. Itulah sebabnya tanaman ini layak menyandang predikat sebagai anggrek terbesar dan terberat atau anggrek raksasa.'
            ,imglink: 'https://www.anggrekmania.com/wp-content/uploads/2018/10/Anggrek-Tebu.jpg'),

      const Choice(title: 'Anggrek Hitam'
          , description: 'Anggrek hitam (Coelogyne pandurata) adalah spesies anggrek yang tumbuh di Semenanjung Malaya, Kalimantan, dan Sumatera. Anggrek hitam adalah maskot flora provinsi Kalimantan Timur. Saat ini, habitat asli anggrek hitam mengalami penurunan jumlah yang cukup besar karena semakin menyusutnya luas hutan di Kalimantan namun masih bisa ditemukan di cagar alam Kersik Luway dalam jumlah yang sedikit. Diperkirakan jumlah yang lebih banyak berada di tangan para kolektor anggrek.'
          , imglink:'https://www.anggrekmania.com/wp-content/uploads/2018/10/Anggrek-Hitam.jpg'),


      const Choice(title: 'Anggrek Bulan'
          , description: 'Anggrek Bulan (Phalaenopsis amabilis) atau puspa pesona adalah salah satu bunga nasional Indonesia. Pertama kali ditemukan oleh seorang ahli botani Belanda, Dr. C.L. Blume.Tanaman anggrek ini tersebar luas mulai dari Malaysia, Indonesia, Filipina, Papua, hingga ke Australia. Cara hidupnya secara epifit dengan menempel pada batang atau cabang pohon di hutan-hutan dan tumbuh subur hingga 600 meter di atas permukaan laut.Anggrek bulan termasuk dalam tanaman anggrek monopodial yang menyukai sedikit cahaya matahari sebagai penunjang hidupnya. Daunnya berwarna hijau dengan bentuk memanjang. Akar-akarnya berwarna putih dan berbentuk bulat memanjang serta terasa berdaging. Bunganya memiliki sedikit keharuman dan waktu mekar yang lama serta dapat tumbuh hingga diameter 10 cm lebih.'
          , imglink:'https://www.anggrekmania.com/wp-content/uploads/2018/10/Anggrek-Bulan.jpg'),
    ];


    return MaterialApp(
        title: title,
        home: Scaffold(appBar: AppBar(
          title: Text(title),
        ),
            body: new ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(choice: choices[index], item: choices[index]),
                  );
                }
                )
            )
        )
    );
  }
}

class Choice {
  final String title;
  final String description;
  final String imglink;

  const Choice({this.title, this.description, this.imglink});
}


class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key, this.choice, this.onTap, @required this.item, this.selected: false}
      ) : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;


  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            new Container(
                padding: const EdgeInsets.all(8.0),
                child:
                Image.network(
                    choice.imglink
                )),
            new Container(
              padding: const EdgeInsets.all(16.0),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(choice.title, style: Theme.of(context).textTheme.title),
                  Text(choice.description),
                ],
              ),

            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        )
    );
  }
}
