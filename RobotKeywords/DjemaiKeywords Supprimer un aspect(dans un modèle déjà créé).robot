#Gestionnaire de modèles Elemnts
#Model_A_Supprimer="Xpath=//*[@id='alfresco_renderers_PropertyLink___61a407ef-7f22-4459-8ad1-86e8a505a161']/span/span[2]"
Model_A_Modifier="(//span[@class='value'][normalize-space()='ModelDeJimmy'])[1]"
Buttn_ActionPA="(//span[@class='alfresco-menus-AlfMenuBarPopup__arrow'][contains(text(),'▾')])[47]"
X_Supprimer="(//img[@title='Supprimer'])[32]"
Btn_Cnfrm_Supp_Aspe="xpath://button[text()='Supprimer']"



Supprimer un aspect(dans un modèle déjà créé)
    Click Element    ${tab_OutislAdmi}
    #Cliquer sur le lien: Gestion de modeles
    Click Element    ${elemnt_GestionnaireDeModeles}
    #Element Should Exist    ${Model_A_Supprimer}
    #Sleep    2
    #Click Link    ${Model_A_Supprimer}
    #Page Should Contain Element     xpath=//div[contains(@id,'-tableCtrlCnt')]
    #${Model_A_Supprimer}    Get Table Cell  xpath=//div[contains(@id,'-tableCtrlCnt')]/table/tbody  1   2
    #Click Element   ${Model_A_Supprimer}
    #@{Vtableau_DesModeles}    Get Element    Xpath=//*[@id="alfresco_lists_views_AlfListView___0476ca52-7b5f-4c68-874e-1130f1cc5cdb"]/table
    Click Element    ${Model_A_Modifier}
    Sleep    2
    Click Element   ${Buttn_ActionPA}
    Sleep    2
    Click Element    ${X_Supprimer}
    Sleep    2
    Click Button    ${Btn_Cnfrm_Supp_Aspe}