#Localisateurs
btn_Save="//button[@id='template_x002e_createform_x002e_wiki-create_x0023_default-save-button-button']"

#Keywords
Sauvegarder la page Wiki
# Enregistrer le formulaire de création de la page Wiki
    Click Button    ${btn_Save}
    Capture Page Screenshot    ./ScreenShotWiki/Save.png