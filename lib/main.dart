import 'package:flutter/material.dart';

void main() {
  runApp(const PipsmanFX());
}

class PipsmanFX extends StatelessWidget {
  const PipsmanFX({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PIPSMAN FX',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF070B12),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PIPSMAN FX',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to PIPSMAN FX',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Trading • Signals • Analysis • Education',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 25),

            Card(
              child: ListTile(
                leading: const Icon(Icons.show_chart),
                title: const Text('Premium Signals'),
                subtitle: const Text('Daily forex setups'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.analytics),
                title: const Text('Market Analysis'),
                subtitle: const Text('Professional market analysis'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.school),
                title: const Text('Trading Academy'),
                subtitle: const Text('Learn Forex step by step'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.video_library),
                title: const Text('Trading Videos'),
                subtitle: const Text('Lessons and market breakdowns'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
