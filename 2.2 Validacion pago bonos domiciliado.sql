SELECT *,
		CASE
			WHEN EVENTTYPE <> 'Bono Debito Automatico' THEN 'Revisar'
			ELSE 'OK'
		END AS Validaci�n
FROM Detalle_Pago_Bonos_Domiciliado
WHERE SEMANA = 'Semana del 01 al 07 de 04-2024'