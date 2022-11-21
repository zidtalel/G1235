les localisateurs:
#Outils admin and Utilisateur Page Element
link_OutilsAdmin="xpath=//*[@id='HEADER_ADMIN_CONSOLE_text']/a"








#Supprimer-une propriété dans un aspet
link_Gestionnaire_de_modéles="xpath=//*[@id='page_x002e_tools_x002e_admin-console_x0023_default-body']/ul[1]/li[7]/span/a"
link_modéles="(//span[contains(text(),'nadji')])[1]"
Link_Aspect="(//span[contains(text(),'nadji:aspectNadji')])[1]"
Link_Action="xpath=//span[text()='nadji:propriete']/ancestor::tr/td[@class='alfresco-lists-views-layouts-Cell actionsColumn smallpad']/div/div/div/span/span[text()='Actions']"
Link_Supprimer="(//img[@title='Supprimer'])[32]"



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
    [Arguments]    ${TIMEOUT}    
    Set Selenium Timeout    ${TIMEOUT}
    Click Element    ${link_OutilsAdmin}    
    Click Element    ${link_Gestionnaire_de_modéles}
    Sleep    3s
    Click Element    ${link_modéles}
    Sleep    3s
    Click Element    ${Link_Aspect}
    Sleep    3s
    Click Element    ${Link_Action}   
    Click Element    ${Link_Supprimer}
    Sleep    3
    Click Button    xpaht=//*[@id="CMM_DELETE_PROPERTY_DIALOG"]/div[2]/div[2]/span[1]/span    
