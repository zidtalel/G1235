#Localisateurs
lien_Taches_Replication="xpath=//a[@title='Gestion des tâches de réplication']"

#Keywords
Cliquer sur le lien Taches de replication
# Affichage de la page des taches
    Click Element    ${lien_Taches_Replication}
    Sleep    2
    Capture Page Screenshot    ./ScreenShotReplication/PageReplication.png