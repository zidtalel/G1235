Locators:
#Persopersonalieser le Site
personalieser_Site="//a[normalize-space()='Personnaliser le site']"
pageCalndrier="//div[@class='flat-button']/following-sibling::div/following-sibling::div//img"
target="//div[@class='flat-button']/following-sibling::div/following-sibling::div/following-sibling::div//following-sibling::div/ul"
#target="//div[@class='page-list-wrapper current-pages theme-border-3']//ul[@class='page-list']"
btn_OK="//button[normalize-space()='OK']"


Keyord:

Personaliser le site (Ajouter la page Calendrier)
    #Cliquer sur la roue dentée pour afficher les options
    Click Element    ${Elmnt_Roue_Dentée}
    #Cliquer sur l'option "Modifier les détails du site"
    Click Element    ${personalieser_Site}
    Drag And Drop    ${pageCalndrier}    ${target}
    Click Button    ${btn_OK}