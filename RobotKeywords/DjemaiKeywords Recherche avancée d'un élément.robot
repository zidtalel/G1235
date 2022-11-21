#Recherche Elements
btn_Loupe_Rchrch="Xpath=//*[@id='HEADER_SEARCH_BOX_DROPDOWN_MENU']/img"
btn_Rchrch_Avnce="Xpath=//*[@id='HEADER_SEARCH_BOX_ADVANCED_SEARCH_text']/a"


#Recherche avancée Page Elements
txt_MotsCles_ZonRechrchAvance="Xpath=//*[@id='page_x002e_search_x002e_advsearch_x0023_default-search-text']"
txt_Nom_ZonRechrchAvance="Xpath=//*[@id='page_x002e_search_x002e_advsearch_x0023_default_0_prop_cm_name']"
txt_Titre_ZonRchrchAvance="Xpath=//*[@id='page_x002e_search_x002e_advsearch_x0023_default_0_prop_cm_title']"
txt_Dscpt_ZonRchrchAvance="Xpath=//*[@id='page_x002e_search_x002e_advsearch_x0023_default_0_prop_cm_description']"
Type_MIME="Xpath=//*[@id='page_x002e_search_x002e_advsearch_x0023_default_0_prop_mimetype']"

txt_Modfctor_ZonRchrchAvance="Xpath=//*[@id='page_x002e_search_x002e_advsearch_x0023_default_0_prop_cm_modifier']"
btn_Rchrch_ZonRchrchAvance="Xpath=//*[@id='page_x002e_search_x002e_advsearch_x0023_default-search-button-1-button']"



Recherche avancée d'un élément
    #Cliquer sur la loupe dans la zone de recherche
    Click Element    ${btn_Loupe_Rchrch}
    Sleep    2
    Click Element    ${btn_Rchrch_Avnce}
    Sleep    2
    [Arguments]    ${MotsCles_ZonRechrchAvance}    ${Nom_ZonRechrchAvance}    ${Titre_ZonRchrchAvance}    ${Dscpt_ZonRchrchAvance}    ${Modfctor_ZonRchrchAvance}
    #Cas de tests manuel
    Input text    ${txt_MotsCles_ZonRechrchAvance}    ${MotsCles_ZonRechrchAvance}
    Input text    ${txt_Nom_ZonRechrchAvance}    ${Nom_ZonRechrchAvance}
    Input text    ${txt_Titre_ZonRchrchAvance}    ${Titre_ZonRchrchAvance}   
    Input text    ${txt_Dscpt_ZonRchrchAvance}    ${Dscpt_ZonRchrchAvance}
    Click Element    ${Type_MIME}
    Sleep    3
    Click Element  xpath=//select[@name="products"]/option[@value=3244]"]/option[@value=3244]
    Input text    ${txt_Modfctor_ZonRchrchAvance}    ${Modfctor_ZonRchrchAvance} 
    Click Element    ${btn_Rchrch_ZonRchrchAvance}       