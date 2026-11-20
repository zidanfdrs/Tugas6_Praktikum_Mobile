import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas6praktikum/detailpage.dart';
import 'package:tugas6praktikum/main.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: CupertinoColors.extraLightBackgroundGray,
        appBar: AppBar(
          title: Text('Zadon Explore Wisata Indonesia'),
          leading: Icon(Icons.explore),
          backgroundColor: CupertinoColors.extraLightBackgroundGray,
          foregroundColor: Colors.blue,
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(icon: Icon(Icons.grid_on), text: 'Grid View'),
              Tab(icon: Icon(Icons.list), text: 'List View'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            gridView(),
            listView()
          ],
        ),
      ),
    ); 
  }
}

//buat tampilan grid
Widget gridView() {
  return GridView.builder(
    padding: EdgeInsets.all(20),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
    ),
    itemCount: dataWisata.length,
    itemBuilder: (context, index) {
      final item = dataWisata[index];
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(item: item),
            ),
          );
        },
        child: Card(
          elevation: 2,
          clipBehavior: .antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: .circular(20),
          ),
          child: Stack(
            fit: .expand,
            children: [
              Image.asset(
                item['gambar']!,
                fit: .cover,
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        item['nama']!,
                        style: TextStyle(
                          color: CupertinoColors.systemBackground,
                          fontWeight: .bold,
                        ),
                      ),
                      Text(
                        item['lokasi']!,
                        style: TextStyle(
                          color: CupertinoColors.systemBackground,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  ); 
}

//buat tampilan list view
Widget listView() {
  return ListView.builder(
    padding: EdgeInsets.all(20),
    itemCount: dataWisata.length,
    itemBuilder: (context, index) {
      final item = dataWisata[index];
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(item: item),
            ),
          );
        },
        child: Card(
          margin: EdgeInsets.only(bottom: 20),
          elevation: 2,
          clipBehavior: .antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: .circular(20),
          ),
          child: Stack(
            children: [
            
              Image.asset(
                item['gambar']!,
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        item['nama']!,
                        style: TextStyle(
                          color: CupertinoColors.systemBackground,
                          fontWeight: .bold,
                        ),
                      ),
                      Text(
                        item['lokasi']!,
                        style: TextStyle(
                          color: CupertinoColors.systemBackground,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}