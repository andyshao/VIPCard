USE [sqlbreakupclub]
GO

/****** Object:  View [dbo].[V_User]    Script Date: 2012-05-19 23:44:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER VIEW [dbo].[V_User]
AS
SELECT   c.���, c.�û���, c.�ֻ�, c.����, c.���, c.�Ա�, c.����ʱ��, 
                c.����, b.[���Ѷ�], d.���� AS '������'
FROM      dbo.[User] AS c LEFT OUTER JOIN
                    (SELECT   �û�ID, SUM(���) AS '���Ѷ�'
                     FROM      (SELECT   �û�ID, ���
                                      FROM      dbo.[Order]
                                      UNION
                                      SELECT   �û�ID, ���
                                      FROM      dbo.CashOrder) AS a
                     GROUP BY �û�ID) AS b ON c.��� = b.�û�ID LEFT OUTER JOIN
                dbo.CardIssue AS d ON c.��������� = d.���



GO


