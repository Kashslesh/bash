
folder=./folder
# Vérification des arguments
if [ $# -ne 1 ]; then
    echo "Usage: $0 <dossier à surveiller>"
    exit 1
fi

# Dossier à surveiller
directory="$folder"

# Vérification de l'existence du dossier
if [ ! -d "$directory" ]; then
    echo "Le dossier spécifié n'existe pas."
    exit 1
fi

# Fonction pour enregistrer les modifications dans le fichier log
log_event() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $1: $2" >> monitoring.log
}

# Boucle de surveillance
while true; do
    # Attendre les événements de modification
    change=$(fswatch -1 "$directory" 2>/dev/null)
    # Extraire le type d'événement et le nom du fichier
    event=$(echo "$change" | awk -F' ' '{print $1}')
    file=$(echo "$change" | awk -F' ' '{print $2}')
    # Enregistrer l'événement dans le fichier log
    log_event "$event" "$file"
done
