INSERT INTO cca_predio
(  id_operacion, departamento_municipio, clase_suelo_registro, categoria_suelo, validacion_datos_localizacion, nupre, numero_predial, numero_predial_anterior, validacion_datos_catastrales, tiene_fmi, codigo_orip, matricula_inmobiliaria, estado_folio, tiene_area_registral, area_registral_m2, validacion_datos_registrales, condicion_predio, total_unidades_privadas, numero_torres, area_total_terreno, area_total_terreno_privada, area_total_terreno_comun, area_total_construida, area_total_construida_privada, area_total_construida_comun, predio_matriz, coeficiente_copropiedad, validacion_condicion_predio, destinacion_economica, validacion_destinacion_economica, predio_tipo, validacion_tipo_predio, validacion_derechos, resultado_visita, otro_cual_resultado_visita, suscribe_acta_colindancia, valor_referencia, fecha_visita_predial, tipo_documento_quien_atendio, numero_documento_quien_atendio, nombres_apellidos_quien_atendio, celular, correo_electronico, observaciones, despojo_abandono, estrato, otro_cual_estrato, usuario)
VALUES(0, '', '', '', 0, 0, 0, '', '', '', 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', 0, '', '', '', '', '', 0, 0, '', 0);

/*Identificacion de los datos de los interesados*/

select i.espacio_de_nombres, i.local_id, i.nombre, i.documento_identidad,
i.primer_nombre, i.segundo_nombre, i.primer_apellido, i.segundo_apellido,
i.razon_social, ec.text_code as estadoCivil, ge.text_code as grupoEtnico, 
st.text_code as sexo, it.text_code as personaTipo,
itd.text_code as documentoTipo
from gc_interesado i
left join gc_estadociviltipo ec on ec.id = i.estado_civil
left join gc_grupoetnicotipo ge on ge.id = i.grupo_etnico
left join gc_sexotipo st on st.id = i.sexo 
left join gc_interesadotipo it on it.id = i.tipo 
left join gc_interesadodocumentotipo itd on itd.id = i.tipo_documento  
where i.local_id in (/*Numero prediales*/
)

/*Identificacion de los predios*/
select p.local_id , p.departamento, p.municipio, p.tiene_fmi, p.codigo_orip, p.matricula_inmobiliaria, 
p.numero_predial, p. numero_predial_anterior, p.nupre, p.interrelacionado, p.nupre_fmi, p.area, p.area_construida,
p.nombre as direccion, p.rectificacion_efecto_registral, cst.text_code as categoriaSuelo,
cs.text_code as claseSuelo, cp.text_code as condicionPredio,
det.text_code as destinacionEconomica
from gc_predio p 
left join gc_categoriasuelotipo cst on cst.id=p.categoria_suelo 
left join gc_clasesuelotipo cs ON cs.id = p.clase_suelo
left join gc_condicionprediotipo cp on cp.id = p.condicion_predio 
left join gc_destinacioneconomicatipo det ON det.id = p.destinacion_economica  
where p.numero_predial in (/*Numero prediales*/) 
or p.local_id in (/*Numero prediales*/) 



INSERT INTO cca_predio
( id_operacion, departamento_municipio, clase_suelo_registro, categoria_suelo, nupre, numero_predial, numero_predial_anterior, codigo_orip, matricula_inmobiliaria, condicion_predio, destinacion_economica) 
SELECT
    numero_predial, 
    '25436', 
    -- Clase Suelo
    CASE 
        WHEN p.claseSuelo = 'Urbano' THEN (SELECT T_Id FROM cca_clasesuelotipo cst WHERE cst.iliCode = 'Urbano')
        WHEN p.claseSuelo = 'Rural' THEN (SELECT T_Id FROM cca_clasesuelotipo cst WHERE cst.iliCode = 'Rural')
        WHEN p.claseSuelo = 'Expansion_Urbana' THEN (SELECT T_Id FROM cca_clasesuelotipo cst WHERE cst.iliCode = 'Expansion_Urbana')
        ELSE NULL
    END AS clase_suelo_registro,
    
    -- Categoría Suelo
    CASE 
        WHEN p.categoriaSuelo = 'Suburbano' THEN (SELECT T_Id FROM cca_categoriasuelotipo casut WHERE casut.iliCode = 'Suburbano')
        WHEN p.categoriaSuelo = 'Proteccion' THEN (SELECT T_Id FROM cca_categoriasuelotipo casut WHERE casut.iliCode = 'Proteccion')
        ELSE NULL
    END AS categoria_suelo,
    
    -- Nupre
    p.nupre,
    
    -- Número Predial
    p.numero_predial,
    
    -- Número Predial Anterior
    p.numero_predial_anterior,
    
    -- Código Orip
    p.codigo_orip,
    
    -- Matrícula Inmobiliaria
    p.matricula_inmobiliaria, 
    
    -- Condición del Predio
    CASE 
        WHEN p.condicionPredio = 'NPH' THEN (SELECT T_Id FROM cca_condicionprediotipo cpt WHERE cpt.iliCode = 'NPH')
        WHEN p.condicionPredio = 'PH.Matriz' THEN (SELECT T_Id FROM cca_condicionprediotipo cpt WHERE cpt.iliCode = 'PH.Matriz')
        WHEN p.condicionPredio = 'PH.Unidad_Predial' THEN (SELECT T_Id FROM cca_condicionprediotipo cpt WHERE cpt.iliCode = 'PH.Unidad_Predial')
        WHEN p.condicionPredio = 'Condominio.Matriz' THEN (SELECT T_Id FROM cca_condicionprediotipo cpt WHERE cpt.iliCode = 'Condominio.Matriz')
        WHEN p.condicionPredio = 'Condominio.Unidad_Predial' THEN (SELECT T_Id FROM cca_condicionprediotipo cpt WHERE cpt.iliCode = 'Condominio.Unidad_Predial')
        WHEN p.condicionPredio = 'Parque_Cementerio.Matriz' THEN (SELECT T_Id FROM cca_condicionprediotipo cpt WHERE cpt.iliCode = 'Parque_Cementerio.Matriz')
        WHEN p.condicionPredio = 'Parque_Cementerio.Unidad_Predial' THEN (SELECT T_Id FROM cca_condicionprediotipo cpt WHERE cpt.iliCode = 'Parque_Cementerio.Unidad_Predial')
        WHEN p.condicionPredio = 'Via' THEN (SELECT T_Id FROM cca_condicionprediotipo cpt WHERE cpt.iliCode = 'Via')
        WHEN p.condicionPredio = 'Informal' THEN (SELECT T_Id FROM cca_condicionprediotipo cpt WHERE cpt.iliCode = 'Informal')
        WHEN p.condicionPredio = 'Bien_Uso_Publico' THEN (SELECT T_Id FROM cca_condicionprediotipo cpt WHERE cpt.iliCode = 'Bien_Uso_Publico')
        ELSE NULL
    END AS condicion_predio,
    
    -- Destinación Económica
    CASE 
        WHEN p.destinacioneconomica = 'Acuicola' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Acuicola')
        WHEN p.destinacioneconomica = 'Agricola' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Agricola')
        WHEN p.destinacioneconomica = 'Agroindustrial' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Agroindustrial')
        WHEN p.destinacioneconomica = 'Agropecuario' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Agroindustrial')
        WHEN p.destinacioneconomica = 'Agroforestal' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Agroforestal')
        WHEN p.destinacioneconomica = 'Comercial' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Comercial')
        WHEN p.destinacioneconomica = 'Cultural' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Cultural')
        WHEN p.destinacioneconomica = 'Educativo' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Educativo')
        WHEN p.destinacioneconomica = 'Forestal' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Forestal')
        WHEN p.destinacioneconomica = 'Habitacional' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Habitacional')
        WHEN p.destinacioneconomica = 'Industrial' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Industrial')
        WHEN p.destinacioneconomica = 'Infraestructura_Asociada_Produccion_Agropecuaria' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Infraestructura_Asociada_Produccion_Agropecuaria')
        WHEN p.destinacioneconomica = 'Infraestructura_Hidraulica' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Infraestructura_Hidraulica')
        WHEN p.destinacioneconomica = 'Infraestructura_Saneamiento_Basico' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Infraestructura_Saneamiento_Basico')
        WHEN p.destinacioneconomica = 'Infraestructura_Seguridad' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Infraestructura_Seguridad')
        WHEN p.destinacioneconomica = 'Infraestructura_Transporte' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Infraestructura_Transporte')
        WHEN p.destinacioneconomica = 'Institucional' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Institucional')
        WHEN p.destinacioneconomica = 'Mineria_Hidrocarburos' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Mineria_Hidrocarburos')
        WHEN p.destinacioneconomica = 'Lote_Urbanizable_No_Urbanizado' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Lote_Urbanizable_No_Urbanizado')
        WHEN p.destinacioneconomica = 'Lote_Urbanizado_No_Construido' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Lote_Urbanizado_No_Construido')
        WHEN p.destinacioneconomica = 'Lote_No_Urbanizable' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Lote_No_Urbanizable')     
        WHEN p.destinacioneconomica = 'Pecuario' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Pecuario')
        WHEN p.destinacioneconomica = 'Recreacional' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Recreacional')
        WHEN p.destinacioneconomica = 'Religioso' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Religioso')
        WHEN p.destinacioneconomica = 'Salubridad' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Salubridad')
        WHEN p.destinacioneconomica = 'Servicios_Funerarios' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Servicios_Funerarios')
        WHEN p.destinacioneconomica = 'Uso_Publico' THEN (SELECT T_Id FROM cca_destinacioneconomicatipo det WHERE det.iliCode = 'Uso_Publico')
        ELSE NULL
    END AS destinacion_economica
FROM gc_predio p;