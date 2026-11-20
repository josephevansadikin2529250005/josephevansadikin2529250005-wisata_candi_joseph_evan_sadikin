import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // TODO: 1. Deklarasikan variabel yang dibutuhkan
  bool isSignedIn = false;
  String fullName = '';
  String userName = '';
  int favoriteCandiCount = 0;

  // TODO: 5. Implementasi fungsi signIn
  void signIn() {
    setState(() {
      isSignedIn = !isSignedIn;
      userName = 'rachmadi';
      fullName = 'Muhammad Rachmadi';
    });
  }

  // TODO: 6. Implementasi fungsi signOut
  void signOut() {
    setState(() {
      isSignedIn = !isSignedIn;
      userName = '';
      fullName = '';
      favoriteCandiCount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 280,
            width: double.infinity,
            color: Colors.deepPurple,
          ),

          // Bagian konten utama
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // TODO: 2. Buat bagian ProfileHeader yang berisi gambar profil
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200 - 50),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepPurple, width: 2),
                            shape: BoxShape.circle,
                          ),
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('images/placeholder_image.png'),
                          ),
                        ),
                        if (isSignedIn)
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.camera_alt, color: Colors.deepPurple),
                          ),
                      ],
                    ),
                  ),
                ),

                // TODO: 3. Buat bagian ProfileInfo yang berisi info profil
                const SizedBox(height: 20),
                const Divider(color: Colors.deepPurple),
                const SizedBox(height: 4),

                // Baris Username
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Row(
                        children: [
                          Icon(Icons.lock, color: Colors.amber),
                          SizedBox(width: 8),
                          Text(
                            'Pengguna',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        userName,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    if (isSignedIn)
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                      ),
                  ],
                ),

                const SizedBox(height: 4),
                const Divider(color: Colors.deepPurple),
                const SizedBox(height: 4),

                // Baris Nama Lengkap
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Row(
                        children: [
                          Icon(Icons.person, color: Colors.blue),
                          SizedBox(width: 8),
                          Text(
                            'Nama',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        fullName,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    if (isSignedIn)
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                      ),
                  ],
                ),

                const SizedBox(height: 4),
                const Divider(color: Colors.deepPurple),
                const SizedBox(height: 4),

                // Baris Favorit
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Row(
                        children: [
                          Icon(Icons.favorite, color: Colors.red),
                          SizedBox(width: 8),
                          Text(
                            'Favorit',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        favoriteCandiCount > 0 ? '$favoriteCandiCount' : '-',
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),
                const Divider(color: Colors.deepPurple),
                const SizedBox(height: 20),

                // TODO: 4. Buat ProfileActions yang berisi TextButton sign in/out
                isSignedIn
                ? TextButton(
                    onPressed: signOut,
                    child: const Text('Sign Out'),
                  )
                : TextButton(
                    onPressed: signIn,
                    child: const Text('Sign In'),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}