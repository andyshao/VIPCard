-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE SP_VUser 
	-- Add the parameters for the stored procedure here
	@sid int=0
WITH ENCRYPTION
AS
BEGIN
IF @sid=0
BEGIN
	SELECT   c.���, c.�û���, c.�ֻ�, c.����, c.���, c.�Ա�, c.����ʱ��, c.����, c.��, c.ְҵ, ISNULL(b.���Ѷ�, 0) AS '���Ѷ�', 
					ISNULL(b.�������Ѷ�, 0) AS '�������Ѷ�', ISNULL(b.�ֽ����Ѷ�, 0) AS '�ֽ����Ѷ�', d.���� AS '������', 
					CASE WHEN c.�û��� = '' THEN 'δ����' ELSE '����' END AS '״̬'
	FROM      dbo.[User] AS c LEFT OUTER JOIN
						(SELECT   �û�ID, SUM(���) AS '���Ѷ�', SUM(�������Ѷ�) AS '�������Ѷ�', SUM(�ֽ����Ѷ�) 
										 AS '�ֽ����Ѷ�'
						 FROM      (SELECT   �û�ID, ���, ��� AS '�������Ѷ�', 0 AS '�ֽ����Ѷ�'
										  FROM      dbo.[Order]
										  UNION
										  SELECT   �û�ID, ���, 0 AS '�������Ѷ�', ��� AS '�ֽ����Ѷ�'
										  FROM      dbo.CashOrder) AS a
						 GROUP BY �û�ID) AS b ON c.��� = b.�û�ID LEFT OUTER JOIN
					dbo.CardIssue AS d ON c.��������� = d.���
END	
ELSE
BEGIN
	SELECT   c.���, c.�û���, c.�ֻ�, c.����, c.���, c.�Ա�, c.����ʱ��, c.����, c.��, c.ְҵ, ISNULL(b.���Ѷ�, 0) AS '���Ѷ�', 
					ISNULL(b.�������Ѷ�, 0) AS '�������Ѷ�', ISNULL(b.�ֽ����Ѷ�, 0) AS '�ֽ����Ѷ�', d.���� AS '������', 
					CASE WHEN c.�û��� = '' THEN 'δ����' ELSE '����' END AS '״̬'
	FROM      dbo.[User] AS c LEFT OUTER JOIN
						(SELECT   �û�ID, SUM(���) AS '���Ѷ�', SUM(�������Ѷ�) AS '�������Ѷ�', SUM(�ֽ����Ѷ�) 
										 AS '�ֽ����Ѷ�'
						 FROM      (SELECT   �û�ID, ���, ��� AS '�������Ѷ�', 0 AS '�ֽ����Ѷ�'
										  FROM      dbo.[Order] WHERE ����ID=@sid
										  UNION
										  SELECT   �û�ID, ���, 0 AS '�������Ѷ�', ��� AS '�ֽ����Ѷ�'
										  FROM      dbo.CashOrder WHERE ����ID=@sid) AS a
						 GROUP BY �û�ID) AS b ON c.��� = b.�û�ID LEFT OUTER JOIN
					dbo.CardIssue AS d ON c.��������� = d.���
END
END
GO
