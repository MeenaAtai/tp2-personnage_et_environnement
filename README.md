# TP2 - personnage et environnement

## Description
Petit projet réalisé avec **Godot** avec niveau de jeu avec un personnage dynamique et un environnement physique interactif. Implémentation de logique de mouvement et états de personnage intégrés à un espace cohérent et fonctionnel :
- l’utilisation de **boutons toggle** pour déclencher des animations et du son,
- la gestion des **entrées clavier** pour lancer une animation sprite et son,
- la mise en place d’un **fond** qui s’adapte à la taille de la fenêtre,
- une interface avec **sprites et boutons** synchronisé avec événements.

## Fonctionnalités
- **collision TileMap** :
  - Détection de collision avec TileMap entre joueur et ennemies.
  - Implantation de physique
- **Déplacement du joueur avec Clavier** :
  - Flèche gauche et A : Déplace le joueur vers la gauche et active/désactive l’animation de courir (`run`).
  - Flèche droite et D : Déplace le joueur vers la droite et active/désactive l’animation d’courir (`run`).
  - Flèche haut et W : Faire sautir le joueur et active/désactive l’animation de saut (`jump`).
  - Flèche bas et S : Faire tomber le joueur et active/désactive l’animation de bas (`fall`).
- **Fond parallax** :
  - Image de fond qui s’ajuste automatiquement à la fenêtre.
  - Effet visuel pour donner une impression de profondeur et de mouvement réaliste.
- **Interface menu** :
  - Boutons et sprites pour avoir un bon fonctionnement d’une interface virtuelle
 
 ## Crédits
 - **joueur :**
   - https://oboropixel.itch.io/character-animations
 - **Ennemie :**
   - https://nastanliev.itch.io/mushrooms
 - **Audio :**
   - https://freesound.org/people/orginaljun/sounds/534347/
   - https://freesound.org/people/BloodPixelHero/sounds/584075/
 - **TileMap et fond:**
   - https://theflavare.itch.io/forest-nature-fantasy-tileset
 - **Particules :**
   - https://rustybulletgames.itch.io/colored-explosions-asset-pack
 - **Font :**
   - https://www.dafont.com/fr/kiwisoda.font
 - **Interface menu (cadres) :**
   - https://bdragon1727.itch.io/free-pixel-frames-buttons-panels-part-2

