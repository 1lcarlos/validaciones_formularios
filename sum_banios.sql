CASE
WHEN 
attribute(get_feature('cca_calificartipo', 'iliCode','Residencial'),'T_Id') = tipo_calificar
THEN
--Inicio Tamaño--
(CASE
WHEN attribute(get_feature('cca_tamaniobaniotipo', 'iliCode', 'Sin_Banio'), 'T_Id') = tamanio_banio THEN 0
WHEN attribute(get_feature('cca_tamaniobaniotipo', 'iliCode', 'Pequenio'), 'T_Id') = tamanio_banio THEN 1
WHEN attribute(get_feature('cca_tamaniobaniotipo', 'iliCode', 'Mediano'), 'T_Id') = tamanio_banio THEN 2
WHEN attribute(get_feature('cca_tamaniobaniotipo', 'iliCode', 'Grande'), 'T_Id') = tamanio_banio THEN 3
ELSE 0
END)
+
--Inicio Enchape-- 
(CASE
WHEN attribute(get_feature('cca_enchapetipo', 'iliCode', 'Sin_Cubrimiento'), 'T_Id') = enchape_banio THEN 0
WHEN attribute(get_feature('cca_enchapetipo', 'iliCode', 'Paniete_Baldosa_Comun_De_Cemento'), 'T_Id') = enchape_banio THEN 1
WHEN attribute(get_feature('cca_enchapetipo', 'iliCode', 'Baldosin_Unicolor_Papel_Comun'), 'T_Id') = enchape_banio THEN 2
WHEN attribute(get_feature('cca_enchapetipo', 'iliCode', 'ConcretoBaldosin_Decorado_Papel_Fino_Prefabricado'), 'T_Id') = enchape_banio THEN 3
WHEN attribute(get_feature('cca_enchapetipo', 'iliCode', 'Ceramica_Cristanac_Granito'), 'T_Id') = enchape_banio THEN 4
WHEN attribute(get_feature('cca_enchapetipo', 'iliCode', 'Marmol_enchape_lujoso'), 'T_Id') = enchape_banio THEN 5
ELSE 0
END)
+ 
--Inicio Mobiliario
(CASE
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Pobre'), 'T_Id') = mobiliario_banio THEN 0
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Sencillo'), 'T_Id') = mobiliario_banio THEN 3
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Regular'), 'T_Id') = mobiliario_banio THEN 6
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Bueno'), 'T_Id') = mobiliario_banio THEN 9
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Lujoso'), 'T_Id') = mobiliario_banio THEN 11
ELSE 0
END)
+ 
(CASE
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Malo'), 'T_Id') = conservacion_banio THEN 0
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Regular'), 'T_Id') = conservacion_banio THEN 2
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Bueno'), 'T_Id') = conservacion_banio THEN 4
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Excelente'), 'T_Id') = conservacion_banio THEN 5
ELSE 0
END)

--Inicio cases comercial----
WHEN 
attribute(get_feature('cca_calificartipo', 'iliCode','Comercial'),'T_Id') = tipo_calificar
THEN

--Inicio Mobiliario
(CASE
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Pobre'), 'T_Id') = mobiliario_banio THEN 0
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Sencillo'), 'T_Id') = mobiliario_banio THEN 3
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Regular'), 'T_Id') = mobiliario_banio THEN 6
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Bueno'), 'T_Id') = mobiliario_banio THEN 9
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Lujoso'), 'T_Id') = mobiliario_banio THEN 16
ELSE 0
END)
--Inicio Casos Industrial----
ELSE
--Inicio Mobiliario
(CASE
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Pobre'), 'T_Id') = mobiliario_banio THEN 0
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Sencillo'), 'T_Id') = mobiliario_banio THEN 3
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Regular'), 'T_Id') = mobiliario_banio THEN 6
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Bueno'), 'T_Id') = mobiliario_banio THEN 9
WHEN attribute(get_feature('cca_mobiliariotipo', 'iliCode', 'Lujoso'), 'T_Id') = mobiliario_banio THEN 16
ELSE 0
END)
END