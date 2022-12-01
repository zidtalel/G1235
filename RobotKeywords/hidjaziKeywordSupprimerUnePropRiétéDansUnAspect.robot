les localisateurs:
#Outils admin and Utilisateur Page Element
link_OutilsAdmin="xpath=//*[@id='HEADER_ADMIN_CONSOLE_text']/a"








#Supprimer-une propriété dans un aspet
link_Gestionnaire_de_modéles="xpath=//*[@id='page_x002e_tools_x002e_admin-console_x0023_default-body']/ul[1]/li[7]/span/a"
link_modéles1="(//span[contains(text(),'"
link_modéles2="')])[1]"
Link_Aspect1="(//span[contains(text(),'"
Link_Aspect2="')])[1]"
Link_Action1="xpath=//span[text()='"
Link_Action2="']/ancestor::tr/td[@class='alfresco-lists-views-layouts-Cell actionsColumn smallpad']/div/div/div/span/span[text()='Actions']"
Link_Supprimer1="xpath=//span[text()='"
Link_Supprimer2="']/ancestor::body//div[@class='dijitPopup Popup']/div/div/div[@class='alf-menu-group-items']/table/tbody/tr[@title='Supprimer']/td[@class='dijitReset dijitMenuItemLabel']"
Link_Confirmation_Supprime="xpath=//div/div/div[@class='footer']/span/span/span/span[text()='Supprimer']"


keyword suprimer une propriété dans un aspect
*** Settings ***
Documentation     Fichiers de scripts pour mes KeyWords du projet synthese
Library    SeleniumLibrary

Library    Collections

Variables    ../Locators/Locators.py

*** Variables ***

*** Keywords ***
Supprimer-une propriété dans un aspet
# Definir la valeur de timeout pour le cas de test
    [Arguments]    ${TIMEOUT}    ${vPropriete}    ${vModel}    ${vAspect}    
    Set Selenium Timeout    ${TIMEOUT}
    #cliquer sur le lien outil admin
    Click Element    ${link_OutilsAdmin}     
    # cliquer sur le lien gestionnaire des modeles   
    Click Element    ${link_Gestionnaire_de_modéles}
    Sleep    3s
    #cliquer sur le modéle
    Click Element    ${link_modéles1}${vModel}${link_modéles2}        
    Sleep    3s
    #cliquer l'aspect
    Click Element    ${Link_Aspect1}${vAspect}${Link_Aspect2}
    Sleep    3s
    #cliquer sur le bouton Action
    Click Element    ${Link_Action1}${vPropriete}${Link_Action2} 
    
    #cliquer sur le bouton supprimer  
    Sleep    3s
    Click Element    ${Link_Supprimer1}${vPropriete}${Link_Supprimer2}
    Sleep    3
    #cliquer sur la confirmation de supprimer
    Click Element    ${Link_Confirmation_Supprime}
