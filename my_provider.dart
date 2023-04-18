import 'package:flutter/material.dart';

class MyswitchProv extends ChangeNotifier {
  bool _switchValue = false;

  var listPekerjaan;

  Object? selectedValue;

  var jk;

  bool get switchValue => _switchValue;

  set switchValue(val) {
    _switchValue = val;
    notifyListeners();
  }

  final ThemeData _darkTheme =
      ThemeData(primarySwatch: Colors.purple, brightness: Brightness.dark);
  final ThemeData _lightTheme =
      ThemeData(primarySwatch: Colors.purple, brightness: Brightness.light);

  ThemeData getTheme() {
    return switchValue ? _darkTheme : _lightTheme;
  }
}

class mySpinnerItems extends ChangeNotifier {
  final List<String> _listPekerjaan = [
    'Dosen',
    'Mahasiswa',
    'Pns',
    'Presiden',
  ];

  List<String> get listPekerjaan => _listPekerjaan.toList();

  String? _selectedValue = null;

  String? get selectedValue => _selectedValue;

  set selectedValue(val) {
    _selectedValue = val;
    notifyListeners();
  }
}

// class MyUserData extends ChangeNotifier {
//   String _nama = '';
//   String get nama => _nama;
//   set nama(val) {
//     _nama = val;
//     notifyListeners();
//   }

//   String _jk = '';
//   String get jk => _jk;
//   set jk(val) {
//     jk = val == 'L' ? 'Laki-laki' : 'Perempuan';
//     notifyListeners();
//   }

// bool _setuju = false;
// bool get setuju => _setuju;
// set setuju(val) {
//   setuju = val;
//   notifyListeners();
// }
// }

