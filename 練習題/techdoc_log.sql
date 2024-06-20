CREATE TABLE techdoc_log ( 
	doc_id         	nvarchar(32) NULL,
	ver_id         	int NULL,
	subject        	nvarchar(120) NULL,
	category_id    	nvarchar(32) NULL,
	create_date    	nvarchar(10) NULL,
	create_time    	nvarchar(8) NULL,
	create_datetime	bigint NULL,
	creator        	nvarchar(32) NULL,
	description    	nvarchar(255) NULL,
	target         	nvarchar(15) NULL,
	act            	nvarchar(3) NULL 
	)
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1334822020577', N'2012/04/19', N'15:53:41', 1334822021037, N'eipadmin', N'新增分類:測試使用', N'category', N'101')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1334917791817', N'2012/04/20', N'18:29:52', 1334917792473, N'eipadmin', N'新增分類:業務部', N'category', N'101')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172667900', 1, N'CHAPTER 12 類別開發 (2)', N'1334822020577', N'2012/04/23', N'17:18:03', 1335172683488, N'eipadmin', N'新增文件', N'doc', N'002')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172704661', 1, N'ELOperator', N'1334917791817', N'2012/04/23', N'17:18:45', 1335172725857, N'eipadmin', N'新增文件', N'doc', N'002')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172625048', 1, N'asww - 複製 (19)', N'1334822020577', N'2012/04/23', N'18:04:29', 1335175469094, N'eipadmin', N'閱讀文件索引卡asww - 複製 (19)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172566542', 1, N'555 - 複製 (24)', N'1334822020577', N'2012/04/23', N'17:16:25', 1335172585484, N'eipadmin', N'新增文件', N'doc', N'002')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172591191', 1, N'Javascript教程--从入门到精通【完整版】', N'1334822020577', N'2012/04/23', N'17:16:51', 1335172611270, N'test002', N'新增文件', N'doc', N'002')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172566542', 1, N'555 - 複製 (24)', N'1334822020577', N'2012/04/23', N'17:27:39', 1335173259189, N'test003', N'閱讀文件索引卡555 - 複製 (24)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172566542', 1, N'555 - 複製 (24)', N'1334822020577', N'2012/04/23', N'17:27:42', 1335173262377, N'test003', N'閱讀文件索引卡555 - 複製 (24)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172625048', 1, N'asww - 複製 (19)', N'1334822020577', N'2012/04/23', N'17:27:52', 1335173272702, N'test003', N'閱讀文件索引卡asww - 複製 (19)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172704661', 1, N'ELOperator', N'1334917791817', N'2012/04/23', N'17:27:58', 1335173278854, N'test003', N'閱讀文件索引卡ELOperator', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335175316782', 1, N'java試題 - 複製', N'1334917791817', N'2012/04/23', N'18:04:38', 1335175478834, N'test003', N'閱讀文件索引卡java試題 - 複製', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172704661', 1, N'ELOperator', N'1334917791817', N'2012/04/23', N'18:04:41', 1335175481643, N'test003', N'閱讀文件索引卡ELOperator', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172566542', 1, N'555 - 複製 (24)', N'1334822020577', N'2012/04/23', N'18:04:56', 1335175496701, N'test002', N'閱讀文件索引卡555 - 複製 (24)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172591191', 1, N'Javascript教程--从入门到精通【完整版】', N'1334822020577', N'2012/04/23', N'18:05:03', 1335175503591, N'test002', N'閱讀文件索引卡Javascript教程--从入门到精通【完整版】', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172704661', 1, N'ELOperator', N'1334917791817', N'2012/04/23', N'18:05:09', 1335175509904, N'test002', N'閱讀文件索引卡ELOperator', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172566542', 1, N'555 - 複製 (24)', N'1334822020577', N'2012/04/23', N'18:05:27', 1335175527827, N'test022', N'閱讀文件索引卡555 - 複製 (24)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172625048', 1, N'asww - 複製 (19)', N'1334822020577', N'2012/04/23', N'18:05:36', 1335175536221, N'test022', N'閱讀文件索引卡asww - 複製 (19)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172566542', 1, N'555 - 複製 (24)', N'1334822020577', N'2012/04/23', N'18:30:23', 1335177023691, N'test002', N'閱讀文件索引卡555 - 複製 (24)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172704661', 1, N'ELOperator', N'1334917791817', N'2012/04/23', N'18:30:28', 1335177028621, N'test002', N'閱讀文件索引卡ELOperator', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172704661', 1, N'ELOperator', N'1334917791817', N'2012/04/23', N'18:47:09', 1335178029783, N'test003', N'閱讀文件索引卡ELOperator', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172566542', 1, N'555 - 複製 (24)', N'1334822020577', N'2012/04/23', N'18:47:12', 1335178032126, N'test003', N'閱讀文件索引卡555 - 複製 (24)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172704661', 1, N'ELOperator', N'1334917791817', N'2012/04/23', N'18:47:17', 1335178037643, N'test003', N'閱讀文件索引卡ELOperator', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172566542', 1, N'555 - 複製 (24)', N'1334822020577', N'2012/04/23', N'18:47:35', 1335178055110, N'test008', N'閱讀文件索引卡555 - 複製 (24)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172566542', 1, N'555 - 複製 (24)', N'1334822020577', N'2012/04/23', N'18:47:38', 1335178058861, N'test008', N'閱讀文件索引卡555 - 複製 (24)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172625048', 1, N'asww - 複製 (19)', N'1334822020577', N'2012/04/23', N'18:47:48', 1335178068800, N'test008', N'閱讀文件索引卡asww - 複製 (19)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172566542', 1, N'555 - 複製 (24)', N'1334822020577', N'2012/04/23', N'18:48:18', 1335178098146, N'test015', N'閱讀文件索引卡555 - 複製 (24)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172625048', 1, N'asww - 複製 (19)', N'1334822020577', N'2012/04/23', N'18:48:29', 1335178109184, N'test015', N'閱讀文件索引卡asww - 複製 (19)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172591191', 1, N'Javascript教程--从入门到精通【完整版】', N'1334822020577', N'2012/04/24', N'10:43:32', 1335235412622, N'test002', N'閱讀文件索引卡Javascript教程--从入门到精通【完整版】', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172625048', 1, N'asww - 複製 (19)', N'1334822020577', N'2012/04/24', N'10:52:37', 1335235957478, N'test002', N'閱讀文件索引卡asww - 複製 (19)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172591191', 1, N'Javascript教程--从入门到精通【完整版】', N'1334822020577', N'2012/04/24', N'10:52:40', 1335235960559, N'test002', N'閱讀文件索引卡Javascript教程--从入门到精通【完整版】', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335175316782', 1, N'java試題 - 複製', N'1334917791817', N'2012/04/24', N'10:52:45', 1335235965607, N'test002', N'閱讀文件索引卡java試題 - 複製', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172566542', 1, N'555 - 複製 (24)', N'1334822020577', N'2012/04/24', N'10:53:39', 1335236019126, N'test022', N'閱讀文件索引卡555 - 複製 (24)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172566542', 1, N'555 - 複製 (24)', N'1334822020577', N'2012/04/24', N'10:53:42', 1335236022685, N'test022', N'閱讀文件索引卡555 - 複製 (24)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172625048', 1, N'asww - 複製 (19)', N'1334822020577', N'2012/04/24', N'10:53:48', 1335236028674, N'test022', N'閱讀文件索引卡asww - 複製 (19)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172625048', 1, N'asww - 複製 (19)', N'1334822020577', N'2012/04/24', N'10:53:52', 1335236032039, N'test022', N'閱讀文件索引卡asww - 複製 (19)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172566542', 1, N'555 - 複製 (24)', N'1334822020577', N'2012/04/24', N'15:03:29', 1335251009830, N'test003', N'閱讀文件索引卡555 - 複製 (24)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172625048', 1, N'asww - 複製 (19)', N'1334822020577', N'2012/04/24', N'15:03:36', 1335251016111, N'test003', N'閱讀文件索引卡asww - 複製 (19)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172625048', 1, N'asww - 複製 (19)', N'1334822020577', N'2012/04/24', N'15:03:40', 1335251020626, N'test003', N'閱讀文件索引卡asww - 複製 (19)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172704661', 1, N'ELOperator', N'1334917791817', N'2012/04/24', N'15:03:48', 1335251028341, N'test003', N'閱讀文件索引卡ELOperator', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172667900', 1, N'CHAPTER 12 類別開發 (2)', N'1334822020577', N'2012/04/24', N'15:54:02', 1335254042528, N'test020', N'閱讀文件索引卡CHAPTER 12 類別開發 (2)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172667900', 1, N'CHAPTER 12 類別開發 (2)', N'1334822020577', N'2012/04/24', N'15:54:28', 1335254068659, N'test020', N'閱讀文件索引卡CHAPTER 12 類別開發 (2)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334824776930', 1, N'111', N'1334822020577', N'2012/04/24', N'15:57:56', 1335254276375, N'test002', N'閱讀文件索引卡111', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334825378840', 1, N'Chapter 11追求速度', N'1334822020577', N'2012/04/24', N'15:58:01', 1335254281535, N'test002', N'閱讀文件索引卡Chapter 11追求速度', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334825378840', 1, N'Chapter 11追求速度', N'1334822020577', N'2012/04/24', N'15:58:06', 1335254286924, N'test002', N'閱讀文件索引卡Chapter 11追求速度', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334826795005', 1, N'[全系統]時間修改222', N'1334822020577', N'2012/04/24', N'15:58:10', 1335254290733, N'test002', N'閱讀文件索引卡[全系統]時間修改222', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335175316782', 1, N'java試題 - 複製', N'1334917791817', N'2012/04/24', N'15:58:16', 1335254296294, N'test002', N'閱讀文件索引卡java試題 - 複製', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172625048', 1, N'asww - 複製 (19)', N'1334822020577', N'2012/04/24', N'15:58:24', 1335254304382, N'test002', N'閱讀文件索引卡asww - 複製 (19)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335175316782', 1, N'java試題 - 複製', N'1334917791817', N'2012/04/24', N'15:58:43', 1335254323545, N'test003', N'閱讀文件索引卡java試題 - 複製', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334825378840', 1, N'Chapter 11追求速度', N'1334822020577', N'2012/04/24', N'15:58:49', 1335254329524, N'test003', N'閱讀文件索引卡Chapter 11追求速度', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334825378840', 1, N'Chapter 11追求速度', N'1334822020577', N'2012/04/24', N'15:58:52', 1335254332291, N'test003', N'閱讀文件索引卡Chapter 11追求速度', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334825378840', 1, N'Chapter 11追求速度', N'1334822020577', N'2012/04/24', N'15:58:55', 1335254335247, N'test003', N'閱讀文件索引卡Chapter 11追求速度', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1336119225074', N'2012/05/04', N'16:13:45', 1336119225580, N'test028', N'新增分類:測試多層部門分類', N'category', N'101')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334913042776', 1, N'THEBOOK111', N'1334822020577', N'2012/04/24', N'10:53:06', 1335235986543, N'test003', N'閱讀文件索引卡THEBOOK111', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172704661', 1, N'ELOperator', N'1334917791817', N'2012/04/24', N'10:53:14', 1335235994973, N'test003', N'閱讀文件索引卡ELOperator', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172625048', 1, N'asww - 複製 (19)', N'1334822020577', N'2012/04/24', N'10:53:21', 1335236001678, N'test003', N'閱讀文件索引卡asww - 複製 (19)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172625048', 1, N'asww - 複製 (19)', N'1334822020577', N'2012/04/24', N'10:53:24', 1335236004897, N'test003', N'閱讀文件索引卡asww - 複製 (19)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172566542', 1, N'555 - 複製 (24)', N'1334822020577', N'2012/04/24', N'15:04:00', 1335251040675, N'test008', N'閱讀文件索引卡555 - 複製 (24)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172566542', 1, N'555 - 複製 (24)', N'1334822020577', N'2012/04/24', N'15:04:05', 1335251045353, N'test008', N'閱讀文件索引卡555 - 複製 (24)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172625048', 1, N'asww - 複製 (19)', N'1334822020577', N'2012/04/24', N'15:04:07', 1335251047928, N'test008', N'閱讀文件索引卡asww - 複製 (19)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172625048', 1, N'asww - 複製 (19)', N'1334822020577', N'2012/04/24', N'15:04:11', 1335251051794, N'test008', N'閱讀文件索引卡asww - 複製 (19)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1335172625048', 1, N'asww - 複製 (19)', N'1334822020577', N'2012/04/24', N'15:04:19', 1335251059139, N'test008', N'閱讀文件索引卡asww - 複製 (19)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334824085778', 1, N'test', N'1334822020577', N'2012/05/17', N'16:52:11', 1337244731943, N'test002', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334824085778', 2, N'test', N'1334822020577', N'2012/05/17', N'16:52:25', 1337244745622, N'test002', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334824085778', 2, N'test', N'1334822020577', N'2012/05/17', N'16:52:38', 1337244758363, N'test002', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334824085778', 2, N'test', N'1334822020577', N'2012/05/17', N'16:52:45', 1337244765629, N'test002', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1337244910651', 1, N'123456', N'1334822020577', N'2012/05/17', N'16:55:33', 1337244933739, N'test020', N'新增文件', N'doc', N'002')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1337244910651', 1, N'123456', N'1334822020577', N'2012/05/17', N'16:55:36', 1337244936911, N'test020', N'閱讀文件索引卡123456', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1337244910651', 2, N'123456', N'1334822020577', N'2012/05/17', N'16:56:21', 1337244981742, N'test020', N'修訂文件', N'doc', N'004')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1337244910651', 2, N'123456', N'1334822020577', N'2012/05/17', N'16:56:27', 1337244987056, N'test020', N'閱讀文件索引卡123456', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1337244910651', 2, N'123456', N'1334822020577', N'2012/05/17', N'16:56:39', 1337244999818, N'test020', N'閱讀文件索引卡123456', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1337244910651', 3, N'123456', N'1334822020577', N'2012/05/17', N'16:57:09', 1337245029067, N'test020', N'修訂文件', N'doc', N'004')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1337742333108_1', N'2012/05/23', N'11:05:33', 1337742333119, N'test033', N'新增分類:太陽能', N'category', N'101')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1337742021722_1', N'2012/05/23', N'11:00:22', 1337742022152, N'test010', N'新增分類:能源相關', N'category', N'101')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1337742072628_1', N'2012/05/23', N'11:01:12', 1337742072632, N'test007', N'新增分類:省油', N'category', N'101')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1337742113426_1', N'2012/05/23', N'11:01:53', 1337742113430, N'test026', N'新增分類:省電', N'category', N'101')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1337742148674_1', N'2012/05/23', N'11:02:28', 1337742148677, N'test013', N'新增分類:省水', N'category', N'101')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1337742282715_1', N'2012/05/23', N'11:04:42', 1337742282719, N'test007', N'新增分類:綠能科技', N'category', N'101')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1337742374485', N'2012/05/23', N'11:06:14', 1337742374489, N'test033', N'新增分類:LED', N'category', N'101')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1337742567526_1', N'2012/05/23', N'11:09:27', 1337742567530, N'test033', N'新增分類:生質燃料', N'category', N'101')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1337742648023_1', N'2012/05/23', N'11:10:48', 1337742648027, N'test010', N'新增分類:氫能與燃料電池', N'category', N'101')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1337742711643_1', N'2012/05/23', N'11:11:51', 1337742711647, N'test010', N'新增分類:能源通訊', N'category', N'101')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1337752584253', 1, N'java試題 - 複製 (2)', N'1334917791817', N'2012/06/05', N'11:54:37', 1338868477002, N'test001', N'閱讀文件索引卡java試題 - 複製 (2)', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339573925555', 1, N'555 test', N'1338978042399_1', N'2012/06/14', N'14:37:49', 1339655869948, N'test001', N'閱讀文件索引卡555 test', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339573925555', 1, N'555 test', N'1338978042399_1', N'2012/06/14', N'15:11:15', 1339657875694, N'test001', N'閱讀文件索引卡555 test', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339387624995', 1, N'test', N'1334917791817', N'2012/06/14', N'15:11:22', 1339657882773, N'test001', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340679446373', 1, N'exception', N'1334917791817', N'2012/06/27', N'09:48:42', 1340761722566, N'test001', N'閱讀文件索引卡exception', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340679446373', 1, N'exception', N'1334917791817', N'2012/06/27', N'09:51:50', 1340761910791, N'test001', N'閱讀文件索引卡exception', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340679446373', 1, N'exception', N'1334917791817', N'2012/06/27', N'09:51:56', 1340761916494, N'test001', N'閱讀文件索引卡exception', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339387624995', 1, N'test', N'1334917791817', N'2012/06/27', N'09:52:04', 1340761924113, N'test001', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339411335122', 1, N'testflow', N'1334917791817', N'2012/06/27', N'09:52:29', 1340761949302, N'test001', N'閱讀文件索引卡testflow', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334824085778', 2, N'test', N'1334822020577', N'2012/06/27', N'09:52:37', 1340761957797, N'test001', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334824085778', 2, N'test', N'1334822020577', N'2012/06/27', N'09:52:46', 1340761966554, N'test001', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340679446373', 1, N'exception', N'1334917791817', N'2012/06/27', N'10:08:56', 1340762936398, N'test001', N'閱讀文件索引卡exception', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339049930238', 1, N'主附件Test2', N'1334917791817', N'2012/06/27', N'10:09:01', 1340762941040, N'test001', N'閱讀文件索引卡主附件Test2', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339053692866', 1, N'主附件Test4', N'1334917791817', N'2012/06/27', N'10:09:18', 1340762958507, N'test001', N'閱讀文件索引卡主附件Test4', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340679446373', 1, N'exception', N'1334917791817', N'2012/06/27', N'09:51:56', 1340761916539, N'test001', N'閱讀文件索引卡exception', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1342689070727', N'2012/07/19', N'17:11:10', 1342689070762, N'test022', N'新增分類:Bruce流程測試 -1', N'category', N'101')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1342689085189', 1, N'test', N'1342689070727', N'2012/07/19', N'17:14:03', 1342689243357, N'test101', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1342689085189', 1, N'test', N'1342689070727', N'2012/07/19', N'17:14:15', 1342689255828, N'test101', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1342689260386', 1, N'exception', N'1342689070727', N'2012/07/19', N'17:14:30', 1342689270380, N'test101', N'新增文件', N'doc', N'002')
GO
INSERT INTO techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1342689260386', 1, N'exception', N'1342689070727', N'2012/07/19', N'17:15:59', 1342689359155, N'test101', N'閱讀文件索引卡exception', N'doc', N'021')
GO
