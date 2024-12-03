BEGIN TRANSACTION

USE [UOCTFG_codi365]
GO
INSERT [dbo].[SysRoles] ([Role], [Description]) VALUES (N'10', N'Web User')
INSERT [dbo].[SysRoles] ([Role], [Description]) VALUES (N'20', N'API User')
GO

--ROLLBACK
COMMIT