Locators:
#Recherche Elements
btn_Loupe_Rchrch="Xpath=//*[@id='HEADER_SEARCH_BOX_DROPDOWN_MENU']/img"
btn_Rchrch_Avnce="Xpath=//*[@id='HEADER_SEARCH_BOX_ADVANCED_SEARCH_text']/a"

#Recherche avancée Page Elements
txt_MotsCles_ZonRechrchAvance="Xpath=//*[@id='page_x002e_search_x002e_advsearch_x0023_default-search-text']"
txt_Nom_ZonRechrchAvance="Xpath=//*[@id='page_x002e_search_x002e_advsearch_x0023_default_0_prop_cm_name']"
txt_Titre_ZonRchrchAvance="Xpath=//*[@id='page_x002e_search_x002e_advsearch_x0023_default_0_prop_cm_title']"
txt_Dscpt_ZonRchrchAvance="Xpath=//*[@id='page_x002e_search_x002e_advsearch_x0023_default_0_prop_cm_description']"
Type_MIME="Xpath=//*[@id='page_x002e_search_x002e_advsearch_x0023_default_0_prop_mimetype']"
date_From="//input[@name='-' and contains(@id, 'date-from')]"
date_To="//input[@name='-' and contains(@id, 'date-to')]"
txt_Modfctor_ZonRchrchAvance="//*[@id='page_x002e_search_x002e_advsearch_x0023_default_0_prop_cm_modifier']"
btn_Rchrch_ZonRchrchAvance="Xpath=//*[@id='page_x002e_search_x002e_advsearch_x0023_default-search-button-1-button']"


Keyord:
Recherche avancée d'un élément
    [Documentation]    Ce keyword permet de faire une rechercher avancée d'un élement
    [Arguments]    ${MotsCles_ZonRechrchAvance}    ${Nom_ZonRechrchAvance}    ${Titre_ZonRchrchAvance}    
    ...    ${Dscpt_ZonRchrchAvance}    ${Type}    ${date_Début}    ${date_Fin}    ${Modfctor_ZonRchrchAvance}
    #Cliquer sur la loupe dans la zone de recherche
    Click Element    ${btn_Loupe_Rchrch}
    #Attendre j'usqu'a que l'élément devien visible
    Wait Until Element Is Visible    ${btn_Loupe_Rchrch}
    #Cliquer sur le lien "Recherche avancée..."
    Click Element    ${btn_Rchrch_Avnce}
    #Verivier le titre pour s'assurer que c'est la bonne page qui est ouverte
    Page Should Contain    Recherche avancée
    #Sellectionner et remplire les champs du formulairede recherche avancée
    Input text    ${txt_MotsCles_ZonRechrchAvance}    ${MotsCles_ZonRechrchAvance}
    Input text    ${txt_Nom_ZonRechrchAvance}    ${Nom_ZonRechrchAvance}
    Input text    ${txt_Titre_ZonRchrchAvance}    ${Titre_ZonRchrchAvance}   
    Input text    ${txt_Dscpt_ZonRchrchAvance}    ${Dscpt_ZonRchrchAvance}
    #Ouvrire la liste déroulante
    Click Element    ${Type_MIME}
    #Sellectionner un élément dans la liste déroulante
    Select From List By Label    ${Type_MIME}    ${Type}
    # Sellectionner et saisir le nom de modificateur
    Input text    ${txt_Modfctor_ZonRchrchAvance}    ${Modfctor_ZonRchrchAvance}
    # Sellectionner et saisir la date de début et la date de fin
    Input Text    ${date_From}    ${date_Début}
    Input Text    ${date_To}    ${date_Fin}
    #Cliquer sur le bouton de recherche 
    Click Element    ${btn_Rchrch_ZonRchrchAvance}
    #S'assurer que la rechercher est effectuer et la page des résultat s'affiche
    Page Should Contain    Rechercher       