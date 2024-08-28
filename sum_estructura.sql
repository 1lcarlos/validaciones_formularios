CASE
WHEN 
attribute(get_feature('cca_calificartipo', 'iliCode','Residencial'),'T_Id') = tipo_calificar
THEN
--Inicio Armazon--
(CASE
WHEN attribute(get_feature('cca_armazontipo', 'iliCode', 'Madera'), 'T_Id') = armazon THEN 0
WHEN attribute(get_feature('cca_armazontipo', 'iliCode', 'Prefabricado'), 'T_Id') = armazon THEN 1
WHEN attribute(get_feature('cca_armazontipo', 'iliCode', 'Ladrillo_Bloque'), 'T_Id') = armazon THEN 2
WHEN attribute(get_feature('cca_armazontipo', 'iliCode', 'Concreto_Hasta_Tres_Pisos'), 'T_Id') = armazon THEN 4
WHEN attribute(get_feature('cca_armazontipo', 'iliCode', 'Concreto_Cuatro_O_Mas_Pisos'), 'T_Id') = armazon THEN 6
ELSE 0
END)
+ 
(CASE
WHEN attribute(get_feature('cca_murostipo', 'iliCode', 'Materiales_Desecho_Esterilla'), 'T_Id') = muros THEN 0
WHEN attribute(get_feature('cca_murostipo', 'iliCode', 'Bahareque_Adobe_Tapia'), 'T_Id') = muros THEN 1
WHEN attribute(get_feature('cca_murostipo', 'iliCode', 'Madera'), 'T_Id') = muros THEN 2
WHEN attribute(get_feature('cca_murostipo', 'iliCode', 'Concreto_Prefabricado'), 'T_Id') = muros THEN 3
WHEN attribute(get_feature('cca_murostipo', 'iliCode', 'Bloque_Ladrillo'), 'T_Id') = muros THEN 4
ELSE 0
END)

+ 
(CASE
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Materiales_Desecho_Telas_Asfalticas'), 'T_Id') = cubierta THEN 1
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Zinc_Teja_De_Barro_Eternit_Rustico'), 'T_Id') = cubierta THEN 3
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Entrepiso_Cubierta_Provisional_Prefabricado'), 'T_Id') = cubierta THEN 6
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Eternit_O_Teja_De_Barro_Cubierta_Sencilla'), 'T_Id') = cubierta THEN 9
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Azotea_Aluminio_Placa_Sencilla_Con_Eternit'), 'T_Id') = cubierta THEN 13
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Placa_Impermeabilizada_Cubierta_Lujosa_U_Ornamental'), 'T_Id') = cubierta THEN 16
ELSE 0
END)
+ 
(CASE
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Malo'), 'T_Id') = conservacion_estructura THEN 0
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Regular'), 'T_Id') = conservacion_estructura THEN 2
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Bueno'), 'T_Id') = conservacion_estructura THEN 4
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Excelente'), 'T_Id') = conservacion_estructura THEN 5
ELSE 0
END)

--Inicio cases comercial----
WHEN 
attribute(get_feature('cca_calificartipo', 'iliCode','Comercial'),'T_Id') = tipo_calificar
THEN
(CASE
WHEN attribute(get_feature('cca_armazontipo', 'iliCode', 'Madera'), 'T_Id') = armazon THEN 4
WHEN attribute(get_feature('cca_armazontipo', 'iliCode', 'Prefabricado'), 'T_Id') = armazon THEN 8
WHEN attribute(get_feature('cca_armazontipo', 'iliCode', 'Ladrillo_Bloque'), 'T_Id') = armazon THEN 12
WHEN attribute(get_feature('cca_armazontipo', 'iliCode', 'Concreto_Hasta_Tres_Pisos'), 'T_Id') = armazon THEN 22
WHEN attribute(get_feature('cca_armazontipo', 'iliCode', 'Concreto_Cuatro_O_Mas_Pisos'), 'T_Id') = armazon THEN 22
ELSE 0
END)
+ 
(CASE
WHEN attribute(get_feature('cca_murostipo', 'iliCode', 'Materiales_Desecho_Esterilla'), 'T_Id') = muros THEN 0
WHEN attribute(get_feature('cca_murostipo', 'iliCode', 'Bahareque_Adobe_Tapia'), 'T_Id') = muros THEN 1
WHEN attribute(get_feature('cca_murostipo', 'iliCode', 'Madera'), 'T_Id') = muros THEN 2
WHEN attribute(get_feature('cca_murostipo', 'iliCode', 'Concreto_Prefabricado'), 'T_Id') = muros THEN 3
WHEN attribute(get_feature('cca_murostipo', 'iliCode', 'Bloque_Ladrillo'), 'T_Id') = muros THEN 4
ELSE 0
END)
+ 
(CASE
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Materiales_Desecho_Telas_Asfalticas'), 'T_Id') = cubierta THEN 1
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Zinc_Teja_De_Barro_Eternit_Rustico'), 'T_Id') = cubierta THEN 3
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Entrepiso_Cubierta_Provisional_Prefabricado'), 'T_Id') = cubierta THEN 6
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Eternit_O_Teja_De_Barro_Cubierta_Sencilla'), 'T_Id') = cubierta THEN 9
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Azotea_Aluminio_Placa_Sencilla_Con_Eternit'), 'T_Id') = cubierta THEN 13
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Placa_Impermeabilizada_Cubierta_Lujosa_U_Ornamental'), 'T_Id') = cubierta THEN 16
ELSE 0
END)
+ 
(CASE
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Malo'), 'T_Id') = conservacion_estructura THEN 0
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Regular'), 'T_Id') = conservacion_estructura THEN 2
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Bueno'), 'T_Id') = conservacion_estructura THEN 4
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Excelente'), 'T_Id') = conservacion_estructura THEN 5
ELSE 0
END)
--Inicio Casos Industrial----
ELSE
(CASE
WHEN attribute(get_feature('cca_armazontipo', 'iliCode', 'Madera'), 'T_Id') = armazon THEN 4
WHEN attribute(get_feature('cca_armazontipo', 'iliCode', 'Prefabricado'), 'T_Id') = armazon THEN 8
WHEN attribute(get_feature('cca_armazontipo', 'iliCode', 'Ladrillo_Bloque'), 'T_Id') = armazon THEN 12
WHEN attribute(get_feature('cca_armazontipo', 'iliCode', 'Concreto_Hasta_Tres_Pisos'), 'T_Id') = armazon THEN 22
ELSE 0
END)
+ 
(CASE
WHEN attribute(get_feature('cca_murostipo', 'iliCode', 'Materiales_Desecho_Esterilla'), 'T_Id') = muros THEN 0
WHEN attribute(get_feature('cca_murostipo', 'iliCode', 'Bahareque_Adobe_Tapia'), 'T_Id') = muros THEN 1
WHEN attribute(get_feature('cca_murostipo', 'iliCode', 'Madera'), 'T_Id') = muros THEN 2
WHEN attribute(get_feature('cca_murostipo', 'iliCode', 'Concreto_Prefabricado'), 'T_Id') = muros THEN 3
WHEN attribute(get_feature('cca_murostipo', 'iliCode', 'Bloque_Ladrillo'), 'T_Id') = muros THEN 4
ELSE 0
END)
+ 
(CASE
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Materiales_Desecho_Telas_Asfalticas'), 'T_Id') = cubierta THEN 1
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Zinc_Teja_De_Barro_Eternit_Rustico'), 'T_Id') = cubierta THEN 3
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Entrepiso_Cubierta_Provisional_Prefabricado'), 'T_Id') = cubierta THEN 6
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Eternit_O_Teja_De_Barro_Cubierta_Sencilla'), 'T_Id') = cubierta THEN 9
WHEN attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Azotea_Aluminio_Placa_Sencilla_Con_Eternit'), 'T_Id') = cubierta THEN 13
ELSE 0
END)
+ 
(CASE
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Malo'), 'T_Id') = conservacion_estructura THEN 0
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Regular'), 'T_Id') = conservacion_estructura THEN 2
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Bueno'), 'T_Id') = conservacion_estructura THEN 4
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Excelente'), 'T_Id') = conservacion_estructura THEN 5
ELSE 0
END)
END