import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// Widget racine de l'application
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
        fontFamily: 'Poppins',
      ),
      home: const ProfileHomePage(),
    );
  }
}

// Widget de la page d'accueil
class ProfileHomePage extends StatelessWidget {
  const ProfileHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile Card",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF667eea), Color(0xFF764ba2)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFf093fb), Color(0xFFf5576c)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: _getCard(),
          ),
        ),
      ),
    );
  }

  // Création de la carte de profil
  Container _getCard() {
    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 30,
            offset: const Offset(0, 15),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Section supérieure avec avatar
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              // Background décoratif
              Container(
                height: 180,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF667eea), Color(0xFF764ba2)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: -50,
                      right: -50,
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -30,
                      left: -30,
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Avatar positionné
              Positioned(
                bottom: -60,
                child: _getAvatar(),
              ),
            ],
          ),
          const SizedBox(height: 70),

          // Informations du profil
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const Text(
                  "Jihen Mlayeh",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2d3436),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "GL student",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 24),

                // Statistiques
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildStatItem("2.5K", "Followers"),
                    _buildDivider(),
                    _buildStatItem("1.2K", "Following"),
                    _buildDivider(),
                    _buildStatItem("48", "Posts"),
                  ],
                ),

                const SizedBox(height: 24),
                const Divider(),
                const SizedBox(height: 16),

                // Informations de contact
                _buildInfoRow(Icons.email_rounded, "mlayehjihen@gmail.com"),
                const SizedBox(height: 12),
                _buildInfoRow(Icons.phone_rounded, "+33 6 12 34 56 78"),
                const SizedBox(height: 12),
                _buildInfoRow(Icons.location_on_rounded, "Paris, France"),

                const SizedBox(height: 24),

                // Réseaux sociaux
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocialButton(Icons.Facebook, const Color(0xFF1877f2)),
                    const SizedBox(width: 16),
                    _buildSocialButton(Icons.camera_alt, const Color(0xFFe4405f)),
                    const SizedBox(width: 16),
                    _buildSocialButton(Icons.work, const Color(0xFF0077b5)),
                    const SizedBox(width: 16),
                    _buildSocialButton(Icons.code, const Color(0xFF333333)),
                  ],
                ),

                const SizedBox(height: 24),

                // Boutons d'action
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF667eea),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          "Follow",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFF667eea),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          side: const BorderSide(
                            color: Color(0xFF667eea),
                            width: 2,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          "Message",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Création de l'avatar
  Container _getAvatar() {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
        // OPTION 1: Image depuis Internet (la plus simple)
       // image: const DecorationImage(
        //  image: NetworkImage('https://i.pravatar.cc/300'), // Remplacez par votre URL
         // fit: BoxFit.cover,
       // ),

        // OPTION 2: Image depuis les assets (décommentez et commentez l'option 1)
         image: const DecorationImage(
         image: AssetImage('assets/images/jj.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      // Supprimez l'icône si vous utilisez une image
      // child: const Icon(
      //   Icons.person,
      //   size: 60,
      //   color: Colors.white,
      // ),
    );
  }

  // Widget pour les statistiques
  Widget _buildStatItem(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2d3436),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 40,
      width: 1,
      color: Colors.grey[300],
    );
  }

  // Widget pour les informations de contact
  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xFF667eea).withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: const Color(0xFF667eea),
            size: 20,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
            ),
          ),
        ),
      ],
    );
  }

  // Widget pour les boutons de réseaux sociaux
  Widget _buildSocialButton(IconData icon, Color color) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        icon: Icon(icon, color: color, size: 24),
        onPressed: () {},
      ),
    );
  }
}

// Classe Icons personnalisée pour les réseaux sociaux
class Icons {
  static const IconData Facebook = IconData(0xf09a, fontFamily: 'MaterialIcons');
  static const IconData email_rounded = IconData(0xe0be, fontFamily: 'MaterialIcons');
  static const IconData phone_rounded = IconData(0xe0cd, fontFamily: 'MaterialIcons');
  static const IconData location_on_rounded = IconData(0xe3c8, fontFamily: 'MaterialIcons');
  static const IconData camera_alt = IconData(0xe3b0, fontFamily: 'MaterialIcons');
  static const IconData work = IconData(0xe8f9, fontFamily: 'MaterialIcons');
  static const IconData code = IconData(0xe86f, fontFamily: 'MaterialIcons');
  static const IconData person = IconData(0xe7fd, fontFamily: 'MaterialIcons');
}