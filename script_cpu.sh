ps aux

echo "Entrez l'ID du processus que vous souhaitez terminer :"
read pid

if [ -z "$pid" ]; then
    echo "ID du processus invalide. Sortie du script."
    exit 1
fi

if kill -0 "$pid" 2>/dev/null; then
    kill "$pid"
    if [ $? -eq 0 ]; then
        echo "Le processus avec l'ID $pid a été terminé avec succès."
    else
        echo "Impossible de terminer le processus avec l'ID $pid."
    fi
else
    echo "Vous n'avez pas les permissions nécessaires pour terminer le processus avec l'ID $pid."
fi