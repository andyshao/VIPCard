﻿CREATE VIEW [dbo].[V_OrderT]
AS
SELECT      'A'+cast(A.编号 as varchar) as 编号, B.用户名, B.卡号, B.手机, C.店名, A.金额, A.时间, D.名称 AS 行业, A.我方提成, A.发卡方提成, A.消费返还, A.成本, '积分' AS 消费类型
FROM         dbo.[Order] AS A LEFT OUTER JOIN
                      dbo.[User] AS B ON A.用户ID = B.编号 LEFT OUTER JOIN
                      dbo.Store AS C ON A.店铺ID = C.编号 LEFT OUTER JOIN
                      dbo.Trade AS D ON C.所属行业ID = D.编号
union
SELECT      'C'+cast(A.编号 as varchar) as 编号, B.用户名, B.卡号, B.手机, C.店名, A.金额, A.时间, D.名称 AS 行业, A.我方提成, A.发卡方提成, A.消费返还, A.成本, '现金' AS 消费类型
FROM         dbo.[CashOrder] AS A LEFT OUTER JOIN
                      dbo.[User] AS B ON A.用户ID = B.编号 LEFT OUTER JOIN
                      dbo.Store AS C ON A.店铺ID = C.编号 LEFT OUTER JOIN
                      dbo.Trade AS D ON C.所属行业ID = D.编号

 

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "A"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 187
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "B"
            Begin Extent = 
               Top = 6
               Left = 225
               Bottom = 136
               Right = 374
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "C"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 188
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "D"
            Begin Extent = 
               Top = 138
               Left = 226
               Bottom = 268
               Right = 375
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_OrderT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 1, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'V_OrderT';

