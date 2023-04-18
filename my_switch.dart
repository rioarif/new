import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_provider.dart';

class Myswitch extends StatefulWidget {
  const Myswitch({super.key});

  @override
  State<Myswitch> createState() => _MyswitchState();
}

class _MyswitchState extends State<Myswitch> {
  String? tmp;
  @override
  Widget build(BuildContext context) {
    var prov1 = Provider.of<MyswitchProv>(context);
    var prov2 = Provider.of<mySpinnerItems>(context);
    // var prov3 = Provider.of<MyswitchProv>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch DarkMode'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Dark Mode'),
              Switch(
                  value: prov1.switchValue,
                  onChanged: ((value) {
                    prov1.switchValue = value;
                  }))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text('Nama')),
              Expanded(child: TextField())
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(child: Text('Pekerjaan')),
            Expanded(
                child: DropdownButtonFormField(
                    items: List.generate(
                        prov2.listPekerjaan.length,
                        (index) => DropdownMenuItem(
                            value: prov2.listPekerjaan[index],
                            child: Text(prov2.listPekerjaan[index]))),
                    onChanged: ((value) {
                      prov2.selectedValue = (value);
                    })))
          ]),
           
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Text('L'),
          //     Radio(value: 'Laki-Laki', groupValue: prov3.jk, onChanged: ((value) {
          //       prov3.jk = value;
          //     })),
          //     Text('P')
          //     ],
          

          // ),
          //  Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Text('P'),
          //     Radio(value: 'Perempuan', groupValue: prov3.jk, onChanged: ((value) {
          //       prov3.jk = value;
          //     })
          // )],

          // )],
      ]),
    );
  }
}
