import '
}

// 
  
// 
                        
              ],
            ),

            
                .
                  
              '              entry: '3420.50',
              sl: '3414.50',
              tp: '3432.00',
            ),
          ],
        ),
      ),
    );
  }
}

// ===============================
// QUICK CARD
// ===============================

class QuickCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  const QuickCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF111722),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(.15),
            child: Icon(icon, color: color),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.white54,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

// ===============================
// SIGNAL CARD
// ===============================

class SignalCard extends StatelessWidget {
  final String pair;
  final String direction;
  final String entry;
  final String sl;
  final String tp;

  const SignalCard({
    super.key,
    required this.pair,
    required this.direction,
    required this.entry,
    required this.sl,
    required this.tp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF111722),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFF00D4A8).withOpacity(.18),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                pair,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF00D4A8).withOpacity(.15),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'BUY',
                  style: TextStyle(
                    color: Color(0xFF00D4A8),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SignalValue(title: 'ENTRY', value: entry),
              SignalValue(title: 'SL', value: sl),
              SignalValue(title: 'TP', value: tp),
            ],
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('VIEW SIGNAL'),
            ),
          ),
        ],
      ),
    );
  }
}

class SignalValue extends StatelessWidget {
  final String title;
  final String value;

  const SignalValue({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white38,
            fontSize: 11,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

// ===============================
// SIGNALS PAGE
// ===============================

class SignalsPage extends StatelessWidget {
  const SignalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final signals = [
      ['XAUUSD', 'BUY', '3420.50', '3414.50', '3432.00'],
      ['EURUSD', 'SELL', '1.16950', '1.17200', '1.16450'],
      ['GBPUSD', 'BUY', '1.35120', '1.34750', '1.35800'],
    ];

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          const Text(
            'Premium Signals',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Professional trading setups',
            style: TextStyle(color: Colors.white54),
          ),
          const SizedBox(height: 22),

          ...signals.map(
            (s) => Padding(
              padding: const EdgeInsets.only(bottom: 14),
              child: SignalCard(
                pair: s[0],
                direction: s[1],
                entry: s[2],
                sl: s[3],
                tp: s[4],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ===============================
// ANALYSIS PAGE
// ===============================

class AnalysisPage extends StatelessWidget {
  const AnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          const Text(
            'Daily Analysis',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          AnalysisCard(
            title: 'XAUUSD Analysis',
            description:
                'Gold remains bullish above the key support zone. Waiting for confirmation before entry.',
          ),

          AnalysisCard(
            title: 'EURUSD Analysis',
            description:
                'Price is approaching a major resistance area. Watch for rejection and bearish confirmation.',
          ),

          AnalysisCard(
            title: 'GBPUSD Analysis',
            description:
                'Market structure shows potential continuation after liquidity sweep.',
          ),
        ],
      ),
    );
  }
}

class AnalysisCard extends StatelessWidget {
  final String title;
  final String description;

  const AnalysisCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF111722),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.analytics,
            color: Color(0xFF00D4A8),
            size: 30,
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(
              color: Colors.white60,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 14),
          TextButton(
            onPressed: () {},
            child: const Text('READ FULL ANALYSIS'),
          ),
        ],
      ),
    );
  }
}

// ===============================
// VIDEOS PAGE
// ===============================

class VideosPage extends StatelessWidget {
  const VideosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          const Text(
            'Forex Academy',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Learn price action & Smart Money Concepts',
            style: TextStyle(color: Colors.white54),
          ),
          const SizedBox(height: 22),

          VideoCard(
            title: 'Smart Money Concepts',
            duration: '12:45',
          ),

          VideoCard(
            title: 'How To Find High Probability Setups',
            duration: '18:20',
          ),

          VideoCard(
            title: 'Risk Management',
            duration: '10:35',
          ),

          VideoCard(
            title: 'Gold Trading Strategy',
            duration: '21:10',
          ),
        ],
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  final String title;
  final String duration;

  const VideoCard({
    super.key,
    required this.title,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF111722),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: const Color(0xFF202734),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(18),
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.play_circle,
                size: 58,
                color: Color(0xFF00D4A8),
              ),
            ),
          ),
          ListTile(
            title: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(duration),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
        ],
      ),
    );
  }
}

// ===============================
// PROFILE
// ===============================

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          const Text(
            'My Profile',
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 25),

          const CircleAvatar(
            radius: 45,
            backgroundColor: Color(0xFF00D4A8),
            child: Icon(
              Icons.person,
              size: 50,
              color: Colors.black,
            ),
          ),

          const SizedBox(height: 15),

          const Center(
            child: Text(
              'PIPSMAN Trader',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 30),

          ProfileItem(
            icon: Icons.workspace_premium,
            title: 'Premium Membership',
          ),

          ProfileItem(
            icon: Icons.notifications,
            title: 'Notifications',
          ),

          ProfileItem(
            icon: Icons.settings,
            title: 'Settings',
          ),

          ProfileItem(
            icon: Icons.help_outline,
            title: 'Help & Support',
          ),
        ],
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const ProfileItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF111722),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color(0xFF00D4A8),
        ),
        title: Text(title),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 15,
        ),
        onTap: () {},
      ),
    );
  }
}

// ===============================
// CHART PAINTER
// ===============================

class ChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF00D4A8)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final path = Path();

    path.moveTo(0, size.height * .75);
    path.lineTo(size.width * .12, size.height * .62);
    path.lineTo(size.width * .22, size.height * .70);
    path.lineTo(size.width * .32, size.height * .42);
    path.lineTo(size.width * .43, size.height * .55);
    path.lineTo(size.width * .55, size.height * .30);
    path.lineTo(size.width * .67, size.height * .40);
    path.lineTo(size.width * .78, size.height * .18);
    path.lineTo(size.width * .90, size.height * .27);
    path.lineTo(size.width, size.height * .08);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
