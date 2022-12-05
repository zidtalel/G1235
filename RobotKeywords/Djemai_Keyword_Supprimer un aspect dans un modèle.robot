#Dashboard Page Elements
lbl_Title="xpath=//h1[@id='HEADER_TITLE']/span"
link_HeaderUserMenu="id=HEADER_USER_MENU_POPUP_text"
link_HeaderDeconnexion="id=HEADER_USER_MENU_LOGOUT_text"
link_Sites="xpath=//*[@id='HEADER_SITES_MENU_text']"
link_MesSites="xpath=//*[@id='HEADER_SITES_MENU_MY_SITES_text']/a"
link_SiteDeEquipe2="xpath=//*[@id='template_x002e_user-sites_x002e_user-sites_x0023_default-sites']/li[1]/p/a"


#Outils Admins Page Elements
tab_OutislAdmi="Xpath://a[@href='/share/page/console/admin-console/application']"
elemnt_GestionnaireDeModeles="Xpath://a[@href='custom-model-manager']"



#Gestionnaire de modèles Elemnts
model_A_Modifier1="//span[contains(text(),'"
model_A_Modifier2="')]"
action_Aspct_A_Supprimer1="//span[text()='"
action_Aspct_A_Supprimer2="']/ancestor::td/following::span[text()='Actions']"
# X_Supprimer1="(//span[text()='"
# X_Supprimer2="']/ancestor::body//tr[@title='Concepteur de disposition']/following::tr[@aria-label='Supprimer ']/td/following::td[text()='Supprimer'])[1]"
btn_Cnfrm_Supp_Aspe="xpath://div[@class='dialog-body']/following::span[contains(text(),'Supprimer')]"
X_Supprimer="//div[@class='dijitPopup Popup']//td[text()='Supprimer']"




Supprimer un aspect(dans un modèle déjà créé)
    [Documentation]    Ce keyword permet de supprimer un aspect d'un modele
    [Arguments]    ${non_Modele}    ${nom_Aspect}    
    #Cliquer sur l'onglet: Gestion de modeles
    Click Element    ${tab_OutislAdmi}
    #S'assurer que c'est bien la page "Outils admin" qui s'affiche
    Page Should Contain    Outils admin
    #Cliquer sur le lien: Gestion de modeles
    Click Element    ${elemnt_GestionnaireDeModeles}
    #Attendre que l'élément s'affiche
    Wait Until Element Is Visible    ${elemnt_GestionnaireDeModeles}
    #S'assurer que c'est bien la page "Gestionnaire de modèles" qui s'affiche
    Page Should Contain    Gestionnaire de modèles
    #Attendre que l'élément devient disponible
    Wait Until Element Is Enabled    ${model_A_Modifier1}${non_Modele}${model_A_Modifier2}
    #Choisire le modele a modifier et y cliquer dessus
    Click Element    ${model_A_Modifier1}${non_Modele}${model_A_Modifier2}
    #Wait Until Element Is Visible    ${Buttn_ActionPA}
    Sleep    2
    #Cliquer sur le bouton Action corespondant a l'aspect a supprimer
    Click Element   ${action_Aspct_A_Supprimer1}${nom_Aspect}${action_Aspct_A_Supprimer2}
    #Attendre j'usqu'a que l'élément devien visible
    Sleep    3
    Click Element    ${X_Supprimer}
    Click Element    ${btn_Cnfrm_Supp_Aspe}