import 'package:flutter/material.dart';

void main() {
  runApp(const MyResumeApp());
}

class MyResumeApp extends StatelessWidget {
  const MyResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume',
      home: const ResumePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ประวัติส่วนตัว',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // รูปภาพ
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'ชื่อนามสกุล:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'น.ส.พนิตสุภา บุญธรรม',
                      style: TextStyle(fontSize: 15),
                    ),
                    const SizedBox(width: 18),
                    Text(
                      'ภูมิลำเนา:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text('พิจิตร', style: TextStyle(fontSize: 15)),
                    const SizedBox(height: 10),
                    const Divider(color: Colors.black, thickness: 0.5),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),
          const Text(
            'งานอดิเรก:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Text('ดูหนัง, ฟังเพลง, เล่นเกมส์, ออกกำลังกาย'),
          const SizedBox(height: 20),
          const Text(
            'ประวัติการศึกษา:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Text('• ระดับชั้นประถม', style: TextStyle(fontSize: 16)),
          const Text(
            '      - ชื่อโรงเรียน: ทพจ.๑',
            style: TextStyle(fontSize: 15),
          ),
          const Text('      - ปีที่จบ: 2559', style: TextStyle(fontSize: 15)),
          const Text('• ระดับชั้นมัธยมต้น', style: TextStyle(fontSize: 16)),
          const Text(
            '      - ชื่อโรงเรียน: ทพจ.๑',
            style: TextStyle(fontSize: 15),
          ),
          const Text('      - ปีที่จบ: 2562', style: TextStyle(fontSize: 15)),
          const Text('• ระดับชั้นมัธยมปลาย', style: TextStyle(fontSize: 16)),
          const Text(
            '      - ชื่อโรงเรียน: ทพจ.๑',
            style: TextStyle(fontSize: 15),
          ),
          const Text('      - ปีที่จบ: 2565', style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
