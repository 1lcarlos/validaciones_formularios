CASE
WHEN 
attribute(get_feature('cca_calificartipo', 'iliCode','Residencial'),'T_Id') = tipo_calificar
THEN subtotal_estructura+subtotal_acabados+subtotal_banio+subtotal_cocina
--Inicio Caso comercial
WHEN 
attribute(get_feature('cca_calificartipo', 'iliCode','Comercial'),'T_Id') = tipo_calificar
THEN subtotal_estructura+subtotal_acabados+subtotal_banio+subtotal_cocina
--Inicio Casos Industrial----
ELSE
    subtotal_estructura+subtotal_acabados+subtotal_banio+subtotal_cocina+subtotal_cerchas
END