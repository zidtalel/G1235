Locators Créer une catégorie

lien_Outils_admin="//a[@title='Outils admin']"
lien_titre_page_Outils_admin="//span[@class='alfresco-header-Title__text has-max-width']"
lien_titre_Gestionnaire_de_catégorie="//a[@title='Gestionnaire de catégories']"
lien_Catégorie_racine="css:#ygtvlabelel1"
lien_Icon_ajouter="//span[text()='Catégorie racine']/span[@title='Ajouter une catégorie']"
txt_champ_nom_catgr="//div[@id='userInput_c']/div/descendant::input[@type='text']"
bouton_OK="//button[text()='OK']"

Créer une catégorie
    [Arguments]    ${Nom_Catégorie}
    # Click sur le lien Outils admin
    Click Link     ${lien_Outils_admin}
    # S'assurer que la page est chargee
    Wait Until Element Is Visible     ${lien_titre_page_Outils_admin}
    Page Should Contain    Outils admin
    # click sur le lien Gestionnaire de catégorie
    Click Link     ${lien_titre_Gestionnaire_de_catégorie}
    # S'assure que le + est affiché quand on pose le cueseur sur l'élément Catégorie racine
    Mouse Over    ${lien_Catégorie_racine}
    Sleep    1
    #cliquer sur l'icone "+"
    Click Element    ${lien_Icon_ajouter}
    Sleep    3
    #remplir le champ Non de la catégorie
    Input Text    ${txt_champ_nom_catgr}    ${Nom_Catégorie}
    Sleep    2
    # Click sur le boutton OK
    Click Button    ${bouton_OK}
    #S'assurer que la catégorie a été crée
    Reload Page
    Page Should Contain    ${Nom_Catégorie}