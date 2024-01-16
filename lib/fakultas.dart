import 'package:flutter/material.dart';
import 'model/model_fakultas.dart';

class fakultas extends StatefulWidget {
  @override
  _fakultasState createState() => _fakultasState();
}

class _fakultasState extends State<fakultas> {
  String inputValue = '';
  List<Fakultas> filteredData = [];

  void filterData(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredData.clear();
      } else {
        filteredData =
            dummyData.where((fakultas) => fakultas.name.toLowerCase().contains(query.toLowerCase())).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Card(
              elevation: 2.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            inputValue = value;
                            filterData(inputValue);
                          });
                        },
                        decoration: const InputDecoration(
                          hintText: 'Cari Fakultas...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                itemCount: filteredData.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage(filteredData[index].imageUrl),
                          ),
                          SizedBox(width: 20.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nama: ${filteredData[index].name}',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                                Text(
                                  'Jumlah Prodi: ${filteredData[index].jumlahProdi}',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                                Text(
                                  'Deskripsi: ${filteredData[index].deskripsi}',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
