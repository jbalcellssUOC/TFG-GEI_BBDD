BEGIN TRANSACTION

USE [UOCTFG_codis365]
GO
INSERT [dbo].[AppUsers] ([UserId], [Login], [Password], [Name], [Surname], [Phone], [Address], [Comments], [IsAdmin], [Is2FAEnabled], [IsBlocked], [TokenID], [TokenIssuedUTC], [TokenExpiresUTC], [TokenIsValid], [Retries], [APIToken], [IsoDateC], [IsoDateM]) VALUES (N'279bd4ef-a6a5-4c9e-b50e-212128d39ff8', N'test@codis365.cat', N'$2a$11$CSNAnu2ZWlYqnHstR5SWA.snlXhwTpsmUWk/EopLvfPsDsxL/Cg0G', N'Test', N'User', N'', N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[AppUsers] ([UserId], [Login], [Password], [Name], [Surname], [Phone], [Address], [Comments], [IsAdmin], [Is2FAEnabled], [IsBlocked], [TokenID], [TokenIssuedUTC], [TokenExpiresUTC], [TokenIsValid], [Retries], [APIToken], [IsoDateC], [IsoDateM]) VALUES (N'a7a1f868-2cac-4c0d-9c01-5a01832cb4d0', N'jbalcellss@uoc.edu', N'$2a$11$7BWfeM21F4PHg7h6W5UyEu8ABqHaO/gLhUV54L3AbZFZYJ9B2.DO.', N'Jordi Balcells', N'Balcells', N'+34 670625628', N'Pedro Muñoz Seca, 4, 28110, Algete (Madrid)', N'', 1, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[AppUsers] ([UserId], [Login], [Password], [Name], [Surname], [Phone], [Address], [Comments], [IsAdmin], [Is2FAEnabled], [IsBlocked], [TokenID], [TokenIssuedUTC], [TokenExpiresUTC], [TokenIsValid], [Retries], [APIToken], [IsoDateC], [IsoDateM]) VALUES (N'7f2b4dc9-6035-471d-b253-7d5765661950', N'jordi@jbalcells.com', N'$2a$11$iRuXqJaFOgcRfJ3/Xa/T1u10AFsFH2k8jwDzRFkNvVucMI9OLsMy.', N'Codis365 Demo Account', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[AppUsers] ([UserId], [Login], [Password], [Name], [Surname], [Phone], [Address], [Comments], [IsAdmin], [Is2FAEnabled], [IsBlocked], [TokenID], [TokenIssuedUTC], [TokenExpiresUTC], [TokenIsValid], [Retries], [APIToken], [IsoDateC], [IsoDateM]) VALUES (N'850f9bc6-de34-416c-bfc1-859c06c5db27', N'jordi@sapps.es', N'$2a$11$xkNxJF6hIuMjvL/XKWPrnulD.sWq.Gn7txQ9QnOrL2ekn1raQhDLG', N'Jordi Balcells', NULL, NULL, NULL, NULL, 0, 0, 0, N'b3685b2fc7dd433ba05258aa71d2e8296241c60b30a6416384e8d87fda934981', CAST(N'2024-05-11T21:19:11.370' AS DateTime), CAST(N'2024-05-11T21:34:11.370' AS DateTime), 1, 0, NULL, NULL, NULL)
INSERT [dbo].[AppUsers] ([UserId], [Login], [Password], [Name], [Surname], [Phone], [Address], [Comments], [IsAdmin], [Is2FAEnabled], [IsBlocked], [TokenID], [TokenIssuedUTC], [TokenExpiresUTC], [TokenIsValid], [Retries], [APIToken], [IsoDateC], [IsoDateM]) VALUES (N'7f1869ab-82ea-4f7a-a55a-930ff1e5a33a', N'demoapi@codis365.cat', N'$2a$11$J354lU3fMGmmrOQVqy1bmuYM3lhtdTj5a8LIJMtNguSpOdcLa2ORq', N'Codis365 API Demo User', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[AppUsers] ([UserId], [Login], [Password], [Name], [Surname], [Phone], [Address], [Comments], [IsAdmin], [Is2FAEnabled], [IsBlocked], [TokenID], [TokenIssuedUTC], [TokenExpiresUTC], [TokenIsValid], [Retries], [APIToken], [IsoDateC], [IsoDateM]) VALUES (N'ab4ecfab-91ba-4f72-9cbf-d506c60d7083', N'test@test.es', N'$2a$11$0YnOz2XBmqZh92wBQAbow.rR9YNiIlFMz1GI82UCXoAfzXZ/xg9Yi', N'Jordi', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[AppUsers] ([UserId], [Login], [Password], [Name], [Surname], [Phone], [Address], [Comments], [IsAdmin], [Is2FAEnabled], [IsBlocked], [TokenID], [TokenIssuedUTC], [TokenExpiresUTC], [TokenIsValid], [Retries], [APIToken], [IsoDateC], [IsoDateM]) VALUES (N'2e7bf0d0-6753-4f54-b881-dc9dd517da7e', N'demoadmin@codis365.cat', N'$2a$11$CSNAnu2ZWlYqnHstR5SWA.snlXhwTpsmUWk/EopLvfPsDsxL/Cg0G', N'Demo', N'Admin', N' ', N' ', N' ', 1, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL)
INSERT [dbo].[AppUsers] ([UserId], [Login], [Password], [Name], [Surname], [Phone], [Address], [Comments], [IsAdmin], [Is2FAEnabled], [IsBlocked], [TokenID], [TokenIssuedUTC], [TokenExpiresUTC], [TokenIsValid], [Retries], [APIToken], [IsoDateC], [IsoDateM]) VALUES (N'e13399d0-21f2-4bf9-965f-f14c3ce30658', N'demo@codis365.cat', N'$2a$11$J354lU3fMGmmrOQVqy1bmuYM3lhtdTj5a8LIJMtNguSpOdcLa2ORq', N'Codis365 Demo', N'', N'', N'', N'', 0, 0, 0, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[AppUsersRoles] ON 

INSERT [dbo].[AppUsersRoles] ([Id], [UserId], [Role]) VALUES (2, N'850f9bc6-de34-416c-bfc1-859c06c5db27', N'10')
INSERT [dbo].[AppUsersRoles] ([Id], [UserId], [Role]) VALUES (3, N'a7a1f868-2cac-4c0d-9c01-5a01832cb4d0', N'20')
INSERT [dbo].[AppUsersRoles] ([Id], [UserId], [Role]) VALUES (4, N'e13399d0-21f2-4bf9-965f-f14c3ce30658', N'10')
INSERT [dbo].[AppUsersRoles] ([Id], [UserId], [Role]) VALUES (6, N'7f1869ab-82ea-4f7a-a55a-930ff1e5a33a', N'20')

SET IDENTITY_INSERT [dbo].[AppUsersRoles] OFF
GO

--ROLLBACK
COMMIT