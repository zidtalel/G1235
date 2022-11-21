#Localisateurs
lien_Wiki="xpath=//a[normalize-space()='Wiki']"

#Keywords
Cliquer sur Wiki
# Fait afficher la page Wiki
    Sleep    2
    Click Element    ${lien_Wiki}
    Capture Page Screenshot    ./ScreenShotWiki/Wiki.png