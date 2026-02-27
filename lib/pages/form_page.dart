import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormPage extends StatefulWidget {
  final Map<String, dynamic>? initialData; 
  const FormPage({super.key, this.initialData});
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController namaC = TextEditingController();
  final TextEditingController jenisC = TextEditingController();
  final TextEditingController beratC = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.initialData != null) {
      namaC.text = widget.initialData!["nama"].toString();
      jenisC.text = widget.initialData!["jenis"].toString();
      beratC.text = widget.initialData!["berat"].toString();
    }
  }

  @override
  void dispose() {
    namaC.dispose();
    jenisC.dispose();
    beratC.dispose();
    super.dispose();
  }

  void simpan() {
    final nama = namaC.text.trim();
    final jenis = jenisC.text.trim();
    final berat = double.tryParse(beratC.text.trim());
    if (nama.isEmpty || jenis.isEmpty || berat == null || berat <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Isi data dengan benar ya!")),
      );
      return;
    }
    Get.back(result: {
    "nama": nama,
    "jenis": jenis,
    "berat": berat,
  });
    }

  @override
  Widget build(BuildContext context) {
    final isEdit = widget.initialData != null;
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: Text(isEdit ? "Edit Setoran" : "Tambah Setoran"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
            body: Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
            colors: [Colors.green.shade200, Colors.green.shade50],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [
                    TextField(
                      controller: namaC,
                      decoration: const InputDecoration(
                        labelText: "Nama",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      controller: jenisC,
                      decoration: const InputDecoration(
                        labelText: "Jenis Sampah",
                        hintText: "Contoh: Plastik / Kertas / Logam",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      controller: beratC,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "Berat (Kg)",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: simpan,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    "Simpan",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}