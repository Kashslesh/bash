echo "Veuillez entrer le nom du dossier à vérifier :"
read dossier

# Vérifie si le dossier existe
if [ -d "$dossier" ]; then
    echo "Le dossier $dossier existe."
    echo "Liste des fichiers dans le dossier $dossier :"

    # Utilise une boucle for pour afficher les fichiers dans le dossier
    for fichier in "$dossier"/*; do
        echo "$fichier"
    done
else
    echo "Le dossier $dossier n'existe pas."
fi