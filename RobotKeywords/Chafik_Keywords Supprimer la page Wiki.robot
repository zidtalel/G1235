#Localisateurs
btn_Remove="id=template_x002e_toolbar_x002e_wiki-page_x0023_default-delete-button-button"
btn_Confirm="id=yui-gen0-button"

#Keywords
Supprimer la page Wiki
# Suppression de la nouvelle page Wiki
    Sleep    3
    Click Button    ${btn_Remove}
    Click Button    ${btn_Confirm}
    Sleep    3
    Capture Page Screenshot    ./ScreenShotWiki/suppressionPage.png