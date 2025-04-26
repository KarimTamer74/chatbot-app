import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final List<String> governorates = [
    "القاهرة",
    "الجيزة",
    "الإسكندرية",
    "الدقهلية",
    "البحر الأحمر",
    "البحيرة",
    "الفيوم",
    "الغربية",
    "الإسماعيلية",
    "كفر الشيخ",
    "مطروح",
    "المنوفية",
    "المنيا",
    "القليوبية",
    "الوادي الجديد",
    "السويس",
    "أسوان",
    "أسيوط",
    "بني سويف",
    "بورسعيد",
    "دمياط",
    "الشرقية",
    "جنوب سيناء",
    "شمال سيناء",
    "قنا",
    "سوهاغ",
    "الأقصر",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("بحث عن الخدمات"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "بحث باسم الخدمة",
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CategoryButton(label: "الكل"),
                const CategoryButton(label: "خدمات مقاولات"),
                CategoryButton(
                  label: "الخصومات",
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return ListView.builder(
                          itemCount: governorates.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(governorates[index]),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => GovernorateScreen(
                                        governorateName: governorates[index]),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;

  const CategoryButton({required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class GovernorateScreen extends StatelessWidget {
  final String governorateName;

  const GovernorateScreen({required this.governorateName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(governorateName)),
      body: Center(
        child: Text(
          governorateName,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
