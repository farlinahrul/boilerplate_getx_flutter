import 'package:flutter/material.dart';
import 'package:boilerplate_getx_flutter/resources/resources.dart';

abstract class SMAppBar {

  /// Gunakan `Primary Appbar` untuk membuat AppBar default secara global
  /// agar jenis AppBar utama terpusat dan modular
  /// *boleh di-edit sesuai kebutuhan*
  ///
  static AppBar primaryAppbar({required String titleString}) {
    return AppBar(
      backgroundColor: Resources.color.colorPrimary,
      title: Text(
        titleString,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  /// `Secondary Appbar` digunakan apabila membutuhkan jenis AppBar yang berbeda
  /// dari AppBar utama. Misal untuk AppBar Detail
  /// *boleh di-edit sesuai kebutuhan*
  ///
  static AppBar secondaryAppbar({required String titleString}) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: Resources.color.colorSecondary,
      title: Text(
        titleString,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          splashColor: Resources.color.colorPrimary,
          icon: const Icon(Icons.edit),
          onPressed: () {
            //
          },
        ),
      ],
    );
  }

  /// Apabila ada tambahan jenis AppBar, silahkan untuk ditambahkan 
  /// sesuai kebutuhan
  ///
}
