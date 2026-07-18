#!/usr/bin/env bash
set -e

# Racine du dépôt (à lancer depuis la racine du repo cloné)
ROOT="."

dirs=(
  "00-meta"
  "01-systeme/competences"
  "01-systeme/races"
  "02-lore/bestiaire"
  "02-lore/lieux"
  "03-playtest"
  "04-outils/generateurs"
  "04-outils/feuilles-de-perso"
  "04-outils/tables-aleatoires"
  "assets/images"
)

files=(
  "00-meta/vision.md"
  "00-meta/glossaire.md"
  "00-meta/roadmap.md"
  "01-systeme/caracteristiques.md"
  "01-systeme/competences/liste-competences.md"
  "01-systeme/competences/progression-par-usage.md"
  "01-systeme/essences.md"
  "01-systeme/combat-et-resolution.md"
  "02-lore/cosmologie.md"
  "02-lore/systeme-du-monde.md"
  "02-lore/factions-et-organisations.md"
  "03-playtest/retours-consolides.md"
)

for d in "${dirs[@]}"; do
  mkdir -p "$ROOT/$d"
done

for f in "${files[@]}"; do
  touch "$ROOT/$f"
done

# .gitkeep pour les dossiers vides qui n'ont pas de fichier ci-dessus
for d in "01-systeme/classes" "01-systeme/professions" "01-systeme/races" \
         "02-lore/bestiaire" "02-lore/lieux" \
         "04-outils/generateurs" "04-outils/feuilles-de-perso" "04-outils/tables-aleatoires" \
         "assets/images"; do
  touch "$ROOT/$d/.gitkeep"
done

echo "Arborescence créée avec succès."
