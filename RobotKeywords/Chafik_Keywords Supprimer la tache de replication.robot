#Localisateurs
btn_Supprimer="xpath=//button[@id='page_x002e_ctool_x002e_admin-console_x0023_default-delete-button']"
confirm="id=yui-gen11-button"

#Keywords
Supprimer la tache de replication
# Suppression de la tache crée
    Click Button    ${btn_Supprimer}
    Capture Page Screenshot    ./ScreenShotReplication/ConfirmationDeSuppression.png
    Click Button    ${confirm}
    Sleep    2
    Capture Page Screenshot    ./ScreenShotReplication/TacheSupprimer.png