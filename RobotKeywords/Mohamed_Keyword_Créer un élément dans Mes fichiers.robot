

#LOCATORS "Page Mes fichiers"

lien_Mesfichiers="//a[@title='Mes fichiers']"  
titre_page_Mesfichiers="//span[@title='Mes fichiers']"
btn_créer="//div[@class='create-content']/descendant::span[@class='first-child']/button"
Élmt_a_créer_dans_Menu_Créer1="//span[@class='"
Élmt_a_créer_dans_Menu_Créer2="-file']"
txt_Nom="//label[text()='Nom:']/following-sibling::*"
txt_Titre="//label[text()='Titre:']/following-sibling::*"
txt_Descrpt="//label[text()='Description:']/following-sibling::*"
btn_Enregstr_créer="//span[@class='yui-button yui-submit-button alf-primary-button']/span[@class='first-child']/button[@name='-']"


-------------------------------------------------------------------------------------------------------------------------------------------

*** Variables ***   
${TIMEOUT}    5s 
${Nom}    Mohamed_ST6     
${Titre}    SparrowFolder1      
${Description}    automation1
${Type_Élément}    folder
#${Type_Élément}    folder si on veux créer un dossier
#${Type_Élément}    text si on veux créer un fichier plein text 
#${Type_Élément}    html  si on veux créer un fichier HTML
#${Type_Élément}    xml  si on veux créer un fichier XML


-------------------------------------------------------------------------------------------------------------------------------------------------


*** Keywords ***


créer un élément dans Mes fichiers
    # La variable "Nom" contient le nom de l'élément à créer
    # La variable "Titre" contient le titre de l'élément à créer
    # La variable "Description" contient la Description de l'élément à créer
    [Arguments]    ${Type_Élément}    ${Nom}    ${Titre}    ${Description}
# Cliquer sur le lien Mes fichier
    Click Element    ${lien_Mesfichiers}
# S'assurer que la page est chargée
    Wait Until Element Is Visible    ${titre_page_Mesfichiers}
    Element Should Contain    ${titre_page_Mesfichiers}    Mes fichiers
# Cliquer sur le bouton Créer
    Sleep    1
    Click Button    ${btn_créer}
# Cliquer sur l'élément à créer (Dossier,fichier HTML,XML,text)
    Click Element    ${Élmt_a_créer_dans_Menu_Créer1}${Type_Élément}${Élmt_a_créer_dans_Menu_Créer2} 
# S'aisir le nom de l'élément a créer
    Sleep    1
    Input Text    ${txt_Nom}    ${Nom} 
# S'aisir le titre de l'élément à créer
    Input Text    ${txt_Titre}   ${Titre}
# S'aisir la description de l'élément à créer
    Input Text    ${txt_Descrpt}   ${Description}  
# Cliquer sur le bouton Enregistrer
    Click Button    ${btn_Enregstr_créer}
    Sleep    1
# S'assurer que l'élément a été créé
    Click Element    ${lien_Mesfichiers}
    Sleep    2
    Page Should Contain    ${Nom}