USE [esun]
GO
INSERT [dbo].[Orders] ([OrderID], [MemberID], [PayStatus], [Price]) VALUES (N'Ms20230607000001', 55688, 0, CAST(98000.00 AS Numeric(19, 2)))
INSERT [dbo].[Orders] ([OrderID], [MemberID], [PayStatus], [Price]) VALUES (N'Ms20230607000002', 55688, 0, CAST(1200.00 AS Numeric(19, 2)))
INSERT [dbo].[Orders] ([OrderID], [MemberID], [PayStatus], [Price]) VALUES (N'Ms20230607000003', 55688, 0, CAST(8500.00 AS Numeric(19, 2)))
INSERT [dbo].[Orders] ([OrderID], [MemberID], [PayStatus], [Price]) VALUES (N'Ms20230607000004', 55688, 0, CAST(2400.00 AS Numeric(19, 2)))
GO
INSERT [dbo].[Product] ([ProductID], [Price], [ProductName], [Quantity]) VALUES (N'P001', CAST(98000.00 AS Numeric(19, 2)), N'osii 舒壓按摩椅', 5)
INSERT [dbo].[Product] ([ProductID], [Price], [ProductName], [Quantity]) VALUES (N'P002', CAST(1200.00 AS Numeric(19, 2)), N'網友最愛起司蛋糕', 50)
INSERT [dbo].[Product] ([ProductID], [Price], [ProductName], [Quantity]) VALUES (N'P003', CAST(8500.00 AS Numeric(19, 2)), N'真愛密碼項鍊', 20)
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([OrderItemSN], [ItemPrice], [Quantity], [StandPrice], [OrderID], [ProductID]) VALUES (1, CAST(98000.00 AS Numeric(19, 2)), 1, CAST(98000.00 AS Numeric(19, 2)), N'Ms20230607000001', N'P001')
INSERT [dbo].[OrderDetail] ([OrderItemSN], [ItemPrice], [Quantity], [StandPrice], [OrderID], [ProductID]) VALUES (2, CAST(1200.00 AS Numeric(19, 2)), 1, CAST(1200.00 AS Numeric(19, 2)), N'Ms20230607000002', N'P002')
INSERT [dbo].[OrderDetail] ([OrderItemSN], [ItemPrice], [Quantity], [StandPrice], [OrderID], [ProductID]) VALUES (3, CAST(8500.00 AS Numeric(19, 2)), 1, CAST(8500.00 AS Numeric(19, 2)), N'Ms20230607000003', N'P003')
INSERT [dbo].[OrderDetail] ([OrderItemSN], [ItemPrice], [Quantity], [StandPrice], [OrderID], [ProductID]) VALUES (4, CAST(2400.00 AS Numeric(19, 2)), 2, CAST(1200.00 AS Numeric(19, 2)), N'Ms20230607000004', N'P002')
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
