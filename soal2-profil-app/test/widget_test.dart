import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:soal2_profil_app/screens/login_page.dart';

void main() {
  testWidgets('Halaman login tampil dengan benar', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginPage(),
      ),
    );

    expect(find.text('Login Mahasiswa'), findsOneWidget);
    expect(find.text('Aplikasi Profil Mahasiswa'), findsOneWidget);
  });
}