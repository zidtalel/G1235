#Localisateurs
lbl_Title="xpath=//h1[@id='HEADER_TITLE']/span"
lien_Outils_admin="xpath=//a[@title='Outils admin']"

#Keywords
Cliquer sur le lien Outils admin
# Afficher la page Outils admin
    Click Element    ${lien_Outils_admin}
    Wait Until Element Is Visible    ${lblTitle}
    # S'assurer que l'utilisateur est connecte et que le tableau de bord est affiche
    Element Should Contain     ${lblTitle}    Outils admin
    Sleep    2
    Capture page Screenshot    ./ScreenShotReplication/PageOutilsAdmin.png