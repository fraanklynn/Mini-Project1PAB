import 'package:flutter/material.dart';
import 'form_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> dataSetoran = [
  {
    "nama": "Galvin",
    "jenis": "Plastik",
    "berat": 1.5,
  },
  {
    "nama": "Budi",
    "jenis": "Kertas",
    "berat": 2.0,
  },
  ];

  double get totalBerat {
    double total = 0;
    for (var item in dataSetoran) {
      total += item["berat"] ?? 0;
    }
    return total;
  }

  Future<void> tambahSetoran() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FormPage()),
    );

    if (result != null) {
      setState(() {
        dataSetoran.add(result);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: const Text("Bank Sampah Digital"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.green, Colors.lightGreen],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                const Text(
                  "Total Setoran",
                  style: TextStyle(color: Colors.white70),
                ),
                const SizedBox(height: 5),
                Text(
                  "${dataSetoran.length}",
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Total Berat",
                  style: TextStyle(color: Colors.white70),
                ),
                const SizedBox(height: 5),
                Text(
                  "${totalBerat.toStringAsFixed(1)} Kg",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: dataSetoran.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.recycling,
                          size: 80,
                          color: Colors.green.shade600,
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "Belum ada data setoran",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Tekan tombol + untuk menambahkan",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: dataSetoran.length,
                    itemBuilder: (context, index) {
                      final item = dataSetoran[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 8,
                        ),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          title: Text(item["nama"]),
                          subtitle: Text("${item["jenis"]} - ${item["berat"]} Kg"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.edit, color: Colors.green),
                                onPressed: () async {
                                  final result = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FormPage(
                                        initialData: dataSetoran[index],
                                      ),
                                    ),
                                  );
                                  if (result != null) {
                                    setState(() {
                                      dataSetoran[index] = result;
                                    });
                                  }
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete, color: Colors.red),
                                onPressed: () {
                                  setState(() {
                                    dataSetoran.removeAt(index);
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: tambahSetoran,
        child: const Icon(Icons.add),
      ),
    );
  }
}