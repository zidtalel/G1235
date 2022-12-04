
#Locators Page Outils admin-Gestion de modele

lien_Outils_admin="//a[normalize-space()='Outils admin']"
titre_Page_Outils_admin="//span[@title='Outils admin']"
lien_Gestion_modele="//a[normalize-space()='Gestionnaire de modèles']"
lien_Action1="//span[text()='"
Nom_model="Jack_Sparrow"
lien_Action2="']/ancestor::tr/descendant::span[text()='Actions']"
lien_Supprimer_DansMenuAction1="//span[text()='"
lien_Supprimer_DansMenuAction2="']/ancestor::body/descendant::div[@class='dijitPopup Popup']/descendant::td[text()='Supprimer']"
button_supprimer_DialogBox="//div[@role='dialog']/descendant::span[text()='Supprimer']"
lien_Desactiver_Dans_Menu_Actions1="//span[text()='"
lien_desactiver_DansMenuActions2="']/ancestor::body/descendant::div[@class='dijitPopup Popup']/descendant::tr[@title='Désactiver']"

---------------------------------------------------------------------------------------------------------------------------------------------------------




*** Variables ***   
${TIMEOUT}    5s
${Nom_model}    Jack_Sparrow1 

-----------------------------------------------------------------------------------------------------------------------------------------------------------

*** Keywords ***


Supprimer un modele
# La variable "Nom_model" contient le nom de model à supprimer
    [Arguments]    ${Nom_model}
# Cliquer sur le lien Outils admin
    Click Element    ${lien_Outils_admin}
# S'assurer que la page est chargée
    Wait Until Element Is Visible    ${titre_Page_Outils_admin}
    Element Should Contain   ${titre_Page_Outils_admin}   Outils admin
# Cliquer sur le lien Gestionnaire de modele
    Click Element    ${lien_Gestion_modele}
# S'assurer que la page est chargée
    Wait Until Element Is Visible   ${titre_Page_Outils_admin}
    Element Should Contain    ${titre_Page_Outils_admin}   Gestionnaire de modèles   
# Cliquer sur le lien Actions
    Wait Until Element Is Visible    ${lien_Action1}${Nom_model}${lien_Action2}
    Click Element    ${lien_Action1}${Nom_model}${lien_Action2}   
    Sleep    1    
# Cliquer sur le lien Supprimer dans le menu Actions  
    Run Keyword And Ignore Error    Click Element     ${lien_Desactiver_Dans_Menu_Actions1}${Nom_model}${lien_desactiver_DansMenuActions2}
    Sleep    1
    Click Element    ${lien_Action1}${Nom_model}${lien_Action2} 
    Sleep    1
    Click Element    ${lien_Supprimer_DansMenuAction1}${Nom_model}${lien_Supprimer_DansMenuAction2}
    Sleep    1
#Cliquer sur le boutton Supprimer dans la boite de dialogue
    Click Element    ${button_supprimer_DialogBox}
# S'assurer que le modele a été supprimé
    Reload Page
    Page Should Not Contain    ${Nom_model}  