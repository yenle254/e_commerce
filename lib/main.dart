import 'package:flutter/material.dart';
import 'package:e_commerce/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart'; // Để dùng kIsWeb

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Chạy MyApp bên trong DevicePreview
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // --- Các dòng cần thêm cho Device Preview ---
      // useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      // ------------------------------------------
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // Đã sửa lỗi thiếu ColorScheme ở đây
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainFoodPage(),
    );
  }
}

// Widget giả lập để code không báo lỗi
