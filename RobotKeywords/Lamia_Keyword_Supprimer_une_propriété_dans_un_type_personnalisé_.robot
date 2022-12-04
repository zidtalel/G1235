
Locators Supprimer une propriété dans un type personnalisé

lien_Outils_admin="//a[@title='Outils admin']"
lien_titre_page_Outils_admin="(//span[@title='Outils admin'])[1]"
lien_titre_Gestionnaire_de_modeles="//a[@title='Gestionnaire de modèles']"
lien_nom_model1="//span[@data-dojo-attach-event='ondijitclick:onLinkClick']//span[@class='value'][normalize-space()='"
nom_model="Lamia_model"
lien_nom_model2="']"
lien_type_personnalisé1="//span[text()='"
nom_type_personnalisé="lamia_md:Lamia_type"
lien_type_personnalisé2="']"
lien_Action1="//span[contains(text(),'"
nom_propriété="Top_Gun"
lien_Action2="')]/ancestor::tr/descendant::span[text()='Actions']"
lien_Supprimer2="')]/ancestor::body/child::div[@class='dijitPopup Popup']/descendant::tr[@title='Supprimer']/child::td[text()='Supprimer']"
bouton_Supprimer="//div[@role='dialog']/descendant::span[text()='Supprimer']"   










Supprimer une propriété dans un type personnalisé    
    [Arguments]     ${nom_model}    ${nom_type_personnalisé}    ${nom_propriété}   
    # Click sur le lien Outils admin
    Click Link    ${lien_Outils_admin}
    # S'assurer que la page est chargee
    Wait Until Element Is Visible    ${lien_titre_page_Outils_admin}
    Element Should Contain    ${lien_titre_page_Outils_admin}    Outils admin
    # click sur le lien Gestionnaire de modeles
    Click Link    ${lien_titre_Gestionnaire_de_modeles}
    # S'assurer que le lien Gestionnaire de modeles est affichée
    Wait Until Element Is Visible    ${lien_titre_page_Outils_admin}
    Element Should Contain    ${lien_titre_page_Outils_admin}    Gestionnaire de modèles
    # click sur le nom du modele Lamia_model  
    Sleep    2 
    Wait Until Element Is Visible   ${lien_nom_model1}${nom_model}${lien_nom_model2}
    Click Element    ${lien_nom_model1}${nom_model}${lien_nom_model2}
    # click sur le nom de type personnalisé
    Sleep    1
    Click Element    ${lien_type_personnalisé1}${nom_type_personnalisé}${lien_type_personnalisé2}
    #click sur le lien Action
    Wait Until Element Is Visible    ${lien_Action1}${nom_propriété}${lien_Action2}
    Click Element    ${lien_Action1}${nom_propriété}${lien_Action2}
    #cliquer sur le lien Supprimer du menu Actions
    Sleep    1
    Click Element    ${lien_Action1}${nom_propriété}${lien_Supprimer2}
    Sleep    1
    # Click sur le boutton Supprimer dans la boite de dialogue
    Click Element    ${bouton_Supprimer}
    