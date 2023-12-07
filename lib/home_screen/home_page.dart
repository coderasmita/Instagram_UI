import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Instagram"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/asmita.jpg'),
            ),
            const SizedBox(height: 16),
            const Text(
              "Asmita Koirala",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Bio description goes here",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.edit),
                  label: const Text("Edit Profile"),
                ),
                const SizedBox(width: 16),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                  label: const Text(
                    "Share Profile",
                  ),
                ),
                const SizedBox(width: 16),
                const Icon(Icons.manage_accounts_rounded),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.grid_on),
                SizedBox(width: 10),
                Icon(Icons.video_collection_outlined),
                SizedBox(width: 10),
                Icon(Icons.assignment_ind),
              ],
            ),
            const SizedBox(height: 30),
            // Updated Gallery Section with ListView
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset("assets/asmita.jpg", height: 150),
                  const SizedBox(width: 10),
                  Image.asset("assets/me.jpg", height: 150),
                  const SizedBox(width: 10),
                  Image.asset("assets/asmita.jpg", height: 150),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home),
                SizedBox(width: 20),
                Icon(Icons.search),
                SizedBox(width: 20),
                Icon(Icons.plus_one),
                SizedBox(width: 20),
                Icon(Icons.video_collection_outlined),
                SizedBox(width: 20),
                Icon(Icons.assignment_ind),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
