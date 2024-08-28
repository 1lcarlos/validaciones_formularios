CASE
WHEN 
attribute(get_feature('cca_calificartipo', 'iliCode','Residencial'),'T_Id') = tipo_calificar
THEN
--Inicio fachada--
(CASE
WHEN attribute(get_feature('cca_fachadatipo', 'iliCode', 'Pobre'), 'T_Id') = fachada THEN 0
WHEN attribute(get_feature('cca_fachadatipo', 'iliCode', 'Sencilla'), 'T_Id') = fachada THEN 2
WHEN attribute(get_feature('cca_fachadatipo', 'iliCode', 'Regular'), 'T_Id') = fachada THEN 4
WHEN attribute(get_feature('cca_fachadatipo', 'iliCode', 'Buena'), 'T_Id') = fachada THEN 6
WHEN attribute(get_feature('cca_fachadatipo', 'iliCode', 'Lujosa'), 'T_Id') = fachada THEN 8
ELSE 0
END)
+ 
--Inicio CubrimientoMuros
(CASE
WHEN attribute(get_feature('cca_cubrimientomurostipo', 'iliCode', 'Sin_Cubrimiento'), 'T_Id') = cubrimiento_muros THEN 0
WHEN attribute(get_feature('cca_cubrimientomurostipo', 'iliCode', 'Paniete_Papel_Comun_Ladrillo_Prensado'), 'T_Id') = cubrimiento_muros THEN 1
WHEN attribute(get_feature('cca_cubrimientomurostipo', 'iliCode', 'Estuco_Ceramica_Papel_Fino'), 'T_Id') = cubrimiento_muros THEN 2
WHEN attribute(get_feature('cca_cubrimientomurostipo', 'iliCode', 'Madera_Piedra_Ornamental'), 'T_Id') = cubrimiento_muros THEN 3
WHEN attribute(get_feature('cca_cubrimientomurostipo', 'iliCode', 'Marmol_Lujosos_Otros'), 'T_Id') = cubrimiento_muros THEN 4
ELSE 0
END)
--Inicio Pisos
+ 
(CASE
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Tierra_Pisada'), 'T_Id') = piso THEN 0
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Cemento_Madera_Burda'), 'T_Id') = piso THEN 2
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Baldosa_Comun_De_Cemento_Tablon_Ladrillo'), 'T_Id') = piso THEN 3
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Liston_Machihembrado'), 'T_Id') = piso THEN 4
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Tableta_Caucho_Acrilico_Granito_Baldosa_Fina'), 'T_Id') = piso THEN 6
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Parquet_Alfombra_Retal_De_Marmol'), 'T_Id') = piso THEN 8
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Retal_De_Marmol_Marmol_Otros_Lujosos'), 'T_Id') = piso THEN 9
ELSE 0
END)
+ 
(CASE
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Malo'), 'T_Id') = conservacion_acabados THEN 0
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Regular'), 'T_Id') = conservacion_acabados THEN 2
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Bueno'), 'T_Id') = conservacion_acabados THEN 4
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Excelente'), 'T_Id') = conservacion_acabados THEN 5
ELSE 0
END)

--Inicio cases comercial----
WHEN 
attribute(get_feature('cca_calificartipo', 'iliCode','Comercial'),'T_Id') = tipo_calificar
THEN
--Inicio Fachada
(CASE
WHEN attribute(get_feature('cca_fachadatipo', 'iliCode', 'Pobre'), 'T_Id') = fachada THEN 2
WHEN attribute(get_feature('cca_fachadatipo', 'iliCode', 'Sencilla'), 'T_Id') = fachada THEN 4
WHEN attribute(get_feature('cca_fachadatipo', 'iliCode', 'Regular'), 'T_Id') = fachada THEN 6
WHEN attribute(get_feature('cca_fachadatipo', 'iliCode', 'Buena'), 'T_Id') = fachada THEN 8
WHEN attribute(get_feature('cca_fachadatipo', 'iliCode', 'Lujosa'), 'T_Id') = fachada THEN 12
ELSE 0
END)
+ 
--Inicio cubrimiento muros
(CASE
WHEN attribute(get_feature('cca_cubrimientomurostipo', 'iliCode', 'Sin_Cubrimiento'), 'T_Id') = cubrimiento_muros THEN 0
WHEN attribute(get_feature('cca_cubrimientomurostipo', 'iliCode', 'Paniete_Papel_Comun_Ladrillo_Prensado'), 'T_Id') = cubrimiento_muros THEN 2
WHEN attribute(get_feature('cca_cubrimientomurostipo', 'iliCode', 'Estuco_Ceramica_Papel_Fino'), 'T_Id') = cubrimiento_muros THEN 3
WHEN attribute(get_feature('cca_cubrimientomurostipo', 'iliCode', 'Madera_Piedra_Ornamental'), 'T_Id') = cubrimiento_muros THEN 5
WHEN attribute(get_feature('cca_cubrimientomurostipo', 'iliCode', 'Marmol_Lujosos_Otros'), 'T_Id') = cubrimiento_muros THEN 7
ELSE 0
END)
--Inicio Pisos
+ 
(CASE
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Tierra_Pisada'), 'T_Id') = piso THEN 0
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Cemento_Madera_Burda'), 'T_Id') = piso THEN 3
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Baldosa_Comun_De_Cemento_Tablon_Ladrillo'), 'T_Id') = piso THEN 5
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Liston_Machihembrado'), 'T_Id') = piso THEN 7
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Tableta_Caucho_Acrilico_Granito_Baldosa_Fina'), 'T_Id') = piso THEN 9
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Parquet_Alfombra_Retal_De_Marmol'), 'T_Id') = piso THEN 11
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Retal_De_Marmol_Marmol_Otros_Lujosos'), 'T_Id') = piso THEN 13
ELSE 0
END)
+ 
(CASE
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Malo'), 'T_Id') = conservacion_acabados THEN 0
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Regular'), 'T_Id') = conservacion_acabados THEN 2
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Bueno'), 'T_Id') = conservacion_acabados THEN 4
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Excelente'), 'T_Id') = conservacion_acabados THEN 5
ELSE 0
END)
--Inicio Casos Industrial----
ELSE
--Inicio Fachada
(CASE
WHEN attribute(get_feature('cca_fachadatipo', 'iliCode', 'Pobre'), 'T_Id') = fachada THEN 2
WHEN attribute(get_feature('cca_fachadatipo', 'iliCode', 'Sencilla'), 'T_Id') = fachada THEN 4
WHEN attribute(get_feature('cca_fachadatipo', 'iliCode', 'Regular'), 'T_Id') = fachada THEN 6
ELSE 0
END)
+ 
--Inicio cubrimiento muros
(CASE
WHEN attribute(get_feature('cca_cubrimientomurostipo', 'iliCode', 'Sin_Cubrimiento'), 'T_Id') = cubrimiento_muros THEN 0
WHEN attribute(get_feature('cca_cubrimientomurostipo', 'iliCode', 'Paniete_Papel_Comun_Ladrillo_Prensado'), 'T_Id') = cubrimiento_muros THEN 2
ELSE 0
END)
--Inicio Pisos
+ 
(CASE
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Tierra_Pisada'), 'T_Id') = piso THEN 0
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Cemento_Madera_Burda'), 'T_Id') = piso THEN 3
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Baldosa_Comun_De_Cemento_Tablon_Ladrillo'), 'T_Id') = piso THEN 5
WHEN attribute(get_feature('cca_pisotipo', 'iliCode', 'Tableta_Caucho_Acrilico_Granito_Baldosa_Fina'), 'T_Id') = piso THEN 9
ELSE 0
END)
+ 
(CASE
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Malo'), 'T_Id') = conservacion_acabados THEN 0
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Regular'), 'T_Id') = conservacion_acabados THEN 2
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Bueno'), 'T_Id') = conservacion_acabados THEN 4
WHEN attribute(get_feature('cca_estadoconservaciontipo', 'iliCode', 'Excelente'), 'T_Id') = conservacion_acabados THEN 5
ELSE 0
END)
END