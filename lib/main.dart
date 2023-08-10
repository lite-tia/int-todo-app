import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:int_todo_app/application/lifecycle/app_lifecycle.dart';
import 'package:int_todo_app/core/constant/app_route_name.dart';
import 'package:int_todo_app/presentation/page/home_page.dart';

import 'application/middleware/logging_middleware.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(appLifecycleObserverProvider);
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      getPages: [
        GetPage(
          name: AppRouteName.root,
          page: () => const HomePage(),
          middlewares: [
            ref.read(loggingMiddlewareProvider),
          ],
        ),
        GetPage(
          name: AppRouteName.home,
          page: () => const HomePage(),
          middlewares: [
            ref.read(loggingMiddlewareProvider),
          ],
        ),
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
