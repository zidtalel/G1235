#Localisateurs
btn_Nouvelle_Page="id=template_x002e_toolbar_x002e_wiki-page_x0023_default-create-button-button"



#Keywords
Cliquer sur Nouvelle page
# Permet d'afficher le formulaire qui permet de créer une nouvelle page Wiki
    Click Button    ${btn_Nouvelle_Page}
    Capture Page Screenshot    ./ScreenShotWiki/NewPage.png