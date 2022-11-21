Les localisateurs:
#Outils admin and Utilisateur Page Element
link_OutilsAdmin="xpath=//*[@id='HEADER_ADMIN_CONSOLE_text']/a"
link_Utilisateur="xpath=//*[@id='page_x002e_tools_x002e_admin-console_x0023_default-body']/ul[3]/li[2]/span/a"


#Nouvel Utilisateur Page Element
link_nouvelUtilisateur="xpath=//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-newuser-button-button']"
link_Prénom="xpath=//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-create-firstname']"
link_Nom="xpath=//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-create-lastname']"
link_E_MAIL="xpath=//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-create-email']"
link_Nom_Etilisateur="xpath=//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-create-username']"
link_Mot_De_Passe="xpath=//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-create-password']"
link_Confirme_Mot_De_Passe="xpath=//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-create-verifypassword']"
link_BouttonCréerUtilisateur="xpath=//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-createuser-ok-button-button']"

le keyword créer un utilisateur:
*** Settings ***
Documentation     Fichiers de scripts pour mes KeyWords du projet synthese
Library    SeleniumLibrary
Variables    ../Locators/Locators.py

*** Variables ***
${TIMEOUT}    5s

*** Keywords ***
Créer-un-utilisateur
# Definir la valeur de timeout pour le cas de test
    Set Selenium Timeout    ${TIMEOUT}
    Click Element    ${link_OutilsAdmin}    
    Click Element    ${link_Utilisateur}
    Click Element     ${link_nouvelUtilisateur}
    [Arguments]    ${vPrénom}    ${vNom}    ${v-E-Mail}    ${Nom_Utilisateur}    ${Mot_De_Passe}     
    Input Text    ${link_Prénom}    ${vPrénom}
    Input Text    ${link_Nom}    ${vNom}
    Input Text    ${link_E_MAIL}    ${v-E-Mail}
    Input Text    ${link_Nom_Etilisateur}     ${Nom_Utilisateur}
    Input Password    ${link_Mot_De_Passe}    ${Mot_De_Passe} 
    Input Password    ${link_Confirme_Mot_De_Passe}    ${Mot_De_Passe} 

    Click Button    ${link_BouttonCréerUtilisateur}
    