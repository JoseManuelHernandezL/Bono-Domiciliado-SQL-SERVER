/*Revision de cifras Bono Domiciliado*/


SELECT * 
FROM
(SELECT 
	SEMANA,
	FUENTE AS ARCHIVO,
	SERVICIO,
	SUM(CONTEO) AS UNIDADES,
	SUM(IMPORTE) AS IMPORTE
FROM Cabecera_Payfile_Bono_Domiciliado
GROUP BY SEMANA,FUENTE,SERVICIO
UNION ALL
SElECT
	SEMANA,
	FUENTE AS ARCHIVO,
	'DEBITO'SERVICIO,
	SUM(CONTEO) AS UNIDADES,
	SUM(IMPORTE) AS IMPORTE
FROM Detalle_Payfile_Bono_Domiciliado
GROUP BY SEMANA,FUENTE
UNION ALL
SELECT
	SEMANA,
	FUENTE AS ARCHIVO,
	'DEBITO'SERVICIO,
	SUM(ACTIVADAS_TOTAL) AS UNIDADES,
	SUM(IMPORTE_BONO_DOMICILIADO) AS IMPORTE
FROM Detalle_Pago_Bonos_Domiciliado
GROUP BY SEMANA,FUENTE
UNION ALL
SELECT
    SEMANA,
    FUENTE AS ARCHIVO,
    'DEBITO' AS SERVICIO,
    COUNT(PAIS) AS UNIDADES,
	NULL AS IMPORTE
FROM Detalle_Bonos_Domiciliado_WEBI
GROUP BY SEMANA, FUENTE) AS a
WHERE SEMANA = 'Semana del 27 al 02 de 06-2024'