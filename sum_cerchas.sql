CASE
WHEN 
attribute(get_feature('cca_calificartipo', 'iliCode','Industrial'),'T_Id') = tipo_calificar
THEN
--Inicio Casos Industrial----
(CASE
WHEN attribute(get_feature('cca_cerchastipo', 'iliCode', 'Madera'), 'T_Id') = cerchas THEN 6
WHEN attribute(get_feature('cca_cerchastipo', 'iliCode', 'Metalica_Liviana'), 'T_Id') = cerchas THEN 12
WHEN attribute(get_feature('cca_cerchastipo', 'iliCode', 'Metalica_Mediana'), 'T_Id') = cerchas THEN 22
WHEN attribute(get_feature('cca_cerchastipo', 'iliCode', 'Metalica_Pesada'), 'T_Id') = cerchas THEN 34
WHEN attribute(get_feature('cca_cerchastipo', 'iliCode', 'Altura'), 'T_Id') = cerchas THEN 6
ELSE 0
END)

ELSE 0

END