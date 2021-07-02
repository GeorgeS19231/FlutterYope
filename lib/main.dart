import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/ImageAdaptor/cachedImage.dart' as cached_image;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.6,
            child: FittedBox(
              fit: BoxFit.fill,
              child: ClipRect(
                child: Align(
                  alignment: Alignment(0, -1),
                  widthFactor: 0.8,
                  heightFactor: 0.5,
                  child: cached_image.Utilities.networkImage()
                ),
              ),
            ),
          ),

          Center(
            child: Text("Tom & Jerry ", style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.06, color: Colors.grey[600]),),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.25,
            child: Center(child: Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text("Alexandru cel Bun, fiul lui Roman I Muşatinul, vine la domnia Ţării Moldovei susţinut militar de Mircea cel Bătrîn (domn al Munteniei), care îşi dorea un aliat în scaunul de la Suceava. Predecesorul său, la domnia Moldovei, Iuga, este luat ostatic în Muntenia de Mircea cel Bătrîn, unde probabil şi va muri ulterior fără a reveni în Moldova A fost un domn paşnic, de unde şi porecla de cel Bun, un bun gospodar, continuînd politica de extindere dusă şi de Roman I Voievod. Ţara Moldovei s-a întins încetul cu încetul de la nucleul unde se formase, regiunea din nord-vest cu capitala la Suceava, cu marele oraş Baia din ce în ce mai mult. Moldova lui Alexandru cel Bun se întindea pînă la Marea Neagră, icluzînd şi Cetatea Albă la Nistru, mare cetăţuie, veche de pe vremea bizantinilor, deţinută apoi de negustorii genovezi. În momentul cînd Moldova devine stăpînă pe această regiune, Cetatea Albă este încă în mîna genovezilor care acceptă însă suzeranitatea voievodului moldovean. Mai tîrziu, în vremea lui Ştefan cel Mare, deasupra unei întrări pe cetate, se va afla stema Moldovei, capul de zimbru sau, mai corect, de bour, stemă ce se mai vede şi astăzi.Potrivit celor scrise de Grigore Ureche, Alexandru cel Bun a întreprins o importantă operă de organizare politică, administrativă şi ecleziastică a Moldovei. A încurajat comerţul, confirmînd negustorilor polonezi un larg privilegiu în 1408, act în care este atestat pentru prima oară şi oraşul Iaşi.Pînă la Alexandru cel Bun Voievod, numirea lui Iosif ca Mitropolit în Moldova nu era primită de Patriarhul de la Constantinopol care vroia să impună un mitropolit grec, fapt ce a creat o mare schismă între biserica moldovenească şi Patriarhia ecumenică (Patriarhia Constantinopolului). Meritul lui Alexandru cel Bun a fost obţinerea acordul Patriarhului de recunoaştere a lui Iosif ca mitropolit canonic asupra întregii Moldove în anul 1401. Delegatul în această privinţă a domnitorului a fost Grigore Ţamblac, originar din Tîrnova în Bulgaria, care a revenit de la Constantinopol cu un hrisov care recunoştea pe Iosif Mitropolit al Moldovei.",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.height*0.019,),textAlign: TextAlign.center,)),
            )),),

          Padding(

            padding: EdgeInsets.only(left: 30, right: 30),
            child: Container(
              width:  MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ButtonStyle(backgroundColor  : MaterialStateProperty.all(Colors.blue),),
                  onPressed: () {},
                  child: Text("See more details")),
            ),
          )

        ],
      ),
    );

  }
}
