--Estructura -Armazon
CASE
  WHEN attribute(get_feature('cca_calificartipo', 'iliCode', 'Industrial'), 'T_Id') = tipo_calificar 
THEN   
"armazon" NOT IN (attribute(get_feature('cca_armazontipo', 'iliCode', 'Concreto_Cuatro_O_Mas_Pisos'), 'T_Id'))
ELSE TRUE
END
--Estructura -Cubierta
CASE
  WHEN attribute(get_feature('cca_calificartipo', 'iliCode', 'Industrial'), 'T_Id') = tipo_calificar 
    THEN 
      "cubierta" NOT IN (attribute(get_feature('cca_cubiertatipo', 'iliCode', 'Placa_Impermeabilizada_Cubierta_Lujosa_U_Ornamental'), 'T_Id'))
  ELSE TRUE
END
--Acabados Principales -Fachada
CASE
  WHEN attribute(get_feature('cca_calificartipo', 'iliCode', 'Industrial'), 'T_Id')= tipo_calificar
  THEN "fachada" NOT IN (attribute(get_feature('cca_fachadatipo', 'iliCode','Buena'), 'T_Id'),attribute(get_feature('cca_fachadatipo', 'iliCode','Lujosa'), 'T_Id'))  
ELSE TRUE
END

--Acabados Principales -Cubrimiento Muros
CASE
  WHEN attribute(get_feature('cca_calificartipo', 'iliCode', 'Industrial'), 'T_Id')= tipo_calificar
  THEN "cubrimiento_muros" NOT IN (attribute(get_feature('cca_cubrimientomurostipo', 'iliCode','Estuco_Ceramica_Papel_Fino'), 'T_Id'),attribute(get_feature('cca_cubrimientomurostipo', 'iliCode','Madera_Piedra_Ornamental'), 'T_Id'),attribute(get_feature('cca_cubrimientomurostipo', 'iliCode','Marmol_Lujosos_Otros'), 'T_Id'))  
ELSE TRUE
END

--Acabados Principales -Pisos
CASE
  WHEN attribute(get_feature('cca_calificartipo', 'iliCode', 'Industrial'), 'T_Id') = tipo_calificar 
THEN   
"piso" NOT IN (attribute(get_feature('cca_pisotipo', 'iliCode', 'Liston_Machihembrado'), 'T_Id'),attribute(get_feature('cca_pisotipo', 'iliCode', 'Parquet_Alfombra_Retal_De_Marmol'), 'T_Id'),attribute(get_feature('cca_pisotipo', 'iliCode', 'Retal_De_Marmol_Marmol_Otros_Lujosos'), 'T_Id'))
ELSE TRUE
END