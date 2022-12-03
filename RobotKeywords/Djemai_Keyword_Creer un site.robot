Locators:

#Formulaire Creer Site:

Elmnt_Sites="//span[@class='alfresco-menus-AlfMenuBarPopup__arrow']"
#Elmnt_Sites="xpath=//*[@id='HEADER_SITES_MENU_text']"
Elmnt_CreerSite="//td[contains(text(),'Créer un site')]"
List_Type="//*[@id='CREATE_SITE_FIELD_PRESET_CONTROL']/tbody/tr/td[2]/input"
Visibilité="//input[@name='visibility']"
txt_NomSite="name=title"
txt_DescrptSite="xpath=//textarea[@name='description'][@class='dijitTextBox dijitTextArea']"
Publique="//input[@type='radio' and @name='visibility' and (@value='PUBLIC' or @id='CREATE_SITE_FIELD_VISIBILITY_CONTROL_OPTION0_BUTTON')]"
Modéré="/CREATE_SITE_FIELD_VISIBILITY_CONTROL_OPTION1_BUTTON"
Liste_privée="(//input[@id='CREATE_SITE_FIELD_VISIBILITY_CONTROL_OPTION2_BUTTON'])[1]"
BtCreerSite="id=CREATE_SITE_DIALOG_OK_label"



Keyword:

Creer un site
    [Documentation]    Ce keyword permet de créer un site  
    [Arguments]    ${vType}    ${vNomSite}    ${vDescrpSite}    
    # CLIQUER SUR L'ANGTET SITES
    Click Element    ${Elmnt_Sites}
    Wait until element is visible  ${Elmnt_CreerSite}
    Click Element    ${Elmnt_CreerSite}
    Sleep    3
    # REMPLIR LE FORMULAIRE CEARTION DU SITE
    Click Element    ${List_Type}
    Input Text    ${txt_NomSite}    ${vNomSite}
    Input Text    ${txt_DescrptSite}    ${vDescrpSite}
    Sleep    2
    Click Element    ${BtCreerSite}
    Sleep    2
    # VERIFIER QUE LE SITE EST AJOUTEE
    Wait Until Page Contains    ${vNomSite}    timeout=10s 
    Page Should Contain    ${vNomSite}