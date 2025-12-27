import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/data/models/checklist_item.dart';
import 'core/data/models/checklist.dart';
import 'core/data/storage/checklist_storage.dart';
import 'core/theme/app_theme.dart';
import 'features/home/presentation/pages/home_page.dart';
import 'features/settings/presentation/providers/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Hive
  await Hive.initFlutter();
  
  // Register Hive adapters
  Hive.registerAdapter(ChecklistItemAdapter());
  Hive.registerAdapter(ChecklistAdapter());
  
  // Initialize storage
  await ChecklistStorage.init();
  
  runApp(
    const ProviderScope(
      child: ChecklyApp(),
    ),
  );
}

class ChecklyApp extends ConsumerWidget {
  const ChecklyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    
    return MaterialApp(
      title: 'Checkly',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      home: const HomePage(),
    );
  }
}

