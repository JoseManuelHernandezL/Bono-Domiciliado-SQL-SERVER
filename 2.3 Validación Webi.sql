SELECT
	*, 
	CASE
		WHEN [Metodo Pago] = 'D�bito' OR [Metodo Pago] = 'Cr�dito 'THEN 'OK'
		ELSE 'Revisar'
	END AS Validaci�n	
FROM Detalle_Bonos_Domiciliado_WEBI
WHERE SEMANA = 'Semana del 01 al 07 de 04-2024'