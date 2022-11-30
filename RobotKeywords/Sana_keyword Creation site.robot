#Locators
#Options Menu Principal Elements
txt_MenuSite="xpath=//span[@id='HEADER_SITES_MENU_text']"
txt_MenuCreerSite="xpath=//td[@id='HEADER_SITES_MENU_CREATE_SITE_text']"

#Formulaire Creer Site Elements
txt_BtTypSite="xpath=//td[@class='dijitReset dijitRight dijitButtonNode dijitArrowButton dijitDownArrowButton dijitArrowButtonContainer']/input"
txtElementListeDeroulant="xpath=//span[text()='Site de Collaboration']"
txt_NomSite="name=title"
txt_DesSite="xpath=//textarea[@name='description'][@class='dijitTextBox dijitTextArea']"
locVisibilitySite1="//input[@name='visibility' and @value="
locVisibilitySite3="]"
txt_BtCreerSite="id=CREATE_SITE_DIALOG_OK_label"

*** Variables ***
${TIMEOUT}    5s
${vNomSite}    SiteTestAminaS123
${vDesSite}    SiteTestAminaS123
${valueVisibilty}    'MODERATED'   
#${valueVisibilty} = 'PUBLIC' si le site est de type Public
#${valueVisibilty} = 'MODERATED'si le site est de type Modéré
#${valueVisibilty} = 'PRIVATE' si le site est de type Liste privée

Creer un site
    [Arguments]    ${vNomSite}    ${vDesSite}    ${valueVisibilty}
    # CLIQUER SUR MENU SITES
    Click Element    ${txt_MenuSite}
    wait until element is visible  ${txt_MenuCreerSite}
    Click Element    ${txt_MenuCreerSite}
    # REMPLIR LE FORMULAIRE CEARTION DU SITE
    Click Element    ${txt_BtTypSite}
    #Sleep    5
    Page Should Contain Element    ${txtElementListeDeroulant}
    Click Element    ${txtElementListeDeroulant}
    Input Text    ${txt_NomSite}    ${vNomSite}
    Input Text    ${txt_DesSite}    ${vDesSite}
    Click Element    ${locVisibilitySite1}${valueVisibilty}${locVisibilitySite3}
    Sleep    2
    Click Element    ${txt_BtCreerSite}
    Sleep    2
    # VERIFIER QUE LE SITE EST AJOUTEE
    Wait Until Page Contains    ${vNomSite}    timeout=10s 
    Page Should Contain    ${vNomSite}  