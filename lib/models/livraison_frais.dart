import 'package:flutter/material.dart';

class Frais extends StatefulWidget {
  @override
  _DataTableExample createState() => _DataTableExample();
}

class _DataTableExample extends State<Frais> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Tableau des frais ',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Color(0xfffb5d04),
        ),
        body: ListView(children: <Widget>[
          Center(
              child: Text(
            'Les frais de Livraison',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
          DataTable(
            columns: [
              DataColumn(
                  label: Text('Ville ',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text('Frais de Livraison',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold))),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('Casablanca')),
                DataCell(Text('19 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('Tanger')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('Rabat')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('Beni Mellal')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('Bir Jadid')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('Agadir')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('Marrakech')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('Meknes')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('El Dakhla')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('Bojdour')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('Nador')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('El Kasr El Kabir')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('Settat')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('Kalaat El Sraghna')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('Essamara')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('Salé')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text(' Asfi')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('Azemour')),
                DataCell(Text('29 DH')),
              ]),
              DataRow(cells: [
                DataCell(Text('Tifelt')),
                DataCell(Text('29 DH')),
              ]),
            ],
          ),
        ]));
  }
}
