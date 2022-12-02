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

Creer Categorie
    [Arguments]    ${vAddCat}
    # 1/ PRECONDITION: CREATION CATEGORIE "CatTset"
    # CLIQUER SUR MENU OUTILS ADMINISTRATION
    Click Element    ${txt_MenuOutilsAdmin}
    # CLIQUER SUR OPTION GESTIONNAIRE DE CATEGORIES
    Click Element    ${txt_GestCat}
    Mouse Over    ${txt_CatRacin}  
    # AJOUTER LA CATEGORIE  
    Wait Until Element Is Visible    ${txt_AjoutCat}    
    Mouse Over    ${txt_AjoutCat}
    Click Element    ${txt_AjoutCat}
    Input Text    ${txt_BoitDialog}    ${vAddCat} 
    Click Button    ${txt_OkBoitDialog}
    Sleep    20
    # VERIFIER QUE LA CATEGORIE EST AJOUTEE
    Reload Page
    Wait Until Page Contains    ${vAddCat}    
    Page Should Contain    ${vAddCat} 