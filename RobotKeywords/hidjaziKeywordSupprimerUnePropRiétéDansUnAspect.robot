Les localisateurs:
#Nouvel Utilisateur Page Element:
link_nouvelUtilisateur="xpath=//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-newuser-button-button']"
link_Prénom="xpath=//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-create-firstname']"
link_Nom="xpath=//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-create-lastname']"
link_E_MAIL="xpath=//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-create-email']"
link_Nom_Etilisateur="xpath=//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-create-username']"
link_Mot_De_Passe="xpath=//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-create-password']"
link_Confirme_Mot_De_Passe="xpath=//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-create-verifypassword']"
link_BouttonCréerUtilisateur="xpath=//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-createuser-ok-button-button']"




KeyWord Nouvel Utilisateur Page Element:

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

