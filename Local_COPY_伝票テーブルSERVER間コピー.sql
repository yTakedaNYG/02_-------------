--*******************************************
-- Sample
-- SELECT * INTO Table_2 --コピー先
-- FROM Table_1 --コピー元

--*******************************************
-- 2024-06-13 t.jinbo
-- 説明：120.6のDBに120.13のローカルテーブルをコピーするためのSQL文（初回のみ　以降はストアドで継ぎ足しさせる）
-- 注意：120.6 cocktail データベースで実行する
--*******************************************

--w_JDNTHA_BF2M
SELECT * 
INTO [cocktail].[dbo].[w_JDNTHA_BF2M]
FROM [ORCL-LINK].ORCLLINK.[dbo].[w_JDNTHA_BF2M]
;

--w_JDNTRA_BF2M
SELECT * 
INTO [cocktail].[dbo].[w_JDNTRA_BF2M]
FROM [ORCL-LINK].ORCLLINK.[dbo].[w_JDNTRA_BF2M]
;

--w_ODNTHA_BF2M
SELECT * 
INTO [cocktail].[dbo].[w_ODNTHA_BF2M]
FROM [ORCL-LINK].ORCLLINK.[dbo].[w_ODNTHA_BF2M]
;

--w_ODNTRA_BF2M
SELECT * 
INTO [cocktail].[dbo].[w_ODNTRA_BF2M]
FROM [ORCL-LINK].ORCLLINK.[dbo].[w_ODNTRA_BF2M]
;

--w_UDNTHA_BF2M
SELECT * 
INTO [cocktail].[dbo].[w_UDNTHA_BF2M]
FROM [ORCL-LINK].ORCLLINK.[dbo].[w_UDNTHA_BF2M]
;

--w_UDNTRA_BF2M
SELECT * 
INTO [cocktail].[dbo].[w_UDNTRA_BF2M]
FROM [ORCL-LINK].ORCLLINK.[dbo].[w_UDNTRA_BF2M]
;





