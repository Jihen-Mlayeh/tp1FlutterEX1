# 👤 Profile Card - Flutter Application

## 📋 Description

**Profile Card** est une application Flutter moderne qui présente un profil utilisateur sous forme de carte élégante et interactive. Cette application démontre l'utilisation des **StatelessWidgets** pour créer des interfaces utilisateur statiques avec un design contemporain.

## ✨ Fonctionnalités

- 🎨 **Design Moderne** : Interface avec gradients colorés et effets visuels attractifs
- 👤 **Avatar Personnalisable** : Photo de profil circulaire avec bordure et ombre
- 📊 **Statistiques Sociales** : Affichage des followers, following et posts
- 📱 **Informations de Contact** : Email, téléphone et localisation
- 🌐 **Liens Réseaux Sociaux** : Boutons pour Facebook, Instagram, LinkedIn, GitHub
- 🎯 **Boutons d'Action** : Boutons "Follow" et "Message" interactifs
- 📱 **Responsive Design** : Interface adaptative pour différentes tailles d'écran

## 🏗️ Architecture

### Structure des Widgets

```
MaterialApp
└── ProfileHomePage (StatelessWidget)
    └── Scaffold
        ├── AppBar (avec gradient personnalisé)
        └── Container (background dégradé)
            └── SingleChildScrollView
                └── Card
                    ├── Stack (Background + Avatar)
                    ├── Informations personnelles
                    ├── Row (Statistiques)
                    ├── Column (Coordonnées)
                    ├── Row (Réseaux sociaux)
                    └── Row (Boutons d'action)
```

### Widgets Principaux Utilisés

| Widget | Utilisation |
|--------|-------------|
| `Scaffold` | Structure de base avec AppBar et body |
| `Container` | Décoration, dimensionnement et positionnement |
| `BoxDecoration` | Application de gradients, bordures et ombres |
| `Stack` | Superposition d'éléments (background + avatar) |
| `Row` & `Column` | Organisation horizontale et verticale |
| `ElevatedButton` | Boutons d'action avec élévation |
| `SingleChildScrollView` | Défilement vertical |

## 🚀 Installation

### Prérequis

- Flutter SDK (3.10.1 ou supérieur)
- Dart SDK (3.0 ou supérieur)
- Un éditeur (VS Code, Android Studio, IntelliJ IDEA)
- Un émulateur ou un appareil physique

### Étapes d'Installation

1. **Cloner le repository**
   ```bash
   git clone https://github.com/votre-username/profile-card-flutter.git
   cd profile-card-flutter
   ```

2. **Installer les dépendances**
   ```bash
   flutter pub get
   ```

3. **Ajouter votre photo de profil**
   - Créez le dossier `assets/images/` à la racine du projet
   - Ajoutez votre photo (ex: `profile.jpg`)
   - Modifiez `pubspec.yaml` :
   ```yaml
   flutter:
     assets:
       - assets/images/profile.jpg
   ```

4. **Lancer l'application**
   ```bash
   flutter run
   ```

## ⚙️ Configuration

### Personnalisation du Profil

Modifiez les informations dans `lib/main.dart` :

```dart
// Nom et profession
Text("Votre Nom"),
Text("Votre Profession"),

// Statistiques
_buildStatItem("2.5K", "Followers"),
_buildStatItem("1.2K", "Following"),
_buildStatItem("48", "Posts"),

// Coordonnées
_buildInfoRow(Icons.email_rounded, "votre.email@example.com"),
_buildInfoRow(Icons.phone_rounded, "+33 X XX XX XX XX"),
_buildInfoRow(Icons.location_on_rounded, "Votre Ville, Pays"),
```

### Personnalisation des Couleurs

Modifiez les gradients dans le code :

```dart
// Gradient de l'AppBar
gradient: LinearGradient(
  colors: [Color(0xFF667eea), Color(0xFF764ba2)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
),

// Gradient du background
gradient: LinearGradient(
  colors: [Color(0xFFf093fb), Color(0xFFf5576c)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
),
```

## 📁 Structure du Projet

```
profile_card_flutter/
├── lib/
│   └── main.dart              # Code principal de l'application
├── assets/
│   └── images/
│       └── profile.jpg        # Photo de profil
├── android/                   # Configuration Android
├── ios/                       # Configuration iOS
├── web/                       # Configuration Web
├── pubspec.yaml               # Dépendances et assets
├── README.md                  # Ce fichier
└── screenshots/               # Captures d'écran
    └── profile_card_full.png
```

## 🎓 Concepts Flutter Utilisés

### StatelessWidget

Cette application utilise exclusivement des **StatelessWidgets** car :
- Les données affichées sont statiques
- Aucune interaction ne modifie l'état interne
- Meilleure performance (pas de gestion d'état)
- Code plus simple et lisible

### Material Design

L'application suit les principes du Material Design :
- AppBar avec élévation
- Cartes avec ombres portées
- Boutons avec états (normal, pressed, hover)
- Couleurs et typographie cohérentes

## 🎨 Choix de Design

### Palette de Couleurs

- **Primaire** : Violet/Bleu (#667eea - #764ba2)
- **Secondaire** : Rose/Rouge (#f093fb - #f5576c)
- **Accent** : Blanc pour les cartes
- **Texte** : Gris foncé (#2d3436)

### Effets Visuels

- **Gradients** : Pour un look moderne et dynamique
- **Ombres portées** : Pour créer de la profondeur
- **Coins arrondis** : Pour un aspect doux et contemporain
- **Glassmorphism** : Effets de transparence subtils

## 🔧 Dépannage

### Problème : Image ne s'affiche pas

**Solution :**
1. Vérifiez que le fichier image existe dans `assets/images/`
2. Vérifiez la configuration dans `pubspec.yaml` (attention à l'indentation)
3. Exécutez `flutter clean` puis `flutter pub get`
4. Relancez l'application (pas juste hot reload)

### Problème : Erreur de compilation

**Solution :**
```bash
flutter clean
flutter pub get
flutter run
```

## 📚 Ressources

- [Documentation Flutter](https://flutter.dev/docs)
- [Widget Catalog](https://flutter.dev/docs/development/ui/widgets)
- [Material Design Guidelines](https://material.io/design)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)

## 👨‍💻 Auteur

**Votre Nom**
- GitHub: [@votre-username](https://github.com/votre-username)
- Email: votre.email@example.com

## 📄 Licence

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.

## 🤝 Contribution

Les contributions sont les bienvenues ! N'hésitez pas à :
1. Fork le projet
2. Créer une branche (`git checkout -b feature/AmazingFeature`)
3. Commit vos changements (`git commit -m 'Add some AmazingFeature'`)
4. Push vers la branche (`git push origin feature/AmazingFeature`)
5. Ouvrir une Pull Request

## 📝 Notes de Développement

### Version 1.0.0 (Date)
- ✅ Implémentation de l'interface de base
- ✅ Ajout des gradients et effets visuels
- ✅ Intégration des informations de contact
- ✅ Ajout des boutons de réseaux sociaux
- ✅ Design responsive

### Améliorations Futures
- [ ] Mode sombre
- [ ] Animation au scroll
- [ ] Édition du profil
- [ ] Intégration d'une API
- [ ] Galerie de photos

---
