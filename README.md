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






