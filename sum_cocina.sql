CASE
WHEN 
attribute(get_feature('cca_calificartipo', 'iliCode','Residencial'),'T_Id') = tipo_calificar
THEN
--Inicio Tamaño--
(CASE
WHEN attribute(get_feature('cca_tamaniococinatipo', 'iliCode', 'Sin_Cocina'), 'T_Id') = tamanio_cocina THEN 0
WHEN attribute(get_feature('cca_tamaniococinatipo', 'iliCode', 'Pequenia'), 'T_Id') = tamanio_cocina THEN 1
WHEN attribute(get_feature('cca_tamaniococinatipo', 'iliCode', 'Mediana'), 'T_Id') = tamanio_cocina THEN 2
WHEN attribute(get_feature('cca_tamaniococinatipo', 'iliCode', 'Grande'), 'T_Id') = tamanio_cocina THEN 3
ELSE 0
END)
+
--Inicio Enchape-- 
(CASE
WHEN attribute(get_feature('cca_enchapetipo', 'iliCode', 'Sin_Cubrimiento'), 'T_Id') = enchape_cocina THEN 0
WHEN attribute(get_feature('cca_enchapetipo', 'iliCode', 'Paniete_Baldosa_Comun_De_Cemento'), 'T_Id') = enchape_cocina THEN 1
WHEN attribute(get_feature('cca_enchapetipo', 'iliCode', 'Baldosin_Unicolor_Papel_Comun'), 'T_Id') = enchape_cocina THEN 2
WHEN attribute(get_feature('cca_enchapetipo', 'iliCode', 'Baldosin_Decorado_Papel_Fino'), 'T_Id') = enchape_cocina THEN 3
WHEN attribute(get_feature('cca_enchapetipo', 'iliCode', 'Ceramica_Cristanac_Granito'), 'T_Id') = enchape_cocina THEN 4
WHEN attribute(get_feature('cca_enchapetipo', 'iliCode', 'Marmol_enchape_lujoso'), 'T_Id') = enchape_cocina THEN 5
ELSE 0
END)
+ 
--Inicio Mobiliario
(CASE
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Pobre'), 'T_Id') = mobiliario_cocina THEN 0
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Sencillo'), 'T_Id') = mobiliario_cocina THEN 2
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Regular'), 'T_Id') = mobiliario_cocina THEN 3
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Bueno'), 'T_Id') = mobiliario_cocina THEN 4
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Lujoso'), 'T_Id') = mobiliario_cocina THEN 6
ELSE 0
END)
+ 
(CASE
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Malo'), 'T_Id') = conservacion_cocina THEN 0
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Regular'), 'T_Id') = conservacion_cocina THEN 2
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Bueno'), 'T_Id') = conservacion_cocina THEN 4
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Excelente'), 'T_Id') = conservacion_cocina THEN 5
ELSE 0
END)

--Inicio cases comercial----
WHEN 
attribute(get_feature('cca_calificartipo', 'iliCode','Comercial'),'T_Id') = tipo_calificar
THEN

--Inicio Mobiliario
(CASE
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Pobre'), 'T_Id') = mobiliario_cocina THEN 0
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Sencillo'), 'T_Id') = mobiliario_cocina THEN 3
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Regular'), 'T_Id') = mobiliario_cocina THEN 6
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Bueno'), 'T_Id') = mobiliario_cocina THEN 9
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Lujoso'), 'T_Id') = mobiliario_cocina THEN 13
ELSE 0
END)
--Inicio Casos Industrial----
ELSE
--Inicio Mobiliario
(CASE
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Pobre'), 'T_Id') = mobiliario_cocina THEN 0
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Sencillo'), 'T_Id') = mobiliario_cocina THEN 3
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Regular'), 'T_Id') = mobiliario_cocina THEN 6
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Bueno'), 'T_Id') = mobiliario_cocina THEN 9
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Lujoso'), 'T_Id') = mobiliario_cocina THEN 13
ELSE 0
END)
END