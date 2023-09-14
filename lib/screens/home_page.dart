import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final List<String> filters = const ['All', 'Addidas', 'Nike', 'Puma'];
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(50),
      ),
      borderSide: BorderSide(
        color: Color.fromRGBO(225, 225, 225, 1),
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Shoes \nCollection',
                    style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'Leto',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        hintText: 'Search',
                        focusedBorder: border,
                        border: border,
                        enabledBorder: border),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: filters.length,
                  itemBuilder: (context, index) {
                    final filter = filters[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Chip(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          side: const BorderSide(
                              color: Color.fromRGBO(245, 247, 249, 1)),
                          elevation: 5,
                          backgroundColor:
                              const Color.fromRGBO(245, 247, 249, 1),
                          labelStyle: const TextStyle(fontSize: 16),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          label: Text(filter)),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
