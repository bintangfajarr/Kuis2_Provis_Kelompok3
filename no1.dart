import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class Data {
  List<String> nama = [
    "Securinvest Sharia Sukuk Fund",
    "Start Stable Income Fund",
    "Syailendra Pendapatan Tetap"
  ];
  List<String> skor = ["4.1", "3.2", "4.5"];
  List<String> jenis = [
    "Pendapatan Tetap",
    "Pendapatan Tetap",
    "Pendapatan Tetap"
  ];
  List<String> imbalHasil = [
    "6.2%",
    "12.4%",
    "9.3%",
    "18.6%",
    "15.5%",
    "31.0%"
  ];
  List<String> hargaUnit = ["Rp.1080", "Rp.1070", "Rp.1500"];
  List<String> danaKelolaan = ["Rp.3.3T", "Rp.2,5T", "Rp.4.5T"];
}

class MyAppState extends State<MyApp> {
  String pilihanWaktu = "6 Bulan";
  Data data = Data();

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> waktu = [];

    var itm1 = const DropdownMenuItem<String>(
      value: "6 Bulan",
      child: Text("6 Bulan"),
    );
    var itm2 = const DropdownMenuItem<String>(
      value: "1 Tahun",
      child: Text("1 Tahun"),
    );
    waktu.add(itm1);
    waktu.add(itm2);

    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
            leading: FlutterLogo(),
            backgroundColor: Colors.blueGrey,
            title: Text('Quiz Flutter'),
            actions: <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton(
                  value: pilihanWaktu,
                  items: waktu,
                  onChanged: (String? newValue) {
                    setState(() {
                      if (newValue != null) {
                        pilihanWaktu = newValue;
                      }
                    });
                  },
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    padding: EdgeInsets.all(14),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                          height: 45,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(data.nama[0]),
                            Text("\u{2B50}" +
                                data.skor[0] +
                                "- " +
                                data.jenis[0]),
                          ],
                        ),
                        Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Imbal Hasil"),
                              Text(pilihanWaktu == "6 Bulan"
                                  ? data.imbalHasil[0]
                                  : data.imbalHasil[1]),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Harga Unit"),
                              Text(data.hargaUnit[0]),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Dana Kelolaan"),
                              Text(data.danaKelolaan[0]),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    padding: EdgeInsets.all(14),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                          height: 45,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(data.nama[1]),
                            Text("\u{2B50}" +
                                data.skor[1] +
                                "- " +
                                data.jenis[1])
                          ],
                        ),
                        Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Imbal Hasil"),
                              Text(pilihanWaktu == "6 Bulan"
                                  ? data.imbalHasil[2]
                                  : data.imbalHasil[3]),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Harga Unit"),
                              Text(data.hargaUnit[1]),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Dana Kelolaan"),
                              Text(data.danaKelolaan[1]),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    padding: EdgeInsets.all(14),
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                          height: 45,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(data.nama[2]),
                            Text("\u{2B50}" +
                                data.skor[2] +
                                "- " +
                                data.jenis[2])
                          ],
                        ),
                        Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Imbal Hasil"),
                              Text(pilihanWaktu == "6 Bulan"
                                  ? data.imbalHasil[4]
                                  : data.imbalHasil[5]),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Harga Unit"),
                              Text(data.hargaUnit[2]),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Dana Kelolaan"),
                              Text(data.danaKelolaan[2]),
                            ],
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonNamaKelompok extends StatelessWidget {
  const ButtonNamaKelompok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle_rounded),
      onPressed: () {
        // icon account di tap
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Kelompok 3'),
            content: const Text(
                'Muhammad Cahyana Bintang Fajar bintangfajar@upi.edu ; Muhammad Kamal Robbani kamalrobbani88@upi.edu'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonPerjanjian extends StatelessWidget {
  const ButtonPerjanjian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.access_alarm_rounded),
      onPressed: () {
        // icon setting ditap
        const snackBar = SnackBar(
          duration: Duration(seconds: 20),
          content: Text(
              'Kami berjanji  tidak akan berbuat curang dan atau membantu kelompok lain berbuat curang'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
