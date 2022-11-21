#Localisateurs
nom_du_site="xpath=//a[normalize-space()='Site de test']"



#Keywords
Cliquer sur le lien du site de test
# Cliquer sur le lien "Site de test" qui va afficher le site pris en exemple 
    Sleep    2
    Click Element    ${nom_du_site}
    Capture Page Screenshot    ./ScreenShotWiki/Site_de_test.png