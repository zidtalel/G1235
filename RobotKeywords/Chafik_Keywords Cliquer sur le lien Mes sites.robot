#Localisateurs
lbl_Title="xpath=//h1[@id='HEADER_TITLE']/span"
lien_Mes_Sites="xpath=//a[@title='Mes sites']"



#Keywords
Cliquer sur le lien Mes sites 
# Cliquer sur le lien Mes sites pour afficher mes sites disponible
    Sleep    2    
    Click Element    ${lien_Mes_Sites}
    Element Should Contain    ${lbl_Title}    Listes des sites
    Capture Page Screenshot    ./ScreenShotWiki/MesSites.png 