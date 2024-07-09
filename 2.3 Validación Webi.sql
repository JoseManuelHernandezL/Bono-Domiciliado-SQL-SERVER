SELECT
	*, 
	CASE
		WHEN [Metodo Pago] = 'Débito' OR [Metodo Pago] = 'Crédito 'THEN 'OK'
		ELSE 'Revisar'
	END AS Validación	
FROM Detalle_Bonos_Domiciliado_WEBI
WHERE SEMANA = 'Semana del 01 al 07 de 04-2024'