import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

final ImagePicker _picker = ImagePicker();
File? imageFile;

// Future <void> pickImage() async {
//   final XFile? hasil = await _picker.pickImage(source: ImageSource.gallery);
//   if (hasil != null) {
//     setState(() {
//       imageFile = File(hasil.path);
//     });
//   }
// }


class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.item});

  final Map<String, String> item;

  @override
  State<DetailPage> createState() => _DetailPageState();
// imageFIle != null
//     ? Image.file(
//         imageFile!,
//         fit: BoxFit.cover,
//       )
//     : Image.asset(
//         'assets/images/placeholder.png',
//         fit: BoxFit.cover,
//       );
}
class _DetailPageState extends State<DetailPage> {
  final ImagePicker _picker = ImagePicker();
  File? imageFile;

  Future<void> pickImage() async {
    final XFile? hasil = await _picker.pickImage(
      source: ImageSource.gallery,
    );

    if (hasil != null) {
      setState(() {
        imageFile = File(hasil.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    const accent = Color(0xFF167C80);
    const dark = Color(0xFF183B45);

    return Scaffold(
      backgroundColor: const Color(0xFFF2F6F5),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 490,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    height: 410,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          widget.item['gambar']!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const ColoredBox(
                              color: Color(0xFF315B68),
                              child: Center(
                                child: Icon(
                                  Icons.landscape_outlined,
                                  color: Colors.white70,
                                  size: 76,
                                ),
                              ),
                            );
                          },
                        ),
                        const DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.black38,
                                Colors.transparent,
                                Color(0xE6000000),
                              ],
                              stops: [0, 0.4, 1],
                            ),
                          ),
                        ),
                        SafeArea(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(18),
                              child: IconButton(
                                tooltip: 'Kembali',
                                onPressed: () => Navigator.pop(context),
                                icon: const Icon(Icons.arrow_back_rounded),
                                style: IconButton.styleFrom(
                                  backgroundColor: const Color(0xEFFFFFFF),
                                  foregroundColor: dark,
                                  fixedSize: const Size(48, 48),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 24,
                          right: 24,
                          bottom: 42,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 7,
                                ),
                                decoration: BoxDecoration(
                                  color: accent.withValues(alpha: 0.92),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.auto_awesome_rounded,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      'DESTINASI ALAM',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1.1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 14),
                              Text(
                                widget.item['nama']!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 34,
                                  height: 1.08,
                                  fontWeight: FontWeight.w800,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black45,
                                      blurRadius: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 20,
                    right: 20,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 17,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x1A183B45),
                            blurRadius: 25,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 46,
                            height: 46,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE5F1F1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Icon(
                              Icons.location_on_rounded,
                              color: accent,
                              size: 24,
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'LOKASI',
                                  style: Theme.of(context).textTheme.labelSmall
                                      ?.copyWith(
                                        color: const Color(0xFF7C9297),
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 1.2,
                                      ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  widget.item['lokasi']!,
                                  style: const TextStyle(
                                    color: dark,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Icon(
                            Icons.explore_outlined,
                            color: Color(0xFFB2C5C6),
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 30, 24, 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 28,
                        height: 4,
                        decoration: BoxDecoration(
                          color: accent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(width: 9),
                      const Text(
                        'CERITA DESTINASI',
                        style: TextStyle(
                          color: accent,
                          fontSize: 11,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 11),
                  Text(
                    'Kenali lebih dekat',
                    style: Theme.of(context).textTheme.headlineSmall
                        ?.copyWith(color: dark, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 17),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 22),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(color: const Color(0xFFE7EEEC)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 4,
                          height: 76,
                          decoration: BoxDecoration(
                            color: accent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Text(
                            widget.item['deskripsi']!,
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(
                                  color: const Color(0xFF53666D),
                                  height: 1.7,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 22),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE5F1F1),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.lightbulb_outline_rounded, color: accent),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Jadikan destinasi ini inspirasi untuk petualangan berikutnya.',
                            style: TextStyle(
                              color: dark,
                              height: 1.4,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
