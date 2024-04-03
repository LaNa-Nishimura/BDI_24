SELECT
	NF.NM_CLIENTE AS CLIENTE,
	SUM(INF.VL_TOTAL) AS VALOR /* SOMA */
FROM
	NOTA_FISCAL AS NF,
    ITEM_NOTA_FISCAL AS INF
WHERE
	NF.NRO_NOTA = INF.NRO_NOTA
GROUP BY
	NF.NM_CLIENTE
ORDER BY
	VALOR DESC;

SELECT
	NF.NRO_NOTA AS NUMERO,
    NF.NM_CLIENTE AS NOME,
    PRD.DESC_PRODUTO AS PRODUTO,
    INF.QTD_PRODUTO AS QUANTIDADE
FROM
	NOTA_FISCAL AS NF,
    ITEM_NOTA_FISCAL AS INF,
    PRODUTO AS PRD
WHERE
	NF.NRO_NOTA = INF.NRO_NOTA
	AND INF.COD_PRODUTO = PRD.COD_PRODUTO
    AND PRD.COD_PRODUTO = 3;