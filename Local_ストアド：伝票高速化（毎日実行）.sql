-- *******************************************
-- 2024-06-13 t.jinbo
-- 説明：120.6(SQLServer)の各種伝票テーブルに120.12(OracleDB)のBF2M各種テーブルを継ぎ足し処理を行う
-- 注意：120.6 cocktail プログラム=>ストアドに登録する
-- 実行タイミング：毎日0300- AM実行
-- *******************************************


-- フロー

-- ****************************
-- w_JDNTHA_BF2M
-- ****************************

-- （delete）120.6-->cocktail-->〇〇BF2Mの指定期間を削除する
DELETE FROM [cocktail].[dbo].[w_JDNTHA_BF2M]
WHERE
  DATKB = '1'
  AND JDNDT <   LEFT(CONVERT(VARCHAR, DATEADD(month,-1,GETDATE()), 112), 6) + '01'-- '-1ヶ月'の01日より前
  AND JDNDT >=   LEFT(CONVERT(VARCHAR, DATEADD(month,-11,GETDATE()), 112), 6) + '01'-- '-11ヶ月'の01日以降
;

-- （INSERT）120.6-->cocktail-->〇〇BF2Mの指定期間を削除する
INSERT INTO [cocktail].[dbo].[w_JDNTHA_BF2M]
SELECT *
FROM OPENQUERY(ORCL,
  '
	SELECT *
	FROM NSY_USR1.JDNTHA
	WHERE
	DATKB = ''1''
	AND JDNDT < TO_CHAR(TRUNC(ADD_MONTHS(SYSDATE, -1),''mm''),''yyyymm'') || 01
	AND JDNDT >= TO_CHAR(TRUNC(ADD_MONTHS(SYSDATE, -11),''mm''),''yyyymm'') || 01
	'
    )
;


-- ****************************
-- w_JDNTRA_BF2M
-- ****************************

-- （delete）120.6-->cocktail-->〇〇BF2Mの指定期間を削除する
DELETE FROM [cocktail].[dbo].[w_JDNTRA_BF2M]
WHERE
  DATKB = '1'
  AND JDNDT <   LEFT(CONVERT(VARCHAR, DATEADD(month,-1,GETDATE()), 112), 6) + '01'-- '-1ヶ月'の01日より前
  AND JDNDT >=   LEFT(CONVERT(VARCHAR, DATEADD(month,-11,GETDATE()), 112), 6) + '01'-- '-11ヶ月'の01日以降
;

-- （INSERT）120.6-->cocktail-->〇〇BF2Mの指定期間を削除する
INSERT INTO [cocktail].[dbo].[w_JDNTRA_BF2M]
SELECT *
FROM OPENQUERY(ORCL,
  '
     SELECT *
    FROM NSY_USR1.JDNTRA
    WHERE
    DATKB = ''1''
    AND LINNO < ''900''
    AND JDNDT < TO_CHAR(TRUNC(ADD_MONTHS(SYSDATE, -1),''mm''),''yyyymm'') || 01
    AND JDNDT >= TO_CHAR(TRUNC(ADD_MONTHS(SYSDATE, -11),''mm''),''yyyymm'') || 01
	'
    )
;


-- ****************************
-- w_ODNTHA_BF2M
-- ****************************

-- （delete）120.6-->cocktail-->〇〇BF2Mの指定期間を削除する
DELETE FROM [cocktail].[dbo].[w_ODNTHA_BF2M]
WHERE
  DATKB = '1'
  AND ODNDT <   LEFT(CONVERT(VARCHAR, DATEADD(month,-1,GETDATE()), 112), 6) + '01'-- '-1ヶ月'の01日より前
  AND ODNDT >=   LEFT(CONVERT(VARCHAR, DATEADD(month,-11,GETDATE()), 112), 6) + '01'-- '-11ヶ月'の01日以降
;

-- （INSERT）120.6-->cocktail-->〇〇BF2Mの指定期間を削除する
INSERT INTO [cocktail].[dbo].[w_ODNTHA_BF2M]
SELECT *
FROM OPENQUERY(ORCL,
	'
     SELECT *
    FROM NSY_USR1.ODNTHA
    WHERE
    DATKB = ''1''
    AND ODNDT < TO_CHAR(TRUNC(ADD_MONTHS(SYSDATE, -1),''mm''),''yyyymm'') || 01
    AND ODNDT >= TO_CHAR(TRUNC(ADD_MONTHS(SYSDATE, -11),''mm''),''yyyymm'') || 01
	'
    )
;


-- ****************************
-- w_ODNTRA_BF2M
-- ****************************

-- （delete）120.6-->cocktail-->〇〇BF2Mの指定期間を削除する
DELETE FROM [cocktail].[dbo].[w_ODNTRA_BF2M]
WHERE
  DATKB = '1'
  AND ODNDT <   LEFT(CONVERT(VARCHAR, DATEADD(month,-1,GETDATE()), 112), 6) + '01'-- '-1ヶ月'の01日より前
  AND ODNDT >=   LEFT(CONVERT(VARCHAR, DATEADD(month,-11,GETDATE()), 112), 6) + '01'-- '-11ヶ月'の01日以降
;

-- （INSERT）120.6-->cocktail-->〇〇BF2Mの指定期間を削除する
INSERT INTO [cocktail].[dbo].[w_ODNTRA_BF2M]
SELECT *
FROM OPENQUERY(ORCL,
	'
      SELECT *
    FROM NSY_USR1.ODNTRA
    WHERE
    DATKB = ''1''
    AND ODNDT < TO_CHAR(TRUNC(ADD_MONTHS(SYSDATE, -1),''mm''),''yyyymm'') || 01
    AND ODNDT >= TO_CHAR(TRUNC(ADD_MONTHS(SYSDATE, -11),''mm''),''yyyymm'') || 01
    AND LINNO < ''900''
	'
    )
;


-- ****************************
-- w_UDNTHA_BF2M
-- ****************************

-- （delete）120.6-->cocktail-->〇〇BF2Mの指定期間を削除する
DELETE FROM [cocktail].[dbo].[w_UDNTHA_BF2M]
WHERE
  DATKB = '1'
  AND UDNDT <   LEFT(CONVERT(VARCHAR, DATEADD(month,-1,GETDATE()), 112), 6) + '01'-- '-1ヶ月'の01日より前
  AND UDNDT >=   LEFT(CONVERT(VARCHAR, DATEADD(month,-11,GETDATE()), 112), 6) + '01'-- '-11ヶ月'の01日以降
;

-- （INSERT）120.6-->cocktail-->〇〇BF2Mの指定期間を削除する
INSERT INTO [cocktail].[dbo].[w_UDNTHA_BF2M]
SELECT *
FROM OPENQUERY(ORCL,
	'
      SELECT *
    FROM NSY_USR1.UDNTHA
    WHERE
    DATKB = ''1''
    AND UDNDT < TO_CHAR(TRUNC(ADD_MONTHS(SYSDATE, -1),''mm''),''yyyymm'') || 01
    AND UDNDT >= TO_CHAR(TRUNC(ADD_MONTHS(SYSDATE, -11),''mm''),''yyyymm'') || 01
	'
    )
;


-- ****************************
-- w_UDNTRA_BF2M
-- ****************************

-- （delete）120.6-->cocktail-->〇〇BF2Mの指定期間を削除する
DELETE FROM [cocktail].[dbo].[w_UDNTRA_BF2M]
WHERE
  DATKB = '1'
  AND UDNDT <   LEFT(CONVERT(VARCHAR, DATEADD(month,-1,GETDATE()), 112), 6) + '01'-- '-1ヶ月'の01日より前
  AND UDNDT >=   LEFT(CONVERT(VARCHAR, DATEADD(month,-11,GETDATE()), 112), 6) + '01'-- '-11ヶ月'の01日以降
;

-- （INSERT）120.6-->cocktail-->〇〇BF2Mの指定期間を削除する
INSERT INTO [cocktail].[dbo].[w_UDNTRA_BF2M]
SELECT *
FROM OPENQUERY(ORCL,
	'
      SELECT *
    FROM NSY_USR1.UDNTRA
    WHERE
    DATKB = ''1''
    AND UDNDT < TO_CHAR(TRUNC(ADD_MONTHS(SYSDATE, -1),''mm''),''yyyymm'') || 01
    AND UDNDT >= TO_CHAR(TRUNC(ADD_MONTHS(SYSDATE, -11),''mm''),''yyyymm'') || 01
    AND LINNO < ''900''
	'
    )
;