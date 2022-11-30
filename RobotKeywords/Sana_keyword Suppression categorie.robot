#Locators
#Options Menu Principal Elements
txt_MenuOutilsAdmin="xpath=//a[normalize-space()='Outils admin']"

#Options Outils Administration Elements
txt_GestCat="xpath=//a[normalize-space()='Gestionnaire de catégories']"

#Gestionnaire Catégories Elements
txt_CatRacin="xpath=//span[@class='ygtvlabel']"
txt_AjoutCat="xpath=//span[@Class='insitu-add-root-category']"
txt_BoitDialog="xpath=//input[@type='text'][@tabindex='0']"
txt_OkBoitDialog="id=yui-gen7-button"
txt_CatAsup1="//span[text()='"
txt_CatAsup2="']"
txt_SuppCat="xpath=//span[@Class='insitu-delete-category']"
txt_BtSupp="xpath=//button[text()='Supprimer']"

*** Variables ***
${TIMEOUT}    5s
${vAddCat}    CatTset

Supprimer une categorie
    [Arguments]    ${vAddCat}        
    # 2/ CLIQUER SUR MENU OUTILS ADMINISTRATION
    Click Element    ${txt_MenuOutilsAdmin}
    # 3/ CLIQUER SUR OPTION GESTIONNAIRE DE CATEGORIES
    Click Element    ${txt_GestCat}
    #Click Element    ${txt_CatAsup}
    # SUPPRIMER LA CATEGORIE  
    Wait Until Element Is Visible    ${txt_CatAsup1}${vAddCat}${txt_CatAsup2}    
    Mouse Over    ${txt_CatAsup1}${vAddCat}${txt_CatAsup2}
    Wait Until Element Is Visible    ${txt_SuppCat}    
    Mouse Over    ${txt_SuppCat}
    Click Element    ${txt_SuppCat}
    Click Button    ${txt_BtSupp}
    Sleep    10
    # # VERIFIER QUE LA CATEGORIE EST SUPPRIMEE
    Reload Page
    Sleep    5
    Page Should Not Contain    ${vAddCat}