CREATE TABLE dbo.eip_group ( 
	g_id         	nvarchar(32) NOT NULL,
	type_id      	nvarchar(4) NOT NULL,
	m_site       	nvarchar(32) NULL,
	g_name       	nvarchar(50) NULL,
	g_creator    	nvarchar(32) NULL,
	g_create_date	nvarchar(10) NULL,
	g_create_time	nvarchar(8) NULL,
	g_desc       	nvarchar(255) NULL,
	g_level      	nchar(3) NULL,
	g_parentid   	nvarchar(32) NULL,
	g_code       	nvarchar(32) NULL,
	g_is_ad      	nvarchar(10) NULL DEFAULT ('KM') 
	)
GO
CREATE TABLE dbo.eip_group_member ( 
	m_site   	nvarchar(32) NOT NULL,
	m_account	nvarchar(32) NOT NULL,
	g_id     	nvarchar(32) NOT NULL,
	join_date	nvarchar(10) NULL,
	join_time	nvarchar(8) NULL,
	join_note	nvarchar(255) NULL,
	status   	nchar(1) NULL 
	)
GO
CREATE TABLE dbo.eip_member ( 
	m_uid              	nvarchar(61) NOT NULL,
	m_site             	nvarchar(32) NOT NULL,
	m_account          	nvarchar(32) NOT NULL,
	m_password         	nvarchar(80) NOT NULL,
	m_lockpass         	nvarchar(80) NOT NULL,
	m_block            	nchar(1) NULL,
	m_hint             	nvarchar(50) NULL,
	m_hint_ans         	nvarchar(20) NULL,
	m_nickname         	nvarchar(32) NULL,
	m_name             	nvarchar(80) NULL,
	m_email            	nvarchar(80) NULL,
	m_birthday         	nvarchar(10) NULL,
	m_gender           	nchar(1) NULL,
	m_create_date      	nvarchar(10) NULL,
	m_create_time      	nvarchar(8) NULL,
	m_enctype          	nvarchar(6) NULL,
	m_last_date        	nvarchar(10) NULL,
	m_last_time        	nvarchar(8) NULL,
	m_log_count        	int NULL,
	change_pwd_date    	nvarchar(10) NULL,
	change_pwd_duration	int NULL,
	m_last_modify_date 	nvarchar(10) NULL,
	m_type             	nchar(1) NULL,
	photo_name         	nvarchar(255) NULL,
	is_ad              	nvarchar(10) NULL DEFAULT ('KM') 
	)
GO
CREATE TABLE dbo.techdoc_log ( 
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
CREATE TABLE dbo.techdoc_version ( 
	doc_id          	nvarchar(32) NOT NULL,
	ver_id          	int NOT NULL DEFAULT ((0)),
	type_id         	nvarchar(32) NULL,
	category_id     	nvarchar(32) NULL,
	create_date     	nvarchar(10) NULL,
	create_time     	nvarchar(8) NULL,
	create_datetime 	bigint NULL,
	creator         	nvarchar(32) NULL,
	subject         	nvarchar(120) NULL,
	sub_subject     	nvarchar(50) NULL,
	file_name       	nvarchar(255) NULL,
	file_url        	nvarchar(4000) NULL,
	description     	nvarchar(255) NULL,
	language        	nvarchar(50) NULL,
	ver_delete      	nchar(1) NULL,
	status          	nchar(2) NULL,
	certified_date  	nvarchar(10) NULL,
	score_total     	bigint NULL,
	score_count     	int NULL,
	score_average   	bigint NULL,
	hit_count       	int NULL,
	expired_day     	nvarchar(10) NULL,
	abstract        	ntext NULL,
	keywords        	ntext NULL,
	dept            	nvarchar(32) NULL,
	forward_count   	int NULL DEFAULT ((0)),
	edit_date       	nvarchar(10) NULL,
	edit_time       	nvarchar(8) NULL,
	edit_datetime   	bigint NULL,
	expediter_id    	nvarchar(32) NULL,
	ideal           	nvarchar(1) NULL,
	ideal_date      	nvarchar(10) NULL,
	source_from     	nvarchar(32) NULL,
	digest          	ntext NULL,
	keyword         	ntext NULL,
	post_description	nvarchar(255) NULL,
	uploader        	nvarchar(32) NULL,
	uploader_dept   	nvarchar(32) NULL,
	techdoc_label   	nvarchar(255) NULL,
	isSetTop        	nvarchar(1) NOT NULL DEFAULT ('N'),
	setTop_date     	nvarchar(50) NOT NULL DEFAULT ('') 
	)
GO

INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'$everyone$', N'DEPT', N'eland.com.tw', N'全公司', N'eipadmin', N'2001/11/08', N'13:59:21', N'全公司', NULL, N'', NULL, N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'KM_DEPT', N'DEPT', N'eland.com.tw', N'eKM虛擬部門', N'eipadmin', N'2001/11/08', N'13:59:21', N'eKM虛擬部門', NULL, N'', NULL, N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110824214047000', N'DEPT', N'eland.com.tw', N'董事長室', N'eipadmin', N'2011/08/24', N'21:41:02', N'', N'9  ', N'root', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110824214047000_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/24', N'21:41:02', N'主管', NULL, N'ROLeL110824214047000', N'ROLeL110824214047000', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110824214102000', N'DEPT', N'eland.com.tw', N'製造部', N'eipadmin', N'2011/08/24', N'21:41:09', N'', N'9  ', N'root', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110824214102000_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/24', N'21:41:09', N'主管', NULL, N'ROLeL110824214102000', N'ROLeL110824214102000', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110824214109001', N'DEPT', N'eland.com.tw', N'財務處', N'eipadmin', N'2011/08/24', N'21:41:15', N'', N'9  ', N'root', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110824214109001_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/24', N'21:41:15', N'主管', NULL, N'ROLeL110824214109001', N'ROLeL110824214109001', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110824214126003', N'DEPT', N'eland.com.tw', N'行銷部', N'eipadmin', N'2011/08/24', N'21:41:33', N'', N'9  ', N'root', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110824214126003_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/24', N'21:41:33', N'主管', NULL, N'ROLeL110824214126003', N'ROLeL110824214126003', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110824214645005', N'DEPT', N'eland.com.tw', N'秘書', N'eipadmin', N'2011/08/24', N'21:46:52', N'', N'9  ', N'ROLeL110824214047000', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110824214645005_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/24', N'21:46:52', N'主管', NULL, N'ROLeL110824214645005', N'ROLeL110824214645005', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231348007', N'DEPT', N'eland.com.tw', N'化工產業', N'eipadmin', N'2011/08/26', N'23:14:24', N'負責化學分析及測試', N'9  ', N'root', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231348007_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/26', N'23:14:24', N'主管', NULL, N'ROLeL110826231348007', N'ROLeL110826231348007', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231527009', N'DEPT', N'eland.com.tw', N'總經理', N'eipadmin', N'2011/08/26', N'23:15:41', N'', N'9  ', N'ROLeL110826231348007', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231527009_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/26', N'23:15:41', N'主管', NULL, N'ROLeL110826231527009', N'ROLeL110826231527009', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231546010', N'DEPT', N'eland.com.tw', N'管理部', N'eipadmin', N'2011/08/26', N'23:15:56', N'', N'9  ', N'ROLeL110826231348007', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231546010_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/26', N'23:15:56', N'主管', NULL, N'ROLeL110826231546010', N'ROLeL110826231546010', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231556011', N'DEPT', N'eland.com.tw', N'營業部', N'eipadmin', N'2011/08/26', N'23:16:02', N'', N'9  ', N'ROLeL110826231348007', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231556011_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/26', N'23:16:02', N'主管', NULL, N'ROLeL110826231556011', N'ROLeL110826231556011', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231602012', N'DEPT', N'eland.com.tw', N'廠務部', N'eipadmin', N'2011/08/26', N'23:16:09', N'', N'9  ', N'ROLeL110826231348007', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231602012_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/26', N'23:16:09', N'主管', NULL, N'ROLeL110826231602012', N'ROLeL110826231602012', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231610013', N'DEPT', N'eland.com.tw', N'技術部', N'eipadmin', N'2011/08/26', N'23:16:17', N'', N'9  ', N'ROLeL110826231348007', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231610013_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/26', N'23:16:17', N'主管', NULL, N'ROLeL110826231610013', N'ROLeL110826231610013', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231722014', N'DEPT', N'eland.com.tw', N'採購', N'eipadmin', N'2011/08/26', N'23:17:29', N'', N'9  ', N'ROLeL110826231546010', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231722014_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/26', N'23:17:29', N'主管', NULL, N'ROLeL110826231722014', N'ROLeL110826231722014', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231741015', N'DEPT', N'eland.com.tw', N'人事', N'eipadmin', N'2011/08/26', N'23:17:45', N'', N'9  ', N'ROLeL110826231546010', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231741015_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/26', N'23:17:45', N'主管', NULL, N'ROLeL110826231741015', N'ROLeL110826231741015', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231914017', N'DEPT', N'eland.com.tw', N'環綺國際', N'eipadmin', N'2011/08/26', N'23:19:32', N'', N'9  ', N'ROLeL110826231348007', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231914017_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/26', N'23:19:32', N'主管', NULL, N'ROLeL110826231914017', N'ROLeL110826231914017', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231932018', N'DEPT', N'eland.com.tw', N'育宗企業', N'eipadmin', N'2011/08/26', N'23:19:46', N'', N'9  ', N'ROLeL110826231348007', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110826231932018_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/26', N'23:19:46', N'主管', NULL, N'ROLeL110826231932018', N'ROLeL110826231932018', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110827085924020', N'DEPT', N'eland.com.tw', N'外部顧問', N'eipadmin', N'2011/08/27', N'08:59:31', N'', N'9  ', N'ROLeL110826231348007', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110827085924020_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/27', N'08:59:31', N'主管', NULL, N'ROLeL110827085924020', N'ROLeL110827085924020', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110829101259000', N'DEPT', N'eland.com.tw', N'顧問部', N'eipadmin', N'2011/08/29', N'10:13:06', N'', N'9  ', N'root', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110829101259000_boss', N'DEPR', N'eland.com.tw', N'主管', N'eipadmin', N'2011/08/29', N'10:13:06', N'主管', NULL, N'ROLeL110829101259000', N'ROLeL110829101259000', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110913093646002', N'DEPT', N'eland.com.tw', N'行政', N'michael', N'2011/09/13', N'09:37:01', N'', N'5  ', N'ROLeL110826231546010', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL110913093646002_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2011/09/13', N'09:37:01', N'主管', NULL, N'ROLeL110913093646002', N'ROLeL110913093646002', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111022075203000', N'DEPT', N'eland.com.tw', N'第一高', N'michael', N'2011/10/22', N'07:52:22', N'', N'9  ', N'root', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111022075203000_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2011/10/22', N'07:52:22', N'主管', NULL, N'ROLeL111022075203000', N'ROLeL111022075203000', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111022075951001', N'DEPT', N'eland.com.tw', N'行政管理部', N'michael', N'2011/10/22', N'08:00:04', N'', N'9  ', N'ROLeL111022075203000', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111022075951001_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2011/10/22', N'08:00:04', N'主管', NULL, N'ROLeL111022075951001', N'ROLeL111022075951001', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111022080021002', N'DEPT', N'eland.com.tw', N'資訊部', N'michael', N'2011/10/22', N'08:00:32', N'', N'9  ', N'ROLeL111022075203000', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111022080021002_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2011/10/22', N'08:00:32', N'主管', NULL, N'ROLeL111022080021002', N'ROLeL111022080021002', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111028111745000', N'PROJ', N'eland.com.tw', N'最高樓知識管理專案', N'wendy', N'2011/10/28', N'11:18:11', N'', NULL, N'company', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111028111824000', N'DEPT', N'eland.com.tw', N'知識管理組', N'wendy', N'2011/10/28', N'11:18:38', N'', N'9  ', N'ROLeL110829101259000', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111028111824000_boss', N'DEPR', N'eland.com.tw', N'主管', N'wendy', N'2011/10/28', N'11:18:38', N'主管', NULL, N'ROLeL111028111824000', N'ROLeL111028111824000', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111028111845001', N'DEPT', N'eland.com.tw', N'產製精實組', N'wendy', N'2011/10/28', N'11:18:48', N'', N'9  ', N'ROLeL110829101259000', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111028111845001_boss', N'DEPR', N'eland.com.tw', N'主管', N'wendy', N'2011/10/28', N'11:18:48', N'主管', NULL, N'ROLeL111028111845001', N'ROLeL111028111845001', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111028111901002', N'DEPT', N'eland.com.tw', N'營銷管理組', N'wendy', N'2011/10/28', N'11:19:08', N'', N'9  ', N'ROLeL110829101259000', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111028111901002_boss', N'DEPR', N'eland.com.tw', N'主管', N'wendy', N'2011/10/28', N'11:19:08', N'主管', NULL, N'ROLeL111028111901002', N'ROLeL111028111901002', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111028112134003', N'DEPT', N'eland.com.tw', N'人力資源組', N'wendy', N'2011/10/28', N'11:21:37', N'', N'9  ', N'ROLeL110829101259000', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111028112134003_boss', N'DEPR', N'eland.com.tw', N'主管', N'wendy', N'2011/10/28', N'11:21:37', N'主管', NULL, N'ROLeL111028112134003', N'ROLeL111028112134003', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111028112156004', N'DEPT', N'eland.com.tw', N'客服行政部', N'wendy', N'2011/10/28', N'11:21:59', N'', N'9  ', N'root', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111028112156004_boss', N'DEPR', N'eland.com.tw', N'主管', N'wendy', N'2011/10/28', N'11:21:59', N'主管', NULL, N'ROLeL111028112156004', N'ROLeL111028112156004', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111028112208005', N'DEPT', N'eland.com.tw', N'客服行政', N'wendy', N'2011/10/28', N'11:22:15', N'', N'9  ', N'ROLeL111028112156004', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111028112208005_boss', N'DEPR', N'eland.com.tw', N'主管', N'wendy', N'2011/10/28', N'11:22:15', N'主管', NULL, N'ROLeL111028112208005', N'ROLeL111028112208005', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111028112249006', N'DEPT', N'eland.com.tw', N'會計行政', N'wendy', N'2011/10/28', N'11:22:52', N'', N'9  ', N'ROLeL111028112156004', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL111028112249006_boss', N'DEPR', N'eland.com.tw', N'主管', N'wendy', N'2011/10/28', N'11:22:52', N'主管', NULL, N'ROLeL111028112249006', N'ROLeL111028112249006', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318153535001', N'DEPT', N'eland.com.tw', N'教務處', N'michael', N'2012/03/18', N'15:36:20', N'', N'8  ', N'ROLeL120318160453018', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318153535001_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/18', N'15:36:20', N'主管', NULL, N'ROLeL120318153535001', N'ROLeL120318153535001', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318153840007', N'DEPT', N'eland.com.tw', N'教學組', N'michael', N'2012/03/18', N'15:39:02', N'', N'7  ', N'ROLeL120318153535001', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318153840007_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/18', N'15:39:02', N'主管', NULL, N'ROLeL120318153840007', N'ROLeL120318153840007', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318153927008', N'DEPT', N'eland.com.tw', N'註冊組', N'michael', N'2012/03/18', N'15:39:55', N'', N'7  ', N'ROLeL120318153535001', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318153927008_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/18', N'15:39:55', N'主管', NULL, N'ROLeL120318153927008', N'ROLeL120318153927008', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318154010009', N'DEPT', N'eland.com.tw', N'資訊組', N'michael', N'2012/03/18', N'15:40:33', N'', N'7  ', N'ROLeL120318153535001', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318154010009_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/18', N'15:40:33', N'主管', NULL, N'ROLeL120318154010009', N'ROLeL120318154010009', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318154043010', N'DEPT', N'eland.com.tw', N'訓導處', N'michael', N'2012/03/18', N'15:41:28', N'', N'8  ', N'ROLeL120318160453018', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318154043010_boss', N'DEPR', N'eland.com.tw', N'教導主任', N'michael', N'2012/03/18', N'15:41:28', N'主管', NULL, N'ROLeL120318154043010', N'ROLeL120318154043010', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318154342011', N'DEPT', N'eland.com.tw', N'訓育組', N'michael', N'2012/03/18', N'15:44:36', N'', N'7  ', N'ROLeL120318154043010', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318154342011_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/18', N'15:44:36', N'主管', NULL, N'ROLeL120318154342011', N'ROLeL120318154342011', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318154607012', N'DEPT', N'eland.com.tw', N'衛生組', N'michael', N'2012/03/18', N'15:47:58', N'', N'7  ', N'ROLeL120318154043010', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318154607012_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/18', N'15:47:58', N'主管', NULL, N'ROLeL120318154607012', N'ROLeL120318154607012', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318154823013', N'DEPT', N'eland.com.tw', N'體育組', N'michael', N'2012/03/18', N'15:48:36', N'', N'7  ', N'ROLeL120318154043010', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318154823013_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/18', N'15:48:36', N'主管', NULL, N'ROLeL120318154823013', N'ROLeL120318154823013', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318154912014', N'DEPT', N'eland.com.tw', N'總務處', N'michael', N'2012/03/18', N'15:49:29', N'', N'8  ', N'ROLeL120318160453018', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318154912014_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/18', N'15:49:29', N'主管', NULL, N'ROLeL120318154912014', N'ROLeL120318154912014', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318155049015', N'DEPT', N'eland.com.tw', N'事務組', N'michael', N'2012/03/18', N'15:51:02', N'', N'8  ', N'ROLeL110824214126003', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318155049015_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/18', N'15:51:02', N'主管', NULL, N'ROLeL120318155049015', N'ROLeL120318155049015', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318155116016', N'DEPT', N'eland.com.tw', N'文書組', N'michael', N'2012/03/18', N'15:51:32', N'', N'7  ', N'ROLeL120318154912014', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318155116016_boss', N'DEPR', N'eland.com.tw', N'文書組長', N'michael', N'2012/03/18', N'15:51:32', N'主管', NULL, N'ROLeL120318155116016', N'ROLeL120318155116016', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318155137017', N'DEPT', N'eland.com.tw', N'出納組', N'michael', N'2012/03/18', N'15:51:51', N'', N'7  ', N'ROLeL120318154912014', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318155137017_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/18', N'15:51:51', N'主管', NULL, N'ROLeL120318155137017', N'ROLeL120318155137017', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318160453018', N'DEPT', N'eland.com.tw', N'校長室', N'michael', N'2012/03/18', N'16:05:21', N'', N'9  ', N'root', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318160453018_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/18', N'16:05:21', N'主管', NULL, N'ROLeL120318160453018', N'ROLeL120318160453018', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120318161530001', N'DEPR', N'eland.com.tw', N'教務主任', N'michael', N'2012/03/18', N'16:16:28', N'', NULL, N'ROLeL120318153535001', N'ROLeL120318153535001', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319043140019', N'DEPT', N'eland.com.tw', N'事務組', N'michael', N'2012/03/19', N'04:31:57', N'', N'7  ', N'ROLeL120318154912014', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319043140019_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'04:31:57', N'主管', NULL, N'ROLeL120319043140019', N'ROLeL120319043140019', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319043330020', N'DEPT', N'eland.com.tw', N'健康中心', N'michael', N'2012/03/19', N'04:33:51', N'', N'6  ', N'ROLeL120318154607012', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319043330020_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'04:33:51', N'主管', NULL, N'ROLeL120319043330020', N'ROLeL120319043330020', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319043914021', N'DEPT', N'eland.com.tw', N'圖書館', N'michael', N'2012/03/19', N'04:39:46', N'', N'6  ', N'ROLeL120318153840007', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319043914021_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'04:39:46', N'主管', NULL, N'ROLeL120319043914021', N'ROLeL120319043914021', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319044056022', N'DEPT', N'eland.com.tw', N'電腦教室', N'michael', N'2012/03/19', N'04:41:10', N'', N'7  ', N'ROLeL120318154010009', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319044056022_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'04:41:10', N'主管', NULL, N'ROLeL120319044056022', N'ROLeL120319044056022', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319045836024', N'DEPT', N'eland.com.tw', N'班級', N'michael', N'2012/03/19', N'04:58:55', N'', N'7  ', N'root', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319045836024_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'04:58:55', N'主管', NULL, N'ROLeL120319045836024', N'ROLeL120319045836024', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319045920025', N'DEPT', N'eland.com.tw', N'低年級', N'michael', N'2012/03/19', N'04:59:50', N'', N'7  ', N'ROLeL120319045836024', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319045920025_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'04:59:50', N'主管', NULL, N'ROLeL120319045920025', N'ROLeL120319045920025', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319045959026', N'DEPT', N'eland.com.tw', N'中年級', N'michael', N'2012/03/19', N'05:00:13', N'', N'7  ', N'ROLeL120319045836024', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319045959026_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:00:13', N'主管', NULL, N'ROLeL120319045959026', N'ROLeL120319045959026', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050018027', N'DEPT', N'eland.com.tw', N'高年級', N'michael', N'2012/03/19', N'05:00:30', N'', N'7  ', N'ROLeL120319045836024', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050018027_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:00:30', N'主管', NULL, N'ROLeL120319050018027', N'ROLeL120319050018027', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050046028', N'DEPT', N'eland.com.tw', N'三年級', N'michael', N'2012/03/19', N'05:01:18', N'', N'6  ', N'ROLeL120319045959026', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050046028_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:01:18', N'主管', NULL, N'ROLeL120319050046028', N'ROLeL120319050046028', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050139029', N'DEPT', N'eland.com.tw', N'四年級', N'michael', N'2012/03/19', N'05:01:55', N'', N'7  ', N'ROLeL120319045959026', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050139029_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:01:55', N'主管', NULL, N'ROLeL120319050139029', N'ROLeL120319050139029', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050213030', N'DEPT', N'eland.com.tw', N'一年級', N'michael', N'2012/03/19', N'05:02:35', N'', N'7  ', N'ROLeL120319045920025', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050213030_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:02:35', N'主管', NULL, N'ROLeL120319050213030', N'ROLeL120319050213030', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050331031', N'DEPT', N'eland.com.tw', N'二年級', N'michael', N'2012/03/19', N'05:04:18', N'', N'7  ', N'ROLeL120319045920025', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050331031_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:04:18', N'主管', NULL, N'ROLeL120319050331031', N'ROLeL120319050331031', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050438032', N'DEPT', N'eland.com.tw', N'五年級', N'michael', N'2012/03/19', N'05:05:24', N'', N'7  ', N'ROLeL120319050018027', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050438032_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:05:24', N'主管', NULL, N'ROLeL120319050438032', N'ROLeL120319050438032', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050536033', N'DEPT', N'eland.com.tw', N'六年級', N'michael', N'2012/03/19', N'05:05:53', N'', N'7  ', N'ROLeL120319050018027', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050536033_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:05:53', N'主管', NULL, N'ROLeL120319050536033', N'ROLeL120319050536033', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050626034', N'DEPT', N'eland.com.tw', N'一年甲班', N'michael', N'2012/03/19', N'05:06:51', N'', N'6  ', N'ROLeL120319050213030', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050626034_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:06:51', N'主管', NULL, N'ROLeL120319050626034', N'ROLeL120319050626034', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050708035', N'DEPT', N'eland.com.tw', N'一年乙班', N'michael', N'2012/03/19', N'05:07:23', N'', N'6  ', N'ROLeL120319050213030', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050708035_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:07:23', N'主管', NULL, N'ROLeL120319050708035', N'ROLeL120319050708035', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050804036', N'DEPT', N'eland.com.tw', N'二年甲班', N'michael', N'2012/03/19', N'05:08:21', N'', N'6  ', N'ROLeL120319050331031', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050804036_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:08:21', N'主管', NULL, N'ROLeL120319050804036', N'ROLeL120319050804036', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050854037', N'DEPT', N'eland.com.tw', N'二年乙班', N'michael', N'2012/03/19', N'05:09:13', N'', N'6  ', N'ROLeL120319050331031', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050854037_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:09:13', N'主管', NULL, N'ROLeL120319050854037', N'ROLeL120319050854037', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050930038', N'DEPT', N'eland.com.tw', N'三年甲班', N'michael', N'2012/03/19', N'05:10:03', N'', N'7  ', N'ROLeL120319050046028', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319050930038_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:10:03', N'主管', NULL, N'ROLeL120319050930038', N'ROLeL120319050930038', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051020039', N'DEPT', N'eland.com.tw', N'三年乙班', N'michael', N'2012/03/19', N'05:10:37', N'', N'6  ', N'ROLeL120319050046028', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051020039_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:10:37', N'主管', NULL, N'ROLeL120319051020039', N'ROLeL120319051020039', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051054040', N'DEPT', N'eland.com.tw', N'三年丙班', N'michael', N'2012/03/19', N'05:11:15', N'', N'6  ', N'ROLeL120319050046028', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051054040_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:11:15', N'主管', NULL, N'ROLeL120319051054040', N'ROLeL120319051054040', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051150041', N'DEPT', N'eland.com.tw', N'四年甲班', N'michael', N'2012/03/19', N'05:12:05', N'', N'6  ', N'ROLeL120319050139029', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051150041_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:12:05', N'主管', NULL, N'ROLeL120319051150041', N'ROLeL120319051150041', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051230042', N'DEPT', N'eland.com.tw', N'四年乙班', N'michael', N'2012/03/19', N'05:12:43', N'', N'6  ', N'ROLeL120319050139029', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051230042_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:12:43', N'主管', NULL, N'ROLeL120319051230042', N'ROLeL120319051230042', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051307043', N'DEPT', N'eland.com.tw', N'四年丙班', N'michael', N'2012/03/19', N'05:13:20', N'', N'6  ', N'ROLeL120319050139029', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051307043_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:13:20', N'主管', NULL, N'ROLeL120319051307043', N'ROLeL120319051307043', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051329044', N'DEPT', N'eland.com.tw', N'四年丁班', N'michael', N'2012/03/19', N'05:13:40', N'', N'7  ', N'ROLeL120319050139029', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051329044_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:13:40', N'主管', NULL, N'ROLeL120319051329044', N'ROLeL120319051329044', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051357045', N'DEPT', N'eland.com.tw', N'五年甲班', N'michael', N'2012/03/19', N'05:14:08', N'', N'6  ', N'ROLeL120319050438032', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051357045_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:14:08', N'主管', NULL, N'ROLeL120319051357045', N'ROLeL120319051357045', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051430046', N'DEPT', N'eland.com.tw', N'五年乙班', N'michael', N'2012/03/19', N'05:14:42', N'', N'6  ', N'ROLeL120319050438032', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051430046_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:14:42', N'主管', NULL, N'ROLeL120319051430046', N'ROLeL120319051430046', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051511047', N'DEPT', N'eland.com.tw', N'五年丙班', N'michael', N'2012/03/19', N'05:15:28', N'', N'6  ', N'ROLeL120319050438032', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051511047_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:15:28', N'主管', NULL, N'ROLeL120319051511047', N'ROLeL120319051511047', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051544048', N'DEPT', N'eland.com.tw', N'六年甲班', N'michael', N'2012/03/19', N'05:15:56', N'', N'6  ', N'ROLeL120319050536033', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051544048_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:15:56', N'主管', NULL, N'ROLeL120319051544048', N'ROLeL120319051544048', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051606049', N'DEPT', N'eland.com.tw', N'六年乙班', N'michael', N'2012/03/19', N'05:16:25', N'', N'6  ', N'ROLeL120319050536033', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051606049_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:16:25', N'主管', NULL, N'ROLeL120319051606049', N'ROLeL120319051606049', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051641051', N'DEPT', N'eland.com.tw', N'六年丙班', N'michael', N'2012/03/19', N'05:17:18', N'', N'6  ', N'ROLeL120319050536033', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051641051_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:17:18', N'主管', NULL, N'ROLeL120319051641051', N'ROLeL120319051641051', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051752052', N'DEPT', N'eland.com.tw', N'特教資源班', N'michael', N'2012/03/19', N'05:18:15', N'', N'6  ', N'ROLeL120319045836024', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120319051752052_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/19', N'05:18:15', N'主管', NULL, N'ROLeL120319051752052', N'ROLeL120319051752052', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120322044326054', N'DEPT', N'eland.com.tw', N'二年丙班', N'michael', N'2012/03/22', N'04:43:59', N'', N'6  ', N'ROLeL120319050331031', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120322044326054_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/03/22', N'04:43:59', N'主管', NULL, N'ROLeL120322044326054', N'ROLeL120322044326054', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120409051756000', N'DEPT', N'eland.com.tw', N'人事處', N'michael', N'2012/04/09', N'05:18:13', N'', N'8  ', N'ROLeL120318160453018', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120409051756000_boss', N'DEPR', N'eland.com.tw', N'人事主任', N'michael', N'2012/04/09', N'05:18:13', N'主管', NULL, N'ROLeL120409051756000', N'ROLeL120409051756000', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120415043824000', N'PROJ', N'eland.com.tw', N'語文社群', N'michael', N'2012/04/15', N'04:39:16', N'探討語文相關知識', NULL, N'company', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120415044009001', N'PROJ', N'eland.com.tw', N'心靈社群', N'michael', N'2012/04/15', N'04:41:00', N'心靈探討', NULL, N'company', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120415044108000', N'PRJR', N'eland.com.tw', N'語文社', N'michael', N'2012/04/15', N'04:44:09', N'', NULL, N'ROLeL120415043824000', N'ROLeL120415043824000', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120415044530002', N'PRJR', N'eland.com.tw', N'讀經社', N'michael', N'2012/04/15', N'04:47:18', N'', NULL, N'ROLeL120415044009001', N'ROLeL120415044009001', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120508040000001', N'DEPT', N'eland.com.tw', N'大學部', N'michael', N'2012/05/08', N'04:03:53', N'', N'9  ', N'root', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120508040000001_boss', N'DEPR', N'eland.com.tw', N'主管', N'michael', N'2012/05/08', N'04:03:53', N'主管', NULL, N'ROLeL120508040000001', N'ROLeL120508040000001', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120508041411004', N'PROJ', N'eland.com.tw', N'123', N'michael', N'2012/05/08', N'04:14:24', N'', NULL, N'company', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120605164829000', N'DEPT', N'eland.com.tw', N'業務部', N'wendy', N'2012/06/05', N'16:48:37', N'', N'9  ', N'root', N'', N'KM')
GO
INSERT INTO dbo.eip_group(g_id, type_id, m_site, g_name, g_creator, g_create_date, g_create_time, g_desc, g_level, g_parentid, g_code, g_is_ad)
  VALUES(N'ROLeL120605164829000_boss', N'DEPR', N'eland.com.tw', N'主管', N'wendy', N'2012/06/05', N'16:48:37', N'主管', NULL, N'ROLeL120605164829000', N'ROLeL120605164829000', N'KM')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'1001', N'ROLeL120318160453018', N'2012/03/20', N'04:42:39', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'123', N'ROLeL111022075203000', N'2012/05/08', N'03:26:52', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'2003', N'ROLeL120318154912014', N'2012/03/20', N'04:49:29', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'2004', N'ROLeL120409051756000', N'2012/04/09', N'05:20:35', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'2004', N'ROLeL120409051756000_boss', N'2012/04/09', N'05:22:38', N'', N' ')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300101', N'ROLeL120318153535001', N'2012/04/05', N'05:24:27', N'', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300101', N'ROLeL120318153840007', N'2012/03/20', N'04:54:44', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300101', N'ROLeL120319043914021', N'2012/03/22', N'04:31:22', N'', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300101', N'ROLeL120319043914021_boss', N'2012/03/22', N'04:31:22', N'', N' ')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300102', N'ROLeL120318153535001', N'2012/04/05', N'05:24:27', N'', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300102', N'ROLeL120318153927008', N'2012/03/20', N'04:56:22', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300103', N'ROLeL120318153535001', N'2012/03/20', N'05:05:15', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300103', N'ROLeL120318154010009', N'2012/03/20', N'05:05:15', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300201', N'ROLeL120318154043010', N'2012/03/20', N'05:36:33', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300201', N'ROLeL120318154342011', N'2012/03/20', N'05:36:33', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300202', N'ROLeL120318154043010', N'2012/03/20', N'05:37:44', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300202', N'ROLeL120318154607012', N'2012/03/20', N'05:37:44', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300203', N'ROLeL120318154043010', N'2012/03/20', N'05:39:11', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300203', N'ROLeL120318154823013', N'2012/03/20', N'05:39:11', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300301', N'ROLeL120318154912014', N'2012/03/20', N'05:41:29', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300301', N'ROLeL120318155116016', N'2012/03/20', N'05:41:29', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300301', N'ROLeL120318155116016_boss', N'2012/04/06', N'04:32:36', N'', N' ')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300302', N'ROLeL120318154912014', N'2012/03/22', N'04:28:52', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300302', N'ROLeL120319043140019', N'2012/03/22', N'04:28:52', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300303', N'ROLeL120318154912014', N'2012/03/22', N'04:34:11', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'300303', N'ROLeL120318155137017', N'2012/03/22', N'04:34:11', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'4000202', N'ROLeL120319045836024', N'2012/03/22', N'04:43:05', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'4000202', N'ROLeL120319045920025', N'2012/03/22', N'04:43:05', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'4000202', N'ROLeL120319050331031', N'2012/03/22', N'04:43:05', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'4000202', N'ROLeL120319050854037', N'2012/03/22', N'04:43:05', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'4000202', N'ROLeL120415044108000', N'2012/04/15', N'04:44:09', N'', N' ')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400101', N'ROLeL120319045836024', N'2012/03/22', N'04:37:36', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400101', N'ROLeL120319045920025', N'2012/03/22', N'04:37:36', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400101', N'ROLeL120319050213030', N'2012/03/22', N'04:37:36', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400101', N'ROLeL120319050626034', N'2012/03/22', N'04:37:36', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400201', N'ROLeL120319045836024', N'2012/03/22', N'04:40:58', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400201', N'ROLeL120319045920025', N'2012/03/22', N'04:40:58', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400201', N'ROLeL120319050331031', N'2012/03/22', N'04:40:58', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400201', N'ROLeL120319050804036', N'2012/03/22', N'04:40:58', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400201', N'ROLeL120415044530002', N'2012/04/15', N'04:47:18', N'', N' ')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400203', N'ROLeL120319045836024', N'2012/03/22', N'04:47:20', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400203', N'ROLeL120319045920025', N'2012/03/22', N'04:47:20', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400203', N'ROLeL120319050331031', N'2012/03/22', N'04:47:20', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400203', N'ROLeL120322044326054', N'2012/03/22', N'04:47:20', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400203', N'ROLeL120415044530002', N'2012/04/15', N'04:47:18', N'', N' ')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400301', N'ROLeL120319045836024', N'2012/03/22', N'04:48:54', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400301', N'ROLeL120319045959026', N'2012/03/22', N'04:48:54', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400301', N'ROLeL120319050046028', N'2012/03/22', N'04:48:54', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400301', N'ROLeL120319050930038', N'2012/03/22', N'04:48:54', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400301', N'ROLeL120415044108000', N'2012/04/15', N'04:44:09', N'', N' ')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400302', N'ROLeL120319045836024', N'2012/03/22', N'04:50:31', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400302', N'ROLeL120319045959026', N'2012/03/22', N'04:50:31', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400302', N'ROLeL120319050046028', N'2012/03/22', N'04:50:31', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400302', N'ROLeL120319051020039', N'2012/03/22', N'04:50:31', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400302', N'ROLeL120415044108000', N'2012/04/15', N'04:44:09', N'', N' ')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400401', N'ROLeL120319045836024', N'2012/03/22', N'04:51:37', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400401', N'ROLeL120319045959026', N'2012/03/22', N'04:51:37', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400401', N'ROLeL120319050139029', N'2012/03/22', N'04:51:37', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400401', N'ROLeL120319051150041', N'2012/03/22', N'04:51:37', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400401', N'ROLeL120415044108000', N'2012/04/15', N'04:44:09', N'', N' ')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400402', N'ROLeL120319045836024', N'2012/03/22', N'04:52:55', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400402', N'ROLeL120319045959026', N'2012/03/22', N'04:52:55', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400402', N'ROLeL120319050139029', N'2012/03/22', N'04:52:55', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400402', N'ROLeL120319051230042', N'2012/03/22', N'04:52:55', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400402', N'ROLeL120415044108000', N'2012/04/15', N'04:44:09', N'', N' ')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400403', N'ROLeL120319045959026', N'2012/03/22', N'04:54:45', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400403', N'ROLeL120319050139029', N'2012/03/22', N'04:54:45', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400403', N'ROLeL120319051307043', N'2012/03/22', N'04:54:45', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400404', N'ROLeL120319045836024', N'2012/03/22', N'04:56:14', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400404', N'ROLeL120319045959026', N'2012/03/22', N'04:56:14', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400404', N'ROLeL120319050139029', N'2012/03/22', N'04:56:14', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400404', N'ROLeL120319051329044', N'2012/03/22', N'04:56:14', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400404', N'ROLeL120415044530002', N'2012/04/15', N'04:47:18', N'', N' ')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400501', N'ROLeL120319045836024', N'2012/03/22', N'04:58:19', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400501', N'ROLeL120319050018027', N'2012/03/22', N'04:58:19', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400501', N'ROLeL120319050438032', N'2012/03/22', N'04:58:19', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400501', N'ROLeL120319051357045', N'2012/03/22', N'04:58:19', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400501', N'ROLeL120415044530002', N'2012/04/15', N'04:47:18', N'', N' ')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400502', N'ROLeL120319045836024', N'2012/03/22', N'05:00:03', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400502', N'ROLeL120319050018027', N'2012/03/22', N'05:00:03', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400502', N'ROLeL120319050438032', N'2012/03/22', N'05:00:03', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400502', N'ROLeL120319051430046', N'2012/03/22', N'05:00:03', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400502', N'ROLeL120415044108000', N'2012/04/15', N'04:44:09', N'', N' ')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400503', N'ROLeL120319045836024', N'2012/03/22', N'05:01:42', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400503', N'ROLeL120319050018027', N'2012/03/22', N'05:01:42', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400503', N'ROLeL120319050438032', N'2012/03/22', N'05:01:42', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400503', N'ROLeL120319051511047', N'2012/03/22', N'05:01:42', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400602', N'ROLeL120319045836024', N'2012/03/22', N'05:03:21', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400602', N'ROLeL120319050018027', N'2012/03/22', N'05:03:21', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400602', N'ROLeL120319050536033', N'2012/03/22', N'05:03:21', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400602', N'ROLeL120319051606049', N'2012/03/22', N'05:03:21', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400701', N'ROLeL120319045836024', N'2012/03/22', N'05:05:16', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400701', N'ROLeL120319051752052', N'2012/03/22', N'05:05:16', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400702', N'ROLeL120319045836024', N'2012/03/22', N'05:08:07', N'added by michael', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'400702', N'ROLeL120319051752052', N'2012/03/22', N'05:08:07', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'9999', N'ROLeL120319045836024', N'2012/04/05', N'05:53:22', N'added by eipadmin from batch mode', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'april', N'ROLeL110824214126003', N'2011/08/24', N'21:45:17', N'added by eipadmin', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'april', N'ROLeL110824214126003_boss', N'2011/08/24', N'21:47:30', N'', N' ')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'ariel', N'ROLeL110824214126003', N'2011/08/24', N'21:45:51', N'added by eipadmin', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'BOARD_MGR', N'KM_DEPT', N'2002/03/07', N'11:00:21', N'added by eipadmin', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'building001', N'ROLeL111022075951001', N'2011/10/22', N'08:01:31', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'building002', N'ROLeL111022080021002', N'2011/10/22', N'08:02:55', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'CATEGORY_MGR', N'KM_DEPT', N'2002/03/07', N'11:00:21', N'added by eipadmin', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'consultant7', N'ROLeL110829101259000', N'2012/08/08', N'21:55:27', N'added by eipadmin', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'consultant7', N'ROLeL110829101259000_boss', N'2012/08/08', N'21:55:47', N'', N' ')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'DEPT_MGR', N'KM_DEPT', N'2002/03/07', N'11:00:21', N'added by eipadmin', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'eipadmin', N'KM_DEPT', N'2002/03/07', N'11:00:21', N'added by eipadmin', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'greatinlee', N'ROLeL110829101259000', N'2011/10/28', N'10:12:06', N'added by eipadmin', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'hwtop', N'ROLeL110827085924020', N'2012/06/05', N'16:41:25', N'added by yuhtzong', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'hwtop', N'ROLeL110829101259000', N'2012/06/05', N'16:41:25', N'added by yuhtzong', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'jameschen', N'ROLeL120605164829000', N'2012/06/05', N'16:49:15', N'added by wendy', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'jean', N'ROLeL111028112134003', N'2012/08/08', N'21:48:01', N'added by eipadmin', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'Jim1', N'ROLeL110824214126003', N'2012/05/08', N'03:41:23', N'added by eipadmin from batch mode', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'ken', N'ROLeL110824214102000', N'2011/08/24', N'21:43:24', N'added by eipadmin', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'KM_MGR', N'KM_DEPT', N'2002/03/07', N'11:00:21', N'added by eipadmin', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'manage', N'ROLeL110826231348007', N'2011/10/28', N'16:18:05', N'added by technology', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'manage', N'ROLeL110826231527009', N'2011/10/28', N'16:18:05', N'added by technology', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'martin', N'ROLeL110829101259000', N'2011/08/29', N'15:44:02', N'added by eipadmin', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'michael', N'ROLeL110824214047000', N'2012/09/11', N'10:31:35', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'pert', N'ROLeL111028112134003', N'2012/08/08', N'21:47:35', N'added by eipadmin', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'pert', N'ROLeL111028112134003_boss', N'2012/08/08', N'21:54:24', N'', N' ')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'rd', N'ROLeL110826231610013', N'2011/10/28', N'16:19:35', N'added by technology', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'rorita', N'ROLeL110824214109001', N'2011/08/24', N'21:43:52', N'added by eipadmin', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'technology', N'ROLeL110826231610013', N'2011/10/28', N'17:36:16', N'added by technology', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'test_know', N'ROLeL110826231610013', N'2012/09/10', N'13:43:47', N'added by michael', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'vic', N'ROLeL110829101259000', N'2012/06/05', N'16:51:22', N'added by wendy', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'vic', N'ROLeL111028111824000', N'2012/06/05', N'16:51:22', N'added by wendy', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'wendy', N'ROLeL111028112156004', N'2012/06/05', N'16:39:47', N'added by yuhtzong', N'A')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'wendy', N'ROLeL111028112208005', N'2012/06/05', N'16:39:47', N'added by yuhtzong', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'wwrc', N'ROLeL110826231914017', N'2011/10/28', N'16:20:56', N'added by technology', N'M')
GO
INSERT INTO dbo.eip_group_member(m_site, m_account, g_id, join_date, join_time, join_note, status)
  VALUES(N'eland.com.tw', N'yuhtzong', N'ROLeL110826231932018', N'2011/10/28', N'16:38:00', N'added by wendy', N'M')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'1001@eland.com.tw', N'eland.com.tw', N'1001', N'1001', N'1001', N'N', N'', N'', N'', N'美甯', N'1001@yahoo.com.tw', N'1970/03/18', N'F', N'2012/03/20', N'04:42:39', N'', N'2012/04/07', N'06:03:48', 2, N'2012/03/18', 0, N'2012/03/20', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'123@eland.com.tw', N'eland.com.tw', N'123', N'123', N'123', N'N', N'', N'', N'', N'456', N'12345@yahoo.com.tw', N'1970/04/15', N'M', N'2012/05/08', N'03:26:52', N'', N'2012/05/08', N'03:26:52', 0, N'2012/04/15', 0, N'2012/05/08', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'2001@eland.com.tw', N'eland.com.tw', N'2001', N'2001', N'2001', N'N', N'', N'', N'', N'百雀', N'2001@yahoo.com.tw', N'1970/03/18', N'F', N'2012/03/20', N'04:45:30', N'', N'2012/03/20', N'04:45:30', 0, N'2012/03/18', 0, N'2012/03/20', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'2002@eland.com.tw', N'eland.com.tw', N'2002', N'2002', N'2002', N'N', N'', N'', N'', N'盈萩', N'2002@yahoo.com.tw', N'1970/03/18', N'F', N'2012/03/20', N'04:47:46', N'', N'2012/03/20', N'04:47:46', 0, N'2012/03/18', 0, N'2012/03/20', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'2003@eland.com.tw', N'eland.com.tw', N'2003', N'2003', N'2003', N'N', N'', N'', N'', N'禾堅', N'2003@yahoo.com.tw', N'1970/03/18', N'M', N'2012/03/20', N'04:49:29', N'', N'2012/03/20', N'04:49:29', 0, N'2012/03/18', 0, N'2012/03/20', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'2004@eland.com.tw', N'eland.com.tw', N'2004', N'2004', N'2004', N'N', N'', N'', N'', N'人事主任', N'2004@pchome.com.tw', N'1970/04/09', N'F', N'2012/04/09', N'05:20:35', N'', N'2012/04/09', N'05:20:35', 0, N'2012/04/09', 0, N'2012/04/09', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'300101@eland.com.tw', N'eland.com.tw', N'300101', N'300101', N'300101', N'N', N'', N'', N'', N'淑貞', N'300101@yahoo.com.tw', N'1970/03/18', N'F', N'2012/03/20', N'04:54:44', N'', N'2012/04/15', N'04:21:55', 1, N'2012/03/18', 0, N'2012/03/20', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'300102@eland.com.tw', N'eland.com.tw', N'300102', N'300102', N'300102', N'N', N'', N'', N'', N'300102', N'300102@yahoo.com.tw', N'1970/03/18', N'M', N'2012/03/20', N'04:56:22', N'', N'2012/04/09', N'05:25:07', 1, N'2012/03/18', 0, N'2012/03/20', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'300103@eland.com.tw', N'eland.com.tw', N'300103', N'300103', N'300103', N'N', N'', N'', N'', N'大雄', N'300103@yahoo.com.tw', N'1970/03/18', N'M', N'2012/03/20', N'05:05:15', N'', N'2012/03/20', N'05:05:15', 0, N'2012/03/18', 0, N'2012/03/20', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'300201@eland.com.tw', N'eland.com.tw', N'300201', N'300201', N'300201', N'N', N'', N'', N'', N'敬義', N'300201@yahoo.com.tw', N'1970/03/18', N'M', N'2012/03/20', N'05:36:33', N'', N'2012/03/20', N'05:36:33', 0, N'2012/03/18', 0, N'2012/03/20', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'300202@eland.com.tw', N'eland.com.tw', N'300202', N'300202', N'300202', N'N', N'', N'', N'', N'惠周', N'300202@yahoo.com.tw', N'1970/03/18', N'M', N'2012/03/20', N'05:37:44', N'', N'2012/03/20', N'05:37:44', 0, N'2012/03/18', 0, N'2012/03/20', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'300203@eland.com.tw', N'eland.com.tw', N'300203', N'300203', N'300203', N'N', N'', N'', N'', N'萍風', N'300203@yahoo.com.tw', N'1970/03/18', N'M', N'2012/03/20', N'05:39:11', N'', N'2012/03/20', N'05:39:11', 0, N'2012/03/18', 0, N'2012/03/20', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'300301@eland.com.tw', N'eland.com.tw', N'300301', N'300301', N'300301', N'N', N'', N'', N'', N'世美', N'300301@yahoo.com.tw', N'1970/03/18', N'F', N'2012/03/20', N'05:41:29', N'', N'2012/03/20', N'05:41:29', 0, N'2012/03/18', 0, N'2012/03/20', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'300302@eland.com.tw', N'eland.com.tw', N'300302', N'300302', N'300302', N'N', N'', N'', N'', N'豔秋', N'300302@yahoo.com.tw', N'1970/03/18', N'F', N'2012/03/22', N'04:28:52', N'', N'2012/03/22', N'04:28:52', 0, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'300303@eland.com.tw', N'eland.com.tw', N'300303', N'300303', N'300303', N'N', N'', N'', N'', N'莊先生', N'300303@yahoo.com.tw', N'1970/03/18', N'M', N'2012/03/22', N'04:34:11', N'', N'2012/03/22', N'04:34:11', 0, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'4000202@eland.com.tw', N'eland.com.tw', N'4000202', N'4000202', N'4000202', N'N', N'', N'', N'', N'美秀', N'400202@yahoo.com.tw', N'1970/03/18', N'F', N'2012/03/22', N'04:43:05', N'', N'2012/04/09', N'05:23:20', 1, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'400101@eland.com.tw', N'eland.com.tw', N'400101', N'400101', N'400101', N'N', N'', N'', N'', N'合美', N'400101@yahoo.com.tw', N'1970/03/18', N'F', N'2012/03/22', N'04:37:36', N'', N'2012/03/22', N'04:37:36', 0, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'400201@eland.com.tw', N'eland.com.tw', N'400201', N'400201', N'400201', N'N', N'', N'', N'', N'惠雪', N'400202@yahoo.com.tw', N'1970/03/18', N'F', N'2012/03/22', N'04:40:58', N'', N'2012/03/22', N'04:40:58', 0, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'400203@eland.com.tw', N'eland.com.tw', N'400203', N'400203', N'400203', N'N', N'', N'', N'', N'淑芬', N'400203@yahoo.com.tw', N'1970/03/18', N'M', N'2012/03/22', N'04:47:20', N'', N'2012/03/22', N'04:47:20', 0, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'400301@eland.com.tw', N'eland.com.tw', N'400301', N'400301', N'400301', N'N', N'', N'', N'', N'慧芬', N'400301@yahoo.com.tw', N'1970/03/18', N'F', N'2012/03/22', N'04:48:54', N'', N'2012/03/22', N'04:48:54', 0, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'400302@eland.com.tw', N'eland.com.tw', N'400302', N'400302', N'400302', N'N', N'', N'', N'', N'文綺', N'400302@yahoo.com.tw', N'1970/03/18', N'F', N'2012/03/22', N'04:50:31', N'', N'2012/04/15', N'04:20:37', 1, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'400401@eland.com.tw', N'eland.com.tw', N'400401', N'400401', N'400401', N'N', N'', N'', N'', N'耘甄', N'400202@yahoo.com.tw', N'1970/03/18', N'F', N'2012/03/22', N'04:51:37', N'', N'2012/04/15', N'04:29:12', 1, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'400402@eland.com.tw', N'eland.com.tw', N'400402', N'400402', N'400402', N'N', N'', N'', N'', N'秀霞', N'400402@yahoo.com.tw', N'1970/03/18', N'F', N'2012/03/22', N'04:52:55', N'', N'2012/03/22', N'04:52:55', 0, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'400403@eland.com.tw', N'eland.com.tw', N'400403', N'400403', N'400403', N'N', N'', N'', N'', N'明憲', N'400403@yahoo.com.tw', N'1970/03/18', N'M', N'2012/03/22', N'04:54:45', N'', N'2012/04/15', N'16:54:04', 19, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'400404@eland.com.tw', N'eland.com.tw', N'400404', N'400404', N'400404', N'N', N'', N'', N'', N'成敏', N'400404@yahoo.com.tw', N'1970/03/18', N'F', N'2012/03/22', N'04:56:14', N'', N'2012/03/22', N'04:56:14', 0, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'400501@eland.com.tw', N'eland.com.tw', N'400501', N'400501', N'400501', N'N', N'', N'', N'', N'詩尊', N'400501@yahoo.com.tw', N'1970/03/18', N'M', N'2012/03/22', N'04:58:19', N'', N'2012/03/22', N'04:58:19', 0, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'400502@eland.com.tw', N'eland.com.tw', N'400502', N'400502', N'400502', N'N', N'', N'', N'', N'舜皓', N'400502@yahoo.com.tw', N'1970/03/18', N'M', N'2012/03/22', N'05:00:03', N'', N'2012/04/15', N'05:21:48', 3, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'400503@eland.com.tw', N'eland.com.tw', N'400503', N'400503', N'400503', N'N', N'', N'', N'', N'俊宏', N'400503@yahoo.com.tw', N'1970/03/18', N'M', N'2012/03/22', N'05:01:42', N'', N'2012/03/22', N'05:01:42', 0, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'400602@eland.com.tw', N'eland.com.tw', N'400602', N'400602', N'400602', N'N', N'', N'', N'', N'冠富', N'400602@yahoo.com.tw', N'1970/03/18', N'M', N'2012/03/22', N'05:03:21', N'', N'2012/03/22', N'05:03:21', 0, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'400701@eland.com.tw', N'eland.com.tw', N'400701', N'400701', N'400701', N'N', N'', N'', N'', N'文莉', N'400701@yahoo.com.tw', N'1970/03/18', N'F', N'2012/03/22', N'05:05:16', N'', N'2012/03/22', N'05:05:16', 0, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'400702@eland.com.tw', N'eland.com.tw', N'400702', N'400702', N'400702', N'N', N'', N'', N'', N'雅卿', N'400702@yahoo.com.tw', N'1970/03/18', N'F', N'2012/03/22', N'05:08:07', N'', N'2012/03/22', N'05:08:07', 0, N'2012/03/18', 0, N'2012/03/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'9999@eland.com.tw', N'eland.com.tw', N'9999', N'44e75d63104af3e00fe07376545212c1', N'44e75d63104af3e00fe07376545212c1', N'N', N'', N'', N'', N'姓名', N'agree16@pchome.com.tw', N'', N'M', N'2012/04/05', N'05:53:22', N'MD5', N'2012/04/05', N'05:53:22', 0, N'2012/04/05', 0, N'2012/04/05', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'april@eland.com.tw', N'eland.com.tw', N'april', N'c4ca4238a0b923820dcc509a6f75849b', N'c4ca4238a0b923820dcc509a6f75849b', N'N', N'', N'', N'', N'April', N'april@ekm472.com.tw', N'1970/08/24', N'F', N'2011/08/24', N'21:45:17', N'MD5', N'2012/09/11', N'10:28:19', 88, N'2011/08/24', 0, N'2011/08/24', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'ariel@eland.com.tw', N'eland.com.tw', N'ariel', N'c4ca4238a0b923820dcc509a6f75849b', N'c4ca4238a0b923820dcc509a6f75849b', N'N', N'', N'', N'', N'Ariel', N'ariel@ekm472.com.tw', N'1970/08/24', N'F', N'2011/08/24', N'21:45:51', N'MD5', N'2012/09/11', N'10:27:44', 412, N'2011/08/24', 0, N'2011/08/24', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'BOARD_MGR@eland.com.tw', N'eland.com.tw', N'BOARD_MGR', N'BOARD_MGR', N'BOARD_MGR', N'Y', NULL, NULL, N'版主', N'版主', N'board-mgr@eland', N'1970/01/01', N'M', N'2001/10/15', N'11:20:00', NULL, N'2002/01/01', N'14:50:00', 0, N'2010/01/01', 0, N'2002/05/01', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'building001@eland.com.tw', N'eland.com.tw', N'building001', N'1d1e176753f7faa776804ac14b98ba27', N'building001', N'N', N'', N'', N'', N'miss料', N'wendy@hwtop.com.tw', N'1970/10/22', N'F', N'2011/10/22', N'08:01:31', N'MD5', N'2011/10/22', N'08:01:31', 0, N'2011/10/22', 0, N'2011/10/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'building002@eland.com.tw', N'eland.com.tw', N'building002', N'building002', N'building002', N'N', N'', N'', N'', N'Mr. lin', N'wendy@hwtop.com.tw', N'1970/10/22', N'M', N'2011/10/22', N'08:02:55', N'', N'2011/10/22', N'08:02:55', 0, N'2011/10/22', 0, N'2011/10/22', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'CATEGORY_MGR@eland.com.tw', N'eland.com.tw', N'CATEGORY_MGR', N'CATEGORY_MGR', N'CATEGORY_MGR', N'Y', NULL, NULL, N'文件分類管理者', N'文件分類管理者', N'category-mgr@eland', N'1970/01/01', N'M', N'2001/10/15', N'11:20:00', NULL, N'2002/01/01', N'14:50:00', 0, N'2010/01/01', 0, N'2002/05/01', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'consultant7@eland.com.tw', N'eland.com.tw', N'consultant7', N'consultant7', N'consultant7', N'N', N'', N'', N'', N'顧問七', N'test@test.test.test', N'1970/07/24', N'M', N'2012/08/08', N'21:55:27', N'', N'2012/08/08', N'21:55:27', 0, N'2012/07/24', 0, N'2012/08/08', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'Demotest@eland.com.tw', N'eland.com.tw', N'Demotest', N'Demotest', N'Demotest', N'N', N'', N'', N'', N'Demotest', N'abc@def.com', N'1970/02/24', N'M', N'2012/03/02', N'15:14:22', N'', N'2012/03/02', N'15:25:33', 3, N'2012/02/24', 0, N'2012/03/02', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'DEPT_MGR@eland.com.tw', N'eland.com.tw', N'DEPT_MGR', N'DEPT_MGR', N'DEPT_MGR', N'Y', NULL, NULL, N'部門主管', N'部門主管', N'dept-mgr@eland', N'1970/01/01', N'M', N'2001/10/15', N'11:20:00', NULL, N'2002/01/01', N'14:50:00', 0, N'2010/01/01', 0, N'2002/05/01', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'eipadmin@eland.com.tw', N'eland.com.tw', N'eipadmin', N'eipadmin', N'eipadmin', N'N', N'', N'', N'系統管理者', N'系統管理者', N'eipadmin@eland.com.tw', N'1970/01/01', N'M', N'2001/10/15', N'11:20:00', N'', N'2012/09/10', N'19:19:42', 157, N'2010/01/01', 0, N'2002/05/01', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'greatinlee@eland.com.tw', N'eland.com.tw', N'greatinlee', N'greatinlee', N'greatinlee', N'N', N'', N'', N'', N'顧問李', N'greatinlee@yahoo.com.tw', N'1970/10/22', N'M', N'2011/10/22', N'07:38:59', N'', N'2011/10/28', N'10:12:06', 1, N'2011/10/28', 0, N'2011/10/28', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'guest@eland.com.tw', N'eland.com.tw', N'guest', N'guest', N'guest', N'N', N'', N'', N'Guest', N'Guest', N'guest@eland', N'1997/01/01', N'M', N'2001/10/15', N'11:20:00', N'', N'2011/10/06', N'00:06:45', 2, N'2010/01/01', 0, N'2002/05/01', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'hwtop@eland.com.tw', N'eland.com.tw', N'hwtop', N'0d2ea8da217b68112b219353c02b323e', N'0d2ea8da217b68112b219353c02b323e', N'N', N'', N'', N'', N'汪駿在', N'david@hwtop.com.tw', N'1970/08/24', N'M', N'2011/08/27', N'09:09:38', N'MD5', N'2012/08/30', N'11:18:47', 39, N'2012/06/05', 0, N'2012/06/05', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'jameschen@eland.com.tw', N'eland.com.tw', N'jameschen', N'jameschen', N'jameschen', N'N', N'', N'', N'', N'jameschen', N'jameschen@eland.com.tw', N'1970/06/05', N'M', N'2012/06/05', N'16:49:15', N'', N'2012/06/05', N'17:09:00', 1, N'2012/06/05', 0, N'2012/06/05', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'jean@eland.com.tw', N'eland.com.tw', N'jean', N'jean', N'jean', N'N', N'', N'', N'', N'Jean Yang', N'pert@eland.com.tw', N'1970/10/04', N'M', N'2011/10/06', N'00:06:34', N'', N'2012/08/08', N'22:03:35', 7, N'2012/08/08', 0, N'2012/08/08', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'Jim1@eland.com.tw', N'eland.com.tw', N'Jim1', N'8a6ec0ea3a19e75020d79132e5d7560d', N'8a6ec0ea3a19e75020d79132e5d7560d', N'N', N'', N'', N'', N'Jim Lin', N'jimlin@eland.com', N'', N'M', N'2012/05/08', N'03:41:23', N'MD5', N'2012/05/08', N'03:41:23', 0, N'2012/05/08', 0, N'2012/05/08', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'ken@eland.com.tw', N'eland.com.tw', N'ken', N'c4ca4238a0b923820dcc509a6f75849b', N'c4ca4238a0b923820dcc509a6f75849b', N'N', N'', N'', N'', N'肯', N'ken@ekm472.com.tw', N'1970/08/24', N'M', N'2011/08/24', N'21:43:24', N'MD5', N'2012/09/11', N'10:11:24', 202, N'2011/08/24', 0, N'2011/08/24', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'manage@eland.com.tw', N'eland.com.tw', N'manage', N'manage', N'manage', N'N', N'', N'', N'', N'蘇總', N'david@hwtop.com.tw', N'1970/10/28', N'M', N'2011/10/28', N'16:18:05', N'', N'2012/06/11', N'14:53:00', 28, N'2011/10/28', 0, N'2011/10/28', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'martin@eland.com.tw', N'eland.com.tw', N'martin', N'martin', N'martin', N'N', N'', N'', N'', N'嚴承旭', N'david@hwtop.com.tw', N'1970/08/29', N'M', N'2011/08/29', N'10:15:18', N'', N'2011/11/16', N'12:10:03', 7, N'2011/08/29', 0, N'2011/08/29', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'michael@eland.com.tw', N'eland.com.tw', N'michael', N'c4ca4238a0b923820dcc509a6f75849b', N'c4ca4238a0b923820dcc509a6f75849b', N'N', N'', N'', N'', N'小麥哥', N'michael@ekm472.com.tw', N'1970/08/24', N'M', N'2011/08/24', N'21:42:41', N'MD5', N'2012/09/11', N'10:31:48', 524, N'2012/09/11', 0, N'2012/09/11', N'M', N'1.jpg', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'pert@eland.com.tw', N'eland.com.tw', N'pert', N'pert', N'pert', N'N', N'', N'', N'', N'楊錦霞', N'pert@eland.com.tw', N'1970/10/04', N'F', N'2011/10/06', N'00:00:16', N'', N'2012/08/31', N'12:06:43', 12, N'2012/08/08', 0, N'2012/08/08', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'rd@eland.com.tw', N'eland.com.tw', N'rd', N'rd', N'rd', N'N', N'', N'', N'', N'研發蔡副總', N'david@hwtop.com.tw', N'1970/10/28', N'M', N'2011/10/28', N'16:19:35', N'', N'2011/11/23', N'09:38:19', 4, N'2011/10/28', 0, N'2011/10/28', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'rorita@eland.com.tw', N'eland.com.tw', N'rorita', N'c4ca4238a0b923820dcc509a6f75849b', N'c4ca4238a0b923820dcc509a6f75849b', N'N', N'', N'', N'', N'羅莉塔', N'rorita@ekm472.com.tw', N'1970/08/24', N'M', N'2011/08/24', N'21:43:52', N'MD5', N'2012/09/10', N'14:36:03', 314, N'2011/08/24', 0, N'2011/08/24', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'technology@eland.com.tw', N'eland.com.tw', N'technology', N'technology', N'technology', N'N', N'', N'', N'', N'林崇淵', N'wendy@hwtop.com.tw', N'1970/08/24', N'M', N'2011/08/27', N'09:06:55', N'', N'2012/07/26', N'19:02:52', 28, N'2011/10/28', 0, N'2011/10/28', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'test_know@eland.com.tw', N'eland.com.tw', N'test_know', N'test_know', N'test_know', N'N', N'', N'', N'', N'tai', N'test_know@yahoo.com.tw', N'1970/09/10', N'M', N'2012/09/10', N'13:43:47', N'', N'2012/09/11', N'10:06:02', 3, N'2012/09/10', 0, N'2012/09/10', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'vic@eland.com.tw', N'eland.com.tw', N'vic', N'vic', N'vic', N'N', N'', N'', N'', N'蕭協理', N'vic@eland.com.tw', N'1970/06/05', N'M', N'2012/06/05', N'16:51:22', N'', N'2012/06/05', N'16:51:22', 0, N'2012/06/05', 0, N'2012/06/05', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'wendy@eland.com.tw', N'eland.com.tw', N'wendy', N'2cff03e4b9eb85b3bf5e924ccdc1348d', N'2cff03e4b9eb85b3bf5e924ccdc1348d', N'N', N'', N'', N'', N'wendy shieh', N'wendy@hwtop.com.tw', N'1970/08/29', N'F', N'2011/08/29', N'10:15:51', N'MD5', N'2012/06/05', N'16:42:27', 18, N'2012/06/05', 0, N'2012/06/05', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'wwrc@eland.com.tw', N'eland.com.tw', N'wwrc', N'wwrc', N'wwrc', N'N', N'', N'', N'', N'環綺國際', N'david@hwtop.com.tw', N'1970/08/24', N'M', N'2011/08/26', N'23:21:39', N'', N'2011/11/16', N'13:42:58', 14, N'2011/10/28', 0, N'2011/10/28', N'M', N'', N'KM')
GO
INSERT INTO dbo.eip_member(m_uid, m_site, m_account, m_password, m_lockpass, m_block, m_hint, m_hint_ans, m_nickname, m_name, m_email, m_birthday, m_gender, m_create_date, m_create_time, m_enctype, m_last_date, m_last_time, m_log_count, change_pwd_date, change_pwd_duration, m_last_modify_date, m_type, photo_name, is_ad)
  VALUES(N'yuhtzong@eland.com.tw', N'eland.com.tw', N'yuhtzong', N'yuhtzong', N'yuhtzong', N'N', N'', N'', N'', N'育宗企業', N'wendy@hwtop.com.tw', N'1970/08/24', N'M', N'2011/08/27', N'09:04:04', N'', N'2012/06/05', N'16:37:50', 20, N'2011/10/28', 0, N'2011/10/28', N'M', N'', N'KM')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193777250_1', N'2011/08/24', N'21:49:37', 1314193777890, N'michael', N'新增分類:公司訊息', N'category', N'101')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193877640_1', N'2011/08/24', N'21:51:17', 1314193877656, N'rorita', N'新增分類:報告', N'category', N'101')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193897718_1', N'2011/08/24', N'21:51:37', 1314193897718, N'rorita', N'新增分類:共享文件', N'category', N'101')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193915906_1', N'2011/08/24', N'21:51:55', 1314193915921, N'rorita', N'新增分類:提案', N'category', N'101')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193934156_1', N'2011/08/24', N'21:52:14', 1314193934171, N'rorita', N'新增分類:產品', N'category', N'101')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314375402500_1', N'2011/08/27', N'00:16:43', 1314375403140, N'hwtop(deleted)', N'新增分類:H公司', N'category', N'101')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'00:21:22', 1314375682109, N'eipadmin', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'00:21:55', 1314375715640, N'eipadmin', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'08:42:43', 1314405763140, N'eipadmin', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'08:45:28', 1314405928968, N'eipadmin', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'08:53:25', 1314406405203, N'eipadmin', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'09:11:13', 1314407473093, N'eipadmin', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'09:14:38', 1314407678015, N'eipadmin', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314375402500_1', N'2011/08/27', N'09:16:09', 1314407769218, N'eipadmin', N'修改分類名稱:H公司->樺正實業', N'category', N'103')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193777250_1', N'2011/08/27', N'09:56:02', 1314410162546, N'eipadmin', N'修改分類名稱:公司訊息->樺正', N'category', N'103')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314375402500_1', N'2011/08/27', N'09:56:45', 1314410205000, N'eipadmin', N'刪除分類:樺正實業', N'category', N'102')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193915906_1', N'2011/08/27', N'10:02:13', 1314410533781, N'eipadmin', N'修改分類名稱:提案->樺正實業', N'category', N'103')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:05:22', 1314410722750, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:05:27', 1314410727234, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:07:03', 1314410823859, N'eipadmin', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:08:29', 1314410909250, N'eipadmin', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193915906_1', N'2011/08/27', N'10:09:40', 1314410980250, N'technology', N'刪除分類:樺正實業', N'category', N'102')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:44:10', 1314413050328, N'hwtop', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:44:39', 1314413079828, N'hwtop', N'文件廢止', N'doc', N'007')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:44:39', 1314413079859, N'hwtop', N'啟動新增文件流程', N'doc', N'006')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:53:04', 1314413584296, N'technology', N'修訂文件', N'doc', N'004')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:53:21', 1314413601906, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:53:32', 1314413612140, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:54:51', 1314413691171, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413894250', 1, N'食品級材料類強度改質  (育宗)', N'1314375523859_1', N'2011/08/27', N'10:58:33', 1314413913453, N'technology', N'閱讀文件索引卡食品級材料類強度改質  (育宗)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:05:16', 1314414316281, N'yuhtzong', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:07:49', 1314414469890, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:08:58', 1314414538375, N'yuhtzong', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:09:12', 1314414552453, N'yuhtzong', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:10:18', 1314414618453, N'yuhtzong', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:25:46', 1314415546265, N'yuhtzong', N'轉寄文件:食品級EPS廢料再生應用製程開發計畫;發送給:wwrc', N'doc', N'013')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:03:58', 1314410638421, N'hwtop', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:13:36', 1314414816593, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:13:39', 1314414819984, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:14:16', 1314414856078, N'technology', N'轉寄文件:食品級EPS廢料再生應用製程開發計畫;發送給:yuhtzong', N'doc', N'013')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:25:46', 1314415546265, N'yuhtzong', N'轉寄文件:食品級EPS廢料再生應用製程開發計畫;發送給:technology', N'doc', N'013')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:25:46', 1314415546265, N'yuhtzong', N'轉寄文件:食品級EPS廢料再生應用製程開發計畫;發送給:yuhtzong', N'doc', N'013')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:34:30', 1314416070500, N'yuhtzong', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:34:37', 1314416077953, N'yuhtzong', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:41:19', 1314416479218, N'yuhtzong', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:48:16', 1314416896828, N'yuhtzong', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:57:02', 1314417422546, N'yuhtzong', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314417803062', 1, N'防止帶電的方法', N'1314375524265_1', N'2011/08/27', N'12:06:39', 1314417999937, N'wwrc', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418029359', 1, N'新版盟RoHS指令', N'1314375524265_1', N'2011/08/27', N'12:08:08', 1314418088046, N'wwrc', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418091265', 1, N'德國 RESY 再生系統的申請', N'1314375524265_1', N'2011/08/27', N'12:08:27', 1314418107828, N'wwrc', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418111171', 1, N'歐盟食品接觸材料新法規淺析', N'1314375524265_1', N'2011/08/27', N'12:08:50', 1314418130234, N'wwrc', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418111171', 1, N'歐盟食品接觸材料新法規淺析', N'1314375524265_1', N'2011/08/27', N'12:10:21', 1314418221250, N'yuhtzong', N'閱讀文件索引卡歐盟食品接觸材料新法規淺析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418228562', 1, N'緩衝包裝材料與環保問題', N'1314375524265_1', N'2011/08/27', N'12:10:45', 1314418245984, N'yuhtzong', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/08/27', N'12:11:27', 1314418287937, N'yuhtzong', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/29', N'11:30:00', 1314588600296, N'martin', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/08/29', N'13:14:46', 1314594886546, N'eipadmin', N'閱讀文件索引卡食品與塑料接觸安全要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418091265', 1, N'德國 RESY 再生系統的申請', N'1314375524265_1', N'2011/08/29', N'13:46:41', 1314596801140, N'eipadmin', N'閱讀文件索引卡德國 RESY 再生系統的申請', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/08/29', N'13:47:01', 1314596821078, N'eipadmin', N'閱讀文件索引卡食品與塑料接觸安全要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/08/29', N'13:47:05', 1314596825984, N'eipadmin', N'開啟檔案(安控):/certified/1314375524265_1/1314418253265/1/main/食品與塑料接觸安全要求.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193877640_1', N'2011/08/29', N'15:06:31', 1314601591515, N'eipadmin', N'修改分類名稱:報告->行政經驗', N'category', N'103')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314602334468', 1, N'test', N'1314193877640_1', N'2011/08/29', N'15:19:20', 1314602360140, N'eipadmin', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603072390', 1, N'test', N'1314193877640_1', N'2011/08/29', N'15:31:38', 1314603098187, N'eipadmin', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603072390', 1, N'test', N'1314193877640_1', N'2011/08/29', N'15:31:53', 1314603113390, N'eipadmin', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'15:44:55', 1314603895093, N'eipadmin', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'15:45:46', 1314603946312, N'eipadmin', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'15:48:14', 1314604094843, N'eipadmin', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'15:49:53', 1314604193171, N'wendy', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'15:50:51', 1314604251593, N'martin', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'15:51:48', 1314604308437, N'wendy', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/09', N'14:20:08', 1315549208609, N'ariel', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:49:20', 1314413360406, N'technology', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:49:24', 1314413364593, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:49:59', 1314413399718, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:50:04', 1314413404140, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:50:17', 1314413417265, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:50:25', 1314413425250, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:50:30', 1314413430656, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'10:53:04', 1314413584343, N'technology', N'修訂文件', N'doc', N'004')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/27', N'11:01:51', 1314414111750, N'wwrc', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/08/29', N'13:14:52', 1314594892171, N'eipadmin', N'開啟檔案(安控):/certified/1314375524265_1/1314418253265/1/main/食品與塑料接觸安全要求.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/09', N'14:20:25', 1315549225843, N'ariel', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/09', N'14:20:28', 1315549228265, N'michael', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/09', N'14:20:45', 1315549245734, N'michael', N'下載原始檔案 安控:/certified/1314193777250_1/1314603332765/2/main/課程聯絡協調(前三次)紀錄.docx', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/09', N'14:23:32', 1315549412375, N'ariel', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/09', N'14:23:44', 1315549424015, N'ariel', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/09', N'14:24:00', 1315549440437, N'ariel', N'下載原始檔案 安控:/certified/1314193777250_1/1314603332765/2/main/課程聯絡協調(前三次)紀錄.docx', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/09/09', N'14:46:49', 1315550809406, N'michael', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/09/09', N'14:47:14', 1315550834656, N'michael', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413893578', 1, N'帶電現象的測定方法  (環琦)', N'1314375523859_1', N'2011/09/09', N'14:51:26', 1315551086359, N'ariel', N'下載不可列印PDF 安控:\temp\1314375523859_1\1314413893578\1\main\1314413893578_1_0.doc.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418091265', 1, N'德國 RESY 再生系統的申請', N'1314375524265_1', N'2011/09/09', N'14:51:30', 1315551090484, N'michael', N'閱讀文件索引卡德國 RESY 再生系統的申請', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418091265', 1, N'德國 RESY 再生系統的申請', N'1314375524265_1', N'2011/09/09', N'14:51:48', 1315551108390, N'michael', N'開啟檔案(安控):/certified/1314375524265_1/1314418091265/1/main/德國 RESY 再生系統的申請.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418091265', 1, N'德國 RESY 再生系統的申請', N'1314375524265_1', N'2011/09/09', N'14:52:20', 1315551140875, N'michael', N'下載原始檔案 安控:/certified/1314375524265_1/1314418091265/1/main/德國 RESY 再生系統的申請.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'15:12:03', 1315552323296, N'ariel', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'15:14:55', 1315552495671, N'ariel', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'15:15:09', 1315552509046, N'ariel', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'15:24:09', 1315553049046, N'rorita', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/09', N'15:24:43', 1315553083468, N'rorita', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418111171', 1, N'歐盟食品接觸材料新法規淺析', N'1314375524265_1', N'2011/09/09', N'15:29:00', 1315553340437, N'ken', N'閱讀文件索引卡歐盟食品接觸材料新法規淺析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:36:06', 1315553766562, N'april', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:37:11', 1315553831812, N'april', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:37:23', 1315553843359, N'april', N'下載原始檔案 安控:/certified/1314193897718_1/1315552071921/1/main/月餅的熱量等同便當.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314601615421', 1, N'100年育成中心', N'1314193877640_1', N'2011/08/29', N'15:12:48', 1314601968312, N'wendy', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603333390', 1, N'課程聯絡協調(前三次)紀錄', N'1314193777250_1', N'2011/08/29', N'15:35:43', 1314603343656, N'eipadmin', N'閱讀文件索引卡課程聯絡協調(前三次)紀錄', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'課程聯絡協調(前三次)紀錄', N'1314193777250_1', N'2011/08/29', N'15:35:51', 1314603351718, N'eipadmin', N'閱讀文件索引卡課程聯絡協調(前三次)紀錄', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603333390', 1, N'課程聯絡協調(前三次)紀錄', N'1314193777250_1', N'2011/08/29', N'15:36:10', 1314603370437, N'eipadmin', N'文件廢止', N'doc', N'007')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603333390', 1, N'課程聯絡協調(前三次)紀錄', N'1314193777250_1', N'2011/08/29', N'03:36:10', 1314603370484, N'eipadmin', N'啟動新增文件流程', N'doc', N'006')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'課程聯絡協調(前三次)紀錄', N'1314193777250_1', N'2011/08/29', N'15:36:18', 1314603378968, N'eipadmin', N'閱讀文件索引卡課程聯絡協調(前三次)紀錄', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'15:38:57', 1314603537015, N'eipadmin', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'15:39:11', 1314603551078, N'eipadmin', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'15:47:07', 1314604027234, N'eipadmin', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'15:47:13', 1314604033062, N'eipadmin', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/08/29', N'15:47:15', 1314604035890, N'eipadmin', N'閱讀文件索引卡食品與塑料接觸安全要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'15:51:58', 1314604318078, N'wendy', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'15:52:09', 1314604329062, N'martin', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'15:55:24', 1314604524578, N'martin', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'15:55:52', 1314604552140, N'wendy', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'15:59:00', 1314604740468, N'martin', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'15:59:04', 1314604744687, N'wendy', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'16:02:06', 1314604926718, N'hwtop', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'16:13:29', 1314605609531, N'wendy', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'16:13:32', 1314605612015, N'martin', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'16:18:22', 1314605902671, N'martin', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'16:18:38', 1314605918937, N'wendy', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'16:21:07', 1314606067593, N'martin', N'修訂文件', N'doc', N'004')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'16:21:13', 1314606073859, N'martin', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'16:21:23', 1314606083875, N'martin', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 1, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/08/29', N'17:22:25', 1314609745390, N'martin', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/30', N'09:02:00', 1314666120406, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/30', N'09:05:21', 1314666321078, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/30', N'09:18:24', 1314667104812, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/30', N'09:18:58', 1314667138937, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/08/31', N'13:40:12', 1314769212031, N'wwrc', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/09/05', N'13:42:56', 1315201376859, N'eipadmin', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/07', N'11:08:52', 1315364932703, N'michael', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/07', N'11:15:22', 1315365322015, N'michael', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/09/07', N'11:15:44', 1315365344406, N'michael', N'閱讀文件索引卡食品與塑料接觸安全要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418228562', 1, N'緩衝包裝材料與環保問題', N'1314375524265_1', N'2011/09/07', N'11:15:48', 1315365348312, N'michael', N'閱讀文件索引卡緩衝包裝材料與環保問題', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418029359', 1, N'新版盟RoHS指令', N'1314375524265_1', N'2011/09/07', N'11:15:53', 1315365353578, N'michael', N'閱讀文件索引卡新版盟RoHS指令', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314417803062', 1, N'防止帶電的方法', N'1314375524265_1', N'2011/09/07', N'11:16:02', 1315365362281, N'michael', N'閱讀文件索引卡防止帶電的方法', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413893578', 1, N'帶電現象的測定方法  (環琦)', N'1314375523859_1', N'2011/09/07', N'11:16:13', 1315365373062, N'michael', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413894187', 1, N'歐盟食品接觸的塑膠法規  (育宗)', N'1314375523859_1', N'2011/09/07', N'11:16:17', 1315365377531, N'michael', N'閱讀文件索引卡歐盟食品接觸的塑膠法規  (育宗)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413894250', 1, N'食品級材料類強度改質  (育宗)', N'1314375523859_1', N'2011/09/07', N'11:16:21', 1315365381046, N'michael', N'閱讀文件索引卡食品級材料類強度改質  (育宗)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/09/07', N'11:16:24', 1315365384234, N'michael', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/07', N'11:18:09', 1315365489671, N'michael', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/09/07', N'11:18:17', 1315365497359, N'michael', N'閱讀文件索引卡食品與塑料接觸安全要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/09/07', N'11:18:19', 1315365499937, N'michael', N'開啟檔案(安控):/certified/1314375524265_1/1314418253265/1/main/食品與塑料接觸安全要求.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314417803062', 1, N'防止帶電的方法', N'1314375524265_1', N'2011/09/07', N'15:11:26', 1315379486093, N'michael', N'閱讀文件索引卡防止帶電的方法', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/07', N'15:12:45', 1315379565609, N'michael', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413894250', 1, N'食品級材料類強度改質  (育宗)', N'1314375523859_1', N'2011/09/07', N'15:12:57', 1315379577593, N'michael', N'閱讀文件索引卡食品級材料類強度改質  (育宗)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/09/07', N'15:13:04', 1315379584250, N'michael', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/09/07', N'15:13:37', 1315379617625, N'michael', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:37:39', 1315553859328, N'ariel', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:37:46', 1315553866437, N'ariel', N'下載原始檔案 安控:/certified/1314193897718_1/1315552071921/1/main/月餅的熱量等同便當.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:37:54', 1315553874328, N'ariel', N'開啟檔案(安控):/certified/1314193897718_1/1315552071921/1/main/月餅的熱量等同便當.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'15:44:27', 1315554267218, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/09/09', N'15:48:03', 1315554483468, N'michael', N'閱讀文件索引卡食品與塑料接觸安全要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'15:53:57', 1315554837609, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:54:53', 1315554893984, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'15:58:02', 1315555082156, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'16:01:41', 1315555301515, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'16:02:26', 1315555346937, N'michael', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'16:02:44', 1315555364718, N'ariel', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'16:04:37', 1315555477859, N'ariel', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'16:05:18', 1315555518906, N'ariel', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'16:05:19', 1315555519203, N'april', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418029359', 1, N'新版盟RoHS指令', N'1314375524265_1', N'2011/09/09', N'16:11:06', 1315555866140, N'ariel', N'閱讀文件索引卡新版盟RoHS指令', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'16:12:33', 1315555953218, N'april', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'16:37:41', 1315557461390, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/09', N'16:37:58', 1315557478250, N'michael', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/09', N'14:31:20', 1315549880156, N'michael', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/09', N'14:49:34', 1315550974515, N'ariel', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/09', N'14:49:50', 1315550990578, N'ariel', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'15:00:10', 1315551610718, N'michael', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'15:04:09', 1315551849031, N'ariel', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/09/09', N'15:05:55', 1315551955062, N'ariel', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/09', N'16:38:32', 1315557512359, N'michael', N'下載原始檔案 安控:/certified/1314193777250_1/1314603332765/2/main/課程聯絡協調(前三次)紀錄.docx', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'16:49:16', 1315558156843, N'april', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'16:52:02', 1315558322968, N'april', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'16:58:12', 1315558692828, N'ariel', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'16:58:22', 1315558702343, N'ariel', N'開啟檔案(安控):/certified/1314193897718_1/1315552071921/1/main/月餅的熱量等同便當.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'16:58:36', 1315558716656, N'ariel', N'開啟檔案(安控):/certified/1314193897718_1/1315552071921/1/main/月餅的熱量等同便當.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'17:13:14', 1315559594265, N'ariel', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'17:13:32', 1315559612296, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'17:14:18', 1315559658140, N'michael', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'17:15:29', 1315559729812, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'17:16:31', 1315559791203, N'michael', N'下載原始檔案 安控:/certified/1314193897718_1/1315551389734/1/main/設備管理.odt', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'17:22:00', 1315560120093, N'rorita', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413893578', 1, N'帶電現象的測定方法  (環琦)', N'1314375523859_1', N'2011/09/09', N'17:23:06', 1315560186359, N'rorita', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413894250', 1, N'食品級材料類強度改質  (育宗)', N'1314375523859_1', N'2011/09/09', N'17:23:16', 1315560196421, N'rorita', N'閱讀文件索引卡食品級材料類強度改質  (育宗)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/09', N'17:24:43', 1315560283796, N'rorita', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/09/09', N'17:25:16', 1315560316968, N'rorita', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'09:12:01', 1315876321234, N'ariel', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'09:12:18', 1315876338296, N'ariel', N'開啟檔案(安控):/certified/1314193897718_1/1315552071921/1/main/月餅的熱量等同便當.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'09:12:33', 1315876353437, N'ariel', N'開啟檔案(安控):/certified/1314193897718_1/1315552071921/1/main/月餅的熱量等同便當.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'09:12:48', 1315876368671, N'ariel', N'開啟檔案(安控):/certified/1314193897718_1/1315552071921/1/main/月餅的熱量等同便當.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'09:19:08', 1315876748015, N'ariel', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413893578', 2, N'帶電現象的測定方法  (環琦)', N'1314375523859_1', N'2011/09/13', N'09:47:30', 1315878450187, N'michael', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418228562', 1, N'緩衝包裝材料與環保問題', N'1314375524265_1', N'2011/09/13', N'11:23:46', 1315884226171, N'rorita', N'閱讀文件索引卡緩衝包裝材料與環保問題', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'13:51:18', 1315893078328, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'13:51:38', 1315893098250, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'13:51:47', 1315893107250, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413893578', 1, N'帶電現象的測定方法  (環琦)', N'1314375523859_1', N'2011/09/09', N'14:50:31', 1315551031984, N'ariel', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413893578', 1, N'帶電現象的測定方法  (環琦)', N'1314375523859_1', N'2011/09/09', N'14:50:37', 1315551037640, N'ariel', N'開啟檔案(安控):/certified/1314375523859_1/1314413893578/1/main/帶電現象的測定方法  (環琦).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413893578', 1, N'帶電現象的測定方法  (環琦)', N'1314375523859_1', N'2011/09/09', N'14:50:43', 1315551043562, N'ariel', N'開啟檔案(安控):/certified/1314375523859_1/1314413893578/1/main/帶電現象的測定方法  (環琦).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'15:16:49', 1315552609718, N'rorita', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:38:39', 1315553919218, N'april', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:39:35', 1315553975109, N'april', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:39:50', 1315553990843, N'ariel', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:40:00', 1315554000687, N'ariel', N'開啟檔案(安控):/certified/1314193897718_1/1315552071921/1/main/月餅的熱量等同便當.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:40:06', 1315554006937, N'ariel', N'下載可列印PDF 安控:\temp\1314193897718_1\1315552071921\1\main\1315552071921_1_0.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:41:43', 1315554103703, N'ariel', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:41:49', 1315554109796, N'ariel', N'下載不可列印PDF 安控:\temp\1314193897718_1\1315552071921\1\main\1315552071921_1_0.doc.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:42:17', 1315554137906, N'ariel', N'下載可列印PDF 安控:\temp\1314193897718_1\1315552071921\1\main\1315552071921_1_0.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:42:54', 1315554174171, N'ariel', N'下載原始檔案 安控:/certified/1314193897718_1/1315552071921/1/main/月餅的熱量等同便當.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'15:43:16', 1315554196937, N'ariel', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'15:43:43', 1315554223171, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'15:43:59', 1315554239062, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'16:07:48', 1315555668359, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'16:08:32', 1315555712078, N'michael', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'16:09:33', 1315555773734, N'ariel', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/09', N'16:09:39', 1315555779359, N'ariel', N'開啟檔案(安控):/certified/1314193897718_1/1315552071921/1/main/月餅的熱量等同便當.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'17:14:34', 1315559674187, N'ariel', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'17:15:11', 1315559711812, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/09', N'17:18:52', 1315559932437, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418228562', 1, N'緩衝包裝材料與環保問題', N'1314375524265_1', N'2011/09/13', N'13:03:38', 1315890218015, N'rorita', N'閱讀文件索引卡緩衝包裝材料與環保問題', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413893578', 2, N'帶電現象的測定方法  (環琦)', N'1314375523859_1', N'2011/09/13', N'13:06:21', 1315890381015, N'rorita', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'13:06:38', 1315890398343, N'rorita', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/13', N'13:20:05', 1315891205187, N'ariel', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'13:51:59', 1315893119609, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'13:52:25', 1315893145890, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/13', N'13:53:33', 1315893213437, N'ariel', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/13', N'14:30:09', 1315895409250, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/13', N'15:31:24', 1315899084203, N'michael', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/13', N'13:53:55', 1315893235296, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/13', N'14:12:04', 1315894324375, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/13', N'14:26:26', 1315895186390, N'rorita', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/13', N'14:26:41', 1315895201406, N'rorita', N'開啟檔案(安控):/certified/1314375524187_1/1315891275765/1/main/abc.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/13', N'16:28:10', 1315902490078, N'ariel', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'16:28:54', 1315902534968, N'ariel', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/13', N'16:29:07', 1315902547046, N'ariel', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/09/13', N'16:31:26', 1315902686062, N'rorita', N'刪除文件', N'doc', N'014')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314375589437', 1, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/09/13', N'16:31:41', 1315902701125, N'rorita', N'復原文件', N'doc', N'016')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'16:37:24', 1315903044921, N'rorita', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'16:45:37', 1315903537062, N'rorita', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'16:45:58', 1315903558625, N'rorita', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418091265', 1, N'德國 RESY 再生系統的申請', N'1314375524265_1', N'2011/09/13', N'17:12:53', 1315905173125, N'michael', N'閱讀文件索引卡德國 RESY 再生系統的申請', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/13', N'17:19:28', 1315905568296, N'rorita', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'19:00:51', 1315911651015, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'10:32:07', 1315967527765, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'10:33:23', 1315967603296, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'10:34:37', 1315967677281, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'10:35:10', 1315967710093, N'ariel', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'10:35:22', 1315967722578, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'10:35:39', 1315967739390, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'10:36:37', 1315967797109, N'ariel', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 2, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'10:48:52', 1315968532921, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'10:49:10', 1315968550265, N'ariel', N'修訂文件', N'doc', N'004')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/09/16', N'13:38:44', 1316151524228, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/16', N'15:07:14', 1316156834291, N'michael', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/16', N'15:08:58', 1316156938369, N'michael', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/16', N'15:10:18', 1316157018556, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/16', N'15:11:27', 1316157087150, N'michael', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/16', N'15:11:54', 1316157114009, N'michael', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/18', N'16:15:46', 1316333746103, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/20', N'13:22:17', 1316496137478, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/20', N'17:29:34', 1316510974025, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/20', N'17:36:33', 1316511393947, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/13', N'15:47:00', 1315900020171, N'michael', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/13', N'15:47:07', 1315900027562, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/09/13', N'16:34:00', 1315902840640, N'rorita', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 1, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'10:47:56', 1315968476281, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 2, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'10:48:38', 1315968518062, N'ariel', N'修訂文件', N'doc', N'004')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'10:49:37', 1315968577234, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'10:56:47', 1315969007593, N'michael', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'10:57:58', 1315969078812, N'michael', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'10:59:04', 1315969144406, N'michael', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'11:05:02', 1315969502937, N'michael', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'11:09:57', 1315969797843, N'michael', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'11:10:08', 1315969808562, N'michael', N'開啟檔案(安控):/certified/1314375524187_1/1315891275765/3/main/abc.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'11:10:22', 1315969822593, N'michael', N'開啟檔案(安控):/certified/1314375524187_1/1315891275765/3/main/abc.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/14', N'11:57:50', 1315972670296, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/14', N'14:31:56', 1315981916687, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/16', N'15:13:04', 1316157184166, N'michael', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1316164582791', 1, N'1', N'1314193897718_1', N'2011/09/16', N'17:18:49', 1316164729947, N'rorita', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/20', N'17:39:36', 1316511576416, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/20', N'17:39:47', 1316511587212, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/22', N'17:34:24', 1316684064259, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/22', N'17:34:35', 1316684075119, N'ariel', N'開啟檔案(安控):/certified/1314375524187_1/1315891275765/3/main/abc.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/22', N'17:35:13', 1316684113181, N'ariel', N'開啟檔案(安控):/certified/1314375524187_1/1315891275765/3/main/abc.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/09/22', N'17:38:43', 1316684323322, N'ariel', N'閱讀文件索引卡食品與塑料接觸安全要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/09/22', N'17:39:18', 1316684358056, N'ariel', N'閱讀文件索引卡食品與塑料接觸安全要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/10/02', N'20:20:58', 1317558058871, N'eipadmin', N'閱讀文件索引卡食品與塑料接觸安全要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/10/02', N'20:23:24', 1317558204167, N'eipadmin', N'下載原始檔案 安控:/certified/1314375524265_1/1314418253265/1/main/食品與塑料接觸安全要求.pdf', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418228562', 1, N'緩衝包裝材料與環保問題', N'1314375524265_1', N'2011/10/02', N'20:26:51', 1317558411246, N'eipadmin', N'閱讀文件索引卡緩衝包裝材料與環保問題', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418111171', 1, N'歐盟食品接觸材料新法規淺析', N'1314375524265_1', N'2011/10/02', N'20:26:57', 1317558417167, N'eipadmin', N'閱讀文件索引卡歐盟食品接觸材料新法規淺析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418228562', 1, N'緩衝包裝材料與環保問題', N'1314375524265_1', N'2011/10/02', N'20:26:59', 1317558419589, N'eipadmin', N'閱讀文件索引卡緩衝包裝材料與環保問題', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418228562', 1, N'緩衝包裝材料與環保問題', N'1314375524265_1', N'2011/10/02', N'20:27:00', 1317558420433, N'eipadmin', N'閱讀文件索引卡緩衝包裝材料與環保問題', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418091265', 1, N'德國 RESY 再生系統的申請', N'1314375524265_1', N'2011/10/02', N'20:27:04', 1317558424511, N'eipadmin', N'閱讀文件索引卡德國 RESY 再生系統的申請', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418029359', 1, N'新版盟RoHS指令', N'1314375524265_1', N'2011/10/02', N'20:27:05', 1317558425074, N'eipadmin', N'閱讀文件索引卡新版盟RoHS指令', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314417803062', 1, N'防止帶電的方法', N'1314375524265_1', N'2011/10/02', N'20:27:05', 1317558425980, N'eipadmin', N'閱讀文件索引卡防止帶電的方法', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/09/18', N'16:05:13', 1316333113728, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/22', N'17:38:06', 1316684286962, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/09/22', N'17:38:24', 1316684304416, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314417803062', 1, N'防止帶電的方法', N'1314375524265_1', N'2011/10/02', N'20:27:49', 1317558469402, N'eipadmin', N'下載原始檔案 安控:/certified/1314375524265_1/1314417803062/1/main/防止帶電的方法.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418029359', 1, N'新版盟RoHS指令', N'1314375524265_1', N'2011/10/02', N'20:29:54', 1317558594824, N'eipadmin', N'下載原始檔案 安控:/certified/1314375524265_1/1314418029359/1/main/新版盟RoHS指令.pdf', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418228562', 1, N'緩衝包裝材料與環保問題', N'1314375524265_1', N'2011/10/02', N'20:31:01', 1317558661746, N'eipadmin', N'下載原始檔案 安控:/certified/1314375524265_1/1314418228562/1/main/緩衝包裝材料與環保問題.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418091265', 1, N'德國 RESY 再生系統的申請', N'1314375524265_1', N'2011/10/02', N'20:33:01', 1317558781777, N'eipadmin', N'下載原始檔案 安控:/certified/1314375524265_1/1314418091265/1/main/德國 RESY 再生系統的申請.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418111171', 1, N'歐盟食品接觸材料新法規淺析', N'1314375524265_1', N'2011/10/02', N'20:34:28', 1317558868589, N'eipadmin', N'閱讀文件索引卡歐盟食品接觸材料新法規淺析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418111171', 1, N'歐盟食品接觸材料新法規淺析', N'1314375524265_1', N'2011/10/02', N'20:34:39', 1317558879152, N'eipadmin', N'下載原始檔案 安控:/certified/1314375524265_1/1314418111171/1/main/歐盟食品接觸材料新法規淺析.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1316164582791', 1, N'1', N'1314193897718_1', N'2011/10/05', N'14:22:03', 1317795723261, N'rorita', N'閱讀文件索引卡1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/10/07', N'10:24:11', 1317954251545, N'ariel', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/10/14', N'11:28:52', 1318562932390, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/10/14', N'11:29:02', 1318562942500, N'michael', N'開啟檔案(安控):/certified/1314193897718_1/1315552071921/1/main/月餅的熱量等同便當.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/10/22', N'07:31:35', 1319239895747, N'michael', N'閱讀文件索引卡食品與塑料接觸安全要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/10/24', N'10:28:24', 1319423304169, N'michael', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314417803062', 1, N'防止帶電的方法', N'1314375524265_1', N'2011/10/24', N'10:28:41', 1319423321575, N'michael', N'閱讀文件索引卡防止帶電的方法', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/10/26', N'10:29:40', 1319596180966, N'ariel', N'閱讀文件索引卡食品與塑料接觸安全要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319599638778', 1, N'Quanta Test', N'1314193897718_1', N'2011/10/26', N'11:35:02', 1319600102763, N'michael', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319599638778', 1, N'Quanta Test', N'1314193897718_1', N'2011/10/26', N'11:39:07', 1319600347934, N'michael', N'閱讀文件索引卡Quanta Test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319599638778', 1, N'Quanta Test', N'1314193897718_1', N'2011/10/26', N'11:43:16', 1319600596231, N'michael', N'閱讀文件索引卡Quanta Test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2011/10/26', N'11:50:11', 1319601011934, N'michael', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2011/10/26', N'11:50:20', 1319601020841, N'michael', N'閱讀文件索引卡Quanta Test222222222', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2011/10/26', N'11:51:29', 1319601089716, N'michael', N'開啟檔案(安控):/certified/1314193934156_1/1319600897809/1/attachments/輸入認證.jpg', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2011/10/26', N'11:52:16', 1319601136481, N'michael', N'閱讀文件索引卡Quanta Test222222222', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2011/10/26', N'11:55:07', 1319601307013, N'michael', N'閱讀文件索引卡Quanta Test222222222', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2011/10/26', N'13:35:11', 1319607311700, N'michael', N'閱讀文件索引卡Quanta Test222222222', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2011/10/26', N'13:36:00', 1319607360091, N'michael', N'閱讀文件索引卡Quanta Test222222222', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/10/26', N'13:37:26', 1319607446950, N'michael', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/10/26', N'13:37:30', 1319607450325, N'michael', N'下載不可列印PDF 安控:\temp\1314375524187_1\1315891275765\3\main\1315891275765_3_0.txt.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2011/10/26', N'13:38:03', 1319607483247, N'michael', N'閱讀文件索引卡Quanta Test222222222', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/03', N'16:50:47', 1317631847433, N'eipadmin', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1317794673292', 1, N'2011 ideas Best Choice -ICT企業創新力品牌大調查徵件開始!!).files', N'1314193897718_1', N'2011/10/05', N'14:05:46', 1317794746777, N'michael', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1317794673292', 1, N'2011 ideas Best Choice -ICT企業創新力品牌大調查徵件開始!!).files', N'1314193897718_1', N'2011/10/05', N'14:26:39', 1317795999652, N'michael', N'閱讀文件索引卡2011 ideas Best Choice -ICT企業創新力品牌大調查徵件開始!!).files', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/10/05', N'14:47:04', 1317797224621, N'april', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/10/05', N'14:50:03', 1317797403558, N'april', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/10/05', N'14:59:27', 1317797967433, N'april', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418029359', 1, N'新版盟RoHS指令', N'1314375524265_1', N'2011/10/07', N'10:26:53', 1317954413525, N'ariel', N'閱讀文件索引卡新版盟RoHS指令', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/10/07', N'14:22:51', 1317968571069, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/10/11', N'11:44:11', 1318304651031, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/10/11', N'11:47:20', 1318304840797, N'april', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418091265', 1, N'德國 RESY 再生系統的申請', N'1314375524265_1', N'2011/10/11', N'11:48:55', 1318304935922, N'april', N'閱讀文件索引卡德國 RESY 再生系統的申請', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418029359', 1, N'新版盟RoHS指令', N'1314375524265_1', N'2011/10/11', N'11:49:00', 1318304940953, N'april', N'閱讀文件索引卡新版盟RoHS指令', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/10/11', N'11:49:14', 1318304954922, N'april', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/10/11', N'11:50:10', 1318305010265, N'rorita', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/10/11', N'11:50:18', 1318305018609, N'rorita', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193777250_1', N'2011/10/28', N'10:14:02', 1319768042010, N'eipadmin', N'修改分類名稱:樺正->hwtop', N'category', N'103')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13197715109945', 1, N'Thumbs', N'1319771510978_1', N'2011/10/28', N'11:12:31', 1319771551510, N'wendy', N'刪除文件', N'doc', N'014')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/10/28', N'17:24:18', 1319793858588, N'manage', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:24:34', 1319793874041, N'manage', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:24:49', 1319793889978, N'manage', N'下載不可列印PDF 安控:\temp\1314375523859_1\1314413292984\2\attachments\1314413292984_2_1.doc.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:24:55', 1319793895400, N'manage', N'下載可列印PDF 安控:\temp\1314375523859_1\1314413292984\2\attachments\1314413292984_2_1.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:25:01', 1319793901635, N'manage', N'下載原始檔案 安控:/certified/1314375523859_1/1314413292984/2/attachments/廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:25:05', 1319793905728, N'technology', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:25:15', 1319793915322, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:26:50', 1319794010713, N'manage', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:27:22', 1319794042463, N'technology', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:27:30', 1319794050025, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:28:18', 1319794098385, N'manage', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:29:11', 1319794151369, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:29:52', 1319794192932, N'manage', N'轉寄文件:食品級EPS廢料再生應用製程開發計畫;發送給:technology', N'doc', N'013')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:29:52', 1319794192932, N'manage', N'轉寄文件:食品級EPS廢料再生應用製程開發計畫;發送給:rd', N'doc', N'013')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/10/26', N'13:38:24', 1319607504466, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/10/26', N'13:38:31', 1319607511888, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/10/26', N'13:38:34', 1319607514700, N'michael', N'開啟檔案(安控):/certified/1314193897718_1/1315552071921/1/main/月餅的熱量等同便當.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/10/26', N'13:39:50', 1319607590591, N'michael', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/10/26', N'13:39:56', 1319607596481, N'michael', N'開啟檔案(安控):/certified/1314375524187_1/1315891275765/3/main/abc.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/10/26', N'13:41:52', 1319607712653, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/10/26', N'13:42:01', 1319607721294, N'michael', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/10/26', N'13:42:04', 1319607724763, N'michael', N'下載可列印PDF 安控:\temp\1314375524187_1\1315891275765\3\main\1315891275765_3_0.txt.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/10/26', N'13:42:40', 1319607760294, N'michael', N'下載不可列印PDF 安控:\temp\1314375524187_1\1315891275765\3\main\1315891275765_3_0.txt.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/10/26', N'13:42:57', 1319607777059, N'michael', N'下載不可列印PDF 安控:\temp\1314375524187_1\1315891275765\3\main\1315891275765_3_0.txt.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/10/26', N'13:43:09', 1319607789653, N'michael', N'下載不可列印PDF 安控:\temp\1314375524187_1\1315891275765\3\main\1315891275765_3_0.txt.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/10/26', N'13:48:24', 1319608104888, N'michael', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/10/26', N'16:24:54', 1319617494091, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'16:09:28', 1319789368088, N'hwtop', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'16:14:36', 1319789676650, N'hwtop', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'16:15:45', 1319789745447, N'hwtop', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319790126307', 1, N'新食品級靜電劑 （符合UF)', N'1314375523859_1', N'2011/10/28', N'16:26:20', 1319790380135, N'hwtop', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'16:26:56', 1319790416385, N'hwtop', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'16:27:50', 1319790470057, N'hwtop', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319790126307', 1, N'新食品級靜電劑 （符合UF)', N'1314375523859_1', N'2011/10/28', N'16:28:41', 1319790521244, N'technology', N'閱讀文件索引卡新食品級靜電劑 （符合UF)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319790126307', 1, N'新食品級靜電劑 （符合UF)', N'1314375523859_1', N'2011/10/28', N'16:32:38', 1319790758369, N'hwtop', N'閱讀文件索引卡新食品級靜電劑 （符合UF)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319790126307', 1, N'新食品級靜電劑 （符合UF)', N'1314375523859_1', N'2011/10/28', N'16:33:29', 1319790809510, N'wendy', N'閱讀文件索引卡新食品級靜電劑 （符合UF)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319790126307', 1, N'新食品級靜電劑 （符合UF)', N'1314375523859_1', N'2011/10/28', N'16:34:25', 1319790865353, N'wendy', N'閱讀文件索引卡新食品級靜電劑 （符合UF)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319790126307', 1, N'新食品級靜電劑 （符合UF)', N'1314375523859_1', N'2011/10/28', N'16:34:44', 1319790884760, N'wendy', N'文件廢止', N'doc', N'007')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319790126307', 1, N'新食品級靜電劑 （符合UF)', N'1314375523859_1', N'2011/10/28', N'04:34:44', 1319790884807, N'wendy', N'啟動新增文件流程', N'doc', N'006')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'16:35:50', 1319790950150, N'wwrc', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319790969025', 1, N'新食品級靜電劑 （符合UF)', N'1314375524421_1', N'2011/10/28', N'16:38:25', 1319791105135, N'wwrc', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'16:38:30', 1319791110150, N'wwrc', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771510916', 1, N'客情', N'1319771509338_1', N'2011/10/28', N'16:39:53', 1319791193416, N'technology', N'閱讀文件索引卡客情', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771510916', 1, N'客情', N'1319771509338_1', N'2011/10/28', N'16:40:10', 1319791210182, N'technology', N'文件廢止', N'doc', N'007')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771510916', 1, N'客情', N'1319771509338_1', N'2011/10/28', N'04:40:10', 1319791210385, N'technology', N'啟動新增文件流程', N'doc', N'006')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511135', 1, N'最高樓', N'1319771510978_1', N'2011/10/28', N'16:40:24', 1319791224853, N'technology', N'閱讀文件索引卡最高樓', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319790969025', 1, N'新食品級靜電劑 （符合UF)', N'1314375524421_1', N'2011/10/28', N'16:42:03', 1319791323275, N'technology', N'閱讀文件索引卡新食品級靜電劑 （符合UF)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'16:43:05', 1319791385322, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2011/10/28', N'16:45:11', 1319791511994, N'wwrc', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413893578', 1, N'帶電現象的測定方法  (環琦)', N'1314375523859_1', N'2011/10/28', N'16:45:42', 1319791542447, N'wwrc', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2011/10/28', N'16:48:13', 1319791693432, N'wwrc', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'16:51:58', 1319791918244, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'16:52:53', 1319791973072, N'technology', N'轉寄文件:食品級EPS廢料再生應用製程開發計畫;發送給:manage', N'doc', N'013')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'16:52:53', 1319791973072, N'technology', N'轉寄文件:食品級EPS廢料再生應用製程開發計畫;發送給:rd', N'doc', N'013')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'16:53:51', 1319792031541, N'manage', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'16:54:08', 1319792048947, N'manage', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'16:57:01', 1319792221994, N'rd', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'16:57:07', 1319792227447, N'rd', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'16:57:32', 1319792252994, N'manage', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:00:15', 1319792415525, N'wwrc', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:00:20', 1319792420041, N'wwrc', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/10/28', N'17:15:28', 1319793328072, N'technology', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:15:44', 1319793344385, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:17:37', 1319793457978, N'manage', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:19:53', 1319793593228, N'technology', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:20:12', 1319793612963, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:20:49', 1319793649369, N'manage', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:22:40', 1319793760885, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2011/10/28', N'17:57:15', 1319795835619, N'wwrc', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2011/10/28', N'17:57:24', 1319795844072, N'wwrc', N'閱讀文件索引卡新食品級   靜電劑 （U 203 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2011/10/28', N'17:57:53', 1319795873916, N'wwrc', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/10/28', N'17:58:06', 1319795886853, N'wwrc', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795814541', 1, N'FSS開發產結合測試報告  （ 2011. 10.24 r2)', N'1314375523859_1', N'2011/10/28', N'17:58:48', 1319795928275, N'technology', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319790969025', 1, N'新食品級靜電劑 （符合UF)', N'1314375524421_1', N'2011/10/28', N'19:09:41', 1319800181650, N'manage', N'閱讀文件索引卡新食品級靜電劑 （符合UF)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511275', 1, N'2012-2014中期策略方向與目標-shoppingmall', N'1319771511197_1', N'2011/11/02', N'10:15:16', 1320200116781, N'manage', N'閱讀文件索引卡2012-2014中期策略方向與目標-shoppingmall', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/11/02', N'10:27:05', 1320200825687, N'manage', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13197715101194', 1, N'專案執行小組人員名單', N'1319771510103_1', N'2011/11/04', N'16:13:53', 1320394433866, N'rorita', N'閱讀文件索引卡專案執行小組人員名單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511072', 1, N'各部門KM優先議題彙整', N'1319771510978_1', N'2011/11/04', N'16:14:31', 1320394471491, N'rorita', N'閱讀文件索引卡各部門KM優先議題彙整', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795022072', 1, N'FSS  抗靜電結合測試開發會議  (10  30)', N'1314375523859_1', N'2011/10/28', N'17:45:06', 1319795106322, N'technology', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/10/28', N'17:45:20', 1319795120932, N'technology', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:45:57', 1319795157619, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'17:46:47', 1319795207275, N'technology', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795022072', 1, N'FSS  抗靜電結合測試開發會議  (10  30)', N'1314375523859_1', N'2011/10/28', N'17:47:10', 1319795230853, N'technology', N'閱讀文件索引卡FSS  抗靜電結合測試開發會議  (10  30)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795022072', 1, N'FSS  抗靜電結合測試開發會議  (10  30)', N'1314375523859_1', N'2011/10/28', N'17:52:31', 1319795551447, N'technology', N'閱讀文件索引卡FSS  抗靜電結合測試開發會議  (10  30)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795022072', 1, N'FSS  抗靜電結合測試開發會議  (10  21)', N'1314375523859_1', N'2011/10/28', N'17:53:52', 1319795632447, N'technology', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/10/28', N'18:00:19', 1319796019994, N'technology', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795814541', 1, N'FSS開發產結合測試報告  （ 2011. 10.24 r2)', N'1314375523859_1', N'2011/10/28', N'18:00:27', 1319796027525, N'technology', N'閱讀文件索引卡FSS開發產結合測試報告  （ 2011. 10.24 r2)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'18:00:46', 1319796046541, N'wwrc', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795814541', 1, N'FSS開發產結合測試報告  （ 2011. 10.24 r2)', N'1314375523859_1', N'2011/10/28', N'18:01:36', 1319796096885, N'technology', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/10/28', N'18:02:03', 1319796123994, N'technology', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'18:02:28', 1319796148947, N'technology', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'18:03:09', 1319796189557, N'wwrc', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'18:06:25', 1319796385353, N'technology', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'18:07:51', 1319796471025, N'manage', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/10/28', N'19:10:46', 1319800246994, N'manage', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/11/03', N'17:40:48', 1320313248914, N'ariel', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2011/11/04', N'16:16:15', 1320394575945, N'ariel', N'閱讀文件索引卡Quanta Test222222222', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/11/07', N'13:45:42', 1320644742773, N'hwtop', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/11/07', N'13:50:59', 1320645059710, N'hwtop', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795022072', 1, N'FSS  抗靜電結合測試開發會議  (10  21)', N'1314375523859_1', N'2011/11/08', N'19:38:12', 1320752292976, N'wendy', N'閱讀文件索引卡FSS  抗靜電結合測試開發會議  (10  21)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/11/11', N'03:20:52', 1320952852057, N'michael', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/11/11', N'03:20:59', 1320952859167, N'michael', N'下載原始檔案 安控:/certified/1314375523859_1/1319795937666/1/main/FSS 小量產計劃會議  （10.26).doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/11/15', N'15:28:55', 1321342135969, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/11/15', N'15:29:19', 1321342159188, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/11/17', N'10:08:42', 1321495722469, N'ariel', N'閱讀文件索引卡食品與塑料接觸安全要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/11/17', N'10:19:32', 1321496372200, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511478', 1, N'人員離職率2009-2011', N'1319771511197_1', N'2011/11/17', N'10:21:37', 1321496497852, N'michael', N'閱讀文件索引卡人員離職率2009-2011', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2011/11/17', N'10:27:18', 1321496838541, N'april', N'閱讀文件索引卡Quanta Test222222222', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/11/17', N'10:27:30', 1321496850324, N'april', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/11/17', N'10:27:40', 1321496860762, N'april', N'閱讀文件索引卡食品與塑料接觸安全要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/11/03', N'17:41:47', 1320313307585, N'ariel', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418029359', 1, N'新版盟RoHS指令', N'1314375524265_1', N'2011/11/03', N'17:51:13', 1320313873835, N'ariel', N'閱讀文件索引卡新版盟RoHS指令', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/11/03', N'17:52:30', 1320313950585, N'ariel', N'下載可列印PDF 安控:\temp\1314375523859_1\1319795937666\1\main\1319795937666_1_0.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2011/11/03', N'19:05:30', 1320318330523, N'ariel', N'閱讀文件索引卡新食品級   靜電劑 （U 203 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/11/03', N'19:05:40', 1320318340695, N'ariel', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511072', 1, N'各部門KM優先議題彙整', N'1319771510978_1', N'2011/11/04', N'16:08:02', 1320394082382, N'april', N'閱讀文件索引卡各部門KM優先議題彙整', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511400', 1, N'2012-2014總策略規劃', N'1319771511197_1', N'2011/11/04', N'16:09:03', 1320394143851, N'april', N'閱讀文件索引卡2012-2014總策略規劃', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/11/07', N'11:09:17', 1320635357820, N'hwtop', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/11/07', N'11:10:26', 1320635426288, N'hwtop', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/11/16', N'15:49:56', 1321429796329, N'manage', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/11/16', N'15:56:25', 1321430185204, N'manage', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/11/16', N'16:23:28', 1321431808157, N'manage', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/11/16', N'16:25:36', 1321431936141, N'manage', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/11/16', N'16:37:47', 1321432667750, N'manage', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511072', 1, N'各部門KM優先議題彙整', N'1319771510978_1', N'2011/11/17', N'10:09:11', 1321495751156, N'rorita', N'閱讀文件索引卡各部門KM優先議題彙整', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511072', 1, N'各部門KM優先議題彙整', N'1319771510978_1', N'2011/11/17', N'10:09:39', 1321495779362, N'rorita', N'下載原始檔案 安控:/certified/1319771510978_1/1319771511072/1/main/各部門KM優先議題彙整.pptx', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511478', 1, N'人員離職率2009-2011', N'1319771511197_1', N'2011/11/17', N'11:35:00', 1321500900150, N'michael', N'閱讀文件索引卡人員離職率2009-2011', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/11/17', N'11:35:28', 1321500928418, N'michael', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511478', 1, N'人員離職率2009-2011', N'1319771511197_1', N'2011/11/20', N'15:03:35', 1321772615156, N'michael', N'閱讀文件索引卡人員離職率2009-2011', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418029359', 1, N'新版盟RoHS指令', N'1314375524265_1', N'2011/11/22', N'14:57:46', 1321945066015, N'ariel', N'閱讀文件索引卡新版盟RoHS指令', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795022072', 1, N'FSS  抗靜電結合測試開發會議  (10  21)', N'1314375523859_1', N'2011/11/28', N'11:22:57', 1322450577984, N'april', N'閱讀文件索引卡FSS  抗靜電結合測試開發會議  (10  21)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795022072', 1, N'FSS  抗靜電結合測試開發會議  (10  21)', N'1314375523859_1', N'2011/11/28', N'11:23:07', 1322450587156, N'april', N'下載可列印PDF 安控:\temp\1314375523859_1\1319795022072\1\main\1319795022072_1_0.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/11/28', N'14:47:48', 1322462868140, N'eipadmin', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/11/28', N'15:16:53', 1322464613968, N'rorita', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511478', 1, N'人員離職率2009-2011', N'1319771511197_1', N'2011/11/28', N'17:15:47', 1322471747171, N'ariel', N'閱讀文件索引卡人員離職率2009-2011', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/11/29', N'20:56:32', 1322571392796, N'ken', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:15:04', 1322619304390, N'eipadmin', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:15:09', 1322619309484, N'eipadmin', N'閱讀文件索引卡錄', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:16:30', 1322619390906, N'eipadmin', N'開啟檔案(安控):/certified/1314193877640_1/1322619283109/1/main/錄.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:25:49', 1322619949046, N'eipadmin', N'閱讀文件索引卡錄', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:25:54', 1322619954890, N'eipadmin', N'開啟檔案(安控):/certified/1314193877640_1/1322619283109/1/main/錄.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/11/17', N'10:27:52', 1321496872732, N'april', N'開啟檔案(安控):/certified/1314375524265_1/1314418253265/1/main/食品與塑料接觸安全要求.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/11/17', N'10:27:59', 1321496879186, N'april', N'開啟檔案(安控):/certified/1314375524265_1/1314418253265/1/main/食品與塑料接觸安全要求.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/11/23', N'09:48:20', 1322012900531, N'rd', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/11/28', N'18:09:07', 1322474947343, N'rorita', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:30:04', 1322620204203, N'eipadmin', N'下載不可列印PDF 安控:\temp\1314193877640_1\1322619283109\1\main\1322619283109_1_0.txt.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:31:32', 1322620292531, N'eipadmin', N'開啟檔案(安控):/certified/1314193877640_1/1322619283109/1/main/錄.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:36:56', 1322620616343, N'eipadmin', N'開啟檔案(安控):/certified/1314193877640_1/1322619283109/1/main/錄.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:37:08', 1322620628093, N'eipadmin', N'開啟檔案(安控):/certified/1314193877640_1/1322619283109/1/main/錄.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:37:19', 1322620639656, N'eipadmin', N'下載可列印PDF 安控:\temp\1314193877640_1\1322619283109\1\main\1322619283109_1_0.txt.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:37:47', 1322620667203, N'eipadmin', N'閱讀文件索引卡錄', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:37:51', 1322620671609, N'eipadmin', N'開啟檔案(安控):/certified/1314193877640_1/1322619283109/1/main/錄.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/11/30', N'11:21:27', 1322623287671, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/11/30', N'11:23:26', 1322623406812, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/11/30', N'11:24:34', 1322623474062, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/11/30', N'11:41:23', 1322624483328, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/11/30', N'11:42:10', 1322624530171, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/11/30', N'11:42:43', 1322624563031, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/11/30', N'11:53:52', 1322625232515, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/11/30', N'11:59:55', 1322625595156, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/11/30', N'12:00:52', 1322625652406, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/01', N'16:51:04', 1322729464500, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323148771437', 1, N'資料庫', N'1314193897718_1', N'2011/12/06', N'13:21:55', 1323148915234, N'ariel', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/06', N'13:26:33', 1323149193109, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323149350468', 1, N'測試資料', N'1314193897718_1', N'2011/12/06', N'13:29:46', 1323149386437, N'ariel', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323148771437', 1, N'資料庫', N'1314193897718_1', N'2011/12/06', N'13:31:12', 1323149472390, N'ariel', N'閱讀文件索引卡資料庫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/06', N'13:32:18', 1323149538421, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323169368343', 1, N'ssss', N'1314193897718_1', N'2011/12/06', N'19:04:29', 1323169469468, N'ariel', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/10', N'13:07:49', 1323493669812, N'april', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/14', N'12:17:48', 1323836268812, N'ariel', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/15', N'11:49:56', 1323920996557, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/15', N'11:50:45', 1323921045073, N'ariel', N'開啟檔案(安控):/certified/1314193877640_1/1322622489062/1/main/eKM4.6_快速導覽_建置eKM.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/15', N'11:50:51', 1323921051714, N'ariel', N'開啟檔案(安控):/certified/1314193877640_1/1322622489062/1/main/eKM4.6_快速導覽_建置eKM.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418029359', 1, N'新版盟RoHS指令', N'1314375524265_1', N'2011/12/19', N'15:25:16', 1324279516947, N'ariel', N'閱讀文件索引卡新版盟RoHS指令', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418029359', 1, N'新版盟RoHS指令', N'1314375524265_1', N'2011/12/19', N'15:25:57', 1324279557432, N'ariel', N'閱讀文件索引卡新版盟RoHS指令', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/11/23', N'09:54:53', 1322013293640, N'rd', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/11/23', N'09:57:42', 1322013462390, N'rd', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2011/11/23', N'09:59:14', 1322013554078, N'rd', N'閱讀文件索引卡新食品級   靜電劑 （U 203 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2011/11/23', N'10:04:50', 1322013890531, N'rd', N'閱讀文件索引卡新食品級   靜電劑 （U 203 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/07', N'11:10:06', 1323227406843, N'michael', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418029359', 1, N'新版盟RoHS指令', N'1314375524265_1', N'2011/12/19', N'15:22:55', 1324279375900, N'ariel', N'閱讀文件索引卡新版盟RoHS指令', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418111171', 1, N'歐盟食品接觸材料新法規淺析', N'1314375524265_1', N'2011/12/19', N'15:23:42', 1324279422447, N'ariel', N'閱讀文件索引卡歐盟食品接觸材料新法規淺析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/19', N'16:23:50', 1324283030572, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/22', N'15:21:54', 1324538514810, N'michael', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/26', N'04:23:15', 1324844595703, N'rorita', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/26', N'04:24:32', 1324844672499, N'ariel', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/26', N'11:41:53', 1324870913921, N'ariel', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13197715101194', 1, N'專案執行小組人員名單', N'1319771510103_1', N'2011/12/27', N'15:02:15', 1324969335499, N'rorita', N'閱讀文件索引卡專案執行小組人員名單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511135', 1, N'最高樓', N'1319771510978_1', N'2011/12/27', N'15:08:00', 1324969680609, N'rorita', N'閱讀文件索引卡最高樓', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/27', N'15:08:36', 1324969716812, N'rorita', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/27', N'19:10:25', 1324984225859, N'april', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/27', N'21:36:42', 1324993002578, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/27', N'21:37:52', 1324993072593, N'ken', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/28', N'09:58:28', 1325037508249, N'ken', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/28', N'09:59:01', 1325037541390, N'ken', N'開啟檔案(安控):/certified/1314193877640_1/1322622489062/1/main/eKM4.6_快速導覽_建置eKM.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/28', N'09:59:26', 1325037566999, N'ken', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/28', N'09:59:43', 1325037583281, N'ken', N'開啟檔案(安控):/certified/1314193934156_1/1323226933500/1/main/hsbc.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511072', 1, N'各部門KM優先議題彙整', N'1319771510978_1', N'2011/12/28', N'11:22:49', 1325042569499, N'michael', N'Read document index card各部門KM優先議題彙整', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/28', N'13:25:11', 1325049911031, N'ariel', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/28', N'13:30:01', 1325050201078, N'ken', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/28', N'17:53:11', 1325065991015, N'michael', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/12/28', N'18:17:36', 1325067456937, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/28', N'23:50:21', 1325087421281, N'ariel', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/28', N'23:50:34', 1325087434734, N'ariel', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/29', N'10:21:37', 1325125297534, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/12/29', N'10:25:00', 1325125500474, N'rorita', N'閱讀文件索引卡錄', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/29', N'10:34:07', 1325126047320, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/29', N'10:39:44', 1325126384585, N'ken', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/12/29', N'10:42:58', 1325126578118, N'ken', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2011/12/29', N'10:43:28', 1325126608058, N'rorita', N'閱讀文件索引卡新食品級   靜電劑 （U 203 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:40:04', 1322620804500, N'eipadmin', N'閱讀文件索引卡錄', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:40:08', 1322620808687, N'eipadmin', N'開啟檔案(安控):/certified/1314193877640_1/1322619283109/1/main/錄.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:45:16', 1322621116671, N'eipadmin', N'開啟檔案(安控):/certified/1314193877640_1/1322619283109/1/main/錄.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:45:34', 1322621134765, N'eipadmin', N'下載原始檔案 安控:/certified/1314193877640_1/1322619283109/1/main/錄.txt', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:46:30', 1322621190203, N'eipadmin', N'開啟檔案(安控):/certified/1314193877640_1/1322619283109/1/main/錄.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:52:31', 1322621551750, N'eipadmin', N'閱讀文件索引卡錄', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/11/30', N'10:52:35', 1322621555484, N'eipadmin', N'開啟檔案(安控):/certified/1314193877640_1/1322619283109/1/main/錄.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13197715121974', 1, N'知識管理系統導入專案合約', N'1319771512166_1', N'2011/11/30', N'11:07:19', 1322622439406, N'rorita', N'閱讀文件索引卡知識管理系統導入專案合約', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/11/30', N'11:14:43', 1322622883531, N'rorita', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/11/30', N'11:15:05', 1322622905328, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/06', N'13:33:21', 1323149601390, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/12/06', N'13:38:25', 1323149905250, N'ariel', N'閱讀文件索引卡錄', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323149350468', 1, N'測試資料', N'1314193897718_1', N'2011/12/06', N'15:59:25', 1323158365484, N'ariel', N'閱讀文件索引卡測試資料', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323149350468', 1, N'測試資料', N'1314193897718_1', N'2011/12/06', N'15:59:50', 1323158390625, N'ariel', N'下載可列印PDF 安控:\temp\1314193897718_1\1323149350468\1\main\1323149350468_1_0.txt.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323149350468', 1, N'測試資料', N'1314193897718_1', N'2011/12/06', N'16:00:13', 1323158413750, N'ariel', N'下載不可列印PDF 安控:\temp\1314193897718_1\1323149350468\1\main\1323149350468_1_0.txt.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323149350468', 1, N'測試資料', N'1314193897718_1', N'2011/12/06', N'16:00:28', 1323158428906, N'ariel', N'下載可列印PDF 安控:\temp\1314193897718_1\1323149350468\1\main\1323149350468_1_0.txt.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323149350468', 1, N'測試資料', N'1314193897718_1', N'2011/12/06', N'16:00:43', 1323158443578, N'ariel', N'下載原始檔案 安控:/certified/1314193897718_1/1323149350468/1/main/新文字文件.txt', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323149350468', 1, N'測試資料', N'1314193897718_1', N'2011/12/06', N'16:01:05', 1323158465046, N'ariel', N'開啟檔案(安控):/certified/1314193897718_1/1323149350468/1/main/新文字文件.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323149350468', 1, N'測試資料', N'1314193897718_1', N'2011/12/06', N'16:01:49', 1323158509453, N'ariel', N'開啟檔案(安控):/certified/1314193897718_1/1323149350468/1/main/新文字文件.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323149350468', 1, N'測試資料', N'1314193897718_1', N'2011/12/06', N'16:02:15', 1323158535796, N'ariel', N'開啟檔案(安控):/certified/1314193897718_1/1323149350468/1/main/新文字文件.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323149350468', 1, N'測試資料', N'1314193897718_1', N'2011/12/06', N'16:33:07', 1323160387750, N'ariel', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2011/12/06', N'16:34:58', 1323160498000, N'ariel', N'閱讀文件索引卡食品與塑料接觸安全要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/12/06', N'16:35:33', 1323160533984, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/06', N'16:57:06', 1323161826968, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/12/06', N'17:04:42', 1323162282437, N'ariel', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/12/06', N'17:04:49', 1323162289093, N'ariel', N'開啟檔案(安控):/certified/1314193897718_1/1315552071921/1/main/月餅的熱量等同便當.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/06', N'17:08:03', 1323162483765, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/07', N'13:37:46', 1323236266406, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/13', N'19:58:08', 1323777488343, N'ariel', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/13', N'20:12:10', 1323778330984, N'ken', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2011/12/20', N'16:19:58', 1324369198494, N'rorita', N'閱讀文件索引卡新食品級   靜電劑 （U 203 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511541', 1, N'組織圖', N'1319771511197_1', N'2011/12/20', N'16:39:26', 1324370366807, N'ken', N'閱讀文件索引卡組織圖', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/12/06', N'17:04:01', 1323162241593, N'ariel', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511541', 1, N'組織圖', N'1319771511197_1', N'2011/12/06', N'17:33:51', 1323164031265, N'rorita', N'閱讀文件索引卡組織圖', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/06', N'17:48:32', 1323164912468, N'michael', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/06', N'17:49:09', 1323164949140, N'michael', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2011/12/13', N'11:08:34', 1323745714781, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314417803062', 1, N'防止帶電的方法', N'1314375524265_1', N'2011/12/20', N'16:40:42', 1324370442150, N'ken', N'閱讀文件索引卡防止帶電的方法', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/20', N'20:14:46', 1324383286119, N'michael', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/21', N'16:07:45', 1324454865197, N'ken', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/21', N'16:08:09', 1324454889947, N'ken', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/21', N'16:08:49', 1324454929213, N'ken', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/21', N'16:09:19', 1324454959104, N'ken', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/21', N'17:35:37', 1324460137260, N'ken', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418029359', 1, N'新版盟RoHS指令', N'1314375524265_1', N'2011/12/21', N'18:00:01', 1324461601307, N'ken', N'閱讀文件索引卡新版盟RoHS指令', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2011/12/26', N'12:26:38', 1324873598218, N'ariel', N'閱讀文件索引卡新食品級   靜電劑 （U 203 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/26', N'12:31:23', 1324873883640, N'ariel', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/26', N'19:16:41', 1324898201046, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2011/12/27', N'20:17:41', 1324988261343, N'ariel', N'閱讀文件索引卡新食品級   靜電劑 （U 203 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/27', N'21:35:41', 1324992941984, N'rorita', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/27', N'23:27:17', 1324999637031, N'ken', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/27', N'23:28:49', 1324999729906, N'ken', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/27', N'23:29:30', 1324999770484, N'ken', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/27', N'23:29:40', 1324999780812, N'ken', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/28', N'11:30:11', 1325043011187, N'michael', N'Read document index card檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/12/28', N'11:36:22', 1325043382109, N'michael', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/12/28', N'11:36:58', 1325043418265, N'michael', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/12/28', N'11:37:15', 1325043435218, N'michael', N'閱讀文件索引卡錄', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/12/28', N'11:38:03', 1325043483921, N'michael', N'閱讀文件索引卡錄', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/28', N'11:41:09', 1325043669234, N'michael', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/29', N'10:25:34', 1325125534227, N'ken', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/29', N'10:26:01', 1325125561542, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/29', N'10:31:35', 1325125895994, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2011/12/29', N'10:33:21', 1325126001957, N'ken', N'閱讀文件索引卡新食品級   靜電劑 （U 203 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/29', N'10:33:55', 1325126035553, N'ken', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/12/29', N'10:45:01', 1325126701957, N'rorita', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/29', N'11:49:15', 1325130555786, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/29', N'14:23:14', 1325139794770, N'michael', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/29', N'14:26:42', 1325140002180, N'michael', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418029359', 1, N'新版盟RoHS指令', N'1314375524265_1', N'2011/12/19', N'15:25:59', 1324279559057, N'ariel', N'閱讀文件索引卡新版盟RoHS指令', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418029359', 1, N'新版盟RoHS指令', N'1314375524265_1', N'2011/12/19', N'15:26:03', 1324279563104, N'ariel', N'閱讀文件索引卡新版盟RoHS指令', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418029359', 1, N'新版盟RoHS指令', N'1314375524265_1', N'2011/12/19', N'15:26:47', 1324279607307, N'ariel', N'開啟檔案(安控):/certified/1314375524265_1/1314418029359/1/main/新版盟RoHS指令.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/12/19', N'15:50:40', 1324281040650, N'ariel', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413894187', 1, N'歐盟食品接觸的塑膠法規  (育宗)', N'1314375523859_1', N'2011/12/19', N'15:51:17', 1324281077244, N'ariel', N'閱讀文件索引卡歐盟食品接觸的塑膠法規  (育宗)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413894187', 1, N'歐盟食品接觸的塑膠法規  (育宗)', N'1314375523859_1', N'2011/12/19', N'15:51:34', 1324281094900, N'ariel', N'開啟檔案(安控):/certified/1314375523859_1/1314413894187/1/main/歐盟食品接觸的塑膠法規  (育宗).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/12/19', N'15:57:33', 1324281453400, N'ariel', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/12/19', N'15:57:57', 1324281477275, N'ariel', N'開啟檔案(安控):/certified/1314375523859_1/1314413292984/2/attachments/廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/19', N'16:01:23', 1324281683697, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/19', N'16:03:35', 1324281815854, N'ariel', N'開啟檔案(安控):/certified/1314193877640_1/1322622489062/1/main/eKM4.6_快速導覽_建置eKM.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324282142650', 1, N'文件測試', N'1314193897718_1', N'2011/12/19', N'16:17:10', 1324282630416, N'rorita', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/19', N'16:20:32', 1324282832760, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/12/19', N'16:24:08', 1324283048916, N'ariel', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324283120307', 1, N'test2', N'1314193897718_1', N'2011/12/19', N'16:25:58', 1324283158588, N'ariel', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/12/19', N'16:32:13', 1324283533885, N'rorita', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/12/19', N'16:32:22', 1324283542291, N'rorita', N'開啟檔案(安控):/certified/1314375523859_1/1319793247260/1/main/廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/12/19', N'16:33:08', 1324283588354, N'rorita', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/12/19', N'16:33:12', 1324283592916, N'rorita', N'下載不可列印PDF 安控:\temp\1314375523859_1\1319793247260\1\main\1319793247260_1_0.doc.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/12/19', N'16:33:19', 1324283599697, N'rorita', N'開啟檔案(安控):/certified/1314375523859_1/1319793247260/1/main/廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/20', N'16:15:22', 1324368922229, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/12/20', N'20:17:56', 1324383476619, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314417803062', 1, N'防止帶電的方法', N'1314375524265_1', N'2011/12/20', N'20:18:28', 1324383508791, N'michael', N'閱讀文件索引卡防止帶電的方法', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/12/20', N'20:18:49', 1324383529682, N'michael', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/21', N'16:10:26', 1324455026166, N'ken', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/21', N'16:10:58', 1324455058260, N'ken', N'下載原始檔案 安控:/certified/1314193934156_1/1324454319619/1/main/Test.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/21', N'16:11:03', 1324455063682, N'ken', N'下載不可列印PDF 安控:\temp\1314193934156_1\1324454319619\1\main\1324454319619_1_0.doc.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/21', N'16:11:28', 1324455088994, N'ken', N'下載可列印PDF 安控:\temp\1314193934156_1\1324454319619\1\main\1324454319619_1_0.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/21', N'16:12:07', 1324455127244, N'ken', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/21', N'16:12:33', 1324455153510, N'ken', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/21', N'16:20:29', 1324455629229, N'ken', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/21', N'16:22:12', 1324455732244, N'ken', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2011/12/21', N'16:22:31', 1324455751932, N'ken', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/21', N'16:23:20', 1324455800572, N'ken', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/21', N'04:29:40', 1324456180932, N'ken', N'啟動新增文件流程', N'doc', N'006')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/21', N'16:45:39', 1324457139588, N'ken', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/21', N'16:48:26', 1324457306166, N'ken', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/26', N'22:29:13', 1324909753921, N'rorita', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/26', N'23:28:49', 1324913329203, N'michael', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418111171', 1, N'歐盟食品接觸材料新法規淺析', N'1314375524265_1', N'2011/12/26', N'23:29:47', 1324913387609, N'michael', N'閱讀文件索引卡歐盟食品接觸材料新法規淺析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418111171', 1, N'歐盟食品接觸材料新法規淺析', N'1314375524265_1', N'2011/12/26', N'23:30:46', 1324913446749, N'michael', N'閱讀文件索引卡歐盟食品接觸材料新法規淺析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2011/12/27', N'10:25:34', 1324952734265, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/27', N'15:03:26', 1324969406515, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/27', N'15:11:35', 1324969895171, N'ken', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/27', N'15:12:30', 1324969950843, N'ken', N'下載可列印PDF 安控:\temp\1314193934156_1\1324454319619\1\main\1324454319619_1_0.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511541', 1, N'組織圖', N'1319771511197_1', N'2011/12/27', N'15:13:28', 1324970008874, N'michael', N'閱讀文件索引卡組織圖', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13197715101194', 1, N'專案執行小組人員名單', N'1319771510103_1', N'2011/12/27', N'19:45:11', 1324986311562, N'ariel', N'閱讀文件索引卡專案執行小組人員名單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511541', 1, N'組織圖', N'1319771511197_1', N'2011/12/27', N'19:45:23', 1324986323374, N'ariel', N'閱讀文件索引卡組織圖', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/27', N'20:03:10', 1324987390749, N'ariel', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/28', N'13:23:23', 1325049803687, N'rorita', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/28', N'13:23:46', 1325049826296, N'rorita', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/28', N'20:45:07', 1325076307999, N'ken', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/28', N'23:47:06', 1325087226640, N'rorita', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/28', N'23:49:25', 1325087365015, N'rorita', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/28', N'23:50:53', 1325087453218, N'rorita', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/28', N'23:53:13', 1325087593281, N'rorita', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795814541', 1, N'FSS開發產結合測試報告  （ 2011. 10.24 r2)', N'1314375523859_1', N'2011/12/28', N'23:53:18', 1325087598421, N'rorita', N'閱讀文件索引卡FSS開發產結合測試報告  （ 2011. 10.24 r2)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795022072', 1, N'FSS  抗靜電結合測試開發會議  (10  21)', N'1314375523859_1', N'2011/12/28', N'23:53:20', 1325087600843, N'rorita', N'閱讀文件索引卡FSS  抗靜電結合測試開發會議  (10  21)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/12/28', N'23:53:24', 1325087604109, N'rorita', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2011/12/28', N'23:53:26', 1325087606718, N'rorita', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/28', N'23:53:28', 1325087608812, N'rorita', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/28', N'23:53:44', 1325087624312, N'ariel', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/28', N'23:53:44', 1325087624687, N'ariel', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/28', N'23:53:45', 1325087625078, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/12/28', N'23:53:45', 1325087625656, N'ariel', N'閱讀文件索引卡錄', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/12/28', N'23:53:46', 1325087626062, N'ariel', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795814541', 1, N'FSS開發產結合測試報告  （ 2011. 10.24 r2)', N'1314375523859_1', N'2011/12/28', N'23:53:46', 1325087626468, N'ariel', N'閱讀文件索引卡FSS開發產結合測試報告  （ 2011. 10.24 r2)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2011/12/28', N'23:53:47', 1325087627296, N'ariel', N'閱讀文件索引卡新食品級   靜電劑 （U 203 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795022072', 1, N'FSS  抗靜電結合測試開發會議  (10  21)', N'1314375523859_1', N'2011/12/28', N'23:53:47', 1325087627593, N'ariel', N'閱讀文件索引卡FSS  抗靜電結合測試開發會議  (10  21)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511603', 1, N'複製 -2012-2014中期策略方向與目標-office', N'1319771511197_1', N'2011/12/28', N'23:54:04', 1325087644859, N'ariel', N'閱讀文件索引卡複製 -2012-2014中期策略方向與目標-office', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511478', 1, N'人員離職率2009-2011', N'1319771511197_1', N'2011/12/28', N'23:54:05', 1325087645312, N'ariel', N'閱讀文件索引卡人員離職率2009-2011', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/12/29', N'15:23:29', 1325143409125, N'michael', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/12/29', N'15:23:31', 1325143411579, N'michael', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/12/29', N'15:23:32', 1325143412501, N'michael', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/29', N'16:49:17', 1325148557040, N'michael', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193877640_1', N'2011/12/29', N'16:49:49', 1325148589965, N'michael', N'閱讀文件索引卡錄', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/29', N'16:50:12', 1325148612951, N'michael', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/12/29', N'16:50:38', 1325148638641, N'michael', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/12/29', N'16:51:16', 1325148676894, N'michael', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511275', 1, N'2012-2014中期策略方向與目標-shoppingmall', N'1319771511197_1', N'2011/12/29', N'16:52:14', 1325148734040, N'michael', N'閱讀文件索引卡2012-2014中期策略方向與目標-shoppingmall', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511603', 1, N'複製 -2012-2014中期策略方向與目標-office', N'1319771511197_1', N'2011/12/29', N'16:52:21', 1325148741681, N'michael', N'閱讀文件索引卡複製 -2012-2014中期策略方向與目標-office', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/29', N'16:52:27', 1325148747948, N'michael', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2011/12/29', N'16:52:36', 1325148756464, N'michael', N'閱讀文件索引卡新食品級   靜電劑 （U 203 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2011/12/29', N'16:52:46', 1325148766199, N'michael', N'開啟檔案(安控):/certified/1314375524421_1/1319795717369/1/main/新食品級   靜電劑 （U 203 ).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/12/29', N'16:52:55', 1325148775731, N'michael', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/12/29', N'16:52:59', 1325148779310, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1319793247260/1/main/廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2011/12/29', N'16:53:47', 1325148827423, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1319793247260/1/main/廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/12/29', N'18:12:08', 1325153528095, N'michael', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/12/29', N'18:12:12', 1325153532876, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1319795937666/1/main/FSS 小量產計劃會議  （10.26).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/12/29', N'18:12:37', 1325153557660, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1319795937666/1/main/FSS 小量產計劃會議  （10.26).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/12/29', N'18:13:33', 1325153613758, N'michael', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/12/29', N'18:13:43', 1325153623431, N'michael', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/12/29', N'18:13:49', 1325153629901, N'michael', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/12/29', N'18:13:52', 1325153632963, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1319795937666/1/main/FSS 小量產計劃會議  （10.26).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/12/29', N'18:14:41', 1325153681874, N'michael', N'下載不可列印PDF 安控:\temp\1314375523859_1\1319795937666\1\main\1319795937666_1_0.doc.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511541', 1, N'組織圖', N'1319771511197_1', N'2011/12/28', N'23:54:05', 1325087645046, N'ariel', N'閱讀文件索引卡組織圖', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511338', 1, N'2012-2014中期策略方向與目標-行政', N'1319771511197_1', N'2011/12/28', N'23:54:05', 1325087645609, N'ariel', N'閱讀文件索引卡2012-2014中期策略方向與目標-行政', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511400', 1, N'2012-2014總策略規劃', N'1319771511197_1', N'2011/12/28', N'23:54:05', 1325087645937, N'ariel', N'閱讀文件索引卡2012-2014總策略規劃', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511275', 1, N'2012-2014中期策略方向與目標-shoppingmall', N'1319771511197_1', N'2011/12/28', N'23:54:06', 1325087646343, N'ariel', N'閱讀文件索引卡2012-2014中期策略方向與目標-shoppingmall', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511072', 1, N'各部門KM優先議題彙整', N'1319771510978_1', N'2011/12/28', N'23:54:06', 1325087646703, N'ariel', N'閱讀文件索引卡各部門KM優先議題彙整', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511135', 1, N'最高樓', N'1319771510978_1', N'2011/12/28', N'23:54:07', 1325087647124, N'ariel', N'閱讀文件索引卡最高樓', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/29', N'11:43:54', 1325130234398, N'ariel', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/29', N'11:50:16', 1325130616151, N'rorita', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2011/12/29', N'15:36:46', 1325144206166, N'michael', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13197715101194', 1, N'專案執行小組人員名單', N'1319771510103_1', N'2011/12/29', N'19:16:25', 1325157385003, N'ariel', N'閱讀文件索引卡專案執行小組人員名單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511338', 1, N'2012-2014中期策略方向與目標-行政', N'1319771511197_1', N'2011/12/29', N'19:20:49', 1325157649339, N'ariel', N'閱讀文件索引卡2012-2014中期策略方向與目標-行政', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/29', N'19:53:58', 1325159638392, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/29', N'22:13:37', 1325168017611, N'rorita', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2011/12/29', N'22:34:44', 1325169284866, N'ken', N'閱讀文件索引卡新食品級   靜電劑 （U 203 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/12/29', N'23:10:52', 1325171452325, N'ariel', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2011/12/29', N'23:10:55', 1325171455091, N'ariel', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/29', N'23:11:15', 1325171475718, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/29', N'23:30:52', 1325172652433, N'rorita', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/30', N'14:27:39', 1325226459699, N'michael', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/30', N'20:19:19', 1325247559917, N'rorita', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/30', N'20:19:36', 1325247576042, N'ariel', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2011/12/30', N'20:21:02', 1325247662558, N'ariel', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795022072', 1, N'FSS  抗靜電結合測試開發會議  (10  21)', N'1314375523859_1', N'2011/12/30', N'20:22:32', 1325247752058, N'rorita', N'閱讀文件索引卡FSS  抗靜電結合測試開發會議  (10  21)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795022072', 1, N'FSS  抗靜電結合測試開發會議  (10  21)', N'1314375523859_1', N'2011/12/30', N'20:22:56', 1325247776652, N'rorita', N'閱讀文件索引卡FSS  抗靜電結合測試開發會議  (10  21)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/30', N'20:23:26', 1325247806011, N'rorita', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/30', N'20:23:32', 1325247812777, N'rorita', N'設為典範文件:滙豐銀行現金回饋信用卡申請書', N'doc', N'011')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/30', N'20:23:41', 1325247821433, N'rorita', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/30', N'20:23:44', 1325247824261, N'rorita', N'設為一般文件:滙豐銀行現金回饋信用卡申請書', N'doc', N'012')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/30', N'20:23:57', 1325247837183, N'rorita', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/30', N'20:24:08', 1325247848246, N'ariel', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/30', N'20:25:28', 1325247928371, N'ariel', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/30', N'20:25:39', 1325247939027, N'rorita', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/30', N'20:29:12', 1325248152246, N'ken', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/30', N'20:29:20', 1325248160308, N'ken', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/31', N'12:34:52', 1325306092496, N'rorita', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/12/29', N'18:15:31', 1325153731550, N'michael', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/30', N'13:03:09', 1325221389589, N'ariel', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2011/12/30', N'14:55:19', 1325228119871, N'michael', N'閱讀文件索引卡Quanta Test222222222', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/30', N'17:12:52', 1325236372980, N'ariel', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/30', N'20:19:54', 1325247594011, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/30', N'20:26:35', 1325247995433, N'rorita', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/31', N'13:06:26', 1325307986449, N'rorita', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/31', N'13:06:40', 1325308000011, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/31', N'13:07:04', 1325308024449, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/31', N'13:07:58', 1325308078558, N'rorita', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2011/12/31', N'15:40:38', 1325317238917, N'rorita', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/01/01', N'23:51:03', 1325433063839, N'michael', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/01/01', N'23:51:54', 1325433114152, N'ken', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/01/01', N'23:53:16', 1325433196449, N'rorita', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/01/01', N'23:53:20', 1325433200730, N'rorita', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2012/01/01', N'23:53:25', 1325433205277, N'rorita', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/01/01', N'23:53:31', 1325433211761, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/01/01', N'23:54:54', 1325433294449, N'ken', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2012/01/03', N'01:18:01', 1325524681792, N'ariel', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/01/03', N'01:21:34', 1325524894542, N'ariel', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/01/03', N'01:21:49', 1325524909042, N'ariel', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511135', 1, N'最高樓', N'1319771510978_1', N'2012/01/09', N'15:16:03', 1326093363062, N'ariel', N'閱讀文件索引卡最高樓', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511072', 1, N'各部門KM優先議題彙整', N'1319771510978_1', N'2012/01/09', N'15:16:46', 1326093406000, N'ariel', N'閱讀文件索引卡各部門KM優先議題彙整', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/01/09', N'15:19:18', 1326093558625, N'michael', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/01/09', N'15:19:37', 1326093577375, N'michael', N'下載原始檔案 安控:/certified/1314193934156_1/1323226933500/1/main/hsbc.pdf', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/01/11', N'16:25:17', 1326270317171, N'ariel', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/01/12', N'20:19:29', 1326370769750, N'hwtop', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/02/08', N'12:15:51', 1328674551312, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/02/20', N'14:00:44', 1329717644468, N'hwtop', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413894187', 1, N'歐盟食品接觸的塑膠法規  (育宗)', N'1314375523859_1', N'2012/02/20', N'14:01:28', 1329717688218, N'hwtop', N'閱讀文件索引卡歐盟食品接觸的塑膠法規  (育宗)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2012/02/20', N'14:01:41', 1329717701000, N'hwtop', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/02/20', N'14:01:53', 1329717713718, N'hwtop', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/02/20', N'14:02:20', 1329717740265, N'hwtop', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/02/20', N'14:03:16', 1329717796656, N'hwtop', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795814541', 1, N'FSS開發產結合測試報告  （ 2011. 10.24 r2)', N'1314375523859_1', N'2012/02/20', N'15:54:16', 1329724456968, N'hwtop', N'閱讀文件索引卡FSS開發產結合測試報告  （ 2011. 10.24 r2)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2011/12/31', N'12:43:27', 1325306607308, N'rorita', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511541', 1, N'組織圖', N'1319771511197_1', N'2011/12/31', N'12:43:59', 1325306639824, N'rorita', N'閱讀文件索引卡組織圖', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2011/12/31', N'12:44:30', 1325306670074, N'rorita', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13197715101194', 1, N'專案執行小組人員名單', N'1319771510103_1', N'2011/12/31', N'12:45:57', 1325306757011, N'rorita', N'閱讀文件索引卡專案執行小組人員名單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2011/12/31', N'13:05:48', 1325307948011, N'ken', N'閱讀文件索引卡新食品級   靜電劑 （U 203 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511400', 1, N'2012-2014總策略規劃', N'1319771511197_1', N'2011/12/31', N'13:06:04', 1325307964121, N'ken', N'閱讀文件索引卡2012-2014總策略規劃', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2011/12/31', N'13:07:36', 1325308056761, N'ken', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/01/03', N'00:05:43', 1325520343230, N'ken', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/02/20', N'15:55:36', 1329724536968, N'hwtop', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/02/21', N'15:03:44', 1329807824171, N'ariel', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/02/21', N'15:04:03', 1329807843109, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/02/21', N'15:05:04', 1329807904093, N'ariel', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511135', 1, N'最高樓', N'1319771510978_1', N'2012/02/21', N'15:05:13', 1329807913953, N'ariel', N'閱讀文件索引卡最高樓', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2012/02/21', N'15:05:23', 1329807923000, N'ariel', N'閱讀文件索引卡新食品級   靜電劑 （U 203 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511072', 1, N'各部門KM優先議題彙整', N'1319771510978_1', N'2012/02/21', N'15:05:50', 1329807950593, N'ariel', N'閱讀文件索引卡各部門KM優先議題彙整', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511541', 1, N'組織圖', N'1319771511197_1', N'2012/02/21', N'15:06:03', 1329807963437, N'ariel', N'閱讀文件索引卡組織圖', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808363359', 1, N'REACH report', N'1314193934156_1', N'2012/02/21', N'15:16:44', 1329808604187, N'michael', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808363359', 1, N'REACH report', N'1314193934156_1', N'2012/02/21', N'15:17:02', 1329808622000, N'michael', N'閱讀文件索引卡REACH report', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808363359', 1, N'REACH report', N'1314193934156_1', N'2012/02/21', N'15:48:37', 1329810517468, N'michael', N'閱讀文件索引卡REACH report', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/02/21', N'16:18:45', 1329812325578, N'michael', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/02/22', N'15:58:09', 1329897489301, N'michael', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/02/22', N'15:58:18', 1329897498567, N'michael', N'下載可列印PDF 安控:\temp\1314193934156_1\1324454319619\1\main\1324454319619_1_0.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/02/22', N'16:20:59', 1329898859208, N'rorita', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/02/22', N'16:21:27', 1329898887833, N'rorita', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/02/22', N'17:34:06', 1329903246019, N'ariel', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/02/22', N'17:35:47', 1329903347801, N'ariel', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808363359', 1, N'REACH report', N'1314193934156_1', N'2012/02/22', N'17:36:09', 1329903369176, N'ariel', N'閱讀文件索引卡REACH report', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/02/22', N'17:38:54', 1329903534957, N'ariel', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/02/22', N'17:42:09', 1329903729644, N'ariel', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/02/22', N'17:42:13', 1329903733004, N'ariel', N'開啟檔案(安控):/certified/1314193934156_1/1324454319619/1/main/Test.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/02/22', N'17:42:31', 1329903751098, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/02/22', N'17:42:39', 1329903759332, N'ariel', N'開啟檔案(安控):/certified/1314193877640_1/1322622489062/1/main/eKM4.6_快速導覽_建置eKM.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/02/22', N'17:43:26', 1329903806738, N'ariel', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/02/22', N'17:43:30', 1329903810707, N'ariel', N'開啟檔案(安控):/certified/1314193934156_1/1323226933500/1/main/hsbc.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2012/02/22', N'17:44:30', 1329903870066, N'ariel', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2012/02/22', N'17:44:39', 1329903879457, N'ariel', N'下載不可列印PDF 安控:\temp\1314375523859_1\1319793247260\1\main\1319793247260_1_0.doc.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2012/02/22', N'17:44:49', 1329903889316, N'ariel', N'下載原始檔案 安控:/certified/1314375523859_1/1319793247260/1/main/廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329903967129', 1, N'test excel', N'1314193897718_1', N'2012/02/22', N'17:48:57', 1329904137863, N'ariel', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/02/24', N'16:05:32', 1330070732051, N'michael', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 2, N'文件管制', N'1314193877640_1', N'2012/02/24', N'16:09:10', 1330070950832, N'michael', N'啟動修訂文件流程', N'doc', N'003')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322619283109', 1, N'錄', N'1314193934156_1', N'2012/02/26', N'00:19:38', 1330186778473, N'eipadmin', N'刪除文件', N'doc', N'014')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/02', N'18:01:16', 1330682476859, N'ariel', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/03/02', N'18:01:46', 1330682506391, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795814541', 1, N'FSS開發產結合測試報告  （ 2011. 10.24 r2)', N'1314375523859_1', N'2012/02/20', N'17:17:59', 1329729479375, N'michael', N'閱讀文件索引卡FSS開發產結合測試報告  （ 2011. 10.24 r2)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/02/20', N'17:18:25', 1329729505531, N'michael', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/02/20', N'17:18:40', 1329729520406, N'michael', N'開啟檔案(安控):/certified/1314193934156_1/1324454319619/1/main/Test.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/02/20', N'17:18:46', 1329729526281, N'michael', N'下載可列印PDF 安控:\temp\1314193934156_1\1324454319619\1\main\1324454319619_1_0.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/02/21', N'15:28:24', 1329809304796, N'michael', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/02/22', N'15:54:47', 1329897287880, N'michael', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/02/22', N'15:55:36', 1329897336848, N'michael', N'下載原始檔案 安控:/certified/1314193877640_1/1329808871437/1/main/Test.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808363359', 1, N'REACH report', N'1314193934156_1', N'2012/02/22', N'15:59:51', 1329897591583, N'michael', N'閱讀文件索引卡REACH report', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/02/22', N'17:59:28', 1329904768488, N'april', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/02/22', N'17:59:37', 1329904777082, N'april', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/02/22', N'18:01:06', 1329904866363, N'april', N'下載原始檔案 安控:/certified/1314193877640_1/1329904647426/1/main/新增Microsoft Office Excel 工作表.xls', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/02/22', N'18:03:00', 1329904980426, N'april', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/02/22', N'18:03:28', 1329905008613, N'april', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/02/22', N'18:04:08', 1329905048566, N'april', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/02/22', N'18:04:26', 1329905066519, N'april', N'下載原始檔案 安控:/certified/1314193877640_1/1329904647426/1/main/新增Microsoft Office Excel 工作表.xls', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/02/22', N'18:05:12', 1329905112113, N'april', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/02/22', N'18:06:07', 1329905167832, N'april', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/02/22', N'18:06:27', 1329905187301, N'april', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/02/22', N'18:06:30', 1329905190738, N'april', N'開啟檔案(安控):/certified/1314193877640_1/1322622489062/1/main/eKM4.6_快速導覽_建置eKM.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/02/22', N'18:06:42', 1329905202051, N'april', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/02/22', N'18:06:45', 1329905205098, N'april', N'開啟檔案(安控):/certified/1314193934156_1/1323226933500/1/main/hsbc.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/02/22', N'18:06:54', 1329905214098, N'april', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/02/22', N'18:07:09', 1329905229035, N'april', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/02/22', N'18:07:15', 1329905235988, N'april', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/02/22', N'18:07:19', 1329905239035, N'april', N'開啟檔案(安控):/certified/1314193934156_1/1323226933500/1/main/hsbc.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2012/02/22', N'18:07:35', 1329905255269, N'april', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2012/02/22', N'18:07:38', 1329905258629, N'april', N'下載不可列印PDF 安控:\temp\1314375524421_1\1319791140525\1\main\1319791140525_1_0.doc.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2012/02/22', N'18:07:43', 1329905263644, N'april', N'開啟檔案(安控):/certified/1314375524421_1/1319791140525/1/main/帶電現象的測定方法  (環琦).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/02/22', N'18:07:52', 1329905272754, N'april', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/02', N'17:55:27', 1330682127703, N'ariel', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/02', N'17:55:44', 1330682144859, N'ariel', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/02', N'17:57:24', 1330682244422, N'ariel', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/02', N'17:59:24', 1330682364781, N'ariel', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2012/02/22', N'17:45:09', 1329903909285, N'ariel', N'開啟檔案(安控):/certified/1314375523859_1/1319793247260/1/main/廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13197715101194', 1, N'專案執行小組人員名單', N'1319771510103_1', N'2012/02/22', N'17:45:48', 1329903948644, N'ariel', N'閱讀文件索引卡專案執行小組人員名單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2012/02/22', N'17:50:57', 1329904257957, N'ariel', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2012/02/22', N'17:51:02', 1329904262629, N'ariel', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/02/22', N'17:51:15', 1329904275926, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2012/02/22', N'17:51:32', 1329904292676, N'ariel', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511541', 1, N'組織圖', N'1319771511197_1', N'2012/02/22', N'17:51:39', 1329904299379, N'ariel', N'閱讀文件索引卡組織圖', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795022072', 1, N'FSS  抗靜電結合測試開發會議  (10  21)', N'1314375523859_1', N'2012/02/22', N'17:51:44', 1329904304551, N'ariel', N'閱讀文件索引卡FSS  抗靜電結合測試開發會議  (10  21)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13197715101194', 1, N'專案執行小組人員名單', N'1319771510103_1', N'2012/02/22', N'17:51:49', 1329904309769, N'ariel', N'閱讀文件索引卡專案執行小組人員名單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418228562', 1, N'緩衝包裝材料與環保問題', N'1314375524265_1', N'2012/02/22', N'17:51:54', 1329904314394, N'ariel', N'閱讀文件索引卡緩衝包裝材料與環保問題', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/02/22', N'17:52:03', 1329904323926, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511135', 1, N'最高樓', N'1319771510978_1', N'2012/02/22', N'17:52:18', 1329904338269, N'ariel', N'閱讀文件索引卡最高樓', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511478', 1, N'人員離職率2009-2011', N'1319771511197_1', N'2012/02/22', N'17:52:23', 1329904343551, N'ariel', N'閱讀文件索引卡人員離職率2009-2011', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808363359', 1, N'REACH report', N'1314193934156_1', N'2012/02/22', N'17:52:30', 1329904350519, N'ariel', N'閱讀文件索引卡REACH report', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/03/02', N'17:59:40', 1330682380750, N'ariel', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319790969025', 1, N'新食品級靜電劑 （符合UF)', N'1314375524421_1', N'2012/03/08', N'17:49:06', 1331200146092, N'michael', N'閱讀文件索引卡新食品級靜電劑 （符合UF)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319790969025', 1, N'新食品級靜電劑 （符合UF)', N'1314375524421_1', N'2012/03/08', N'17:49:35', 1331200175403, N'michael', N'閱讀文件索引卡新食品級靜電劑 （符合UF)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319790969025', 1, N'新食品級靜電劑 （符合UF)', N'1314375524421_1', N'2012/03/08', N'17:50:54', 1331200254821, N'michael', N'閱讀文件索引卡新食品級靜電劑 （符合UF)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331274095668', 1, N'test', N'1314193934156_1', N'2012/03/09', N'14:22:40', 1331274160449, N'eipadmin', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/03/12', N'17:21:08', 1331544068448, N'michael', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/03/13', N'09:40:15', 1331602815230, N'april', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/13', N'10:26:40', 1331605600402, N'ariel', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/13', N'10:27:15', 1331605635089, N'ariel', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/13', N'14:37:58', 1331620678683, N'rorita', N'閱讀文件索引卡瘦肉精', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/13', N'14:39:01', 1331620741183, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1331615473667/1/main/衛生署公布含肉品稽查結果.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/13', N'14:40:28', 1331620828542, N'ariel', N'下載原始檔案 安控:/certified/1314193877640_1/1330682037641/1/main/轉單.xls', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/13', N'14:40:51', 1331620851527, N'ariel', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/13', N'14:43:09', 1331620989480, N'ariel', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/13', N'14:43:15', 1331620995183, N'ariel', N'開啟檔案(安控):/certified/1314193877640_1/1329808871437/1/main/Test.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/13', N'14:43:30', 1331621010620, N'ariel', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331618519448', 1, N'週報', N'1314193934156_1', N'2012/03/13', N'15:48:53', 1331624933277, N'ariel', N'閱讀文件索引卡週報', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331618519448', 1, N'週報', N'1314193934156_1', N'2012/03/13', N'15:49:05', 1331624945261, N'ariel', N'開啟檔案(安控):/certified/1314193934156_1/1331618519448/1/main/週報.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/13', N'15:57:48', 1331625468839, N'ariel', N'閱讀文件索引卡瘦肉精', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 1, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/13', N'17:06:38', 1331629598323, N'ariel', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 1, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/13', N'17:06:42', 1331629602417, N'ariel', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 1, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/13', N'17:07:12', 1331629632323, N'ariel', N'下載原始檔案 安控:/certified/1314193934156_1/1331629525652/1/main/瘦肉精的危害及副作用.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/03/02', N'18:01:50', 1330682510781, N'ariel', N'開啟檔案(安控):/certified/1314193877640_1/1322622489062/1/main/eKM4.6_快速導覽_建置eKM.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/02', N'18:02:00', 1330682520859, N'ariel', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/02', N'18:02:06', 1330682526531, N'ariel', N'下載原始檔案 安控:/certified/1314193877640_1/1330682037641/1/main/轉單.xls', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/02', N'18:03:43', 1330682623906, N'april', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/03/02', N'18:04:02', 1330682642016, N'april', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/03/02', N'18:04:30', 1330682670141, N'april', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/03/02', N'18:04:33', 1330682673125, N'april', N'開啟檔案(安控):/certified/1314193934156_1/1324454319619/1/main/Test.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2012/03/02', N'18:04:41', 1330682681609, N'april', N'閱讀文件索引卡FSS 小量產計劃會議  （10.26)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795937666', 1, N'FSS 小量產計劃會議  （10.26)', N'1314375523859_1', N'2012/03/02', N'18:04:46', 1330682686531, N'april', N'開啟檔案(安控):/certified/1314375523859_1/1319795937666/1/main/FSS 小量產計劃會議  （10.26).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/02', N'18:04:53', 1330682693312, N'april', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330900863391', 1, N'tst', N'', N'2012/03/05', N'06:41:40', 1330900900969, N'eipadmin', N'永久刪除文件', N'doc', N'015')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/06', N'10:38:10', 1331001490109, N'ariel', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/06', N'10:40:14', 1331001614500, N'ariel', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/06', N'10:40:31', 1331001631734, N'michael', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/06', N'10:40:56', 1331001656250, N'michael', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/03/06', N'10:43:16', 1331001796891, N'rorita', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/03/06', N'10:43:22', 1331001802031, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1323226933500/1/main/hsbc.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/03/06', N'10:43:39', 1331001819453, N'rorita', N'下載不可列印PDF 安控:\temp\1314193934156_1\1323226933500\1\main\1323226933500_1_0.pdf.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/06', N'10:43:54', 1331001834109, N'rorita', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/06', N'10:44:42', 1331001882953, N'rorita', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/03/06', N'10:44:56', 1331001896187, N'rorita', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/03/06', N'10:45:04', 1331001904078, N'rorita', N'下載可列印PDF 安控:\temp\1314193934156_1\1323226933500\1\main\1323226933500_1_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2012/03/06', N'10:45:33', 1331001933141, N'rorita', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2012/03/06', N'10:45:38', 1331001938266, N'rorita', N'開啟檔案(安控):/certified/1314375524421_1/1319791140525/1/main/帶電現象的測定方法  (環琦).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2012/03/06', N'10:45:38', 1331001938469, N'rorita', N'開啟檔案(安控):/certified/1314375524421_1/1319791140525/1/main/帶電現象的測定方法  (環琦).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2012/03/06', N'10:45:45', 1331001945828, N'rorita', N'下載不可列印PDF 安控:\temp\1314375524421_1\1319791140525\1\main\1319791140525_1_0.doc.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2012/03/06', N'10:45:56', 1331001956922, N'rorita', N'下載不可列印PDF 安控:\temp\1314375524421_1\1319791140525\1\main\1319791140525_1_0.doc.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2012/03/06', N'10:46:26', 1331001986609, N'rorita', N'下載可列印PDF 安控:\temp\1314375524421_1\1319791140525\1\main\1319791140525_1_0.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2012/03/06', N'10:47:12', 1331002032281, N'rorita', N'下載原始檔案 安控:/certified/1314375524421_1/1319791140525/1/main/帶電現象的測定方法  (環琦).doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/03/06', N'10:49:10', 1331002150375, N'ariel', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/03/06', N'10:49:16', 1331002156562, N'ariel', N'開啟檔案(安控):/certified/1314193934156_1/1324454319619/1/main/Test.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/06', N'10:50:00', 1331002200828, N'michael', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/03/06', N'10:58:12', 1331002692703, N'michael', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/06', N'11:06:30', 1331003190812, N'michael', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2012/03/06', N'11:07:05', 1331003225719, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2012/03/06', N'11:07:23', 1331003243578, N'michael', N'閱讀文件索引卡設備管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/06', N'11:07:31', 1331003251812, N'michael', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13197715101194', 1, N'專案執行小組人員名單', N'1319771510103_1', N'2012/03/06', N'11:07:45', 1331003265875, N'michael', N'閱讀文件索引卡專案執行小組人員名單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13197715101194', 1, N'專案執行小組人員名單', N'1319771510103_1', N'2012/03/06', N'11:07:47', 1331003267547, N'michael', N'閱讀文件索引卡專案執行小組人員名單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511072', 1, N'各部門KM優先議題彙整', N'1319771510978_1', N'2012/03/06', N'11:08:14', 1331003294031, N'michael', N'閱讀文件索引卡各部門KM優先議題彙整', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511072', 1, N'各部門KM優先議題彙整', N'1319771510978_1', N'2012/03/06', N'11:08:28', 1331003308906, N'michael', N'下載原始檔案 安控:/certified/1319771510978_1/1319771511072/1/main/各部門KM優先議題彙整.pptx', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/06', N'11:31:29', 1331004689375, N'michael', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331274095668', 1, N'test', N'1314193934156_1', N'2012/03/09', N'14:22:55', 1331274175465, N'eipadmin', N'刪除文件', N'doc', N'014')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 1, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/13', N'17:07:54', 1331629674823, N'ariel', N'開啟檔案(安控):/certified/1314193934156_1/1331629525652/1/main/瘦肉精的危害及副作用.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 1, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/13', N'17:08:46', 1331629726527, N'ariel', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706104230', 1, N'EFM TEST', N'1319771509338_1', N'2012/03/14', N'14:22:58', 1331706178214, N'ariel', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706104230', 1, N'EFM TEST', N'1319771509338_1', N'2012/03/14', N'14:23:07', 1331706187714, N'ariel', N'閱讀文件索引卡EFM TEST', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706104230', 1, N'EFM TEST', N'1319771509338_1', N'2012/03/14', N'14:23:37', 1331706217089, N'ariel', N'下載原始檔案 安控:/certified/1319771509338_1/1331706104230/1/main/123.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706104230', 1, N'EFM TEST', N'1319771509338_1', N'2012/03/14', N'14:24:11', 1331706251839, N'ariel', N'下載可列印PDF 安控:\temp\1319771509338_1\1331706104230\1\main\1331706104230_1_0.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706104230', 1, N'EFM TEST', N'1319771509338_1', N'2012/03/14', N'14:26:08', 1331706368902, N'ariel', N'開啟檔案(安控):/certified/1319771509338_1/1331706104230/1/main/123.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706635667', 1, N'pdf efm', N'1314193934156_1', N'2012/03/14', N'14:32:03', 1331706723183, N'ariel', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/14', N'17:55:32', 1331718932605, N'ariel', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/14', N'17:55:44', 1331718944198, N'ariel', N'開啟檔案(安控):/certified/1314193877640_1/1329808871437/1/main/Test.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/14', N'17:56:02', 1331718962339, N'ariel', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/16', N'04:36:51', 1331843811674, N'ken', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/19', N'16:21:31', 1332145291768, N'michael', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193897718_1', N'2012/03/19', N'16:26:37', 1332145597314, N'michael', N'修改分類名稱:共享文件->ISO二階文件', N'category', N'103')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332145633752', 1, N'特採程序', N'1314193897718_1', N'2012/03/19', N'16:29:19', 1332145759893, N'michael', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332145633752', 1, N'特採程序', N'1314193897718_1', N'2012/03/19', N'16:30:00', 1332145800861, N'michael', N'閱讀文件索引卡特採程序', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706635667', 1, N'pdf efm', N'1314193934156_1', N'2012/03/19', N'16:40:35', 1332146435689, N'michael', N'閱讀文件索引卡pdf efm', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/19', N'16:40:42', 1332146442424, N'michael', N'閱讀文件索引卡瘦肉精', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/19', N'04:42:08', 1332146528830, N'michael', N'啟動新增文件流程', N'doc', N'010')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/19', N'16:53:36', 1332147216830, N'michael', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/03/19', N'16:54:04', 1332147244705, N'michael', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808363359', 1, N'REACH report', N'1314193934156_1', N'2012/03/19', N'16:57:59', 1332147479736, N'michael', N'閱讀文件索引卡REACH report', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332148574768', 1, N'IPQC', N'1314193934156_1', N'2012/03/19', N'17:17:18', 1332148638549, N'rorita', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332148574768', 1, N'IPQC', N'1314193934156_1', N'2012/03/19', N'17:17:37', 1332148657424, N'rorita', N'閱讀文件索引卡IPQC', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332148676549', 1, N'IQC', N'1314193934156_1', N'2012/03/19', N'17:19:14', 1332148754330, N'rorita', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/05', N'08:50:16', 1333587016074, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/05', N'08:50:20', 1333587020137, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/13330797738322/1/main/(品保課0214)製程失效模式與效應分析.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/04/05', N'16:30:06', 1333614606642, N'michael', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/04/05', N'16:30:17', 1333614617159, N'michael', N'開啟檔案(安控):/certified/1314193877640_1/1329808871437/1/main/Test.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:31:42', 1333614702969, N'michael', N'閱讀文件索引卡預扣庫存作法說明', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:31:45', 1333614705548, N'michael', N'開啟檔案(安控):/certified/1314375524781_1/1333614506611/1/main/預扣庫存作法說明.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:31:54', 1333614714409, N'michael', N'開啟檔案(安控):/certified/1314375524781_1/1333614506611/1/main/預扣庫存作法說明.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:32:16', 1333614736193, N'michael', N'開啟檔案(安控):/certified/1314375524781_1/1333614506611/1/main/預扣庫存作法說明.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:32:32', 1333614752602, N'michael', N'閱讀文件索引卡預扣庫存作法說明', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:32:35', 1333614755759, N'michael', N'開啟檔案(安控):/certified/1314375524781_1/1333614506611/1/main/預扣庫存作法說明.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:33:07', 1333614787201, N'michael', N'閱讀文件索引卡預扣庫存作法說明', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:33:10', 1333614790139, N'michael', N'開啟檔案(安控):/certified/1314375524781_1/1333614506611/1/main/預扣庫存作法說明.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614132866', 1, N'TS-16949樣品全功能表', N'1333079773801_1', N'2012/04/05', N'16:33:20', 1333614800937, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614132866', 1, N'TS-16949樣品全功能表', N'1333079773801_1', N'2012/04/05', N'16:33:23', 1333614803547, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/1333614132866/1/main/TS-16949樣品全功能表200904.xls', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:36:34', 1333614994092, N'michael', N'閱讀文件索引卡預扣庫存作法說明', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:36:37', 1333614997811, N'michael', N'開啟檔案(安控):/certified/1314375524781_1/1333614506611/1/main/預扣庫存作法說明.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:37:40', 1333615060133, N'michael', N'閱讀文件索引卡預扣庫存作法說明', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:37:45', 1333615065072, N'michael', N'閱讀文件索引卡預扣庫存作法說明', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:37:47', 1333615067510, N'michael', N'開啟檔案(安控):/certified/1314375524781_1/1333614506611/1/main/預扣庫存作法說明.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614132866', 1, N'TS-16949樣品全功能表', N'1333079773801_1', N'2012/04/05', N'16:37:52', 1333615072917, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614132866', 1, N'TS-16949樣品全功能表', N'1333079773801_1', N'2012/04/05', N'16:37:59', 1333615079074, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/1333614132866/1/main/TS-16949樣品全功能表200904.xls', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614132866', 1, N'TS-16949樣品全功能表', N'1333079773801_1', N'2012/04/05', N'16:40:23', 1333615223705, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:40:43', 1333615243099, N'michael', N'閱讀文件索引卡預扣庫存作法說明', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:42:54', 1333615374633, N'ariel', N'開啟檔案(安控):/certified/1314375524781_1/1333614506611/1/main/預扣庫存作法說明.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:42:55', 1333615375384, N'michael', N'閱讀文件索引卡預扣庫存作法說明', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:42:59', 1333615379040, N'michael', N'開啟檔案(安控):/certified/1314375524781_1/1333614506611/1/main/預扣庫存作法說明.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:43:01', 1333615381900, N'ariel', N'閱讀文件索引卡預扣庫存作法說明', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:43:04', 1333615384760, N'ariel', N'開啟檔案(安控):/certified/1314375524781_1/1333614506611/1/main/預扣庫存作法說明.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614132866', 1, N'TS-16949樣品全功能表', N'1333079773801_1', N'2012/04/05', N'16:43:09', 1333615389339, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614132866', 1, N'TS-16949樣品全功能表', N'1333079773801_1', N'2012/04/05', N'16:43:09', 1333615389667, N'ariel', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614132866', 1, N'TS-16949樣品全功能表', N'1333079773801_1', N'2012/04/05', N'16:43:12', 1333615392339, N'ariel', N'開啟檔案(安控):/certified/1333079773801_1/1333614132866/1/main/TS-16949樣品全功能表200904.xls', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614132866', 1, N'TS-16949樣品全功能表', N'1333079773801_1', N'2012/04/05', N'16:43:13', 1333615393402, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/1333614132866/1/main/TS-16949樣品全功能表200904.xls', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614132866', 1, N'TS-16949樣品全功能表', N'1333079773801_1', N'2012/04/05', N'16:46:35', 1333615595210, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/1333614132866/1/main/TS-16949樣品全功能表200904.xls', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 2, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/04/06', N'17:44:52', 1333705492680, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332148574768', 1, N'IPQC', N'1314193934156_1', N'2012/04/06', N'17:45:31', 1333705531836, N'michael', N'閱讀文件索引卡IPQC', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077091887', 1, N'2011鼎新電子報_個資法', N'1333077091731_1', N'2012/04/06', N'17:46:23', 1333705583196, N'michael', N'閱讀文件索引卡2011鼎新電子報_個資法', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077091887', 1, N'2011鼎新電子報_個資法', N'1333077091731_1', N'2012/04/06', N'17:46:31', 1333705591039, N'michael', N'開啟檔案(安控):/certified/1333077091731_1/1333077091887/1/main/2011鼎新電子報_個資法.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077091887', 1, N'2011鼎新電子報_個資法', N'1333077091731_1', N'2012/04/06', N'17:46:52', 1333705612852, N'michael', N'下載可列印PDF 安控:\temp\1333077091731_1\1333077091887\1\main\1333077091887_1_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511072', 1, N'各部門KM優先議題彙整', N'1319771510978_1', N'2012/04/06', N'17:47:32', 1333705652492, N'michael', N'閱讀文件索引卡各部門KM優先議題彙整', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079773957', 1, N'111005福保FMEA講(淡底色)', N'1333079773801_1', N'2012/04/06', N'17:48:56', 1333705736196, N'michael', N'閱讀文件索引卡111005福保FMEA講(淡底色)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079773957', 1, N'111005福保FMEA講(淡底色)', N'1333079773801_1', N'2012/04/06', N'17:49:33', 1333705773446, N'michael', N'閱讀文件索引卡111005福保FMEA講(淡底色)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/06', N'17:50:01', 1333705801446, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/06', N'17:50:12', 1333705812539, N'michael', N'下載原始檔案 安控:/certified/1333079773801_1/13330797738322/1/main/(品保課0214)製程失效模式與效應分析.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079773957', 1, N'111005福保FMEA講(淡底色)', N'1333079773801_1', N'2012/04/06', N'17:50:50', 1333705850164, N'michael', N'下載原始檔案 安控:/certified/1333079773801_1/1333079773957/1/main/111005福保FMEA講(淡底色).ppt', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193897718_1', N'2012/04/07', N'06:11:21', 1333750281977, N'michael', N'修改分類名稱:ISO二階文件->知識管理', N'category', N'103')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193897718_1', N'2012/04/14', N'22:24:34', 1334413474500, N'rorita', N'修改分類名稱:知識管理->ISO二階文件', N'category', N'103')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334439551000', 1, N'SmartKMS系統功能架構', N'1314193934156_1', N'2012/04/15', N'05:49:03', 1334440143359, N'400403', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/05/08', N'05:12:04', 1336425124242, N'michael', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079775004', 1, N'Thumbs', N'1333079773801_1', N'2012/05/08', N'05:14:53', 1336425293523, N'michael', N'刪除文件', N'doc', N'014')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079775004', 1, N'Thumbs', N'1333079773801_1', N'2012/05/08', N'05:15:26', 1336425326601, N'michael', N'復原文件', N'doc', N'016')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413893578', 2, N'帶電現象的測定方法  (環琦)', N'1314375523859_1', N'2012/05/08', N'05:46:41', 1336427201414, N'michael', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079775004', 1, N'Thumbs', N'1333079773801_1', N'2012/05/08', N'05:55:05', 1336427705210, N'michael', N'永久刪除文件', N'doc', N'015')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077091559', 1, N'Thumbs', N'1333077089746_1', N'2012/05/08', N'05:55:19', 1336427719070, N'michael', N'復原文件', N'doc', N'016')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2012/05/08', N'05:59:46', 1336427986585, N'michael', N'閱讀文件索引卡Quanta Test222222222', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2012/05/08', N'06:00:25', 1336428025992, N'michael', N'閱讀文件索引卡Quanta Test222222222', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2012/05/08', N'06:00:52', 1336428052164, N'michael', N'閱讀文件索引卡Quanta Test222222222', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/05/16', N'18:55:45', 1337165745369, N'rorita', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440282156', 1, N'eKM知識管理平台', N'1314193934156_1', N'2012/05/16', N'18:56:08', 1337165768197, N'rorita', N'閱讀文件索引卡eKM知識管理平台', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440282156', 1, N'eKM知識管理平台', N'1314193934156_1', N'2012/05/16', N'18:56:53', 1337165813932, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1334440282156/1/main/eKM4.7_Datasheet.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440282156', 1, N'eKM知識管理平台', N'1314193934156_1', N'2012/05/16', N'18:57:06', 1337165826526, N'rorita', N'下載可列印PDF 安控:\temp\1314193934156_1\1334440282156\1\main\1334440282156_1_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333750559805', 1, N'叡揚資訊(Vital KM)', N'1314193897718_1', N'2012/04/07', N'06:21:37', 1333750897555, N'400403', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333750559805', 1, N'叡揚資訊(Vital KM)', N'1314193897718_1', N'2012/04/07', N'06:23:53', 1333751033274, N'400403', N'閱讀文件索引卡叡揚資訊(Vital KM)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440282156', 1, N'eKM知識管理平台', N'1314193934156_1', N'2012/04/15', N'05:56:01', 1334440561171, N'400403', N'閱讀文件索引卡eKM知識管理平台', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 1, N'123', N'1314193934156_1', N'2012/05/28', N'13:46:08', 1338183968977, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 1, N'123', N'1314193934156_1', N'2012/05/30', N'11:44:28', 1338349468759, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 1, N'123', N'1314193934156_1', N'2012/05/30', N'11:47:41', 1338349661477, N'rorita', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 1, N'123', N'1314193934156_1', N'2012/05/30', N'11:47:50', 1338349670712, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 1, N'123', N'1314193934156_1', N'2012/05/30', N'11:47:58', 1338349678884, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/05/30', N'11:49:00', 1338349740556, N'rorita', N'修訂文件', N'doc', N'004')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 1, N'123', N'1314193934156_1', N'2012/05/30', N'11:49:06', 1338349746509, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/05/30', N'11:49:22', 1338349762212, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 1, N'123', N'1314193934156_1', N'2012/05/30', N'11:49:46', 1338349786915, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/05/30', N'11:49:56', 1338349796118, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/05/30', N'11:50:00', 1338349800368, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079774332', 1, N'FPU AK C 先期管制計畫(量產)(第二版))-20120215', N'1333079773801_1', N'2012/05/30', N'11:50:25', 1338349825165, N'rorita', N'閱讀文件索引卡FPU AK C 先期管制計畫(量產)(第二版))-20120215', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/05/30', N'11:50:48', 1338349848087, N'rorita', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/05/30', N'11:50:56', 1338349856962, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/05/30', N'11:51:03', 1338349863431, N'rorita', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/05/30', N'11:52:55', 1338349975477, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/05/30', N'11:53:13', 1338349993462, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795814541', 1, N'FSS開發產結合測試報告  （ 2011. 10.24 r2)', N'1314375523859_1', N'2012/05/31', N'10:29:20', 1338431360165, N'manage', N'閱讀文件索引卡FSS開發產結合測試報告  （ 2011. 10.24 r2)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/05/31', N'10:47:13', 1338432433040, N'manage', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/05', N'14:56:37', 1338879397593, N'eipadmin', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/05', N'14:56:41', 1338879401906, N'eipadmin', N'開啟檔案(安控):/certified/1314193934156_1/1338183726696/2/main/123PDF-1.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/06/05', N'14:56:51', 1338879411062, N'eipadmin', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/06/05', N'14:56:52', 1338879412734, N'eipadmin', N'開啟檔案(安控):/certified/1314193934156_1/1334440736515/1/main/KM知識管理.pptx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338879455437', 1, N'Bnews', N'1314193934156_1', N'2012/06/05', N'14:58:08', 1338879488640, N'eipadmin', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338879455437', 1, N'Bnews', N'1314193934156_1', N'2012/06/05', N'14:58:13', 1338879493234, N'eipadmin', N'閱讀文件索引卡Bnews', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338879455437', 1, N'Bnews', N'1314193934156_1', N'2012/06/05', N'14:59:09', 1338879549171, N'eipadmin', N'下載不可列印PDF 安控:\temp\1314193934156_1\1338879455437\1\main\1338879455437_1_0.txt.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338879455437', 1, N'Bnews', N'1314193934156_1', N'2012/06/05', N'14:59:14', 1338879554390, N'eipadmin', N'下載可列印PDF 安控:\temp\1314193934156_1\1338879455437\1\main\1338879455437_1_0.txt.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338879455437', 1, N'Bnews', N'1314193934156_1', N'2012/06/05', N'14:59:19', 1338879559343, N'eipadmin', N'開啟檔案(安控):/certified/1314193934156_1/1338879455437/1/main/Bnews.txt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338879455437', 1, N'Bnews', N'1314193934156_1', N'2012/06/05', N'14:59:46', 1338879586031, N'eipadmin', N'編輯文件', N'doc', N'005')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338887715484', 1, N'2011南山人壽年報', N'1319771509338_1', N'2012/06/05', N'17:16:27', 1338887787812, N'wendy', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'16:58:22', 1339405102218, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'18:37:08', 1339411028000, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'18:37:27', 1339411047562, N'rorita', N'下載可列印PDF 安控:\temp\1314193934156_1\1338183726696\2\main\1338183726696_2_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/03/12', N'17:22:43', 1331544163823, N'michael', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808363359', 1, N'REACH report', N'1314193934156_1', N'2012/03/12', N'17:23:08', 1331544188652, N'michael', N'閱讀文件索引卡REACH report', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/03/12', N'17:25:02', 1331544302886, N'ariel', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/12', N'17:26:23', 1331544383120, N'rorita', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/13', N'13:12:53', 1331615573152, N'ariel', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/13', N'13:13:11', 1331615591495, N'ariel', N'閱讀文件索引卡瘦肉精', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/13', N'13:38:38', 1331617118339, N'ariel', N'閱讀文件索引卡瘦肉精', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/13', N'14:01:08', 1331618468198, N'rorita', N'閱讀文件索引卡瘦肉精', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/13', N'14:01:25', 1331618485073, N'rorita', N'下載原始檔案 安控:/certified/1314193934156_1/1331615473667/1/main/衛生署公布含肉品稽查結果.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/13', N'14:01:51', 1331618511808, N'rorita', N'閱讀文件索引卡瘦肉精', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331618519448', 1, N'週報', N'1314193934156_1', N'2012/03/13', N'14:02:59', 1331618579808, N'rorita', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331618519448', 1, N'週報', N'1314193934156_1', N'2012/03/13', N'14:03:04', 1331618584011, N'rorita', N'閱讀文件索引卡週報', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/13', N'14:03:37', 1331618617402, N'rorita', N'閱讀文件索引卡瘦肉精', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331618519448', 1, N'週報', N'1314193934156_1', N'2012/03/13', N'14:03:45', 1331618625995, N'rorita', N'閱讀文件索引卡週報', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331618519448', 1, N'週報', N'1314193934156_1', N'2012/03/13', N'14:05:42', 1331618742058, N'rorita', N'閱讀文件索引卡週報', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/13', N'14:05:51', 1331618751589, N'rorita', N'閱讀文件索引卡瘦肉精', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808363359', 1, N'REACH report', N'1314193934156_1', N'2012/03/13', N'14:05:58', 1331618758105, N'rorita', N'閱讀文件索引卡REACH report', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/03/13', N'14:06:04', 1331618764527, N'rorita', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/03/13', N'14:06:06', 1331618766948, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1324454319619/1/main/Test.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/03/13', N'14:06:16', 1331618776730, N'rorita', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/03/13', N'14:06:19', 1331618779355, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1324454319619/1/main/Test.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/03/13', N'14:06:39', 1331618799011, N'rorita', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/03/13', N'14:06:41', 1331618801167, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1323226933500/1/main/hsbc.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/03/13', N'14:06:43', 1331618803527, N'rorita', N'下載不可列印PDF 安控:\temp\1314193934156_1\1324454319619\1\main\1324454319619_1_0.doc.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/03/13', N'14:06:48', 1331618808323, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/03/13', N'14:06:51', 1331618811667, N'rorita', N'開啟檔案(安控):/certified/1314193877640_1/1322622489062/1/main/eKM4.6_快速導覽_建置eKM.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2012/03/13', N'14:06:59', 1331618819870, N'rorita', N'閱讀文件索引卡Quanta Test222222222', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/13', N'14:07:39', 1331618859683, N'rorita', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/03/13', N'14:07:47', 1331618867058, N'rorita', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/03/13', N'14:07:49', 1331618869808, N'rorita', N'開啟檔案(安控):/certified/1314193877640_1/1329904647426/1/main/新增Microsoft Office Excel 工作表.xls', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/13', N'14:08:14', 1331618894855, N'rorita', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/13', N'14:08:19', 1331618899339, N'rorita', N'開啟檔案(安控):/certified/1314193877640_1/1329808871437/1/main/Test.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/03/13', N'14:08:26', 1331618906652, N'rorita', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/03/13', N'14:08:29', 1331618909277, N'rorita', N'開啟檔案(安控):/certified/1314193877640_1/1329904647426/1/main/新增Microsoft Office Excel 工作表.xls', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/13', N'14:08:39', 1331618919964, N'rorita', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/13', N'14:08:48', 1331618928839, N'rorita', N'閱讀文件索引卡瘦肉精', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/13', N'14:08:51', 1331618931323, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1331615473667/1/main/衛生署公布含肉品稽查結果.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331618519448', 1, N'週報', N'1314193934156_1', N'2012/03/13', N'14:08:57', 1331618937589, N'rorita', N'閱讀文件索引卡週報', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331618519448', 1, N'週報', N'1314193934156_1', N'2012/03/13', N'14:08:59', 1331618939902, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1331618519448/1/main/週報.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/13', N'14:09:05', 1331618945261, N'rorita', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/13', N'14:09:07', 1331618947995, N'rorita', N'開啟檔案(安控):/certified/1314193877640_1/1330682037641/1/main/轉單.xls', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/13', N'14:39:44', 1331620784261, N'ariel', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/13', N'14:39:47', 1331620787698, N'ariel', N'開啟檔案(安控):/certified/1314193877640_1/1330682037641/1/main/轉單.xls', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/13', N'14:39:53', 1331620793589, N'ariel', N'下載不可列印PDF 安控:\temp\1314193877640_1\1330682037641\1\main\1330682037641_1_0.xls.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/03/13', N'14:40:01', 1331620801605, N'rorita', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/03/13', N'14:41:55', 1331620915058, N'michael', N'閱讀文件索引卡test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329904647426', 1, N'test', N'1314193877640_1', N'2012/03/13', N'14:42:00', 1331620920995, N'michael', N'開啟檔案(安控):/certified/1314193877640_1/1329904647426/1/main/新增Microsoft Office Excel 工作表.xls', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/13', N'14:42:25', 1331620945105, N'michael', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/13', N'14:42:29', 1331620949636, N'michael', N'開啟檔案(安控):/certified/1314193877640_1/1330682037641/1/main/轉單.xls', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511135', 1, N'最高樓', N'1319771510978_1', N'2012/03/13', N'16:02:13', 1331625733245, N'rorita', N'閱讀文件索引卡最高樓', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/13', N'16:14:35', 1331626475792, N'ariel', N'閱讀文件索引卡瘦肉精', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/13', N'16:14:42', 1331626482370, N'ariel', N'開啟檔案(安控):/certified/1314193934156_1/1331615473667/1/main/衛生署公布含肉品稽查結果.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/13', N'16:15:17', 1331626517355, N'ariel', N'開啟檔案(安控):/certified/1314193934156_1/1331615473667/1/main/衛生署公布含肉品稽查結果.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/13', N'16:42:35', 1331628155464, N'ariel', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/13', N'16:42:43', 1331628163214, N'ariel', N'開啟檔案(安控):/certified/1314193877640_1/1329808871437/1/main/Test.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706388917', 1, N'pdf test', N'1319771509338_1', N'2012/03/14', N'14:29:05', 1331706545073, N'ariel', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706388917', 1, N'pdf test', N'1319771509338_1', N'2012/03/14', N'14:29:14', 1331706554605, N'ariel', N'閱讀文件索引卡pdf test', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706388917', 1, N'pdf test', N'1319771509338_1', N'2012/03/14', N'14:29:19', 1331706559902, N'ariel', N'下載不可列印PDF 安控:\temp\1319771509338_1\1331706388917\1\main\1331706388917_1_0.pdf.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706388917', 1, N'pdf test', N'1319771509338_1', N'2012/03/14', N'14:29:35', 1331706575573, N'ariel', N'下載可列印PDF 安控:\temp\1319771509338_1\1331706388917\1\main\1331706388917_1_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706388917', 1, N'pdf test', N'1319771509338_1', N'2012/03/14', N'14:29:43', 1331706583683, N'ariel', N'開啟檔案(安控):/certified/1319771509338_1/1331706388917/1/main/ZEMAX-WIN7.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706388917', 1, N'pdf test', N'1319771509338_1', N'2012/03/14', N'14:30:17', 1331706617902, N'ariel', N'文件廢止', N'doc', N'007')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706388917', 1, N'pdf test', N'1319771509338_1', N'2012/03/14', N'02:30:18', 1331706618042, N'ariel', N'啟動新增文件流程', N'doc', N'006')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/03/14', N'14:37:37', 1331707057120, N'ariel', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/03/14', N'14:37:53', 1331707073433, N'ariel', N'閱讀文件索引卡111', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/03/14', N'14:38:02', 1331707082667, N'ariel', N'開啟檔案(安控):/certified/1319771509338_1/1331706984808/1/attachments/ZEMAX-WIN7.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/03/14', N'14:38:20', 1331707100855, N'ariel', N'開啟檔案(安控):/certified/1319771509338_1/1331706984808/1/attachments/ZEMAX-WIN7.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/03/14', N'14:38:28', 1331707108089, N'ariel', N'下載不可列印PDF 安控:\temp\1319771509338_1\1331706984808\1\attachments\1331706984808_1_1.pdf.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 1, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/13', N'17:08:59', 1331629739542, N'ariel', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 1, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/13', N'17:09:53', 1331629793245, N'ariel', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/13', N'17:10:54', 1331629854120, N'ariel', N'修訂文件', N'doc', N'004')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706635667', 1, N'pdf efm', N'1314193934156_1', N'2012/03/14', N'14:33:07', 1331706787745, N'ariel', N'閱讀文件索引卡pdf efm', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706635667', 1, N'pdf efm', N'1314193934156_1', N'2012/03/14', N'14:33:26', 1331706806105, N'ariel', N'開啟檔案(安控):/certified/1314193934156_1/1331706635667/1/main/ZEMAX-WIN7.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706635667', 1, N'pdf efm', N'1314193934156_1', N'2012/03/14', N'14:33:38', 1331706818870, N'ariel', N'下載可列印PDF 安控:\temp\1314193934156_1\1331706635667\1\main\1331706635667_1_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706635667', 1, N'pdf efm', N'1314193934156_1', N'2012/03/14', N'14:33:49', 1331706829323, N'ariel', N'下載可列印PDF 安控:\temp\1314193934156_1\1331706635667\1\main\1331706635667_1_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706635667', 1, N'pdf efm', N'1314193934156_1', N'2012/03/14', N'14:34:02', 1331706842214, N'ariel', N'下載原始檔案 安控:/certified/1314193934156_1/1331706635667/1/main/ZEMAX-WIN7.pdf', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706635667', 1, N'pdf efm', N'1314193934156_1', N'2012/03/14', N'14:34:22', 1331706862183, N'ariel', N'閱讀文件索引卡pdf efm', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706635667', 1, N'pdf efm', N'1314193934156_1', N'2012/03/14', N'14:34:27', 1331706867120, N'ariel', N'開啟檔案(安控):/certified/1314193934156_1/1331706635667/1/main/ZEMAX-WIN7.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706635667', 1, N'pdf efm', N'1314193934156_1', N'2012/03/14', N'14:34:42', 1331706882073, N'ariel', N'下載原始檔案 安控:/certified/1314193934156_1/1331706635667/1/main/ZEMAX-WIN7.pdf', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706635667', 1, N'pdf efm', N'1314193934156_1', N'2012/03/14', N'14:35:07', 1331706907167, N'ariel', N'下載可列印PDF 安控:\temp\1314193934156_1\1331706635667\1\main\1331706635667_1_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706635667', 1, N'pdf efm', N'1314193934156_1', N'2012/03/14', N'02:36:16', 1331706976277, N'ariel', N'啟動新增文件流程', N'doc', N'006')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706104230', 1, N'EFM TEST', N'1319771509338_1', N'2012/03/14', N'16:38:13', 1331714293698, N'ariel', N'閱讀文件索引卡EFM TEST', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706104230', 1, N'EFM TEST', N'1319771509338_1', N'2012/03/14', N'16:38:20', 1331714300308, N'ariel', N'開啟檔案(安控):/certified/1319771509338_1/1331706104230/1/main/123.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/03/14', N'16:38:36', 1331714316948, N'ariel', N'閱讀文件索引卡111', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/03/14', N'16:38:42', 1331714322042, N'ariel', N'開啟檔案(安控):/certified/1319771509338_1/1331706984808/1/attachments/ZEMAX-WIN7.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/19', N'16:21:58', 1332145318346, N'michael', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/19', N'16:22:13', 1332145333299, N'michael', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332147353393', 1, N'IQC SPEC', N'1314193897718_1', N'2012/03/19', N'16:56:24', 1332147384861, N'michael', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332147500486', 1, N'OQC SPEC', N'1314193897718_1', N'2012/03/19', N'16:58:42', 1332147522455, N'michael', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706635667', 1, N'pdf efm', N'1314193934156_1', N'2012/03/19', N'17:01:59', 1332147719564, N'ariel', N'閱讀文件索引卡pdf efm', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808363359', 1, N'REACH report', N'1314193934156_1', N'2012/03/19', N'17:15:57', 1332148557361, N'rorita', N'閱讀文件索引卡REACH report', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332148676549', 1, N'IQC', N'1314193934156_1', N'2012/03/19', N'17:19:34', 1332148774986, N'rorita', N'閱讀文件索引卡IQC', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332148676549', 1, N'IQC', N'1314193934156_1', N'2012/03/22', N'14:57:45', 1332399465658, N'eipadmin', N'閱讀文件索引卡IQC', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/03/22', N'14:57:58', 1332399478986, N'eipadmin', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/03/22', N'14:58:06', 1332399486877, N'eipadmin', N'開啟檔案(安控):/certified/1314375523859_1/1314413292984/2/attachments/FSS 小量產計劃會議  （10.26).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/03/22', N'14:58:15', 1332399495986, N'eipadmin', N'開啟檔案(安控):/certified/1314375523859_1/1314413292984/2/attachments/FSS 小量產計劃會議  （10.26).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/03/22', N'14:58:23', 1332399503939, N'eipadmin', N'開啟檔案(安控):/certified/1314375523859_1/1314413292984/2/attachments/FSS 小量產計劃會議  （10.26).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332148676549', 1, N'IQC', N'1314193934156_1', N'2012/03/26', N'04:47:33', 1332708453405, N'ariel', N'閱讀文件索引卡IQC', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332148676549', 1, N'IQC', N'1314193934156_1', N'2012/03/26', N'04:47:49', 1332708469171, N'ariel', N'閱讀文件索引卡IQC', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706104230', 1, N'EFM TEST', N'1319771509338_1', N'2012/03/26', N'04:48:30', 1332708510890, N'ariel', N'閱讀文件索引卡EFM TEST', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/03/26', N'05:27:50', 1332710870640, N'rorita', N'閱讀文件索引卡111', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193934156_1', N'2012/03/26', N'05:39:12', 1332711552452, N'rorita', N'修改分類名稱:測試->產品', N'category', N'103')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511541', 1, N'組織圖', N'1319771511197_1', N'2012/03/26', N'05:46:31', 1332711991640, N'michael', N'閱讀文件索引卡組織圖', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511541', 1, N'組織圖', N'1319771511197_1', N'2012/03/26', N'05:46:41', 1332712001796, N'michael', N'閱讀文件索引卡組織圖', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/26', N'10:29:34', 1332728974405, N'ariel', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/26', N'10:33:51', 1332729231937, N'ariel', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2012/03/26', N'10:34:33', 1332729273124, N'ariel', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/26', N'11:00:37', 1332730837155, N'ariel', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 1, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/26', N'11:00:42', 1332730842171, N'ariel', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 1, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/26', N'11:00:51', 1332730851374, N'ariel', N'開啟檔案(安控):/certified/1314193934156_1/1331629525652/1/main/瘦肉精的危害及副作用win.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/26', N'11:33:28', 1332732808312, N'ariel', N'閱讀文件索引卡瘦肉精', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/26', N'11:33:40', 1332732820609, N'ariel', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/26', N'11:34:30', 1332732870702, N'ariel', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 1, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/26', N'11:34:56', 1332732896468, N'ariel', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 1, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/26', N'11:34:59', 1332732899077, N'ariel', N'開啟檔案(安控):/certified/1314193934156_1/1331629525652/1/main/瘦肉精的危害及副作用win.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 1, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/26', N'11:40:17', 1332733217859, N'ariel', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795022072', 1, N'FSS  抗靜電結合測試開發會議  (10  21)', N'1314375523859_1', N'2012/03/26', N'11:40:38', 1332733238577, N'ariel', N'閱讀文件索引卡FSS  抗靜電結合測試開發會議  (10  21)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/03/26', N'12:01:03', 1332734463234, N'ariel', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/03/26', N'12:01:12', 1332734472484, N'ariel', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/26', N'12:01:53', 1332734513046, N'ariel', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332226369893', 1, N'ISO Audit', N'1314193897718_1', N'2012/03/20', N'14:54:38', 1332226478393, N'michael', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332148676549', 1, N'IQC', N'1314193934156_1', N'2012/03/20', N'16:34:41', 1332232481314, N'michael', N'閱讀文件索引卡IQC', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2012/03/20', N'16:35:36', 1332232536627, N'michael', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/03/23', N'15:32:25', 1332487945030, N'ariel', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/03/23', N'15:32:45', 1332487965767, N'ariel', N'開啟檔案(安控):/certified/1314193877640_1/1322622489062/1/main/eKM4.6_快速導覽_建置eKM.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193934156_1', N'2012/03/26', N'05:38:27', 1332711507937, N'rorita', N'修改分類名稱:產品->測試', N'category', N'103')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332148676549', 1, N'IQC', N'1314193934156_1', N'2012/03/28', N'13:10:58', 1332911458890, N'michael', N'閱讀文件索引卡IQC', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332148676549', 1, N'IQC', N'1314193934156_1', N'2012/03/28', N'13:12:02', 1332911522687, N'michael', N'閱讀文件索引卡IQC', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/03/28', N'13:12:48', 1332911568405, N'michael', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/03/28', N'13:13:20', 1332911600140, N'michael', N'閱讀文件索引卡111', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/03/28', N'13:13:40', 1332911620843, N'michael', N'下載可列印PDF 安控:\temp\1319771509338_1\1331706984808\1\attachments\1331706984808_1_1.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/03/28', N'13:14:12', 1332911652530, N'michael', N'下載原始檔案 安控:/certified/1319771509338_1/1331706984808/1/main/123.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/03/28', N'13:29:53', 1332912593374, N'michael', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2012/03/28', N'13:30:53', 1332912653265, N'michael', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319791140525', 1, N'帶電現象的測定方法  (環琦)', N'1314375524421_1', N'2012/03/28', N'13:31:14', 1332912674265, N'michael', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/28', N'13:39:04', 1332913144671, N'ariel', N'閱讀文件索引卡瘦肉精', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/28', N'13:39:13', 1332913153499, N'ariel', N'下載可列印PDF 安控:\temp\1314193934156_1\1331615473667\1\main\1331615473667_1_0.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/03/28', N'13:39:37', 1332913177109, N'ariel', N'下載原始檔案 安控:/certified/1314193934156_1/1331615473667/1/main/衛生署公布含肉品稽查結果.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/03/28', N'13:59:52', 1332914392249, N'ariel', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2012/03/28', N'17:11:40', 1332925900921, N'michael', N'閱讀文件索引卡食品與塑料接觸安全要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/28', N'21:59:28', 1332943168734, N'michael', N'開啟檔案(安控):/certified/1314193934156_1/1331629525652/2/main/瘦肉精的危害及副作用win.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/29', N'04:58:36', 1332968316234, N'ariel', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193934156_1', N'2012/03/29', N'05:17:27', 1332969447765, N'michael', N'修改分類名稱:產品->班級', N'category', N'103')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'10:51:56', 1332989516874, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332942593968', 1, N'Tornado+Search+Package+v5.3_產品規格_20120120', N'1314193934156_1', N'2012/03/29', N'10:52:56', 1332989576468, N'michael', N'閱讀文件索引卡Tornado+Search+Package+v5.3_產品規格_20120120', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/03/29', N'10:53:07', 1332989587062, N'michael', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/03/29', N'10:53:10', 1332989590093, N'michael', N'開啟檔案(安控):/certified/1314193877640_1/1322622489062/1/main/eKM4.6_快速導覽_建置eKM.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/03/29', N'10:53:22', 1332989602234, N'michael', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/03/29', N'10:53:26', 1332989606015, N'michael', N'開啟檔案(安控):/certified/1314193877640_1/1322622489062/1/main/eKM4.6_快速導覽_建置eKM.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332942593968', 1, N'Tornado+Search+Package+v5.3_產品規格_20120120', N'1314193934156_1', N'2012/03/29', N'10:53:57', 1332989637921, N'michael', N'閱讀文件索引卡Tornado+Search+Package+v5.3_產品規格_20120120', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332148676549', 1, N'IQC', N'1314193934156_1', N'2012/03/29', N'10:54:09', 1332989649374, N'michael', N'閱讀文件索引卡IQC', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/03/29', N'10:54:22', 1332989662437, N'michael', N'閱讀文件索引卡111', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/29', N'10:54:31', 1332989671359, N'michael', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1330682037641', 1, N'轉單', N'1314193877640_1', N'2012/03/28', N'13:18:06', 1332911886984, N'michael', N'閱讀文件索引卡轉單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2012/03/28', N'21:45:06', 1332942306155, N'michael', N'閱讀文件索引卡小小酥皮月餅熱量 等同一個便當', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2012/03/28', N'21:45:43', 1332942343265, N'michael', N'開啟檔案(安控):/certified/1314193897718_1/1315552071921/1/main/月餅的熱量等同便當.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2012/03/28', N'21:46:01', 1332942361405, N'michael', N'下載原始檔案 安控:/certified/1314193897718_1/1315552071921/1/main/月餅的熱量等同便當.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/28', N'21:46:54', 1332942414187, N'michael', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/28', N'21:47:00', 1332942420109, N'michael', N'開啟檔案(安控):/certified/1314193934156_1/1331629525652/2/main/瘦肉精的危害及副作用win.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/28', N'21:47:45', 1332942465077, N'michael', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/28', N'21:48:23', 1332942503015, N'michael', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/28', N'21:48:49', 1332942529749, N'michael', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/03/28', N'21:49:39', 1332942579124, N'michael', N'閱讀文件索引卡111', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332942593968', 1, N'Tornado+Search+Package+v5.3_產品規格_20120120', N'1314193934156_1', N'2012/03/28', N'21:52:50', 1332942770874, N'michael', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332942593968', 1, N'Tornado+Search+Package+v5.3_產品規格_20120120', N'1314193934156_1', N'2012/03/28', N'21:53:22', 1332942802827, N'michael', N'閱讀文件索引卡Tornado+Search+Package+v5.3_產品規格_20120120', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332942593968', 1, N'Tornado+Search+Package+v5.3_產品規格_20120120', N'1314193934156_1', N'2012/03/28', N'21:56:36', 1332942996874, N'michael', N'閱讀文件索引卡Tornado+Search+Package+v5.3_產品規格_20120120', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/28', N'21:56:58', 1332943018515, N'michael', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193934156_1', N'2012/03/29', N'05:18:37', 1332969517468, N'michael', N'修改分類名稱:班級->產品', N'category', N'103')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'09:59:59', 1332986399249, N'michael', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'10:04:39', 1332986679546, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'10:06:18', 1332986778046, N'michael', N'下載原始檔案 安控:/certified/1314375523859_1/1332985831593/1/attachments/CP-08 製程管制與檢驗程序11.1顧問TS修改.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'10:06:34', 1332986794593, N'michael', N'下載原始檔案 安控:/certified/1314375523859_1/1332985831593/1/main/TS-16949樣品全功能表200904.xls', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'10:18:09', 1332987489421, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'10:18:48', 1332987528546, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'10:29:48', 1332988188202, N'michael', N'下載原始檔案 安控:/certified/1314375523859_1/1332985831593/1/main/TS-16949樣品全功能表200904.xls', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706104230', 1, N'EFM TEST', N'1319771509338_1', N'2012/03/29', N'10:56:36', 1332989796077, N'michael', N'開啟檔案(安控):/certified/1319771509338_1/1331706104230/1/main/123.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332148574768', 1, N'IPQC', N'1314193934156_1', N'2012/03/29', N'10:56:44', 1332989804562, N'michael', N'閱讀文件索引卡IPQC', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332148574768', 1, N'IPQC', N'1314193934156_1', N'2012/03/29', N'10:57:12', 1332989832671, N'michael', N'開啟檔案(安控):/certified/1314193934156_1/1332148574768/1/main/Test.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/03/29', N'10:57:22', 1332989842468, N'michael', N'閱讀文件索引卡111', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/29', N'10:57:35', 1332989855390, N'michael', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/29', N'10:57:37', 1332989857405, N'michael', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/29', N'10:57:37', 1332989857937, N'michael', N'開啟檔案(安控):/certified/1314193934156_1/1331629525652/2/main/瘦肉精的危害及副作用win.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706635667', 1, N'pdf efm', N'1314193934156_1', N'2012/03/29', N'10:59:51', 1332989991218, N'michael', N'閱讀文件索引卡pdf efm', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706635667', 1, N'pdf efm', N'1314193934156_1', N'2012/03/29', N'11:00:09', 1332990009718, N'michael', N'開啟檔案(安控):/certified/1314193934156_1/1331706635667/1/main/ZEMAX-WIN7.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/29', N'10:54:34', 1332989674312, N'michael', N'開啟檔案(安控):/certified/1314193934156_1/1331629525652/2/main/瘦肉精的危害及副作用win.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'10:55:55', 1332989755968, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706104230', 1, N'EFM TEST', N'1319771509338_1', N'2012/03/29', N'10:56:30', 1332989790640, N'michael', N'閱讀文件索引卡EFM TEST', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'10:56:36', 1332989796109, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/29', N'10:57:45', 1332989865452, N'michael', N'開啟檔案(安控):/certified/1314193934156_1/1331629525652/2/main/瘦肉精的危害及副作用win.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/29', N'10:57:53', 1332989873468, N'michael', N'開啟檔案(安控):/certified/1314193934156_1/1331629525652/2/main/瘦肉精的危害及副作用win.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/29', N'10:58:02', 1332989882312, N'michael', N'開啟檔案(安控):/certified/1314193934156_1/1331629525652/2/main/瘦肉精的危害及副作用win.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/03/29', N'10:58:07', 1332989887390, N'michael', N'開啟檔案(安控):/certified/1314193934156_1/1331629525652/2/main/瘦肉精的危害及副作用win.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706104230', 1, N'EFM TEST', N'1319771509338_1', N'2012/03/29', N'10:58:27', 1332989907374, N'michael', N'閱讀文件索引卡EFM TEST', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706104230', 1, N'EFM TEST', N'1319771509338_1', N'2012/03/29', N'10:58:30', 1332989910468, N'michael', N'開啟檔案(安控):/certified/1319771509338_1/1331706104230/1/main/123.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:00:17', 1332990017437, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:00:23', 1332990023062, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:00:26', 1332990026359, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1332985831593/1/attachments/CP-08 製程管制與檢驗程序11.1顧問TS修改.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:00:33', 1332990033515, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:00:39', 1332990039655, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1332985831593/1/attachments/CP-08 製程管制與檢驗程序11.1顧問TS修改.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:00:42', 1332990042749, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1332985831593/1/attachments/CP-08 製程管制與檢驗程序11.1顧問TS修改.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:00:55', 1332990055187, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1332985831593/1/attachments/CP-08 製程管制與檢驗程序11.1顧問TS修改.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:02:10', 1332990130812, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:02:11', 1332990131171, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:02:23', 1332990143905, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1332985831593/1/attachments/CP-08 製程管制與檢驗程序11.1顧問TS修改.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:02:31', 1332990151077, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:02:45', 1332990165655, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1332985831593/1/attachments/CP-08 製程管制與檢驗程序11.1顧問TS修改.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:02:49', 1332990169140, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1332985831593/1/attachments/CP-08 製程管制與檢驗程序11.1顧問TS修改.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:04:49', 1332990289968, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:07:19', 1332990439890, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:07:27', 1332990447890, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1332985831593/1/attachments/CP-08 製程管制與檢驗程序11.1顧問TS修改.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:08:06', 1332990486655, N'michael', N'下載原始檔案 安控:/certified/1314375523859_1/1332985831593/1/attachments/CP-08 製程管制與檢驗程序11.1顧問TS修改.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:08:23', 1332990503796, N'michael', N'下載原始檔案 安控:/certified/1314375523859_1/1332985831593/1/attachments/CP-08 製程管制與檢驗程序11.1顧問TS修改.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:09:00', 1332990540109, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1332985831593/1/attachments/CP-08 製程管制與檢驗程序11.1顧問TS修改.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:10:08', 1332990608734, N'michael', N'下載可列印PDF 安控:\temp\1314375523859_1\1332985831593\1\attachments\1332985831593_1_1.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:13:13', 1332990793812, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'11:13:37', 1332990817749, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1332985831593/1/attachments/CP-08 製程管制與檢驗程序11.1顧問TS修改.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'13:24:52', 1332998692187, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'13:43:55', 1332999835780, N'ken', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'13:44:13', 1332999853827, N'ken', N'開啟檔案(安控):/certified/1314375523859_1/1332985831593/1/attachments/CP-08 製程管制與檢驗程序11.1顧問TS修改.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/03/29', N'13:51:31', 1333000291874, N'ken', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/03/29', N'13:51:42', 1333000302421, N'ken', N'開啟檔案(安控):/certified/1314193934156_1/1323226933500/1/main/hsbc.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706104230', 1, N'EFM TEST', N'1319771509338_1', N'2012/03/29', N'13:53:09', 1333000389265, N'ariel', N'閱讀文件索引卡EFM TEST', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/29', N'13:53:34', 1333000414249, N'ariel', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/03/29', N'13:53:41', 1333000421749, N'ariel', N'開啟檔案(安控):/certified/1314193877640_1/1329808871437/1/main/Test.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418253265', 1, N'食品與塑料接觸安全要求', N'1314375524265_1', N'2012/03/29', N'16:12:17', 1333008737701, N'rorita', N'閱讀文件索引卡食品與塑料接觸安全要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 2, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/30', N'08:29:30', 1333067370298, N'michael', N'修訂文件', N'doc', N'004')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/03/30', N'10:57:09', 1333076229383, N'michael', N'閱讀文件索引卡111', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 2, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/30', N'11:58:28', 1333079908751, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079774270', 1, N'FPU AK C 先期管制計畫(先期)(第三版)', N'1333079773801_1', N'2012/03/30', N'12:00:29', 1333080029216, N'michael', N'閱讀文件索引卡FPU AK C 先期管制計畫(先期)(第三版)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079774270', 1, N'FPU AK C 先期管制計畫(先期)(第三版)', N'1333079773801_1', N'2012/03/30', N'12:00:42', 1333080042202, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/1333079774270/1/main/FPU AK C 先期管制計畫(先期)(第三版).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/03/30', N'12:02:48', 1333080168886, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 2, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/30', N'12:05:13', 1333080313884, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077091965', 1, N'2012-01-09_173352', N'1333077091731_1', N'2012/03/30', N'13:28:20', 1333085300034, N'michael', N'閱讀文件索引卡2012-01-09_173352', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077091965', 1, N'2012-01-09_173352', N'1333077091731_1', N'2012/03/30', N'13:28:28', 1333085308942, N'michael', N'開啟檔案(安控):/certified/1333077091731_1/1333077091965/1/main/2012-01-09_173352.jpg', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/03/30', N'13:44:06', 1333086246860, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/03/30', N'13:46:28', 1333086388342, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/13330797738322/1/main/(品保課0214)製程失效模式與效應分析.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/03/30', N'13:47:13', 1333086433534, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/13330797738322/1/main/(品保課0214)製程失效模式與效應分析.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/03/30', N'13:47:22', 1333086442410, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/13330797738322/1/main/(品保課0214)製程失效模式與效應分析.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/03/30', N'13:47:30', 1333086450832, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332942593968', 1, N'Tornado+Search+Package+v5.3_產品規格_20120120', N'1314193934156_1', N'2012/03/29', N'16:08:04', 1333008484317, N'rorita', N'閱讀文件索引卡Tornado+Search+Package+v5.3_產品規格_20120120', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/29', N'16:08:25', 1333008505929, N'rorita', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332148676549', 1, N'IQC', N'1314193934156_1', N'2012/03/29', N'16:08:40', 1333008520180, N'rorita', N'閱讀文件索引卡IQC', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706635667', 1, N'pdf efm', N'1314193934156_1', N'2012/03/29', N'16:08:52', 1333008532634, N'rorita', N'閱讀文件索引卡pdf efm', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808363359', 1, N'REACH report', N'1314193934156_1', N'2012/03/29', N'16:09:06', 1333008546948, N'rorita', N'閱讀文件索引卡REACH report', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/03/30', N'17:10:32', 1333098632121, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/03/30', N'17:23:22', 1333099402059, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079774192', 1, N'FPU AK 26C-3 VA機能方塊圖(第二版)', N'1333079773801_1', N'2012/04/05', N'08:42:43', 1333586563840, N'michael', N'閱讀文件索引卡FPU AK 26C-3 VA機能方塊圖(第二版)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079774192', 1, N'FPU AK 26C-3 VA機能方塊圖(第二版)', N'1333079773801_1', N'2012/04/05', N'08:42:55', 1333586575887, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/1333079774192/1/main/FPU AK 26C-3 VA機能方塊圖(第二版).ppt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079774192', 1, N'FPU AK 26C-3 VA機能方塊圖(第二版)', N'1333079773801_1', N'2012/04/05', N'08:45:35', 1333586735606, N'michael', N'下載原始檔案 安控:/certified/1333079773801_1/1333079774192/1/main/FPU AK 26C-3 VA機能方塊圖(第二版).ppt', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/05', N'08:48:41', 1333586921028, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/05', N'08:48:49', 1333586929371, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/13330797738322/1/main/(品保課0214)製程失效模式與效應分析.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/05', N'08:49:08', 1333586948528, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/13330797738322/1/main/(品保課0214)製程失效模式與效應分析.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/05', N'08:49:20', 1333586960856, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/05', N'08:49:30', 1333586970059, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/13330797738322/1/main/(品保課0214)製程失效模式與效應分析.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 2, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/04/05', N'10:06:37', 1333591597418, N'ariel', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/05', N'11:06:46', 1333595206668, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/05', N'11:06:58', 1333595218403, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/13330797738322/1/main/(品保課0214)製程失效模式與效應分析.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/05', N'11:28:10', 1333596490059, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 2, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/04/05', N'16:19:35', 1333613975014, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314418111171', 1, N'歐盟食品接觸材料新法規淺析', N'1314375524265_1', N'2012/04/05', N'16:19:59', 1333613999142, N'michael', N'閱讀文件索引卡歐盟食品接觸材料新法規淺析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:39:34', 1333615174979, N'michael', N'閱讀文件索引卡預扣庫存作法說明', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:39:39', 1333615179542, N'michael', N'開啟檔案(安控):/certified/1314375524781_1/1333614506611/1/main/預扣庫存作法說明.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:39:49', 1333615189185, N'michael', N'閱讀文件索引卡預扣庫存作法說明', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:39:51', 1333615191419, N'michael', N'開啟檔案(安控):/certified/1314375524781_1/1333614506611/1/main/預扣庫存作法說明.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:39:54', 1333615194810, N'michael', N'開啟檔案(安控):/certified/1314375524781_1/1333614506611/1/main/預扣庫存作法說明.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:42:51', 1333615371821, N'ariel', N'閱讀文件索引卡預扣庫存作法說明', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/06', N'05:43:08', 1333662188303, N'ariel', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/30', N'08:24:16', 1333067056986, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/30', N'08:24:29', 1333067069050, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/30', N'08:24:58', 1333067098022, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1332985831593/1/attachments/CP-08 製程管制與檢驗程序11.1顧問TS修改.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/30', N'08:26:18', 1333067178123, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/30', N'08:27:30', 1333067250661, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 1, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/30', N'08:27:41', 1333067261740, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 2, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/03/30', N'08:30:00', 1333067400801, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333070103685', 1, N'CP-16-09 外訓人員申請單', N'1314375524687_1', N'2012/03/30', N'09:16:02', 1333070162019, N'michael', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333070103685', 1, N'CP-16-09 外訓人員申請單', N'1314375524687_1', N'2012/03/30', N'09:16:21', 1333070181990, N'michael', N'閱讀文件索引卡CP-16-09 外訓人員申請單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314603332765', 2, N'100年育成中心合辦業務類研討會', N'1314193777250_1', N'2012/03/30', N'09:17:56', 1333070276092, N'michael', N'閱讀文件索引卡100年育成中心合辦業務類研討會', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333070103685', 1, N'CP-16-09 外訓人員申請單', N'1314375524687_1', N'2012/03/30', N'09:18:40', 1333070320143, N'michael', N'閱讀文件索引卡CP-16-09 外訓人員申請單', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/03/30', N'09:20:05', 1333070405448, N'michael', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077091559', 1, N'Thumbs', N'1333077089746_1', N'2012/03/30', N'11:12:13', 1333077133672, N'michael', N'刪除文件', N'doc', N'014')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077091434', 1, N'ISO270012005資訊安全管理系統要求', N'1333077089746_1', N'2012/03/30', N'11:13:09', 1333077189725, N'michael', N'閱讀文件索引卡ISO270012005資訊安全管理系統要求', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077091434', 1, N'ISO270012005資訊安全管理系統要求', N'1333077089746_1', N'2012/03/30', N'11:13:19', 1333077199741, N'michael', N'開啟檔案(安控):/certified/1333077089746_1/1333077091434/1/main/ISO270012005資訊安全管理系統要求.ppt', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077091434', 1, N'ISO270012005資訊安全管理系統要求', N'1333077089746_1', N'2012/03/30', N'11:14:15', 1333077255903, N'michael', N'下載可列印PDF 安控:\temp\1333077089746_1\1333077091434\1\main\1333077091434_1_0.ppt.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077091965', 1, N'2012-01-09_173352', N'1333077091731_1', N'2012/03/30', N'11:19:36', 1333077576621, N'michael', N'閱讀文件索引卡2012-01-09_173352', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077091965', 1, N'2012-01-09_173352', N'1333077091731_1', N'2012/03/30', N'11:19:44', 1333077584325, N'michael', N'開啟檔案(安控):/certified/1333077091731_1/1333077091965/1/main/2012-01-09_173352.jpg', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077093825', 1, N'Thumbs', N'1333077091731_1', N'2012/03/30', N'11:22:57', 1333077777031, N'michael', N'閱讀文件索引卡Thumbs', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077093825', 1, N'Thumbs', N'1333077091731_1', N'2012/03/30', N'11:23:43', 1333077823817, N'michael', N'閱讀文件索引卡Thumbs', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077091887', 1, N'2011鼎新電子報_個資法', N'1333077091731_1', N'2012/03/30', N'11:24:23', 1333077863117, N'michael', N'閱讀文件索引卡2011鼎新電子報_個資法', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077091887', 1, N'2011鼎新電子報_個資法', N'1333077091731_1', N'2012/03/30', N'11:24:32', 1333077872275, N'michael', N'開啟檔案(安控):/certified/1333077091731_1/1333077091887/1/main/2011鼎新電子報_個資法.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077091887', 1, N'2011鼎新電子報_個資法', N'1333077091731_1', N'2012/03/30', N'11:24:43', 1333077883916, N'michael', N'下載可列印PDF 安控:\temp\1333077091731_1\1333077091887\1\main\1333077091887_1_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077093762', 1, N'ISO_27001_資訊安全介紹', N'1333077091731_1', N'2012/03/30', N'11:26:30', 1333077990427, N'michael', N'閱讀文件索引卡ISO_27001_資訊安全介紹', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077093762', 1, N'ISO_27001_資訊安全介紹', N'1333077091731_1', N'2012/03/30', N'11:26:36', 1333077996740, N'michael', N'開啟檔案(安控):/certified/1333077091731_1/1333077093762/1/main/ISO_27001_資訊安全介紹.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077093762', 1, N'ISO_27001_資訊安全介紹', N'1333077091731_1', N'2012/03/30', N'13:21:05', 1333084865133, N'michael', N'閱讀文件索引卡ISO_27001_資訊安全介紹', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077093762', 1, N'ISO_27001_資訊安全介紹', N'1333077091731_1', N'2012/03/30', N'13:21:09', 1333084869212, N'michael', N'開啟檔案(安控):/certified/1333077091731_1/1333077093762/1/main/ISO_27001_資訊安全介紹.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077093669', 1, N'2012-01-09_173540', N'1333077091731_1', N'2012/03/30', N'13:21:27', 1333084887901, N'michael', N'閱讀文件索引卡2012-01-09_173540', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077093669', 1, N'2012-01-09_173540', N'1333077091731_1', N'2012/03/30', N'13:21:32', 1333084892714, N'michael', N'開啟檔案(安控):/certified/1333077091731_1/1333077093669/1/main/2012-01-09_173540.jpg', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/03/30', N'13:47:36', 1333086456489, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/13330797738322/1/main/(品保課0214)製程失效模式與效應分析.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/03/30', N'13:48:10', 1333086490461, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/03/30', N'13:48:16', 1333086496040, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/13330797738322/1/main/(品保課0214)製程失效模式與效應分析.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/03/30', N'13:48:36', 1333086516339, N'michael', N'下載可列印PDF 安控:\temp\1333079773801_1\13330797738322\1\main\13330797738322_1_0.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079775942', 1, N'表單~設計失效模式與效應分析(DFMEA)-20120220', N'1333079773801_1', N'2012/03/30', N'13:59:09', 1333087149103, N'michael', N'閱讀文件索引卡表單~設計失效模式與效應分析(DFMEA)-20120220', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079774270', 1, N'FPU AK C 先期管制計畫(先期)(第三版)', N'1333079773801_1', N'2012/03/30', N'15:58:35', 1333094315072, N'michael', N'閱讀文件索引卡FPU AK C 先期管制計畫(先期)(第三版)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079774270', 1, N'FPU AK C 先期管制計畫(先期)(第三版)', N'1333079773801_1', N'2012/03/30', N'15:58:47', 1333094327667, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/1333079774270/1/main/FPU AK C 先期管制計畫(先期)(第三版).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079773957', 1, N'111005福保FMEA講(淡底色)', N'1333079773801_1', N'2012/03/30', N'16:00:17', 1333094417066, N'michael', N'閱讀文件索引卡111005福保FMEA講(淡底色)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079773957', 1, N'111005福保FMEA講(淡底色)', N'1333079773801_1', N'2012/04/05', N'15:17:39', 1333610259246, N'michael', N'閱讀文件索引卡111005福保FMEA講(淡底色)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/05', N'15:20:38', 1333610438028, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/05', N'15:23:24', 1333610604387, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079773957', 1, N'111005福保FMEA講(淡底色)', N'1333079773801_1', N'2012/04/05', N'15:23:29', 1333610609356, N'michael', N'閱讀文件索引卡111005福保FMEA講(淡底色)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077093669', 1, N'2012-01-09_173540', N'1333077091731_1', N'2012/04/05', N'15:30:57', 1333611057793, N'michael', N'閱讀文件索引卡2012-01-09_173540', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077093669', 1, N'2012-01-09_173540', N'1333077091731_1', N'2012/04/05', N'15:31:02', 1333611062309, N'michael', N'開啟檔案(安控):/certified/1333077091731_1/1333077093669/1/main/2012-01-09_173540.jpg', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077093669', 1, N'2012-01-09_173540', N'1333077091731_1', N'2012/04/05', N'15:31:56', 1333611116418, N'michael', N'下載可列印PDF 安控:\temp\1333077091731_1\1333077093669\1\main\1333077093669_1_0.jpg.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333077093669', 1, N'2012-01-09_173540', N'1333077091731_1', N'2012/04/05', N'15:33:44', 1333611224590, N'michael', N'閱讀文件索引卡2012-01-09_173540', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614132866', 1, N'TS-16949樣品全功能表', N'1333079773801_1', N'2012/04/05', N'16:23:34', 1333614214113, N'michael', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614132866', 1, N'TS-16949樣品全功能表', N'1333079773801_1', N'2012/04/05', N'16:23:51', 1333614231631, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511541', 1, N'組織圖', N'1319771511197_1', N'2012/04/05', N'16:25:40', 1333614340023, N'michael', N'閱讀文件索引卡組織圖', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614132866', 1, N'TS-16949樣品全功能表', N'1333079773801_1', N'2012/04/05', N'16:25:48', 1333614348759, N'michael', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511541', 1, N'組織圖', N'1319771511197_1', N'2012/04/05', N'16:25:56', 1333614356666, N'michael', N'下載原始檔案 安控:/certified/1319771511197_1/1319771511541/1/main/組織圖.docx', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/04/05', N'16:26:52', 1333614412206, N'michael', N'閱讀文件索引卡111', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/04/05', N'16:27:00', 1333614420316, N'michael', N'開啟檔案(安控):/certified/1319771509338_1/1331706984808/1/attachments/ZEMAX-WIN7.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706984808', 1, N'111', N'1319771509338_1', N'2012/04/05', N'16:27:09', 1333614429584, N'michael', N'下載原始檔案 安控:/certified/1319771509338_1/1331706984808/1/main/123.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706104230', 1, N'EFM TEST', N'1319771509338_1', N'2012/04/05', N'16:28:12', 1333614492703, N'michael', N'閱讀文件索引卡EFM TEST', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706104230', 1, N'EFM TEST', N'1319771509338_1', N'2012/04/05', N'16:28:17', 1333614497547, N'michael', N'開啟檔案(安控):/certified/1319771509338_1/1331706104230/1/main/123.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:29:15', 1333614555978, N'michael', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/05', N'16:29:21', 1333614561760, N'michael', N'閱讀文件索引卡預扣庫存作法說明', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/04/05', N'16:29:35', 1333614575356, N'michael', N'閱讀文件索引卡瘦肉精', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333751784180', 1, N'eKM知識管理平台', N'1314193897718_1', N'2012/04/07', N'06:42:35', 1333752155680, N'400403', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334004786789', 1, N'台灣知識管理系統比較分析初探', N'1314193897718_1', N'2012/04/10', N'04:58:29', 1334005109102, N'michael', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334004786789', 1, N'台灣知識管理系統比較分析初探', N'1314193897718_1', N'2012/04/14', N'22:29:21', 1334413761062, N'michael', N'閱讀文件索引卡台灣知識管理系統比較分析初探', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334439551000', 1, N'SmartKMS系統功能架構', N'1314193934156_1', N'2012/04/15', N'05:49:24', 1334440164796, N'400403', N'閱讀文件索引卡SmartKMS系統功能架構', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440282156', 1, N'eKM知識管理平台', N'1314193934156_1', N'2012/04/15', N'05:55:34', 1334440534453, N'400403', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/04/15', N'06:02:47', 1334440967609, N'400403', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/04/15', N'16:17:21', 1334477841968, N'ariel', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/04/15', N'16:58:52', 1334480332000, N'michael', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/17', N'10:46:57', 1334630817265, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/04/17', N'10:47:06', 1334630826812, N'michael', N'開啟檔案(安控):/certified/1333079773801_1/13330797738322/1/main/(品保課0214)製程失效模式與效應分析.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/04/17', N'11:18:36', 1334632716250, N'april', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/04/17', N'11:19:17', 1334632757734, N'rorita', N'閱讀文件索引卡預扣庫存作法說明', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079775004', 1, N'Thumbs', N'1333079773801_1', N'2012/05/08', N'05:15:37', 1336425337085, N'michael', N'刪除文件', N'doc', N'014')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/05/08', N'05:15:59', 1336425359382, N'michael', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/05/08', N'05:16:30', 1336425390335, N'michael', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/05/08', N'05:17:45', 1336425465039, N'michael', N'啟動新增文件流程', N'doc', N'010')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/05/08', N'05:25:30', 1336425930117, N'michael', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440282156', 1, N'eKM知識管理平台', N'1314193934156_1', N'2012/05/08', N'05:43:34', 1336427014929, N'michael', N'閱讀文件索引卡eKM知識管理平台', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 2, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/05/08', N'05:45:58', 1336427158632, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413893578', 2, N'帶電現象的測定方法  (環琦)', N'1314375523859_1', N'2012/05/08', N'05:46:13', 1336427173398, N'michael', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413893578', 2, N'帶電現象的測定方法  (環琦)', N'1314375523859_1', N'2012/05/08', N'05:47:07', 1336427227210, N'michael', N'閱讀文件索引卡帶電現象的測定方法  (環琦)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079775004', 1, N'Thumbs', N'1333079773801_1', N'2012/05/08', N'05:53:22', 1336427602820, N'michael', N'閱讀文件索引卡Thumbs', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193777250_1', N'2012/05/08', N'06:11:59', 1336428719679, N'michael', N'修改分類名稱:hwtop->hwtop2', N'category', N'103')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/05/08', N'06:12:22', 1336428742710, N'michael', N'刪除文件', N'doc', N'014')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2012/05/08', N'06:12:22', 1336428742710, N'michael', N'刪除文件', N'doc', N'014')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2012/05/08', N'06:12:22', 1336428742710, N'michael', N'刪除文件', N'doc', N'014')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331615473667', 1, N'瘦肉精', N'1314193934156_1', N'2012/05/08', N'06:12:30', 1336428750726, N'michael', N'刪除文件', N'doc', N'014')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315552071921', 1, N'小小酥皮月餅熱量 等同一個便當', N'1314193897718_1', N'2012/05/08', N'06:12:30', 1336428750726, N'michael', N'刪除文件', N'doc', N'014')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315551389734', 1, N'設備管理', N'1314193897718_1', N'2012/05/08', N'06:12:30', 1336428750726, N'michael', N'刪除文件', N'doc', N'014')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1314193897718_1', N'2012/05/08', N'06:12:44', 1336428764789, N'michael', N'刪除分類:ISO二階文件', N'category', N'102')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 1, N'123', N'1314193934156_1', N'2012/05/28', N'13:44:30', 1338183870540, N'rorita', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/05/28', N'13:45:01', 1338183901399, N'rorita', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 1, N'123', N'1314193934156_1', N'2012/05/28', N'13:45:04', 1338183904149, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 1, N'123', N'1314193934156_1', N'2012/05/28', N'13:45:13', 1338183913477, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1338183726696/1/main/123PDF.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 1, N'123', N'1314193934156_1', N'2012/05/28', N'13:45:19', 1338183919852, N'rorita', N'下載不可列印PDF 安控:\temp\1314193934156_1\1338183726696\1\main\1338183726696_1_0.pdf.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 1, N'123', N'1314193934156_1', N'2012/05/28', N'13:45:31', 1338183931540, N'rorita', N'下載可列印PDF 安控:\temp\1314193934156_1\1338183726696\1\main\1338183726696_1_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 1, N'123', N'1314193934156_1', N'2012/05/28', N'13:45:45', 1338183945056, N'rorita', N'下載原始檔案 安控:/certified/1314193934156_1/1338183726696/1/main/123PDF.pdf', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/05/30', N'11:53:44', 1338350024243, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/05/30', N'11:53:55', 1338350035196, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/05/31', N'09:49:00', 1338428940665, N'yuhtzong', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/05/31', N'09:51:33', 1338429093196, N'yuhtzong', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/05/31', N'09:51:56', 1338429116852, N'yuhtzong', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/05/31', N'09:52:40', 1338429160556, N'yuhtzong', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/05/31', N'11:46:21', 1338435981321, N'manage', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/06/05', N'16:37:06', 1338885426140, N'manage', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338887715484', 1, N'2011南山人壽年報', N'1319771509338_1', N'2012/06/07', N'11:32:43', 1339039963609, N'rorita', N'閱讀文件索引卡2011南山人壽年報', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'18:36:30', 1339410990203, N'ariel', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'18:36:38', 1339410998546, N'ariel', N'開啟檔案(安控):/certified/1314193934156_1/1338183726696/2/main/123PDF-1.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'18:36:49', 1339411009000, N'ariel', N'開啟檔案(安控):/certified/1314193934156_1/1338183726696/2/attachments/123WORD-1.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'18:37:14', 1339411034765, N'rorita', N'下載不可列印PDF 安控:\temp\1314193934156_1\1338183726696\2\main\1338183726696_2_0.pdf.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'18:37:36', 1339411056375, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1338183726696/2/main/123PDF-1.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/12', N'11:20:22', 1339471222421, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/12', N'11:21:32', 1339471292890, N'rorita', N'下載不可列印PDF 安控:\temp\1314193934156_1\1338183726696\2\main\1338183726696_2_0.pdf.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/12', N'11:21:37', 1339471297390, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1338183726696/2/main/123PDF-1.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/12', N'11:22:40', 1339471360796, N'rorita', N'下載不可列印PDF 安控:\temp\1314193934156_1\1338183726696\2\main\1338183726696_2_0.pdf.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/12', N'11:23:37', 1339471417125, N'rorita', N'下載可列印PDF 安控:\temp\1314193934156_1\1338183726696\2\main\1338183726696_2_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/12', N'11:23:54', 1339471434671, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1338183726696/2/attachments/123WORD-1.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/12', N'11:23:59', 1339471439828, N'rorita', N'下載不可列印PDF 安控:\temp\1314193934156_1\1338183726696\2\attachments\1338183726696_2_1.docx.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/12', N'11:24:07', 1339471447312, N'rorita', N'下載可列印PDF 安控:\temp\1314193934156_1\1338183726696\2\attachments\1338183726696_2_1.docx.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/13', N'17:28:28', 1339579708484, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 3, N'123', N'1314193934156_1', N'2012/06/13', N'17:30:36', 1339579836421, N'rorita', N'修訂文件', N'doc', N'004')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339652974937', 1, N'KM 導入概念    (  翰文 )', N'1314193877640_1', N'2012/06/14', N'13:52:02', 1339653122125, N'hwtop', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339652974937', 1, N'KM 導入概念    (  翰文 )', N'1314193877640_1', N'2012/06/14', N'13:52:40', 1339653160375, N'hwtop', N'閱讀文件索引卡KM 導入概念    (  翰文 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338887715484', 1, N'2011南山人壽年報', N'1319771509338_1', N'2012/06/16', N'14:45:58', 1339829158912, N'michael', N'閱讀文件索引卡2011南山人壽年報', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338887715484', 1, N'2011南山人壽年報', N'1319771509338_1', N'2012/06/16', N'14:47:12', 1339829232740, N'michael', N'下載不可列印PDF 安控:\temp\1319771509338_1\1338887715484\1\main\1338887715484_1_0.pdf.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339829670084', 1, N'上傳文件測試TOPMOST', N'1314375524250_1', N'2012/06/16', N'15:00:20', 1339830020459, N'rorita', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340238314865', 1, N'北區市場調查作業程序書', N'1314375524187_1', N'2012/06/21', N'08:40:06', 1340239206365, N'april', N'閱讀文件索引卡北區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340240589834', 1, N'中區市場調查作業程序書', N'1314375524078_1', N'2012/06/21', N'09:07:10', 1340240830287, N'ariel', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340240589834', 1, N'中區市場調查作業程序書', N'1314375524078_1', N'2012/06/21', N'09:51:22', 1340243482943, N'michael', N'閱讀文件索引卡中區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'18:37:44', 1339411064843, N'rorita', N'下載原始檔案 安控:/certified/1314193934156_1/1338183726696/2/main/123PDF-1.pdf', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'18:38:16', 1339411096125, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1338183726696/2/main/123PDF-1.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'18:38:29', 1339411109734, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1338183726696/2/main/123PDF-1.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338879455437', 1, N'Bnews', N'1314193934156_1', N'2012/06/11', N'18:39:43', 1339411183546, N'rorita', N'閱讀文件索引卡Bnews', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614506611', 1, N'預扣庫存作法說明', N'1314375524781_1', N'2012/06/11', N'18:39:50', 1339411190203, N'rorita', N'閱讀文件索引卡預扣庫存作法說明', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'18:40:30', 1339411230828, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'18:41:00', 1339411260250, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1338183726696/2/attachments/123WORD-1.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'18:41:13', 1339411273750, N'rorita', N'下載不可列印PDF 安控:\temp\1314193934156_1\1338183726696\2\attachments\1338183726696_2_1.docx.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'18:41:52', 1339411312156, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1338183726696/2/attachments/123WORD-1.docx', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'18:41:56', 1339411316437, N'rorita', N'下載不可列印PDF 安控:\temp\1314193934156_1\1338183726696\2\main\1338183726696_2_0.pdf.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 2, N'123', N'1314193934156_1', N'2012/06/11', N'18:42:27', 1339411347765, N'rorita', N'下載可列印PDF 安控:\temp\1314193934156_1\1338183726696\2\main\1338183726696_2_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338887715484', 1, N'2011南山人壽年報', N'1319771509338_1', N'2012/06/13', N'17:30:54', 1339579854015, N'rorita', N'閱讀文件索引卡2011南山人壽年報', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 3, N'123', N'1314193934156_1', N'2012/06/13', N'17:31:22', 1339579882671, N'rorita', N'閱讀文件索引卡123', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 3, N'123', N'1314193934156_1', N'2012/06/13', N'17:31:33', 1339579893875, N'rorita', N'下載原始檔案 安控:/certified/1314193934156_1/1338183726696/3/main/行政院人事行政總處全球資訊網-天然災害停止辦公及上課情形查詢.pdf', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 3, N'123', N'1314193934156_1', N'2012/06/13', N'17:31:40', 1339579900359, N'rorita', N'下載可列印PDF 安控:\temp\1314193934156_1\1338183726696\3\main\1338183726696_3_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 3, N'123', N'1314193934156_1', N'2012/06/13', N'17:31:59', 1339579919593, N'rorita', N'下載不可列印PDF 安控:\temp\1314193934156_1\1338183726696\3\main\1338183726696_3_0.pdf.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 3, N'123', N'1314193934156_1', N'2012/06/13', N'17:32:06', 1339579926921, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1338183726696/3/main/行政院人事行政總處全球資訊網-天然災害停止辦公及上課情形查詢.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 3, N'123', N'1314193934156_1', N'2012/06/13', N'17:32:17', 1339579937687, N'rorita', N'下載原始檔案 安控:/certified/1314193934156_1/1338183726696/3/main/行政院人事行政總處全球資訊網-天然災害停止辦公及上課情形查詢.pdf', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 3, N'123', N'1314193934156_1', N'2012/06/13', N'17:32:46', 1339579966421, N'rorita', N'開啟檔案(安控):/certified/1314193934156_1/1338183726696/3/main/行政院人事行政總處全球資訊網-天然災害停止辦公及上課情形查詢.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 3, N'123', N'1314193934156_1', N'2012/06/13', N'17:32:52', 1339579972109, N'rorita', N'下載不可列印PDF 安控:\temp\1314193934156_1\1338183726696\3\main\1338183726696_3_0.pdf.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 3, N'123', N'1314193934156_1', N'2012/06/13', N'17:33:30', 1339580010718, N'rorita', N'下載可列印PDF 安控:\temp\1314193934156_1\1338183726696\3\main\1338183726696_3_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338183726696', 3, N'123', N'1314193934156_1', N'2012/06/13', N'17:33:54', 1339580034515, N'rorita', N'下載可列印PDF 安控:\temp\1314193934156_1\1338183726696\3\main\1338183726696_3_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1341304726808_1', N'2012/07/03', N'16:38:47', 1341304727636, N'pert', N'新增分類:testp', N'category', N'101')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1341304743292', 1, N'testp-1', N'1341304726808_1', N'2012/07/03', N'16:39:34', 1341304774636, N'eipadmin', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339829670084', 1, N'上傳文件測試TOPMOST', N'1314375524250_1', N'2012/07/04', N'09:53:43', 1341366823464, N'rorita', N'閱讀文件索引卡上傳文件測試TOPMOST', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/07/04', N'11:59:58', 1341374398355, N'rorita', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/07/13', N'15:43:43', 1342165423921, N'rorita', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440282156', 1, N'eKM知識管理平台', N'1314193934156_1', N'2012/07/20', N'09:16:50', 1342747010564, N'michael', N'閱讀文件索引卡eKM知識管理平台', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339652974937', 1, N'KM 導入概念    (  翰文 )', N'1314193877640_1', N'2012/06/19', N'17:31:52', 1340098312146, N'michael', N'閱讀文件索引卡KM 導入概念    (  翰文 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340238314865', 1, N'北區市場調查作業程序書', N'1314375524187_1', N'2012/06/21', N'08:31:45', 1340238705818, N'ariel', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338887715484', 1, N'2011南山人壽年報', N'1319771509338_1', N'2012/06/21', N'08:32:21', 1340238741084, N'ariel', N'閱讀文件索引卡2011南山人壽年報', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338887715484', 1, N'2011南山人壽年報', N'1319771509338_1', N'2012/06/21', N'08:32:52', 1340238772693, N'ariel', N'閱讀文件索引卡2011南山人壽年報', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340238314865', 1, N'北區市場調查作業程序書', N'1314375524187_1', N'2012/06/21', N'08:34:20', 1340238860693, N'ariel', N'閱讀文件索引卡北區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340238314865', 1, N'北區市場調查作業程序書', N'1314375524187_1', N'2012/06/21', N'08:38:11', 1340239091631, N'ariel', N'下載原始檔案 安控:/certified/1314375524187_1/1340238314865/1/main/231-RUL-001北區市場調查作業程序書.txt', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340238314865', 1, N'北區市場調查作業程序書', N'1314375524187_1', N'2012/06/21', N'08:39:31', 1340239171521, N'april', N'閱讀文件索引卡北區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340238314865', 1, N'北區市場調查作業程序書', N'1314375524187_1', N'2012/06/21', N'08:39:43', 1340239183568, N'april', N'閱讀文件索引卡北區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340238314865', 1, N'北區市場調查作業程序書', N'1314375524187_1', N'2012/06/21', N'08:40:46', 1340239246725, N'april', N'閱讀文件索引卡北區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339829670084', 1, N'上傳文件測試TOPMOST', N'1314375524250_1', N'2012/06/21', N'14:59:46', 1340261986725, N'april', N'閱讀文件索引卡上傳文件測試TOPMOST', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340240589834', 1, N'中區市場調查作業程序書', N'1314375524078_1', N'2012/06/21', N'22:42:38', 1340289758710, N'ariel', N'閱讀文件索引卡中區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340238314865', 1, N'北區市場調查作業程序書', N'1314375524187_1', N'2012/06/21', N'22:43:20', 1340289800012, N'ariel', N'閱讀文件索引卡北區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2012/06/21', N'14:56:21', 1340261781990, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2012/06/21', N'14:58:25', 1340261905271, N'ariel', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334439551000', 1, N'SmartKMS系統功能架構', N'1314193934156_1', N'2012/06/21', N'15:07:46', 1340262466537, N'ken', N'閱讀文件索引卡SmartKMS系統功能架構', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334439551000', 1, N'SmartKMS系統功能架構', N'1314193934156_1', N'2012/06/21', N'15:08:16', 1340262496928, N'ken', N'開啟檔案(安控):/certified/1314193934156_1/1334439551000/1/main/SmartKMS系統功能架構.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334439551000', 1, N'SmartKMS系統功能架構', N'1314193934156_1', N'2012/06/21', N'15:08:28', 1340262508084, N'ken', N'開啟檔案(安控):/certified/1314193934156_1/1334439551000/1/main/SmartKMS系統功能架構.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340240589834', 1, N'中區市場調查作業程序書', N'1314375524078_1', N'2012/07/05', N'10:38:54', 1341455934292, N'michael', N'閱讀文件索引卡中區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334439551000', 1, N'SmartKMS系統功能架構', N'1314193934156_1', N'2012/07/05', N'10:39:52', 1341455992449, N'michael', N'閱讀文件索引卡SmartKMS系統功能架構', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334439551000', 1, N'SmartKMS系統功能架構', N'1314193934156_1', N'2012/07/05', N'10:40:14', 1341456014089, N'michael', N'下載可列印PDF 安控:\temp\1314193934156_1\1334439551000\1\main\1334439551000_1_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340240589834', 1, N'中區市場調查作業程序書', N'1314375524078_1', N'2012/07/05', N'10:41:14', 1341456074855, N'michael', N'閱讀文件索引卡中區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340240589834', 1, N'中區市場調查作業程序書', N'1314375524078_1', N'2012/07/18', N'23:41:15', 1342626075452, N'michael', N'閱讀文件索引卡中區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340240589834', 1, N'中區市場調查作業程序書', N'1314375524078_1', N'2012/07/18', N'23:42:05', 1342626125546, N'michael', N'閱讀文件索引卡中區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340240589834', 1, N'中區市場調查作業程序書', N'1314375524078_1', N'2012/07/18', N'23:42:31', 1342626151780, N'michael', N'閱讀文件索引卡中區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340240589834', 1, N'中區市場調查作業程序書', N'1314375524078_1', N'2012/07/20', N'09:15:30', 1342746930631, N'michael', N'閱讀文件索引卡中區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/07/20', N'09:17:25', 1342747045709, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/07/20', N'09:17:43', 1342747063133, N'michael', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340238314865', 1, N'北區市場調查作業程序書', N'1314375524187_1', N'2012/07/20', N'09:18:45', 1342747125001, N'michael', N'閱讀文件索引卡北區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333614132866', 1, N'TS-16949樣品全功能表', N'1333079773801_1', N'2012/07/20', N'17:56:13', 1342778173402, N'ariel', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338887715484', 1, N'2011南山人壽年報', N'1319771509338_1', N'2012/07/20', N'17:56:54', 1342778214418, N'ariel', N'閱讀文件索引卡2011南山人壽年報', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339829670084', 1, N'上傳文件測試TOPMOST', N'1314375524250_1', N'2012/07/20', N'17:57:57', 1342778277105, N'ariel', N'閱讀文件索引卡上傳文件測試TOPMOST', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1332985831593', 2, N'TS-16949樣品全功能表', N'1314375523859_1', N'2012/07/20', N'17:59:50', 1342778390558, N'ariel', N'閱讀文件索引卡TS-16949樣品全功能表', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079776582', 1, N'製造流程圖', N'1333079773801_1', N'2012/07/20', N'18:27:54', 1342780074340, N'ariel', N'閱讀文件索引卡製造流程圖', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339652974937', 1, N'KM 導入概念    (  翰文 )', N'1314193877640_1', N'2012/07/23', N'09:39:13', 1343007553277, N'michael', N'閱讀文件索引卡KM 導入概念    (  翰文 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339652974937', 1, N'KM 導入概念    (  翰文 )', N'1314193877640_1', N'2012/07/23', N'09:42:55', 1343007775246, N'michael', N'下載原始檔案 安控:/certified/1314193877640_1/1339652974937/1/main/KM 導入概念    (  翰文 ).ppt', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339829670084', 1, N'上傳文件測試TOPMOST', N'1314375524250_1', N'2012/07/24', N'14:59:14', 1343113154590, N'ariel', N'閱讀文件索引卡上傳文件測試TOPMOST', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339652974937', 1, N'KM 導入概念    (  翰文 )', N'1314193877640_1', N'2012/07/24', N'15:00:15', 1343113215715, N'ariel', N'閱讀文件索引卡KM 導入概念    (  翰文 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440282156', 1, N'eKM知識管理平台', N'1314193934156_1', N'2012/07/24', N'15:37:14', 1343115434168, N'ken', N'閱讀文件索引卡eKM知識管理平台', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339829670084', 1, N'上傳文件測試TOPMOST', N'1314375524250_1', N'2012/07/24', N'15:38:14', 1343115494668, N'ken', N'閱讀文件索引卡上傳文件測試TOPMOST', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1329808871437', 1, N'文件管制', N'1314193877640_1', N'2012/07/24', N'15:40:31', 1343115631777, N'ken', N'閱讀文件索引卡文件管制', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'13330797738322', 1, N'(品保課0214)製程失效模式與效應分析', N'1333079773801_1', N'2012/07/24', N'15:49:31', 1343116171152, N'ken', N'閱讀文件索引卡(品保課0214)製程失效模式與效應分析', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440282156', 1, N'eKM知識管理平台', N'1314193934156_1', N'2012/07/24', N'15:51:37', 1343116297590, N'ken', N'閱讀文件索引卡eKM知識管理平台', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/07/26', N'19:25:45', 1343301945417, N'technology', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/07/26', N'19:26:07', 1343301967294, N'technology', N'下載原始檔案 安控:/certified/1314193877640_1/1322622489062/1/main/eKM4.6_快速導覽_建置eKM.pdf', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340240589834', 1, N'中區市場調查作業程序書', N'1314375524078_1', N'2012/07/26', N'19:29:45', 1343302185362, N'technology', N'閱讀文件索引卡中區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339652974937', 1, N'KM 導入概念    (  翰文 )', N'1314193877640_1', N'2012/07/31', N'15:08:25', 1343718505005, N'michael', N'閱讀文件索引卡KM 導入概念    (  翰文 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340240589834', 1, N'中區市場調查作業程序書', N'1314375524078_1', N'2012/07/31', N'15:09:37', 1343718577099, N'michael', N'閱讀文件索引卡中區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340238314865', 1, N'北區市場調查作業程序書', N'1314375524187_1', N'2012/07/31', N'15:10:52', 1343718652364, N'michael', N'閱讀文件索引卡北區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1343715625349', 1, N'背景資料', N'1314375524468_1', N'2012/08/30', N'09:50:18', 1346291418140, N'eipadmin', N'閱讀文件索引卡背景資料', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/08/30', N'09:53:11', 1346291591218, N'eipadmin', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1343715625349', 1, N'背景資料', N'1314375524468_1', N'2012/08/31', N'14:10:10', 1346393410500, N'eipadmin', N'閱讀文件索引卡背景資料', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440282156', 1, N'eKM知識管理平台', N'1314193934156_1', N'2012/08/31', N'14:12:49', 1346393569562, N'eipadmin', N'閱讀文件索引卡eKM知識管理平台', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/09/10', N'13:17:28', 1347254248476, N'ariel', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/09/10', N'13:17:51', 1347254271210, N'ariel', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331629525652', 2, N'瘦肉精的危害', N'1314193934156_1', N'2012/09/10', N'13:20:47', 1347254447290, N'ariel', N'閱讀文件索引卡瘦肉精的危害', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1343715625349', 1, N'背景資料', N'1314375524468_1', N'2012/09/10', N'13:23:52', 1347254632556, N'ariel', N'閱讀文件索引卡背景資料', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339652974937', 1, N'KM 導入概念    (  翰文 )', N'1314193877640_1', N'2012/07/26', N'19:03:34', 1343300614727, N'technology', N'閱讀文件索引卡KM 導入概念    (  翰文 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1343715019833_1', N'2012/07/31', N'14:10:20', 1343715020489, N'ken', N'新增分類:工程驗收流程', N'category', N'101')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1343715625349', 1, N'背景資料', N'1314375524468_1', N'2012/07/31', N'14:23:41', 1343715821177, N'michael', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1343715625349', 1, N'背景資料', N'1314375524468_1', N'2012/07/31', N'14:24:35', 1343715875099, N'michael', N'閱讀文件索引卡背景資料', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1343715625349', 1, N'背景資料', N'1314375524468_1', N'2012/07/31', N'14:25:30', 1343715930020, N'michael', N'閱讀文件索引卡背景資料', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2012/07/31', N'21:11:25', 1343740285067, N'ariel', N'閱讀文件索引卡Quanta Test222222222', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319600897809', 1, N'Quanta Test222222222', N'1314193934156_1', N'2012/07/31', N'21:15:24', 1343740524895, N'ariel', N'閱讀文件索引卡Quanta Test222222222', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338887715484', 1, N'2011南山人壽年報', N'1319771509338_1', N'2012/08/02', N'14:18:16', 1343888296130, N'april', N'閱讀文件索引卡2011南山人壽年報', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338887715484', 1, N'2011南山人壽年報', N'1319771509338_1', N'2012/08/02', N'14:34:53', 1343889293599, N'april', N'開啟檔案(安控):/certified/1319771509338_1/1338887715484/1/main/2011南山人壽年報.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1331706104230', 1, N'EFM TEST', N'1319771509338_1', N'2012/08/02', N'14:42:16', 1343889736364, N'april', N'閱讀文件索引卡EFM TEST', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/08/30', N'09:53:19', 1346291599640, N'eipadmin', N'下載原始檔案 安控:/certified/1314375523859_1/1314413292984/2/main/食品級EPS廢料再生應用製程開發計畫.docx', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1343715625349', 1, N'背景資料', N'1314375524468_1', N'2012/09/10', N'13:24:31', 1347254671307, N'ariel', N'閱讀文件索引卡背景資料', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/09/10', N'13:25:39', 1347254739557, N'ariel', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/09/10', N'13:25:59', 1347254759526, N'ariel', N'開啟檔案(安控):/certified/1314375523859_1/1314413292984/2/attachments/FSS  抗靜電結合測試開發會議  (10  30).doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/09/10', N'13:28:40', 1347254920761, N'michael', N'閱讀文件索引卡檢驗規範', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/09/10', N'13:28:47', 1347254927746, N'michael', N'開啟檔案(安控):/certified/1314193934156_1/1324454319619/1/main/Test.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/09/10', N'13:29:00', 1347254940027, N'michael', N'開啟檔案(安控):/certified/1314193934156_1/1324454319619/1/main/Test.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/09/10', N'13:29:26', 1347254966184, N'michael', N'下載可列印PDF 安控:\temp\1314193934156_1\1324454319619\1\main\1324454319619_1_0.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/09/10', N'13:29:55', 1347254995731, N'michael', N'下載原始檔案 安控:/certified/1314193934156_1/1324454319619/1/main/Test.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/09/10', N'13:30:05', 1347255005340, N'michael', N'下載可列印PDF 安控:\temp\1314193934156_1\1324454319619\1\main\1324454319619_1_0.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/09/10', N'13:30:31', 1347255031543, N'michael', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319795717369', 1, N'新食品級   靜電劑 （U 203 )', N'1314375524421_1', N'2012/09/10', N'13:31:43', 1347255103028, N'michael', N'閱讀文件索引卡新食品級   靜電劑 （U 203 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2012/09/10', N'13:31:47', 1347255107419, N'michael', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2012/09/10', N'13:31:50', 1347255110013, N'michael', N'閱讀文件索引卡廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2012/09/10', N'13:31:59', 1347255119669, N'michael', N'開啟檔案(安控):/certified/1314375523859_1/1319793247260/1/main/廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1.doc', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2012/09/10', N'13:32:15', 1347255135122, N'michael', N'下載可列印PDF 安控:\temp\1314375523859_1\1319793247260\1\main\1319793247260_1_0.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/09/10', N'13:33:38', 1347255218013, N'michael', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511478', 1, N'人員離職率2009-2011', N'1319771511197_1', N'2012/09/11', N'09:58:42', 1347328722250, N'michael', N'閱讀文件索引卡人員離職率2009-2011', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511478', 1, N'人員離職率2009-2011', N'1319771511197_1', N'2012/09/11', N'09:58:58', 1347328738843, N'michael', N'閱讀文件索引卡人員離職率2009-2011', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/08/30', N'09:53:53', 1346291633531, N'eipadmin', N'下載可列印PDF 安控:\temp\1314375523859_1\1314413292984\2\attachments\1314413292984_2_1.doc.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/08/30', N'09:54:16', 1346291656156, N'eipadmin', N'下載原始檔案 安控:/certified/1314375523859_1/1314413292984/2/attachments/FSS  抗靜電結合測試開發會議  (10  30).doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/08/30', N'09:55:16', 1346291716265, N'eipadmin', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1343715625349', 1, N'背景資料', N'1314375524468_1', N'2012/08/31', N'12:06:29', 1346385989990, N'eipadmin', N'閱讀文件索引卡背景資料', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/08/31', N'16:42:40', 1346402560189, N'michael', N'閱讀文件索引卡滙豐銀行現金回饋信用卡申請書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/08/31', N'16:42:49', 1346402569158, N'michael', N'開啟檔案(安控):/certified/1314193934156_1/1323226933500/1/main/hsbc.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1323226933500', 1, N'滙豐銀行現金回饋信用卡申請書', N'1314193934156_1', N'2012/08/31', N'16:43:02', 1346402582580, N'michael', N'下載可列印PDF 安控:\temp\1314193934156_1\1323226933500\1\main\1323226933500_1_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339829670084', 1, N'上傳文件測試TOPMOST', N'1314375524250_1', N'2012/08/31', N'16:43:11', 1346402591205, N'michael', N'閱讀文件索引卡上傳文件測試TOPMOST', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334439551000', 1, N'SmartKMS系統功能架構', N'1314193934156_1', N'2012/08/31', N'16:44:48', 1346402688018, N'michael', N'閱讀文件索引卡SmartKMS系統功能架構', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334439551000', 1, N'SmartKMS系統功能架構', N'1314193934156_1', N'2012/08/31', N'16:44:53', 1346402693439, N'michael', N'開啟檔案(安控):/certified/1314193934156_1/1334439551000/1/main/SmartKMS系統功能架構.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1324454319619', 1, N'檢驗規範', N'1314193934156_1', N'2012/09/10', N'13:29:43', 1347254983262, N'michael', N'下載不可列印PDF 安控:\temp\1314193934156_1\1324454319619\1\main\1324454319619_1_0.doc.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319793247260', 1, N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'1314375523859_1', N'2012/09/10', N'13:32:34', 1347255154560, N'michael', N'下載原始檔案 安控:/certified/1314375523859_1/1319793247260/1/main/廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1.doc', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1347327495921', 1, N'公司簡介_eland', N'1314375523359_1', N'2012/09/11', N'09:50:12', 1347328212453, N'michael', N'新增文件', N'doc', N'002')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338887715484', 1, N'2011南山人壽年報', N'1319771509338_1', N'2012/09/11', N'09:50:40', 1347328240640, N'michael', N'閱讀文件索引卡2011南山人壽年報', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1347327495921', 1, N'公司簡介_eland', N'1314375523359_1', N'2012/09/11', N'09:50:52', 1347328252281, N'michael', N'閱讀文件索引卡公司簡介_eland', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1319771511478', 1, N'人員離職率2009-2011', N'1319771511197_1', N'2012/09/11', N'10:00:36', 1347328836750, N'michael', N'下載原始檔案 安控:/certified/1319771511197_1/1319771511478/1/main/人員離職率2009-2011.docx', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339652974937', 1, N'KM 導入概念    (  翰文 )', N'1314193877640_1', N'2012/09/11', N'10:01:15', 1347328875953, N'michael', N'閱讀文件索引卡KM 導入概念    (  翰文 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339652974937', 1, N'KM 導入概念    (  翰文 )', N'1314193877640_1', N'2012/09/11', N'10:01:32', 1347328892156, N'michael', N'下載原始檔案 安控:/certified/1314193877640_1/1339652974937/1/main/KM 導入概念    (  翰文 ).ppt', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/09/11', N'10:02:51', 1347328971156, N'michael', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/09/11', N'10:04:29', 1347329069624, N'michael', N'下載原始檔案 安控:/certified/1314375523859_1/1314413292984/2/main/食品級EPS廢料再生應用製程開發計畫.docx', N'doc', N'018')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1347329193421', 1, N'測試用', N'1341304726808_1', N'2012/09/11', N'10:07:34', 1347329254109, N'test_know', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/09/11', N'10:13:07', 1347329587249, N'michael', N'閱讀文件索引卡測試文件上傳', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/09/11', N'10:14:02', 1347329642609, N'michael', N'開啟檔案(安控):/certified/1314193877640_1/1322622489062/1/main/eKM4.6_快速導覽_建置eKM.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/09/11', N'10:14:13', 1347329653484, N'michael', N'下載可列印PDF 安控:\temp\1314193877640_1\1322622489062\1\main\1322622489062_1_0.pdf.pdf', N'doc', N'019')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1322622489062', 1, N'測試文件上傳', N'1314193877640_1', N'2012/09/11', N'10:14:21', 1347329661859, N'michael', N'下載不可列印PDF 安控:\temp\1314193877640_1\1322622489062\1\main\1322622489062_1_0.pdf.pdf', N'doc', N'020')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1347329764015', 1, N'testtest!!', N'1341304726808_1', N'2012/09/11', N'10:16:37', 1347329797905, N'michael', N'啟動新增文件流程', N'doc', N'001')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2012/09/11', N'10:25:38', 1347330338765, N'michael', N'閱讀文件索引卡超級育成中心 力挺新藥醫材業', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1315891275765', 3, N'超級育成中心 力挺新藥醫材業', N'1314375524187_1', N'2012/09/11', N'10:25:58', 1347330358624, N'michael', N'啟動新增文件流程', N'doc', N'010')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1314413292984', 2, N'食品級EPS廢料再生應用製程開發計畫', N'1314375523859_1', N'2012/08/31', N'17:42:38', 1346406158221, N'eipadmin', N'閱讀文件索引卡食品級EPS廢料再生應用製程開發計畫', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1343715625349', 1, N'背景資料', N'1314375524468_1', N'2012/08/31', N'17:54:52', 1346406892783, N'eipadmin', N'閱讀文件索引卡背景資料', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339652974937', 1, N'KM 導入概念    (  翰文 )', N'1314193877640_1', N'2012/09/01', N'11:55:32', 1346471732721, N'michael', N'Read document index cardKM 導入概念    (  翰文 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339829670084', 1, N'上傳文件測試TOPMOST', N'1314375524250_1', N'2012/09/02', N'16:08:22', 1346573302955, N'rorita', N'閱讀文件索引卡上傳文件測試TOPMOST', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/09/10', N'15:30:39', 1347262239156, N'michael', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1343715625349', 1, N'背景資料', N'1314375524468_1', N'2012/09/10', N'15:38:05', 1347262685250, N'eipadmin', N'閱讀文件索引卡背景資料', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1343715625349', 1, N'背景資料', N'1314375524468_1', N'2012/09/10', N'15:38:09', 1347262689218, N'eipadmin', N'開啟檔案(安控):/certified/1314375524468_1/1343715625349/1/main/世正開發.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440282156', 1, N'eKM知識管理平台', N'1314193934156_1', N'2012/09/10', N'15:38:24', 1347262704265, N'eipadmin', N'閱讀文件索引卡eKM知識管理平台', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440282156', 1, N'eKM知識管理平台', N'1314193934156_1', N'2012/09/10', N'15:38:27', 1347262707484, N'eipadmin', N'開啟檔案(安控):/certified/1314193934156_1/1334440282156/1/main/eKM4.7_Datasheet.pdf', N'doc', N'022')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1340240589834', 1, N'中區市場調查作業程序書', N'1314375524078_1', N'2012/09/10', N'15:51:41', 1347263501140, N'michael', N'閱讀文件索引卡中區市場調查作業程序書', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1339652974937', 1, N'KM 導入概念    (  翰文 )', N'1314193877640_1', N'2012/09/10', N'15:51:50', 1347263510656, N'michael', N'閱讀文件索引卡KM 導入概念    (  翰文 )', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1334440736515', 1, N'知識管理', N'1314193934156_1', N'2012/09/10', N'15:52:35', 1347263555093, N'michael', N'閱讀文件索引卡知識管理', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1333079774270', 1, N'FPU AK C 先期管制計畫(先期)(第三版)', N'1333079773801_1', N'2012/09/10', N'15:52:45', 1347263565031, N'michael', N'閱讀文件索引卡FPU AK C 先期管制計畫(先期)(第三版)', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338879455437', 1, N'Bnews', N'1314193934156_1', N'2012/09/10', N'15:53:56', 1347263636218, N'michael', N'閱讀文件索引卡Bnews', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338879455437', 1, N'Bnews', N'1314193934156_1', N'2012/09/10', N'15:54:24', 1347263664390, N'michael', N'閱讀文件索引卡Bnews', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338879455437', 1, N'Bnews', N'1314193934156_1', N'2012/09/10', N'15:54:33', 1347263673718, N'michael', N'閱讀文件索引卡Bnews', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(N'1338879455437', 1, N'Bnews', N'1314193934156_1', N'2012/09/10', N'15:54:40', 1347263680265, N'michael', N'閱讀文件索引卡Bnews', N'doc', N'021')
GO
INSERT INTO dbo.techdoc_log(doc_id, ver_id, subject, category_id, create_date, create_time, create_datetime, creator, description, target, act)
  VALUES(NULL, 0, N'', N'1341304726808_1', N'2012/09/11', N'09:54:59', 1347328499765, N'michael', N'修改分類名稱:testp->TEST', N'category', N'103')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314375589437', 1, N'1005294004450', N'1314375523859_1', N'2011/08/27', N'00:20:40', 1314375640437, N'eipadmin', N'食品級EPS廢料再生應用製程開發計畫', N'', N'食品級EPS廢料再生應用製程開發計畫.doc', N'/certified/1314375523859_1/1314375589437/1/main/', N'', N'', N'N', N'A ', N'2011/08/27', 0, 0, 0, 11, N'2012/08/27', N'', N'', N'KM_DEPT', 0, NULL, NULL, NULL, NULL, N'N', N'2011/08/27', N'demo.ekm.eland.com.tw', N'', N'EPS,食品,廢料,再生', N'', N'eipadmin', N'KM_DEPT', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314413292984', 1, N'1005294004450', N'1314375523859_1', N'2011/08/27', N'10:48:12', 1314413292984, N'technology', N'食品級EPS廢料再生應用製程開發計畫', N'', N'食品級EPS廢料再生應用製程開發計畫.docx', N'/certified/1314375523859_1/1314413292984/1/main/', N'', N'', N'N', N'C ', N'2011/08/27', 0, 0, 0, 2, N'2012/08/27', N'', N'', N'ROLeL110826231610013', 0, NULL, NULL, NULL, NULL, N'N', N'2011/08/27', N'demo.ekm.eland.com.tw', N'', N'食品,EPS,廢料,再生應用,製程,開發計畫', N'', N'technology', N'ROLeL110826231610013', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314413292984', 2, N'1005294004450', N'1314375523859_1', N'2011/08/27', N'10:52:21', 1314413541859, N'technology', N'食品級EPS廢料再生應用製程開發計畫', N'', N'食品級EPS廢料再生應用製程開發計畫.docx', N'/certified/1314375523859_1/1314413292984/2/main/', N'', N'Chinese', N'N', N'C ', N'2011/08/27', 9, 2, 4, 81, N'2012/08/27', N'', N'', N'ROLeL110826231610013', 9, NULL, NULL, NULL, NULL, N'N', N'2011/08/27', N'', N'', N'食品,EPS,廢料,再生應用,製程,開發計畫', N'新增"wx-101外添加劑建議(環綺)"', N'technology', N'ROLeL110826231610013', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314413893578', 1, N'1005294004450', N'1314375523859_1', N'2011/08/27', N'10:58:07', 1314413887343, N'technology', N'帶電現象的測定方法  (環琦)', N'', N'帶電現象的測定方法  (環琦).doc', N'/certified/1314375523859_1/1314413893578/1/main/', N'', N'', N'N', N'C ', N'2011/08/27', 0, 0, 0, 4, N'9999/12/31', N'', N'', N'ROLeL110826231610013', 0, NULL, NULL, NULL, NULL, N'N', N'2011/08/27', N'', N'', N'', N'', N'technology', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314413894187', 1, N'1005294004450', N'1314375523859_1', N'2011/08/27', N'10:58:07', 1314413887343, N'technology', N'歐盟食品接觸的塑膠法規  (育宗)', N'', N'歐盟食品接觸的塑膠法規  (育宗).doc', N'/certified/1314375523859_1/1314413894187/1/main/', N'', N'', N'N', N'C ', N'2011/08/27', 0, 0, 0, 2, N'9999/12/31', N'', N'', N'ROLeL110826231610013', 0, NULL, NULL, NULL, NULL, N'N', N'2011/08/27', N'', N'', N'', N'', N'technology', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314413894250', 1, N'1005294004450', N'1314375523859_1', N'2011/08/27', N'10:58:07', 1314413887343, N'technology', N'食品級材料類強度改質  (育宗)', N'', N'食品級材料類強度改質  (育宗).doc', N'/certified/1314375523859_1/1314413894250/1/main/', N'', N'', N'N', N'C ', N'2011/08/27', 0, 0, 0, 4, N'9999/12/31', N'', N'', N'ROLeL110826231610013', 0, NULL, NULL, NULL, NULL, N'N', N'2011/08/27', N'', N'', N'', N'', N'technology', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314417803062', 1, N'1005294004450', N'1314375524265_1', N'2011/08/27', N'12:06:32', 1314417992093, N'wwrc', N'防止帶電的方法', N'', N'防止帶電的方法.doc', N'/certified/1314375524265_1/1314417803062/1/main/', N'', N'', N'N', N'C ', N'2011/08/27', 0, 0, 0, 6, N'9999/12/31', N'', N'', N'ROLeL110826231914017', 0, NULL, NULL, NULL, NULL, N'N', N'2011/08/27', N'demo.ekm.eland.com.tw', N'..帶電防止劑現在大都用界面活性劑，界面活性劑在一個分子中有親水基與政水基，疏水基通常為碳化氫，親水基有 OH 、 COOH 、磺基、按、第 4 銨塭、 po - lyethylene oxide 等。  ..電氣性質與成形條件的關係熱可塑性樹脂通常看不出射出成形等成形操作條件與電氣性質的關係。 但熱硬化性樹脂的成形操作條件顯著影響樹脂化學..', N'水基, 帶電防止, 除電, 表面, 樹脂, 塑膠, 電荷, 離子, 親水, 防止帶電', N'', N'wwrc', N'ROLeL110826231914017', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314418029359', 1, N'1005294004450', N'1314375524265_1', N'2011/08/27', N'12:07:57', 1314418077203, N'wwrc', N'新版盟RoHS指令', N'', N'新版盟RoHS指令.pdf', N'/certified/1314375524265_1/1314418029359/1/main/', N'', N'', N'N', N'C ', N'2011/08/27', 0, 0, 0, 5, N'2012/08/27', N'', N'', N'ROLeL110826231914017', 0, NULL, NULL, NULL, NULL, N'N', N'2011/08/27', N'demo.ekm.eland.com.tw', N'..泡。目前重点是尽快决定这些项目是否进行相应的修改。2005/747/EC 第1 条和附件311．顺应针连接系统中的铅；12．热导枪钉模组涂层中所用的铅；13 ．光学玻璃及滤光玻璃中所用的铅及镉；14 ．微处理器针脚及封装连接所使用，含铅量以重  ..及含PbSn-之辅助汞合金中的铅；20．液晶显示器中连接前后平版荧光灯基质的玻璃中的氧化铅；2006/691/EC 第1 条和附件21．用于硼硅酸盐玻璃瓷漆的印墨所含的镉及铅；22．用于光纤通讯系统RIG（稀土铁石榴石）法拉第旋转器中作为杂质  ..2、3、及4 类）中所定义的水晶玻璃中所附的铅。2006/618/EC 第1 条（已改编）根据第5 条第（1）款第（1）点的目的，应允许铅、汞、六价铬、多溴联苯（PBB）和多溴二苯醚（PBDE）在同质材料中的最大浓度值分别为各自重量的0.1   ..明）的焊料中的铅。32．用于氩和氪激光管窗装配件的封装玻璃料里的氧化铅。29《欧盟官方公报》L 326，1969年12月29日，第36页。经过2003年《准入法案》最终修订的指令。新增附件六与第8和9类 设备有关豁免第4 条第（1）款禁令的应 用利用或检测电离辐射的设备1．电离辐射探测器中的铅、镉和汞2．X 射线管中的铅支座3．电磁辐射扩大装置中的铅：微通道板和毛细板4．X 射线管和图像增强器玻璃原料中的铅，以及气体激光器组件和将电..', N'指令, 附件, 采取, 用于, 根据, 共同体, 制造, 制造商, 本指令, 材料', N'', N'wwrc', N'ROLeL110826231914017', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314418091265', 1, N'1005294004450', N'1314375524265_1', N'2011/08/27', N'12:08:11', 1314418091265, N'wwrc', N'德國 RESY 再生系統的申請', N'', N'德國 RESY 再生系統的申請.doc', N'/certified/1314375524265_1/1314418091265/1/main/', N'', N'', N'N', N'C ', N'2011/08/27', 0, 0, 0, 5, N'2012/08/27', N'', N'', N'ROLeL110826231914017', 0, NULL, NULL, NULL, NULL, N'N', N'2011/08/27', N'demo.ekm.eland.com.tw', N'', N'', N'', N'wwrc', N'ROLeL110826231914017', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314418111171', 1, N'1005294004450', N'1314375524265_1', N'2011/08/27', N'12:08:31', 1314418111187, N'wwrc', N'歐盟食品接觸材料新法規淺析', N'', N'歐盟食品接觸材料新法規淺析.doc', N'/certified/1314375524265_1/1314418111171/1/main/', N'', N'', N'N', N'C ', N'2011/08/27', 0, 0, 0, 4, N'2012/08/27', N'', N'', N'ROLeL110826231914017', 0, NULL, NULL, NULL, NULL, N'N', N'2011/08/27', N'demo.ekm.eland.com.tw', N'', N'', N'', N'wwrc', N'ROLeL110826231914017', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314418228562', 1, N'1005294004450', N'1314375524265_1', N'2011/08/27', N'12:10:28', 1314418228562, N'yuhtzong', N'緩衝包裝材料與環保問題', N'', N'緩衝包裝材料與環保問題.doc', N'/certified/1314375524265_1/1314418228562/1/main/', N'', N'', N'N', N'C ', N'2011/08/27', 0, 0, 0, 7, N'2012/08/27', N'', N'', N'ROLeL110826231932018', 0, NULL, NULL, NULL, NULL, N'N', N'2011/08/27', N'demo.ekm.eland.com.tw', N'', N'', N'', N'yuhtzong', N'ROLeL110826231932018', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314418253265', 1, N'1005294004450', N'1314375524265_1', N'2011/08/27', N'12:10:53', 1314418253281, N'yuhtzong', N'食品與塑料接觸安全要求', N'', N'食品與塑料接觸安全要求.pdf', N'/certified/1314375524265_1/1314418253265/1/main/', N'', N'', N'N', N'C ', N'2011/08/27', 0, 0, 0, 13, N'2012/08/27', N'', N'', N'ROLeL110826231932018', 1, NULL, NULL, NULL, NULL, N'N', N'2011/08/27', N'demo.ekm.eland.com.tw', N'', N'', N'', N'yuhtzong', N'ROLeL110826231932018', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314601615421', 1, N'1314375452093', N'1314193877640_1', N'2011/08/29', N'15:12:48', 1314601968312, N'wendy', N'100年育成中心', N'', N'課程聯絡協調(前三次)紀錄.docx', N'/certified/1314193877640_1/1314601615421/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 0, N'9999/12/31', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/08/29', N'', N'', N'翰文, 育成中心, 課程, 窗口, 詹顧問, 課程設計, 餐點費用, 文宣', N'', N'wendy', N'ROLeL110829101259000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314602334468', 1, N'1005294004450', N'1314193877640_1', N'2011/08/29', N'15:19:20', 1314602360140, N'eipadmin', N'test', N'', N'課程聯絡協調(前三次)紀錄.docx', N'/certified/1314193877640_1/1314602334468/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 0, N'2012/08/24', N'', N'', N'KM_DEPT', 0, NULL, NULL, NULL, NULL, N'N', N'2011/08/29', N'', N'..翰文-謝佩雯 [2011/08/29 10:41:48]佩雯詢問汪老師結果:因公司力推詹顧問使之能更有授課經驗且累積人脈與名氣，請將此事交由詹顧問處理佩雯轉告汪老師想法給詹顧問，詹顧問回覆:建議開業務職能團隊之課程。  ..課程注意育成中心提出注意事項翰文-謝佩雯 [2011/08/29 10:51:59]育成中心需要講師配合之部分1.因無法核銷餐點費用，為吸引學員上課，由翰文提供茶點點心2.不可以課堂中宣傳公司課程，如發生此事往後合作列為拒絕來往戶3.公司宣傳品 與海報可以放報到處育成中心課後將提供學員名單，育成中心窗口提供訊息:從以往經驗此課程大約參加人數為30-50人，免費課程一般報名人數實際到場人數大約抓8成左右RE:育成中心提出注意事項翰文-謝佩雯 [2011/08/29 10:52:25]因課 程是8月底,希望文宣於七月初在廣宣即..', N'翰文, 育成中心, 課程, 窗口, 佩雯, 詹顧問, 課程設計, 餐點費用, 文宣, 此事', N'', N'eipadmin', N'KM_DEPT', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314603072390', 1, N'1314375452093', N'1314193877640_1', N'2011/08/29', N'15:31:38', 1314603098187, N'eipadmin', N'test', N'', N'課程聯絡協調(前三次)紀錄.docx', N'/certified/1314193877640_1/1314603072390/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 1, N'9999/12/31', N'', N'', N'KM_DEPT', 0, NULL, NULL, NULL, NULL, N'N', N'2011/08/29', N'', N'..翰文-謝佩雯 [2011/08/29 10:41:48]佩雯詢問汪老師結果:因公司力推詹顧問使之能更有授課經驗且累積人脈與名氣，請將此事交由詹顧問處理佩雯轉告汪老師想法給詹顧問，詹顧問回覆:建議開業務職能團隊之課程。  ..課程注意育成中心提出注意事項翰文-謝佩雯 [2011/08/29 10:51:59]育成中心需要講師配合之部分1.因無法核銷餐點費用，為吸引學員上課，由翰文提供茶點點心2.不可以課堂中宣傳公司課程，如發生此事往後合作列為拒絕來往戶3.公司宣傳品 與海報可以放報到處育成中心課後將提供學員名單，育成中心窗口提供訊息:從以往經驗此課程大約參加人數為30-50人，免費課程一般報名人數實際到場人數大約抓8成左右RE:育成中心提出注意事項翰文-謝佩雯 [2011/08/29 10:52:25]因課 程是8月底,希望文宣於七月初在廣宣即..', N'翰文, 育成中心, 課程, 窗口, 佩雯, 詹顧問, 課程設計, 餐點費用, 文宣, 此事', N'', N'eipadmin', N'KM_DEPT', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314603332765', 1, N'1314375452093', N'1314193877640_1', N'2011/08/29', N'15:34:36', 1314603276312, N'wendy', N'100年育成中心合辦業務類研討會', N'', N'課程聯絡協調(前三次)紀錄.docx', N'/certified/1314193877640_1/1314603332765/1/main/', N'', N'', N'N', N'C ', N'2011/08/29', 0, 0, 0, 23, N'9999/12/31', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/08/29', N'', N' ..翰文-謝佩雯 [2011/08/29 10:41:48]佩雯詢問汪老師結果:因公司力推詹顧問使之能更有授課經驗且累積人脈與名氣，請將此事交由詹顧問處理佩雯轉告汪老師想法給詹顧問，詹顧問回覆:建議開業務職能團隊之課程。  ..課程注意育成中心提出注意事項翰文-謝佩雯 [2011/08/29 10:51:59]育成中心需要講師配合之部分1.因無法核銷餐點費用，為吸引學員上課，由翰文提供茶點點心2.不可以課堂中宣傳公司課程，如發生此事往後合作列為拒絕來往戶3.公司宣傳品 與海報可以放報到處育成中心課後將提供學員名單，育成中心窗口提供訊息:從以往經驗此課程大約參加人數為30-50人，免費課程一般報名人數實際到場人數大約抓8成左右RE:育成中心提出注意事項翰文-謝佩雯 [2011/08/29 10:52:25]因課 程是8月底,希望文宣於七月初在廣宣即.. ', N'翰文, 育成中心, 課程, 窗口, 佩雯, 詹顧問, 課程設計, 餐點費用, 文宣, 此事', N'', N'eipadmin', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314603332765', 2, N'1314375452093', N'1314193877640_1', N'2011/08/29', N'16:20:08', 1314606008093, N'martin', N'100年育成中心合辦業務類研討會', N'', N'課程聯絡協調(前三次)紀錄.docx', N'/certified/1314193877640_1/1314603332765/2/main/', N'', N'Chinese', N'N', N'C ', N'2011/08/29', 0, 0, 0, 30, N'9999/12/31', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/08/29', N'', N'因公司力推詹顧問使之能更有授課經驗且累積人脈與名氣，請將此事交由詹顧問處理佩雯轉告汪老師想法給詹顧問，詹顧問回覆:建議開業務職能團隊之課程。', N'翰文, 育成中心, 課程, 窗口, 佩雯, 詹顧問, 課程設計, 餐點費用, 文宣, 此事', N'修自動摘要', N'martin', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314603332765', 3, N'1314375452093', N'1314193877640_1', N'2011/08/29', N'16:20:08', 1314606008093, N'april', N'100年育成中心合辦業務類研討會', N'', N'課程聯絡協調(前三次)紀錄.docx', N'/draft/1314193877640_1/1314603332765/3/main/', N'', N'Chinese', N'N', N'D ', N'', 0, 0, 0, 0, N'9999/12/31', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'因公司力推詹顧問使之能更有授課經驗且累積人脈與名氣，請將此事交由詹顧問處理佩雯轉告汪老師想法給詹顧問，詹顧問回覆:建議開業務職能團隊之課程。', N'翰文, 育成中心, 課程, 窗口, 佩雯, 詹顧問, 課程設計, 餐點費用, 文宣, 此事', N'修自動摘要', N'martin', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1314603333390', 1, N'1314375452093', N'1314193877640_1', N'2011/08/29', N'15:34:36', 1314603276312, N'eipadmin', N'課程聯絡協調(前三次)紀錄', N'', N'課程聯絡協調(前三次)紀錄.docx', N'/certified/1314193877640_1/1314603333390/1/main/', N'', N'', N'N', N'A ', N'2011/08/29', 0, 0, 0, 1, N'9999/12/31', N'', N'', N'KM_DEPT', 0, NULL, NULL, NULL, NULL, N'N', N'2011/08/29', N'', N'', N'', N'', N'eipadmin', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1315551389734', 1, N'1005294004450', N'1314193897718_1', N'2011/09/09', N'14:59:06', 1315551546062, N'michael', N'設備管理', N'', N'設備管理.odt', N'/certified/1314193897718_1/1315551389734/1/main/', N'', N'', N'Y', N'C ', N'2011/09/09', 0, 0, 0, 28, N'2012/08/24', N'', N'', N'ROLeL110824214047000', 1, NULL, NULL, NULL, NULL, N'N', N'2011/09/09', N'', N'(無)', N'(無)', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1315552071921', 1, N'1005294004450', N'1314193897718_1', N'2011/09/09', N'15:34:52', 1315553692062, N'april', N'小小酥皮月餅熱量 等同一個便當', N'', N'月餅的熱量等同便當.doc', N'/certified/1314193897718_1/1315552071921/1/main/', N'', N'', N'Y', N'C ', N'2011/09/09', 15, 4, 3, 47, N'2012/08/24', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2011/09/09', N'', N'衛生署國民健康局指出，以月餅相同重量比較，外皮「一層油、一層皮」疊製而成的蘇式月餅熱量通常最高，小小一個七十公克，熱量高.. ', N'月餅, 熱量', N'', N'april', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1315891275765', 1, N'1005294004450', N'1314375524187_1', N'2011/09/13', N'13:53:19', 1315893199781, N'ariel', N'超級育成中心 力挺新藥醫材業', N'', N'abc.txt', N'/certified/1314375524187_1/1315891275765/1/main/', N'', N'Chinese', N'N', N'C ', N'2011/09/13', 0, 0, 0, 12, N'2012/09/13', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2011/09/13', N'', N'', N'', N'', N'ariel', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1315891275765', 2, N'1005294004450', N'1314375524187_1', N'2011/09/14', N'10:48:00', 1315968480203, N'ariel', N'超級育成中心 力挺新藥醫材業', N'', N'abc.txt', N'/certified/1314375524187_1/1315891275765/2/main/', N'', N'Chinese', N'N', N'C ', N'2011/09/14', 0, 0, 0, 1, N'2012/9/13', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2011/09/14', N'', N'', N'', N'for test', N'ariel', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1315891275765', 3, N'1005294004450', N'1314375524187_1', N'2011/09/14', N'10:48:56', 1315968536515, N'ariel', N'超級育成中心 力挺新藥醫材業', N'', N'abc.txt', N'/certified/1314375524187_1/1315891275765/3/main/', N'', N'Chinese', N'N', N'II', N'2012/09/11', 0, 0, 0, 27, N'2012/09/13', N'', N'', N'ROLeL110824214126003', 1, NULL, NULL, NULL, NULL, N'N', N'2011/09/14', N'', N'', N'', N'jkl5465', N'ariel', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1315891275765', 4, N'1005294004450', N'1314375524187_1', N'2011/09/14', N'10:48:56', 1315968536515, N'michael', N'超級育成中心 力挺新藥醫材業', N'', N'abc.txt', N'\\temp\\draft\\1314375524187_1\\1315891275765\\4\\main\\', N'', N'Chinese', N'N', N'D ', N'', 0, 0, 0, 0, N'2012/09/13', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'jkl5465', N'ariel', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1316164582791', 1, N'1005294103601', N'1314193897718_1', N'2011/09/16', N'17:18:49', 1316164729947, N'rorita', N'1', N'1', N'webedit.txt', N'/certified/1314193897718_1/1316164582791/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 1, N'9999/12/31', N'', N'', N'ROLeL110824214109001', 0, NULL, NULL, NULL, NULL, N'N', N'2011/09/16', N'', N'�n�餶�Хi����A���W���ɮסB�ؿ�i���q���ƻs�B�R���B���ʡA�L��..', N'ɮ', N'', N'rorita', N'ROLeL110824214109001', N'A00', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1317794673292', 1, N'1005294103601', N'1314193897718_1', N'2011/10/05', N'14:05:46', 1317794746777, N'michael', N'2011 ideas Best Choice -ICT企業創新力品牌大調查徵件開始!!).files', N'', N'2011 ideas Best Choice -ICT企業創新力品牌大調查徵件開始!!).files.xlsx', N'/certified/1314193897718_1/1317794673292/1/main/', N'test', N'', N'N', N'CI', N'', 0, 0, 0, 1, N'9999/12/31', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/05', N'', N'Sheet1" 5. 企業網路行銷或社群服務"  ..2. 天新資訊 得票數:11票" 3. 功典資訊 得票數:10票" 4. 台灣微軟 得票數:41票"  ..6. 艾堤數位 得票數:11票"  ..10. 阿物國際 得票數:8票"  ..14. 賀田國際 得票數:8票"  ..16. 優像數位媒體(痞客邦) 得票數:28票" 企業工作流程協同" 1. 元太..', N'test', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319599638778', 1, N'1005294103601', N'1314193897718_1', N'2011/10/26', N'11:35:02', 1319600102763, N'', N'Quanta Test', N'Scott', N'QuantaABC.docx', N'/certified/1314193897718_1/1319599638778/1/main/', N'廣達測試檔案。', N'', N'N', N'CI', N'', 0, 0, 0, 2, N'9999/12/31', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/26', N'', N'', N'', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319600897809', 1, N'1005294004450', N'1314193934156_1', N'2011/10/26', N'11:49:03', 1319600943981, N'michael', N'Quanta Test222222222', N'AAAAAAAA', N'QuantaABC.docx', N'/certified/1314193934156_1/1319600897809/1/main/', N'', N'', N'N', N'C ', N'2011/10/26', 0, 0, 0, 9, N'2012/08/24', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/26', N'demo.ekm.eland.com.tw', N'', N'', N'', N'michael', N'ROLeL110824214047000', N'PFE121', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'13197715101194', 1, N'1314375452093', N'1319771510103_1', N'2011/10/28', N'11:11:12', 1319771472166, N'wendy', N'專案執行小組人員名單', N'', N'專案執行小組人員名單.docx', N'/certified/1319771510103_1/13197715101194/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 5, 1, 5, 9, N'2012/10/28', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'', N'', N'wendy', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319771510916', 1, N'1314375452093', N'1319771509338_1', N'2011/10/28', N'11:11:12', 1319771472166, N'wendy', N'客情', N'', N'客情.rar', N'/certified/1319771509338_1/1319771510916/1/main/', N'', N'', N'N', N'A ', N'2011/10/28', 0, 0, 0, 1, N'2012/10/28', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'', N'', N'wendy', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'13197715109945', 1, N'1314375452093', N'1319771510978_1', N'2011/10/28', N'11:11:12', 1319771472166, N'wendy', N'Thumbs', N'', N'Thumbs.db', N'/certified/1319771510978_1/13197715109945/1/main/', N'', N'', N'Y', N'C ', N'2011/10/28', 0, 0, 0, 0, N'2012/10/28', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'', N'', N'wendy', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319771511072', 1, N'1314375452093', N'1319771510978_1', N'2011/10/28', N'11:11:12', 1319771472166, N'wendy', N'各部門KM優先議題彙整', N'', N'各部門KM優先議題彙整.pptx', N'/certified/1319771510978_1/1319771511072/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 7, N'2012/10/28', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'', N'', N'wendy', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319771511135', 1, N'1314375452093', N'1319771510978_1', N'2011/10/28', N'11:11:12', 1319771472166, N'wendy', N'最高樓', N'', N'最高樓.docx', N'/certified/1319771510978_1/1319771511135/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 7, N'2012/10/28', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'', N'', N'wendy', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319771511275', 1, N'1314375452093', N'1319771511197_1', N'2011/10/28', N'11:11:12', 1319771472166, N'wendy', N'2012-2014中期策略方向與目標-shoppingmall', N'', N'2012-2014中期策略方向與目標-shoppingmall.docx', N'/certified/1319771511197_1/1319771511275/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 3, N'2012/10/28', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'', N'', N'wendy', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319771511338', 1, N'1314375452093', N'1319771511197_1', N'2011/10/28', N'11:11:12', 1319771472166, N'wendy', N'2012-2014中期策略方向與目標-行政', N'', N'2012-2014中期策略方向與目標-行政.docx', N'/certified/1319771511197_1/1319771511338/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 2, N'2012/10/28', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'', N'', N'wendy', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319771511400', 1, N'1314375452093', N'1319771511197_1', N'2011/10/28', N'11:11:12', 1319771472166, N'wendy', N'2012-2014總策略規劃', N'', N'2012-2014總策略規劃.docx', N'/certified/1319771511197_1/1319771511400/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 3, N'2012/10/28', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'', N'', N'wendy', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319771511478', 1, N'1314375452093', N'1319771511197_1', N'2011/10/28', N'11:11:12', 1319771472166, N'wendy', N'人員離職率2009-2011', N'', N'人員離職率2009-2011.docx', N'/certified/1319771511197_1/1319771511478/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 8, N'2012/10/28', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'', N'', N'wendy', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319771511541', 1, N'1314375452093', N'1319771511197_1', N'2011/10/28', N'11:11:12', 1319771472166, N'wendy', N'組織圖', N'', N'組織圖.docx', N'/certified/1319771511197_1/1319771511541/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 10, N'2012/10/28', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'', N'', N'wendy', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319771511603', 1, N'1314375452093', N'1319771511197_1', N'2011/10/28', N'11:11:12', 1319771472166, N'wendy', N'複製 -2012-2014中期策略方向與目標-office', N'', N'複製 -2012-2014中期策略方向與目標-office.docx', N'/certified/1319771511197_1/1319771511603/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 2, N'2012/10/28', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'', N'', N'wendy', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319771511666', 1, N'1314375452093', N'1319771511197_1', N'2011/10/28', N'11:11:12', 1319771472166, N'wendy', N'財務報表', N'', N'財務報表.docx', N'/certified/1319771511197_1/1319771511666/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 0, N'2012/10/28', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'', N'', N'wendy', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319771512025', 1, N'1314375452093', N'1319771511947_1', N'2011/10/28', N'11:11:12', 1319771472166, N'wendy', N'先期訪談會議記錄1018', N'', N'先期訪談會議記錄1018.docx', N'/certified/1319771511947_1/1319771512025/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 0, N'2012/10/28', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'', N'', N'wendy', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'13197715121974', 1, N'1314375452093', N'1319771512166_1', N'2011/10/28', N'11:11:12', 1319771472166, N'wendy', N'知識管理系統導入專案合約', N'', N'知識管理系統導入專案合約.docx', N'/certified/1319771512166_1/13197715121974/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 1, N'2012/10/28', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'', N'', N'wendy', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'13197715123382', 1, N'1314375452093', N'1319771512322', N'2011/10/28', N'11:11:12', 1319771472166, N'wendy', N'101-KMS導入專案輔導預定行程-資料審查與主管訪談-10月', N'', N'101-KMS導入專案輔導預定行程-資料審查與主管訪談-10月.docx', N'/certified/1319771512322/13197715123382/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 0, N'2012/10/28', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'', N'', N'wendy', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319790126307', 1, N'1005294004450', N'1314375523859_1', N'2011/10/28', N'16:24:55', 1319790295791, N'hwtop', N'新食品級靜電劑 （符合UF)', N'', N'新食品級靜電劑 （符合UF).doc', N'/certified/1314375523859_1/1319790126307/1/main/', N'', N'', N'N', N'A ', N'2011/10/28', 0, 0, 0, 3, N'2012/10/28', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'demo.ekm.eland.com.tw', N'', N'食品級,FSS,抗靜電劑', N'', N'hwtop', N'ROLeL110829101259000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319790969025', 1, N'1005294004450', N'1314375524421_1', N'2011/10/28', N'16:36:40', 1319791000291, N'wwrc', N'新食品級靜電劑 （符合UF)', N'', N'新食品級靜電劑 （符合UF).doc', N'/certified/1314375524421_1/1319790969025/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 5, N'2012/10/28', N'', N'', N'ROLeL110826231914017', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'demo.ekm.eland.com.tw', N'', N'抗靜電,食品級', N'', N'wwrc', N'ROLeL110826231914017', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319791140525', 1, N'1005294004450', N'1314375524421_1', N'2011/10/28', N'16:39:21', 1319791161900, N'wwrc', N'帶電現象的測定方法  (環琦)', N'', N'帶電現象的測定方法  (環琦).doc', N'/certified/1314375524421_1/1319791140525/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 8, N'2012/10/28', N'', N'', N'ROLeL110826231914017', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'demo.ekm.eland.com.tw', N'', N'廢料再生,抗靜電.FSS,食品級', N'', N'wwrc', N'ROLeL110826231914017', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319793247260', 1, N'1005294004450', N'1314375523859_1', N'2011/10/28', N'17:15:16', 1319793316228, N'technology', N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1', N'', N'廢料再生  食品級FSS 靜電性實驗測試報告 (10 19) r1.doc', N'/certified/1314375523859_1/1319793247260/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 17, N'2012/10/28', N'', N'', N'ROLeL110826231610013', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'demo.ekm.eland.com.tw', N'..4100.140.080.07100.140.130.07Avg0.130.070.05Avg0.130.100.05Max0.150.120.07Max0.150.180.07表一、FSS平面度與食品級間隙測試廢料再生#6 RHCNC杯料平面 度點焊後間隙Plasma全焊後間隙平面度/間隙上限0.150.150.1510.170.050.0420.20.230.1230.160.040.0440.20.170.06Avg0.180.120.07Max0.20..', N'平面度, 間隙, 杯料, 食品級, 度與, cnc, 廢料再生, 0.15, 仍可, 0.1', N'', N'technology', N'ROLeL110826231610013', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319795022072', 1, N'1005294004450', N'1314375523859_1', N'2011/10/28', N'17:44:38', 1319795078838, N'technology', N'FSS  抗靜電結合測試開發會議  (10  21)', N'', N'FSS  抗靜電結合測試開發會議  (10  30).doc', N'/certified/1314375523859_1/1319795022072/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 5, 1, 5, 9, N'2012/10/28', N'', N'', N'ROLeL110826231610013', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'FSS,壓鈦, 刃部, 本體, 毛胚, 球頭, 機械, 間隙, 打擊面, 附件, 支撐塊', N'', N'technology', N'ROLeL110826231610013', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319795717369', 1, N'1005294004450', N'1314375524421_1', N'2011/10/28', N'17:56:22', 1319795782619, N'wwrc', N'新食品級   靜電劑 （U 203 )', N'', N'新食品級   靜電劑 （U 203 ).doc', N'/certified/1314375524421_1/1319795717369/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 15, N'2012/10/28', N'', N'', N'ROLeL110826231914017', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'demo.ekm.eland.com.tw', N'', N'抗靜電,廢料再生,食品級', N'', N'wwrc', N'ROLeL110826231914017', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319795814541', 1, N'1005294004450', N'1314375523859_1', N'2011/10/28', N'17:57:22', 1319795842916, N'technology', N'FSS開發產結合測試報告  （ 2011. 10.24 r2)', N'', N'FSS開發產結合測試報告  （ 2011. 10.24 r2).doc', N'/certified/1314375523859_1/1319795814541/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 6, N'2012/10/28', N'', N'', N'ROLeL110826231610013', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'', N'', N'FSS, 壓鈦, 刃部, 毛胚, 本體, 間隙, 支撐塊, 參數, 模具, 施壓, cm2', N'', N'technology', N'ROLeL110826231610013', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319795937666', 1, N'1005294004450', N'1314375523859_1', N'2011/10/28', N'17:59:53', 1319795993510, N'technology', N'FSS 小量產計劃會議  （10.26)', N'', N'FSS 小量產計劃會議  （10.26).doc', N'/certified/1314375523859_1/1319795937666/1/main/', N'', N'', N'N', N'C ', N'2011/10/28', 0, 0, 0, 19, N'2012/10/28', N'', N'', N'ROLeL110826231610013', 0, NULL, NULL, NULL, NULL, N'N', N'2011/10/28', N'demo.ekm.eland.com.tw', N'', N'FSS, 壓鈦, 刃部, 毛胚, 本體, 間隙, 支撐塊, 參數, 模具, 施壓, cm2', N'', N'technology', N'ROLeL110826231610013', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1319795937666', 2, N'1005294004450', N'1314375523859_1', N'2011/10/28', N'17:59:53', 1319795993510, N'rorita', N'FSS 小量產計劃會議  （10.26)', N'', N'FSS 小量產計劃會議  （10.26).doc', N'\\temp\\draft\\1314375523859_1\\1319795937666\\2\\main\\', N'', N'', N'N', N'D ', N'', 0, 0, 0, 0, N'2012/10/28', N'', N'', N'ROLeL110824214109001', 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'FSS, 壓鈦, 刃部, 毛胚, 本體, 間隙, 支撐塊, 參數, 模具, 施壓, cm2', N'', N'technology', N'ROLeL110826231610013', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1322619283109', 1, N'1005294004450', N'1314193934156_1', N'2011/11/30', N'10:14:54', 1322619294218, N'eipadmin', N'錄', N'', N'錄.txt', N'/certified/1314193934156_1/1322619283109/1/main/', N'', N'', N'Y', N'C ', N'2011/11/30', 0, 0, 0, 11, N'2012/08/24', N'', N'', N'KM_DEPT', 0, NULL, NULL, NULL, NULL, N'N', N'2011/11/30', N'demo.ekm.eland.com.tw', N'12345..', N'', N'', N'eipadmin', N'KM_DEPT', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1322622489062', 1, N'1005294004450', N'1314193877640_1', N'2011/11/30', N'11:13:19', 1322622799718, N'rorita', N'測試文件上傳', N'', N'eKM4.6_快速導覽_建置eKM.pdf', N'/certified/1314193877640_1/1322622489062/1/main/', N'', N'', N'N', N'C ', N'2011/11/30', 3, 1, 3, 57, N'2012/08/24', N'', N'', N'ROLeL110824214109001', 0, NULL, NULL, NULL, NULL, N'N', N'2011/11/30', N'demo.ekm.eland.com.tw', N'..管理員、文件中心管理員、FAQ 中心管理員、專家黃頁管理員、社群中心管理員、系統管理員；i. 您可點選「選擇人員」自行指定審核者；eKM4.6 快速導覽-建置eKM15ii. 您可點選「部門主管」，開啟部門分類樹，指定部門主管為審核者；iii.  ..定於上層範圍之內eKM4.6 快速導覽-建置eKM25建立社群中心作為一個員工自由討論的園地，eKM 的社群中心可設定不同的討論區分類，將討論區分門別類；而討論區本身還可依據成員特性進行不同的版面型態、發表文章具名類型等詳細設定。討論區管理您可  ..按「新增」連結，儲存新增資料並進入此版的簡介頁面；按「重寫」連結則將清除您所輸入的資料；按「取消」連結則不儲存所新增資料，並返回「社群中心管理」首頁。搬移討論區請至「社群中心管理」首頁的「討論區」，點選「搬移討論區」連結，進入「搬移討論區」頁面 ，將討論區搬移至另一個分類。圖 27 搬移討論區1. 請使用下拉式選單選擇欲搬移討論區之「討論區分類」，再於「討論區」欄位下拉選擇欲搬移的討論區；2. 請在「搬移到分類」欄位下拉式清單中，選擇欲搬至的分類的名稱；3. 選擇完畢後，請按「確定搬移 討論區」連結；按「取消」連結不儲存並返回「社群中心管理」首頁。版主管理請在「社群中心管理」首頁中點選「版主管理」連結，進入「討論區版主管理」頁面。28進入此頁後，若您選擇的討論區尚無版主，會顯示「新..', N'版主, 新增, 文件, 欄位, 關卡, 討論區, 流程, 角色, 密碼, 帳號', N'', N'rorita', N'ROLeL110824214109001', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1323148771437', 1, N'1005294103601', N'1314193897718_1', N'2011/12/06', N'13:21:55', 1323148915234, N'ariel', N'資料庫', N'', N'新文字文件.txt', N'/certified/1314193897718_1/1323148771437/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 1, N'9999/12/31', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2011/12/06', N'', N'', N'', N'', N'ariel', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1323149350468', 1, N'1005294103601', N'1314193897718_1', N'2011/12/06', N'13:29:46', 1323149386437, N'ariel', N'測試資料', N'', N'英文單字.xls', N'/certified/1314193897718_1/1323149350468/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 1, N'9999/12/31', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2011/12/06', N'', N'Sheet1"  ..bongo"  ..Nepal"  ..renow..', N'quot', N'', N'ariel', N'ROLeL110824214126003', N'012', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1323169368343', 1, N'1005294103601', N'1314193897718_1', N'2011/12/06', N'19:04:29', 1323169469468, N'ariel', N'ssss', N'', N'新增文字文件.txt', N'/certified/1314193897718_1/1323169368343/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 0, N'9999/12/31', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2011/12/06', N'', N'', N'', N'', N'ariel', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1323226933500', 1, N'1314375452093', N'1314193934156_1', N'2011/12/07', N'11:05:06', 1323227106265, N'michael', N'滙豐銀行現金回饋信用卡申請書', N'', N'hsbc.pdf', N'/certified/1314193934156_1/1323226933500/1/main/', N'', N'', N'N', N'C ', N'2011/12/07', 0, 0, 0, 49, N'2012/08/24', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/12/30', N'demo.ekm.eland.com.tw', N'..「歡樂折扣多一點」注意事項：1.豐(台灣)商業銀行股份有限公司於本文宣中簡稱「豐銀行」。  ..4.詳細活動辦法及贈品相關規定，請參考申請書背面之「推薦辦卡活動注意事項」說明。  ..請在簽名欄上簽名以示同意下述聲 明致 豐(台灣)信用卡中 心本人及附卡申請人茲：申請人確認業經合理期間詳細審閱並完全了解所列信用卡之所有利率/費用及下述聲明內容，並同意接受本申請書所載信用卡用卡須知（或注意事項）所載之內容，並同意簽名如下以示遵  ..金之計收標準及收取條件。十四、本人已詳閱了解活動注意事項，並同意遵守活動辦法之規定。＊請附證明文件：是否曾變更姓名：□否 □是，變更前姓名：中文 ：英文翻譯：  變更日期：民國  年  月  日＊請附證明文件〈例如：護照〉：正卡人是否有別名：□  ..當時簽單上所載日期為準、簽單金額以經國際匯率換算後且入至正卡持卡人帳上之新台幣金額為準。8.刷卡好禮回饋(或寄送)當日前，正/附卡申請人有以下情況者，申請人即自動喪失參加本活動之資格，申請人所獲得之好禮回饋應於本行查明或知悉有該等情事時立即失效  ..令有特別規定者外，本行保留核准發卡與否以及隨時修改、變更或取消本活動及/或注意事項內容之權利。1.豐(台灣)商業銀行股份有限公司於本活動中簡稱「豐銀行」，且豐 (台灣)商業銀行股份有限公司所發行之信用卡於本活動中簡稱「豐信用卡」。2.推薦人資格  ..銀..', N'刷卡, 持卡人, 信用, 帳單, 本行, 消費, 信用卡, 附卡, 申請人, 正卡', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1323226933500', 2, N'1314375452093', N'1314193934156_1', N'2011/12/07', N'11:05:06', 1323227106265, N'rorita', N'滙豐銀行現金回饋信用卡申請書', N'', N'hsbc.pdf', N'\\temp\\draft\\1314193934156_1\\1323226933500\\2\\main\\', N'', N'', N'N', N'D ', N'', 0, 0, 0, 0, N'2012/08/24', N'', N'', N'ROLeL110824214109001', 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'..「歡樂折扣多一點」注意事項：1.豐(台灣)商業銀行股份有限公司於本文宣中簡稱「豐銀行」。  ..4.詳細活動辦法及贈品相關規定，請參考申請書背面之「推薦辦卡活動注意事項」說明。  ..請在簽名欄上簽名以示同意下述聲 明致 豐(台灣)信用卡中 心本人及附卡申請人茲：申請人確認業經合理期間詳細審閱並完全了解所列信用卡之所有利率/費用及下述聲明內容，並同意接受本申請書所載信用卡用卡須知（或注意事項）所載之內容，並同意簽名如下以示遵  ..金之計收標準及收取條件。十四、本人已詳閱了解活動注意事項，並同意遵守活動辦法之規定。＊請附證明文件：是否曾變更姓名：□否 □是，變更前姓名：中文 ：英文翻譯：  變更日期：民國  年  月  日＊請附證明文件〈例如：護照〉：正卡人是否有別名：□  ..當時簽單上所載日期為準、簽單金額以經國際匯率換算後且入至正卡持卡人帳上之新台幣金額為準。8.刷卡好禮回饋(或寄送)當日前，正/附卡申請人有以下情況者，申請人即自動喪失參加本活動之資格，申請人所獲得之好禮回饋應於本行查明或知悉有該等情事時立即失效  ..令有特別規定者外，本行保留核准發卡與否以及隨時修改、變更或取消本活動及/或注意事項內容之權利。1.豐(台灣)商業銀行股份有限公司於本活動中簡稱「豐銀行」，且豐 (台灣)商業銀行股份有限公司所發行之信用卡於本活動中簡稱「豐信用卡」。2.推薦人資格  ..銀..', N'刷卡, 持卡人, 信用, 帳單, 本行, 消費, 信用卡, 附卡, 申請人, 正卡', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1324282142650', 1, N'1005294103601', N'1314193897718_1', N'2011/12/19', N'16:17:10', 1324282630416, N'rorita', N'文件測試', N'', N'測試.xls', N'/certified/1314193897718_1/1324282142650/1/main/', N'', N'Chinese', N'N', N'CI', N'', 0, 0, 0, 0, N'9999/12/31', N'', N'', N'ROLeL110824214109001', 0, NULL, NULL, NULL, NULL, N'N', N'2011/12/19', N'', N'Sheet1..', N'quot', N'', N'rorita', N'ROLeL110824214109001', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1324283120307', 1, N'1005294103601', N'1314193897718_1', N'2011/12/19', N'16:25:58', 1324283158588, N'ariel', N'test2', N'', N'測試.xls', N'/certified/1314193897718_1/1324283120307/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 0, N'9999/12/31', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2011/12/19', N'', N'Sheet1..', N'quot', N'', N'ariel', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1324454319619', 1, N'1005294004450', N'1314193934156_1', N'2011/12/21', N'16:05:33', 1324454733135, N'ken', N'檢驗規範', N'', N'Test.doc', N'/certified/1314193934156_1/1324454319619/1/main/', N'', N'', N'N', N'AI', N'2011/12/21', 0, 0, 0, 51, N'2012/08/24', N'', N'', N'ROLeL110824214102000', 0, NULL, NULL, NULL, NULL, N'N', N'2011/12/21', N'demo.ekm.eland.com.tw', N'', N'', N'', N'ken', N'ROLeL110824214102000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1324454319619', 2, N'1005294004450', N'1314193934156_1', N'2011/12/21', N'16:05:33', 1324454733135, N'rorita', N'檢驗規範', N'', N'Test.doc', N'\\temp\\draft\\1314193934156_1\\1324454319619\\2\\main\\', N'', N'', N'N', N'D ', N'', 0, 0, 0, 0, N'2012/08/24', N'', N'', N'ROLeL110824214109001', 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'ken', N'ROLeL110824214102000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1325157249647', 1, N'1005294004450', N'techdoc_root', N'2011/12/29', N'19:14:09', 1325157249662, N'ariel', N'yghghgh', N'sdsd', N'', N'/draft/techdoc_root/1325157249647/1/main/', N'', N'', N'N', N'D ', N'', 0, 0, 0, 0, N'2012/12/29', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2011/12/29', N'demo.ekm.eland.com.tw', N'', N'', N'', N'ariel', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1329808363359', 1, N'1005294004450', N'1314193934156_1', N'2012/02/21', N'15:14:51', 1329808491796, N'michael', N'REACH report', N'', N'Test.doc', N'/certified/1314193934156_1/1329808363359/1/main/', N'', N'', N'N', N'C ', N'2012/02/21', 0, 0, 0, 10, N'2012/08/24', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/02/21', N'demo.ekm.eland.com.tw', N'Test..', N'', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1329808871437', 1, N'1005294004450', N'1314193877640_1', N'2012/02/21', N'15:26:23', 1329809183093, N'michael', N'文件管制', N'', N'Test.doc', N'/certified/1314193877640_1/1329808871437/1/main/', N'', N'', N'N', N'C ', N'2012/02/21', 0, 0, 0, 26, N'9999/12/31', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/02/21', N'demo.ekm.eland.com.tw', N'Test..', N'', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1329808871437', 2, N'1005294004450', N'1314193877640_1', N'2012/02/24', N'16:09:10', 1330070950832, N'michael', N'文件管制', N'', N'Test.doc', N'/certified/1314193877640_1/1329808871437/2/main/', N'', N'Chinese', N'N', N'CI', N'', 0, 0, 0, 0, N'9999/12/31', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/02/24', N'', N'Test..', N'', N'update', N'michael', N'', N'12-11111', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1329903967129', 1, N'1005294103601', N'1314193897718_1', N'2012/02/22', N'17:48:57', 1329904137863, N'ariel', N'test excel', N'', N'新增Microsoft Office Excel 工作表.xls', N'/certified/1314193897718_1/1329903967129/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 0, N'9999/12/31', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2012/02/22', N'', N'', N'quot', N'', N'ariel', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1329904647426', 1, N'1005294004450', N'1314193877640_1', N'2012/02/22', N'17:58:53', 1329904733410, N'april', N'test', N'', N'新增Microsoft Office Excel 工作表.xls', N'/certified/1314193877640_1/1329904647426/1/main/', N'', N'', N'N', N'C ', N'2012/02/22', 0, 0, 0, 18, N'2012/08/24', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2012/02/22', N'demo.ekm.eland.com.tw', N'', N'quot', N'', N'april', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1330682037641', 1, N'1005294004450', N'1314193877640_1', N'2012/03/02', N'17:55:02', 1330682102609, N'ariel', N'轉單', N'', N'轉單.xls', N'/certified/1314193877640_1/1330682037641/1/main/', N'', N'', N'N', N'C ', N'2012/03/02', 0, 0, 0, 18, N'2012/08/24', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/02', N'demo.ekm.eland.com.tw', N'..16.6900 "  ..16.6900 "  ..16.6900 "  ..4.3225 "  ..4.5500 "  ..4.3225 "  ..4.5500 "  ..4.3225 "  ..4.5500 "  ..4.3225 "  ..4.5500 "  ..1.4725 "  ..1.5500 "  ..1.4725 "  ..1.5500 "  ..1.4725 "  ..1.5500 "  ..1.4725 "  ..1.5500 "  ..3.3440 "  ..3.5200 "  ..3.3440 "  ..3.5200 "  ..3.3440 "  ..3.5200 "  ..3-197-104"  ..6.7051 "  ..7.0580 "  ..3-197-104"  ..6.7051 "  ..7.0580 "  ..3-197-104"  ..6.7051 "  ..7.0580 "  ..3-197-104&..', N'quot, usd, vers1, i1111165, i1111164, i1111171, 4.4174, 4.4629, i1111176, 1.5151', N'', N'ariel', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1330901113766', 1, N'1005294004450', N'', N'2012/03/05', N'06:45:25', 1330901125078, N'eipadmin', N'bba', N'', N'', N'\draft\\1330901113766\1\main\', N'', N'Chinese', N'N', N'D ', N'', 0, 0, 0, 0, N'2013/03/05', N'', N'', N'KM_DEPT', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/05', N'demo.ekm.eland.com.tw', N'', N'', N'', N'eipadmin', N'KM_DEPT', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1331274095668', 1, N'1331274008043', N'1314193934156_1', N'2012/03/09', N'14:22:05', 1331274125965, N'eipadmin', N'test', N'', N'Bnews.txt', N'/certified/1314193934156_1/1331274095668/1/main/', N'', N'', N'Y', N'C ', N'2012/03/09', 0, 0, 0, 0, N'2012/08/24', N'', N'', N'KM_DEPT', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/09', N'demo.ekm.eland.com.tw', N'B''s docB''s docB''s docB''s docB''s docB''s docB''s docB''s docB''s docB''s docB''s docB''s docB''s docB''s docB''s docB''s docB''s docB''s docB''s docB''s docB''s docB''s docB''s..', N'docb', N'', N'eipadmin', N'KM_DEPT', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1331615473667', 1, N'1005294004450', N'1314193934156_1', N'2012/03/13', N'13:12:32', 1331615552511, N'michael', N'瘦肉精', N'瘦肉精', N'衛生署公布含肉品稽查結果.doc', N'/certified/1314193934156_1/1331615473667/1/main/', N'', N'', N'Y', N'II', N'2012/03/19', 0, 0, 0, 14, N'2012/08/24', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/13', N'demo.ekm.eland.com.tw', N'..精「齊帕特羅（Zilpaterol ）」，正由衛生單位複檢及確認來源中。  ..被驗出含齊帕特羅的是全聯福利中心嘉義市興業店的「裕國牛肉片」，由南投縣裕國冷凍冷藏公司供貨。 嘉市衛生局十二日下午五點多接到驗出含齊帕特羅0.8ppb檢驗報告後，立即要求業者下架。  ..衛生署發布新聞稿指出，為落實瘦肉精查核，食品藥物管理局與各縣市政府衛生局聯手，對市售肉品加強稽查，今年一月至三月十一日，衛生機關已檢驗二百一十九件市售進口肉品，有三十六件檢出含萊克多巴胺，其中三十二件是美國牛肉、二件是澳洲牛肉、二件是紐西蘭牛肉  ..對於美、紐、澳牛肉陸續檢出瘦肉精，甚至出現毒性較萊克多巴胺強很多的齊帕特羅，消基會董..', N'牛肉, 瘦肉精, 肉品, 萊克多巴胺, 檢出, 衛生署, 衛生局, 全聯, 裕國, 齊帕特羅', N'', N'ariel', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1331618519448', 1, N'1005294004450', N'1314193934156_1', N'2012/03/13', N'14:02:19', 1331618539323, N'rorita', N'週報', N'', N'週報.doc', N'/certified/1314193934156_1/1331618519448/1/main/', N'', N'', N'N', N'C ', N'2012/03/13', 0, 0, 0, 5, N'2012/08/24', N'', N'', N'ROLeL110824214109001', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/13', N'demo.ekm.eland.com.tw', N'XX股份有限公司 閱 卷 登 記 簿..', N'', N'', N'rorita', N'ROLeL110824214109001', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1331629525652', 1, N'1005294004450', N'1314193934156_1', N'2012/03/13', N'17:06:14', 1331629574089, N'ariel', N'瘦肉精的危害', N'', N'瘦肉精的危害及副作用win.docx', N'/certified/1314193934156_1/1331629525652/1/main/', N'', N'', N'N', N'C ', N'2012/03/13', 0, 0, 0, 3, N'2012/08/24', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/13', N'', N' ..瘦肉精要完全從人體排出去的時間，長達四天，人吃下瘦肉精會引起心悸、心律不整、血壓升高，對心肺疾病患者危害最大，其他長期副作用包括：恐引起心悸、噁心、嘔吐、四肢肌肉顫抖、頭暈 、心跳過速、神經系統受損、胎兒畸形、肌肉腫瘤、.. ', N'瘦肉, 心臟, 精會, 作用, 動物, 內臟, 會引, 引起心', N'', N'ariel', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1331629525652', 2, N'1005294004450', N'1314193934156_1', N'2012/03/13', N'17:10:19', 1331629819417, N'ariel', N'瘦肉精的危害', N'', N'瘦肉精的危害及副作用win.docx', N'/certified/1314193934156_1/1331629525652/2/main/', N'', N'Chinese', N'N', N'C ', N'2012/03/13', 4, 1, 4, 19, N'2012/8/24', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/13', N'', N'..瘦肉精要完全從人體排出去的時間，長達四天，人吃下瘦肉精會引起心悸、心律不整、血壓升高，對心肺疾病患者危害最大，其他長期副作用包括：恐引起心悸、噁心、嘔吐、四肢肌肉顫抖、頭暈 、心跳過速、神經系統受損、胎兒畸形、肌肉腫瘤、..', N'瘦肉, 心臟, 精會, 作用, 動物, 內臟, 會引, 引起心', N'測試 office2007是否可以正確摘要與關鍵字', N'ariel', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1331706104230', 1, N'1005294004450', N'1319771509338_1', N'2012/03/14', N'14:22:15', 1331706135964, N'ariel', N'EFM TEST', N'', N'123.doc', N'/certified/1319771509338_1/1331706104230/1/main/', N'', N'', N'N', N'C ', N'2012/03/14', 0, 0, 0, 8, N'2013/03/14', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/14', N'demo.ekm.eland.com.tw', N'', N'', N'', N'ariel', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1331706104230', 2, N'1005294004450', N'1319771509338_1', N'2012/03/14', N'14:22:15', 1331706135964, N'ariel', N'EFM TEST', N'', N'123.doc', N'\\temp\\draft\\1319771509338_1\\1331706104230\\2\\main\\', N'', N'', N'N', N'D ', N'', 0, 0, 0, 0, N'2013/03/14', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'ariel', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1331706388917', 1, N'1005294004450', N'1319771509338_1', N'2012/03/14', N'14:26:46', 1331706406870, N'ariel', N'pdf test', N'', N'ZEMAX-WIN7.pdf', N'/certified/1319771509338_1/1331706388917/1/main/', N'', N'', N'N', N'A ', N'2012/03/14', 0, 0, 0, 1, N'2013/03/14', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/14', N'demo.ekm.eland.com.tw', N'', N'', N'', N'ariel', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1331706635667', 1, N'1005294004450', N'1314193934156_1', N'2012/03/14', N'14:30:58', 1331706658964, N'ariel', N'pdf efm', N'', N'ZEMAX-WIN7.pdf', N'/certified/1314193934156_1/1331706635667/1/main/', N'', N'', N'N', N'AI', N'2012/03/14', 0, 0, 0, 5, N'2012/08/24', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/14', N'demo.ekm.eland.com.tw', N'', N'', N'', N'ariel', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1331706635667', 2, N'1005294004450', N'1314193934156_1', N'2012/03/14', N'14:30:58', 1331706658964, N'ariel', N'pdf efm', N'', N'ZEMAX-WIN7.pdf', N'/draft/1314193934156_1/1331706635667/1/main/', N'', N'', N'N', N'D ', N'', 0, 0, 0, 0, N'2012/08/24', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, NULL, NULL, N'demo.ekm.eland.com.tw', N'', N'', N'', N'ariel', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1331706984808', 1, N'1005294004450', N'1319771509338_1', N'2012/03/14', N'14:36:43', 1331707003761, N'ariel', N'111', N'', N'123.doc', N'/certified/1319771509338_1/1331706984808/1/main/', N'', N'', N'N', N'C ', N'2012/03/14', 0, 0, 0, 9, N'2013/03/14', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/14', N'demo.ekm.eland.com.tw', N'', N'', N'', N'ariel', N'ROLeL110824214126003', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1332145633752', 1, N'1005294103601', N'1314193897718_1', N'2012/03/19', N'16:29:19', 1332145759893, N'michael', N'特採程序', N'', N'Test.doc', N'/certified/1314193897718_1/1332145633752/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 1, N'9999/12/31', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/19', N'', N'Test..', N'', N'', N'michael', N'ROLeL110824214047000', N'QP-1111', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1332147353393', 1, N'1005294103601', N'1314193897718_1', N'2012/03/19', N'16:56:24', 1332147384861, N'michael', N'IQC SPEC', N'', N'Test.doc', N'/certified/1314193897718_1/1332147353393/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 0, N'9999/12/31', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/19', N'', N'Test..', N'', N'', N'michael', N'ROLeL110824214047000', N'WI-2222', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1332147500486', 1, N'1005294103601', N'1314193897718_1', N'2012/03/19', N'16:58:42', 1332147522455, N'michael', N'OQC SPEC', N'', N'Test.doc', N'/certified/1314193897718_1/1332147500486/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 0, N'9999/12/31', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/19', N'', N'Test..', N'', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1332148574768', 1, N'1005294004450', N'1314193934156_1', N'2012/03/19', N'17:16:38', 1332148598627, N'rorita', N'IPQC', N'', N'Test.doc', N'/certified/1314193934156_1/1332148574768/1/main/', N'', N'', N'N', N'C ', N'2012/03/19', 0, 0, 0, 3, N'2012/08/24', N'', N'', N'ROLeL110824214109001', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/19', N'demo.ekm.eland.com.tw', N'Test..', N'', N'', N'rorita', N'ROLeL110824214109001', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1332148676549', 1, N'1005294004450', N'1314193934156_1', N'2012/03/19', N'17:18:53', 1332148733986, N'rorita', N'IQC', N'', N'Test.doc', N'/certified/1314193934156_1/1332148676549/1/main/', N'', N'', N'N', N'C ', N'2012/03/19', 0, 0, 0, 8, N'9999/12/31', N'', N'', N'ROLeL110824214109001', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/19', N'demo.ekm.eland.com.tw', N'Test..', N'', N'', N'rorita', N'ROLeL110824214109001', N'QP-3333', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1332226369893', 1, N'1005294103601', N'1314193897718_1', N'2012/03/20', N'14:54:38', 1332226478393, N'michael', N'ISO Audit', N'', N'Test.doc', N'/certified/1314193897718_1/1332226369893/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 0, N'9999/12/31', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/20', N'', N'Test..', N'', N'', N'michael', N'ROLeL110824214047000', N'QP-999', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1332231585080', 1, N'1005294004450', N'1314193934156_1', N'2012/03/20', N'16:20:24', 1332231624705, N'michael', N'RoHS report', N'', N'Test.doc', N'/draft/1314193934156_1/1332231585080/1/main/', N'', N'', N'N', N'D ', N'', 0, 0, 0, 0, N'9999/12/31', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/20', N'demo.ekm.eland.com.tw', N'Test..', N'', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1332942593968', 1, N'1005294004450', N'1314193934156_1', N'2012/03/28', N'21:51:27', 1332942687062, N'michael', N'Tornado+Search+Package+v5.3_產品規格_20120120', N'', N'Tornado+Search+Package+v5.3_產品規格_20120120.docx', N'/certified/1314193934156_1/1332942593968/1/main/', N'', N'', N'N', N'C ', N'2012/03/28', 0, 0, 0, 3, N'2012/08/24', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/28', N'demo.ekm.eland.com.tw', N'..」的資料以求資料完整。置頂文件企業內部對於需要強化宣傳的資料可設定置頂，當使用者搜尋的條件包含該筆資料時，該筆資料將會出現在結果頁面的第一筆，確保該筆資料能被使用者注意到。隔離文件對於企業內部敏感的資訊，可設定為隔離文件，避免一般使用者透過搜尋  ..mail（EML）PostScript（PS）純文字（TXT）Adobe Acrobat（PDF）資料夾或檔案路徑過濾可設定欲過濾不需建立索引的資料夾或檔案，避免特定的檔案內容被使用者搜尋到。檔案原始位置連結提供原始檔案的連結，方便使用者取用檔  ..，支援的網頁型態包括：HTML、HTM、PHP、ASP、ASPX、JSP、CFM。網址過濾對於不需要建立索引的網頁內容，管理者可以設定 URL 進行過濾，避免特定的網頁內容被使用者搜尋到。限制網頁索引層數與網頁個數針對欲檢索的標的網站，可設定檢  ..可自訂多組搜尋框，匯出後可整合至其他系統頁面，如此當使用者搜尋時，可使用TS進行全文檢索。系統管理系統管理帳號維護管理界面有獨立的帳號密碼管理介面，提供管理者帳號維護功能。管理帳號可設定角色以負責管理不同功能，帳號角色包含："索引管理 者"、"查詢結果管理者"、"詞庫管理者"、"樣式管理者"、"系統管理者"，帳號角色可複選；帳號在不刪除..', N'索引, 排程, 文件, 使用者, quot, 功能說明, 關鍵字, 檔案, 關鍵, 詞庫', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1332985831593', 1, N'1005294004450', N'1314375523859_1', N'2012/03/29', N'09:55:44', 1332986144187, N'michael', N'TS-16949樣品全功能表', N'', N'TS-16949樣品全功能表200904.xls', N'/certified/1314375523859_1/1332985831593/1/main/', N'', N'', N'N', N'C ', N'2012/03/29', 0, 0, 0, 22, N'2013/03/29', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/29', N'demo.ekm.eland.com.tw', N'', N'', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1332985831593', 2, N'1005294004450', N'1314375523859_1', N'2012/03/30', N'08:29:03', 1333067343264, N'michael', N'TS-16949樣品全功能表', N'', N'TS-16949樣品全功能表200904.xls', N'/certified/1314375523859_1/1332985831593/2/main/', N'', N'Chinese', N'N', N'C ', N'2012/03/30', 0, 0, 0, 3, N'2013/3/29', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'Test', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333070103685', 1, N'1005294004450', N'1314375524687_1', N'2012/03/30', N'09:15:51', 1333070151440, N'michael', N'CP-16-09 外訓人員申請單', N'外訓人員申請單', N'CP-16-09 外訓人員申請單 2.0.doc', N'/certified/1314375524687_1/1333070103685/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 2, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'demo.ekm.eland.com.tw', N'..整單位主管□ 核准　　□ 再議　　□ 其他簽名欄備　　註※上課原因若”不是”為年度教育計劃表安排課程，請單位主管重新評核以下訓練需求強度。※受訓人員於上課日期三日前填具外訓人員申請單，呈單位主管簽核，並交由管理部登錄彙整。※請..', N'課程, 訓人員, 外訓, 申請單, 品保, 日期, 單位主管', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'13330770905281', 1, N'1005294004450', N'1333077089746_1', N'2012/03/30', N'11:11:11', 1333077071885, N'michael', N'CNS27001', N'', N'CNS27001.rtf', N'/certified/1333077089746_1/13330770905281/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333077091434', 1, N'1005294004450', N'1333077089746_1', N'2012/03/30', N'11:11:11', 1333077071885, N'michael', N'ISO270012005資訊安全管理系統要求', N'', N'ISO270012005資訊安全管理系統要求.ppt', N'/certified/1333077089746_1/1333077091434/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 1, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333077091559', 1, N'1005294004450', N'1333077089746_1', N'2012/03/30', N'11:11:11', 1333077071885, N'michael', N'Thumbs', N'', N'Thumbs.db', N'/certified/1333077089746_1/1333077091559/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333077091887', 1, N'1005294004450', N'1333077091731_1', N'2012/03/30', N'11:11:11', 1333077071885, N'michael', N'2011鼎新電子報_個資法', N'', N'2011鼎新電子報_個資法.pdf', N'/certified/1333077091731_1/1333077091887/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 1, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333077091965', 1, N'1005294004450', N'1333077091731_1', N'2012/03/30', N'11:11:11', 1333077071885, N'michael', N'2012-01-09_173352', N'', N'2012-01-09_173352.jpg', N'/certified/1333077091731_1/1333077091965/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 2, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333077092043', 1, N'1005294004450', N'1333077091731_1', N'2012/03/30', N'11:11:11', 1333077071885, N'michael', N'2012-01-09_173410', N'', N'2012-01-09_173410.jpg', N'/certified/1333077091731_1/1333077092043/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333077092340', 1, N'1005294004450', N'1333077091731_1', N'2012/03/30', N'11:11:11', 1333077071885, N'michael', N'2012-01-09_173431', N'', N'2012-01-09_173431.jpg', N'/certified/1333077091731_1/1333077092340/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333077092622', 1, N'1005294004450', N'1333077091731_1', N'2012/03/30', N'11:11:11', 1333077071885, N'michael', N'2012-01-09_173441', N'', N'2012-01-09_173441.jpg', N'/certified/1333077091731_1/1333077092622/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333077092903', 1, N'1005294004450', N'1333077091731_1', N'2012/03/30', N'11:11:11', 1333077071885, N'michael', N'2012-01-09_173453', N'', N'2012-01-09_173453.jpg', N'/certified/1333077091731_1/1333077092903/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333077093465', 1, N'1005294004450', N'1333077091731_1', N'2012/03/30', N'11:11:11', 1333077071885, N'michael', N'2012-01-09_173502', N'', N'2012-01-09_173502.jpg', N'/certified/1333077091731_1/1333077093465/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333077093606', 1, N'1005294004450', N'1333077091731_1', N'2012/03/30', N'11:11:11', 1333077071885, N'michael', N'2012-01-09_173512', N'', N'2012-01-09_173512.jpg', N'/certified/1333077091731_1/1333077093606/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333077093669', 1, N'1005294004450', N'1333077091731_1', N'2012/03/30', N'11:11:11', 1333077071885, N'michael', N'2012-01-09_173540', N'', N'2012-01-09_173540.jpg', N'/certified/1333077091731_1/1333077093669/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 1, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333077093762', 1, N'1005294004450', N'1333077091731_1', N'2012/03/30', N'11:11:11', 1333077071885, N'michael', N'ISO_27001_資訊安全介紹', N'', N'ISO_27001_資訊安全介紹.pdf', N'/certified/1333077091731_1/1333077093762/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 2, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333077093825', 1, N'1005294004450', N'1333077091731_1', N'2012/03/30', N'11:11:11', 1333077071885, N'michael', N'Thumbs', N'', N'Thumbs.db', N'/certified/1333077091731_1/1333077093825/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 2, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'13330797738322', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'(品保課0214)製程失效模式與效應分析', N'', N'(品保課0214)製程失效模式與效應分析.doc', N'/certified/1333079773801_1/13330797738322/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 21, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'13330797738322', 2, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'(品保課0214)製程失效模式與效應分析', N'', N'(品保課0214)製程失效模式與效應分析.doc', N'\\temp\\draft\\1333079773801_1\\13330797738322\\2\\main\\', N'', N'', N'N', N'D ', N'', 0, 0, 0, 1, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079773957', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'111005福保FMEA講(淡底色)', N'', N'111005福保FMEA講(淡底色).ppt', N'/certified/1333079773801_1/1333079773957/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 4, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079774067', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'20120221製程失效模式與效應分析PFMEA', N'', N'20120221製程失效模式與效應分析PFMEA.doc', N'/certified/1333079773801_1/1333079774067/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079774145', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'FMEA手冊表格_施雲寶', N'', N'FMEA手冊表格_施雲寶.doc', N'/certified/1333079773801_1/1333079774145/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079774192', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'FPU AK 26C-3 VA機能方塊圖(第二版)', N'', N'FPU AK 26C-3 VA機能方塊圖(第二版).ppt', N'/certified/1333079773801_1/1333079774192/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 1, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079774270', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'FPU AK C 先期管制計畫(先期)(第三版)', N'', N'FPU AK C 先期管制計畫(先期)(第三版).doc', N'/certified/1333079773801_1/1333079774270/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 2, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079774332', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'FPU AK C 先期管制計畫(量產)(第二版))-20120215', N'', N'FPU AK C 先期管制計畫(量產)(第二版))-20120215.doc', N'/certified/1333079773801_1/1333079774332/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 1, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079774395', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'FPU AK C 先期管制計畫(量產)-20120328', N'', N'FPU AK C 先期管制計畫(量產)-20120328.doc', N'/certified/1333079773801_1/1333079774395/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079774457', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'PU 製造作業標準書 2.0(FPU AK)', N'', N'PU 製造作業標準書 2.0(FPU AK).doc', N'/certified/1333079773801_1/1333079774457/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079774520', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'PU 製造反應工程圖 2.0(FPU AK)', N'', N'PU 製造反應工程圖 2.0(FPU AK).xls', N'/certified/1333079773801_1/1333079774520/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079774785', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'PU 製造指示 1 2.0(FPU AK)', N'', N'PU 製造指示 1 2.0(FPU AK).doc', N'/certified/1333079773801_1/1333079774785/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079774910', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'QP12-A-FMEA失效模式與效應分析程序範例', N'', N'QP12-A-FMEA失效模式與效應分析程序範例.doc', N'/certified/1333079773801_1/1333079774910/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079775285', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'~$~設計失效模式與效應分析(DFMEA)-20120328', N'', N'~$~設計失效模式與效應分析(DFMEA)-20120328.doc', N'/certified/1333079773801_1/1333079775285/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079775348', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'失效模式與效應分析作業程序', N'', N'失效模式與效應分析作業程序.doc', N'/certified/1333079773801_1/1333079775348/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079775442', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'汽車業製程FMEA評分標準與填表說明', N'', N'汽車業製程FMEA評分標準與填表說明.doc', N'/certified/1333079773801_1/1333079775442/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079775520', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'福保~製程失效模式與效應分析(空白)', N'', N'福保~製程失效模式與效應分析(空白).doc', N'/certified/1333079773801_1/1333079775520/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079775598', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'福保~設計失效模式與效應分析(空白)', N'', N'福保~設計失效模式與效應分析(空白).doc', N'/certified/1333079773801_1/1333079775598/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079775660', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'福保化學~失效模式與效應分析作業程序1 0 版2012-01-02修訂', N'', N'福保化學~失效模式與效應分析作業程序1 0 版2012-01-02修訂.doc', N'/certified/1333079773801_1/1333079775660/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079775739', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'表單~製程失效模式與效應分析(2)', N'', N'表單~製程失效模式與效應分析(2).doc', N'/certified/1333079773801_1/1333079775739/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079775801', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'表單~製程失效模式與效應分析(20120208)', N'', N'表單~製程失效模式與效應分析(20120208).doc', N'/certified/1333079773801_1/1333079775801/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079775864', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'表單~製程失效模式與效應分析(空白)', N'', N'表單~製程失效模式與效應分析(空白).doc', N'/certified/1333079773801_1/1333079775864/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079775942', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'表單~設計失效模式與效應分析(DFMEA)-20120220', N'', N'表單~設計失效模式與效應分析(DFMEA)-20120220.doc', N'/certified/1333079773801_1/1333079775942/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079776114', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'表單~設計失效模式與效應分析(DFMEA)-20120328', N'', N'表單~設計失效模式與效應分析(DFMEA)-20120328.doc', N'/certified/1333079773801_1/1333079776114/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079776192', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'表單~設計失效模式與效應分析(DFMEA)封面', N'', N'表單~設計失效模式與效應分析(DFMEA)封面.doc', N'/certified/1333079773801_1/1333079776192/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079776270', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'表單~設計失效模式與效應分析(空白)', N'', N'表單~設計失效模式與效應分析(空白).doc', N'/certified/1333079773801_1/1333079776270/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079776332', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'製程失效模式與效應分析(PFMEA)', N'', N'製程失效模式與效應分析(PFMEA).doc', N'/certified/1333079773801_1/1333079776332/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079776395', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'製程失效模式與效應分析(PFMEA)空白表', N'', N'製程失效模式與效應分析(PFMEA)空白表.doc', N'/certified/1333079773801_1/1333079776395/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079776520', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'製程失效模式與效應分析PFMEA1', N'', N'製程失效模式與效應分析PFMEA1.doc', N'/certified/1333079773801_1/1333079776520/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079776582', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'製造流程圖', N'', N'製造流程圖.doc', N'/certified/1333079773801_1/1333079776582/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 1, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079776645', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'設計開發審查記錄表(設計規劃)(第三版)', N'', N'設計開發審查記錄表(設計規劃)(第三版).doc', N'/certified/1333079773801_1/1333079776645/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079776707', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'設計開發審查記錄表(試作驗證)(第三版)', N'', N'設計開發審查記錄表(試作驗證)(第三版).doc', N'/certified/1333079773801_1/1333079776707/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333079776770', 1, N'1005294004450', N'1333079773801_1', N'2012/03/30', N'11:55:53', 1333079753221, N'michael', N'設計開發審查記錄表(試量產)(第三版)', N'', N'設計開發審查記錄表(試量產)(第三版).doc', N'/certified/1333079773801_1/1333079776770/1/main/', N'', N'', N'N', N'C ', N'2012/03/30', 0, 0, 0, 0, N'2013/03/30', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/03/30', N'', N'', N'', N'', N'michael', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333614132866', 1, N'1005294004450', N'1333079773801_1', N'2012/04/05', N'16:22:48', 1333614168637, N'michael', N'TS-16949樣品全功能表', N'', N'TS-16949樣品全功能表200904.xls', N'/certified/1333079773801_1/1333614132866/1/main/', N'', N'', N'N', N'C ', N'2012/04/05', 0, 0, 0, 8, N'2013/04/05', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/04/05', N'demo.ekm.eland.com.tw', N'', N'', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333614506611', 1, N'1005294004450', N'1314375524781_1', N'2012/04/05', N'16:28:49', 1333614529755, N'michael', N'預扣庫存作法說明', N'', N'預扣庫存作法說明.docx', N'/certified/1314375524781_1/1333614506611/1/main/', N'', N'', N'N', N'C ', N'2012/04/05', 0, 0, 0, 15, N'2013/04/05', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/04/05', N'demo.ekm.eland.com.tw', N'', N'', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333707316399', 1, N'1005294004450', N'', N'2012/04/06', N'18:15:16', 1333707316399, N'michael', N'Test', N'', N'', N'/draft//1333707316399/1/main/', N'', N'', N'N', N'D ', N'', 0, 0, 0, 0, N'2013/04/06', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/04/06', N'demo.ekm.eland.com.tw', N'', N'', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333750559805', 1, N'1005294103601', N'1314193897718_1', N'2012/04/07', N'06:21:37', 1333750897555, N'400403', N'叡揚資訊(Vital KM)', N'', N'叡揚資訊(Vital KM).docx', N'/certified/1314193897718_1/1333750559805/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 1, N'9999/12/31', N'', N'', N'ROLeL120319051307043', 0, NULL, NULL, NULL, NULL, N'N', N'2012/04/07', N'', N'產品功能強大的全文搜尋，針對中文語系處理，檢索附件內文浮水印功能，確保您的檔案安全檔案預覽功能，影音檔案、各種文件檔案皆能預覽行動裝置版本，針對行動裝置特別設計版本控管，將文件的一舉一動完整監控文件關連自動推薦，隨時掌握相關文件有效地整理知  ..靈活的應用  可以定義..', N'知識, 文件, 檢索, 檔案', N'', N'400403', N'ROLeL120319051307043', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1333751784180', 1, N'1005294103601', N'1314193897718_1', N'2012/04/07', N'06:42:35', 1333752155680, N'400403', N'eKM知識管理平台', N'', N'eKM4.7_Datasheet.pdf', N'/certified/1314193897718_1/1333751784180/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 0, N'9999/12/31', N'', N'', N'ROLeL120319051307043', 0, NULL, NULL, NULL, NULL, N'N', N'2012/04/07', N'', N'為了協助企業與知識工作者快速地導入知識管理，eKM 系統設計涵蓋了知識管理循環與工作知識流動兩大概念。 知識管理循環包含了知識物件的定義、擷取、整合、分享、利用與創新；工作知識流動則強調知識工作者在日常的工作中，利用親和的介面與標準的作業程序，將工作中的知識儲存在知識管理平台中，成為企業知識資產。 知識管理循環與工作知識流動是eKM 系統設計的兩大基礎概念最完整的企業知識管理平台eKM4.7 是一套完整涵蓋企業知識管理生命週期的知識管理平台，包括知識文件管理、專家黃頁、知識社群、FAQ工作知識等模組，以知識入口網站平台方式呈現，並採用企業  ..知識管理平台的效益企業導入知識管理平台，可以藉由資訊科技的幫助，掌握、分享從個人到組織的經驗，進而應用與創造更多的知識，改善經營績效。  ..在實務應用上，企業可以量化企業知識管理導入後所帶來的有形效益，舉例如下：知識管理應用的有形效益 量化數字縮短人員學習時間 ↓23％提昇作業能力（生產力） ↑25％加速回覆客戶時間 ↑25％節省作業成本 ↓15％降低培訓員工成本 ↓20％縮短產品  ..成為新一代企業eKM 企業知識管理平台在知識管理平台上的最佳選擇。  .. 企業知識管理導入方法與工具意藍科技累積多年為企業建置知識管理平台的經驗，提供客戶知識管理平台平台的導入方法與工具（eKM 顧問導入工具），藉由八個步驟與簡單的七張表單（E..', N'知識, 文件, 機制, 平台, 使用者, 量化, 自訂, 企業內, 流程, ekm', N'', N'400403', N'ROLeL120319051307043', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1334004786789', 1, N'1333660491062', N'1314193897718_1', N'2012/04/10', N'04:58:29', 1334005109102, N'michael', N'台灣知識管理系統比較分析初探', N'', N'台灣知識管理系統比較分析初探.pdf', N'/certified/1314193897718_1/1334004786789/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 1, N'9999/12/31', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/04/10', N'', N'..lbaly,2005）。葉乃嘉（2004）認為知識管理系統平台可分為兩個主流類型，一是強調資料彙集、自動與動態的分類與快速搜尋與檢索，加上各種自然語言處理工具，如文章連結、分類瀏覽架構、人工智慧、自動分類、自動摘要等，此類知識管理的關鍵在490  ..存、利用之目的；運用自然語言技術自動分析文件，提供關鍵字、自動分類、目錄，甚至自動摘要之功能；透過有系統的分類架構，將文件自動分門別類，減少人工處理時間。系統具備了全文檢索、分欄檢索、分類檢索功能；除被動提供使用者查詢知識庫外，也主動推薦文件相  ..員討論區熱門文章最新文章群組協同合作 分群意見討論文章管理討論歷程群組工作管理資源管理線上虛擬協同技術資源管理討論區問卷管理通訊錄公佈欄工作流程管理資料蒐集 SmartSpider資料蒐集引擎網路下載自動排程自動分類自動摘要集中處理多種格式自動 化即時剪報自動版面分析主動蒐集自動摘要自動關鍵詞XML自動化機制資訊源設定排程蒐集結果儲存Hysearch整合查詢自動分類自動關鍵字自動摘要流程管理 流程引擎流程管理審查單管理元件設計表單定義角色定義流程定義操作模擬簽核運作簽文歸檔流程監控報表  ..蹤 行事曆公告欄會議時程預約線上行事曆資料庫 資料庫系統資料庫全文檢索507Journal of Educational Media & Library Sciences 43 : 4..', N'知識, 檢索, 文件, 管理系統, amp, knowledge, management, 智慧, 核心, 流程', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1334439551000', 1, N'1005294004450', N'1314193934156_1', N'2012/04/15', N'05:48:37', 1334440117265, N'400403', N'SmartKMS系統功能架構', N'', N'SmartKMS系統功能架構.pdf', N'/certified/1314193934156_1/1334439551000/1/main/', N'', N'', N'N', N'C ', N'2012/04/15', 0, 0, 0, 4, N'2012/08/24', N'', N'', N'ROLeL120319051307043', 0, NULL, NULL, NULL, NULL, N'N', N'2012/04/15', N'demo.ekm.eland.com.tw', N'(無)', N'(無)', N'', N'400403', N'ROLeL120319051307043', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1334440282156', 1, N'1333660491062', N'1314193934156_1', N'2012/04/15', N'05:55:25', 1334440525078, N'400203', N'eKM知識管理平台', N'', N'eKM4.7_Datasheet.pdf', N'/certified/1314193934156_1/1334440282156/1/main/', N'', N'', N'N', N'C ', N'2012/04/15', 0, 0, 0, 8, N'2012/08/24', N'', N'', N'ROLeL120322044326054', 0, NULL, NULL, NULL, NULL, N'N', N'2012/04/15', N'demo.ekm.eland.com.tw', N'..為了協助企業與知識工作者快速地導入知識管理，eKM 系統設計涵蓋了知識管理循環與工作知識流動兩大概念。 知識管理循環包含了知識物件的定義、擷取、整合、分享、利用與創新；工作知識流動則強調知識工作者在日常的工作中，利用親和的介面與標準的作業程序，將工作中的知識儲存在知識管理平台中，成為企業知識資產。 知識管理循環與工作知識流動是eKM 系統設計的兩大基礎概念最完整的企業知識管理平台eKM4.7 是一套完整涵蓋企業知識管理生命週期的知識管理平台，包括知識文件管理、專家黃頁、知識社群、FAQ工作知識等模組，以知識入口網站平台方式呈現，並採用企業  ..知識管理平台的效益企業導入知識管理平台，可以藉由資訊科技的幫助，掌握、分享從個人到組織的經驗，進而應用與創造更多的知識，改善經營績效。  ..在實務應用上，企業可以量化企業知識管理導入後所帶來的有形效益，舉例如下：知識管理應用的有形效益 量化數字縮短人員學習時間 ↓23％提昇作業能力（生產力） ↑25％加速回覆客戶時間 ↑25％節省作業成本 ↓15％降低培訓員工成本 ↓20％縮短產品  ..成為新一代企業eKM 企業知識管理平台在知識管理平台上的最佳選擇。  .. 企業知識管理導入方法與工具意藍科技累積多年為企業建置知識管理平台的經驗，提供客戶知識管理平台平台的導入方法與工具（eKM 顧問導入工具），藉由八個步驟與簡單的七張表單（E..', N'知識, 文件, 機制, 平台, 使用者, 量化, 自訂, 企業內, 流程, ekm', N'', N'400403', N'ROLeL120319051307043', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1334440736515', 1, N'1333660491062', N'1314193934156_1', N'2012/04/15', N'06:02:28', 1334440948921, N'400403', N'知識管理', N'', N'KM知識管理.pptx', N'/certified/1314193934156_1/1334440736515/1/main/', N'', N'', N'N', N'II', N'2012/05/08', 0, 0, 0, 18, N'2012/08/24', N'', N'', N'ROLeL120319051307043', 0, NULL, NULL, NULL, NULL, N'N', N'2012/04/15', N'demo.ekm.eland.com.tw', N'..企業入口網站 EIP P440(Enterprise Information Portal)1.個人化(單一入口)2.內容管理3.資訊搜尋(自然語言及知識地圖)4.協同合作(討論區、群組工作區…)5.工作流程管理(通知、追蹤、查閱、核准…)6.  ..透過定量的分析，將儲存的資料庫、資料倉儲、資料超市內的資料加值處理，產生出能支援使用者決策的資訊或知識。  ..知識管理系統應具備的功能知識管理系統定義與功能模組第一層資料整合層（data aggregation layer）利用各種技術擷取企業所需資料。  ..第三層資料呈現層（datapresentation layer）利用知識地圖作為企業知識分享的導覽，並有多種個人化設計的機制。  ..意藍科技(eKM4.5)意藍科技知識管理架構核心技術除了全文檢索外，包括Hysearch搜尋引擎、工作流程引擎、 HyDoc文件管理系統、Hyjoumal期刊系統、XML Gateway版權管理、Metadata管理、DRM數位版權管理、浮水印 等，能夠提供包括政府與企業入口網站、整合性資料庫建置、文件管理/工作流程管理/知識管理/數位典藏系統專案導入服務。 系統目標為提升知識工作者作業品質，整合異質資料庫資料，節省系統目標為提升知識工作者作業品質，整合異質資料庫資料，節省企業、人力成本，提昇整體工作效能，發展組織知識。  ..台灣的系統..', N'知識, 文件, 檢索, 將其, 架構, 管理系統, 核心, 網站, 使用者, 全文檢', N'', N'400403', N'ROLeL120319051307043', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1338183726696', 1, N'1324447432822', N'1314193934156_1', N'2012/05/28', N'13:44:12', 1338183852024, N'rorita', N'123', N'', N'123PDF-1.pdf', N'/certified/1314193934156_1/1338183726696/1/main/', N'', N'', N'N', N'C ', N'2012/05/28', 0, 0, 0, 4, N'2012/08/24', N'', N'', N'ROLeL110824214109001', 0, NULL, NULL, NULL, NULL, N'N', N'2012/05/28', N'', N'QA.. ', N'', N'', N'rorita', N'ROLeL110824214109001', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1338183726696', 2, N'1324447432822', N'1314193934156_1', N'2012/05/30', N'11:48:31', 1338349711227, N'rorita', N'123', N'', N'123PDF-1.pdf', N'/certified/1314193934156_1/1338183726696/2/main/', N'', N'Chinese', N'N', N'C ', N'2012/05/30', 0, 0, 0, 14, N'2012/8/24', N'', N'', N'ROLeL110824214109001', 1, NULL, NULL, NULL, NULL, N'N', N'2012/05/30', N'', N'QA..', N'', N'AS', N'rorita', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1338183726696', 3, N'1324447432822', N'1314193934156_1', N'2012/06/13', N'17:30:03', 1339579803187, N'rorita', N'123', N'', N'行政院人事行政總處全球資訊網-天然災害停止辦公及上課情形查詢.pdf', N'/certified/1314193934156_1/1338183726696/3/main/', N'', N'Chinese', N'N', N'C ', N'2012/06/13', 0, 0, 0, 1, N'2012/8/24', N'', N'', N'ROLeL110824214109001', 0, NULL, NULL, NULL, NULL, N'N', N'2012/06/13', N'', N'行政院人事行政總處全球資訊網-天然災害停止辦公及上課情形查詢http://www.cpa.gov.tw/[2012/6/12 上午 11:03:57]行政院人事行政總處 全球資訊網101年6月12日 (星期二) 天然災害停止辦公及上課情形偽造、 變造本總處網頁發布不實訊息者，可能涉嫌觸犯刑法第211條：「偽造、變造公文書，足以生損害於公眾或他人者，處一年以上七年以下有期徒刑。」之偽造公文書罪或可能涉嫌觸犯刑法第360條：「無故以電腦程式或其他電磁方式干擾他人電腦或其相關設備，致生損害於 公眾或他人者，處三年以下有期徒刑、拘役或科或併科十萬元以下罰金。」之干擾他人電腦罪，請勿以身試..', N'停止辦公, 總處, 部地區, 上課情形, 縣巿, 觸犯刑', N'ad', N'rorita', N'', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1338879455437', 1, N'1005294004450', N'1314193934156_1', N'2012/06/05', N'14:57:53', 1338879473390, N'eipadmin', N'Bnews', N'', N'B2.doc.txt', N'/certified/1314193934156_1/1338879455437/1/main/', N'', N'', N'N', N'C ', N'2012/06/05', 0, 0, 0, 5, N'2012/08/24', N'', N'', N'KM_DEPT', 0, NULL, NULL, NULL, NULL, N'N', N'2012/06/05', N'', N'B2docB2docB2docB2docB2docB2docB2docB2docB2docB2docB2docB2docB2docB2docB2docB2docB2doc.. ', N'docb', N'', N'eipadmin', N'KM_DEPT', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1338887715484', 1, N'1005294004450', N'1319771509338_1', N'2012/06/05', N'17:15:15', 1338887715500, N'wendy', N'2011南山人壽年報', N'', N'2011南山人壽年報.pdf', N'/certified/1319771509338_1/1338887715484/1/main/', N'', N'', N'N', N'C ', N'2012/06/05', 0, 0, 0, 7, N'2013/06/05', N'', N'', N'ROLeL111028112208005', 0, NULL, NULL, NULL, NULL, N'N', N'2012/06/05', N'demo.ekm.eland.com.tw', N'', N'', N'', N'wendy', N'ROLeL111028112208005', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1338887715484', 2, N'1005294004450', N'1319771509338_1', N'2012/06/05', N'17:15:15', 1338887715500, N'wendy', N'2011南山人壽年報', N'', N'2011南山人壽年報.pdf', N'/draft/1319771509338_1/1338887715484/1/main/', N'', N'', N'N', N'D ', N'', 0, 0, 0, 0, N'2013/06/05', N'', N'', N'ROLeL111028112208005', 0, NULL, NULL, NULL, NULL, NULL, NULL, N'demo.ekm.eland.com.tw', N'', N'', N'', N'wendy', N'ROLeL111028112208005', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1339652974937', 1, N'1005294004450', N'1314193877640_1', N'2012/06/14', N'13:51:14', 1339653074562, N'hwtop', N'KM 導入概念    (  翰文 )', N'', N'KM 導入概念    (  翰文 ).ppt', N'/certified/1314193877640_1/1339652974937/1/main/', N'', N'', N'N', N'C ', N'2012/06/14', 0, 0, 0, 9, N'2012/08/24', N'', N'', N'ROLeL110829101259000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/06/14', N'demo.ekm.eland.com.tw', N'翰文企業管理顧問(股) 公..', N'知識管理,KM', N'', N'hwtop', N'ROLeL110829101259000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1339829670084', 1, N'1005294004450', N'1314375524250_1', N'2012/06/16', N'14:57:10', 1339829830084, N'400502', N'上傳文件測試TOPMOST', N'測試文件', N'借書清單.xlsx', N'/certified/1314375524250_1/1339829670084/1/main/', N'', N'', N'N', N'C ', N'2012/06/16', 0, 0, 0, 7, N'2013/06/16', N'', N'', N'ROLeL120319051430046', 0, NULL, NULL, NULL, NULL, N'N', N'2012/06/16', N'demo.ekm.eland.com.tw', N'', N'ISO三階文件,帥帥雄', N'', N'rorita', N'ROLeL110824214109001', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1340238314865', 1, N'1005294025270', N'1314375524187_1', N'2012/06/21', N'08:27:59', 1340238479084, N'ariel', N'北區市場調查作業程序書', N'', N'231-RUL-001北區市場調查作業程序書.txt', N'/certified/1314375524187_1/1340238314865/1/main/', N'', N'', N'N', N'C ', N'2012/06/21', 4, 1, 4, 5, N'9999/12/31', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2012/06/21', N'demo.ekm.eland.com.tw', N'', N'市場調查', N'', N'ariel', N'ROLeL110824214126003', N'231-RUL-001', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1340240589834', 1, N'1005294025270', N'1314375524078_1', N'2012/06/21', N'09:04:39', 1340240679490, N'ariel', N'中區市場調查作業程序書', N'', N'231-RUL-002中區市場調查作業程序書.txt', N'/certified/1314375524078_1/1340240589834/1/main/', N'', N'', N'N', N'C ', N'2012/06/21', 0, 0, 0, 9, N'2013/06/21', N'', N'', N'ROLeL110824214126003', 0, NULL, NULL, NULL, NULL, N'N', N'2012/06/21', N'demo.ekm.eland.com.tw', N'', N'', N'', N'ariel', N'ROLeL110824214126003', N'231-RUL-002', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1341304743292', 1, N'1005294025270', N'1341304726808_1', N'2012/07/03', N'16:39:34', 1341304774636, N'eipadmin', N'testp-1', N'', N'新文字文件.txt', N'/certified/1341304726808_1/1341304743292/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 0, N'2013/07/03', N'', N'', N'KM_DEPT', 0, NULL, NULL, NULL, NULL, N'N', N'2012/07/03', N'', N'(無)', N'(無)', N'', N'eipadmin', N'KM_DEPT', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1343715625349', 1, N'1005294004450', N'1314375524468_1', N'2012/07/31', N'14:21:36', 1343715696661, N'michael', N'背景資料', N'', N'世正開發.pdf', N'/certified/1314375524468_1/1343715625349/1/main/', N'', N'', N'N', N'C ', N'2012/07/31', 0, 0, 0, 7, N'2013/07/31', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/07/31', N'demo.ekm.eland.com.tw', N'', N'', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1347327495921', 1, N'1005294004450', N'1314375523359_1', N'2012/09/11', N'09:48:53', 1347328133546, N'michael', N'公司簡介_eland', N'', N'公司簡介_eland.doc', N'/certified/1314375523359_1/1347327495921/1/main/', N'', N'', N'N', N'C ', N'2012/09/11', 0, 0, 0, 1, N'2013/09/11', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/09/11', N'demo.ekm.eland.com.tw', N'..意藍科技專注於知識管理相關軟體產品的研發及行銷，並成功地在知識管理相關領域的技術與應用建立起領先地位。  ..在自有產品的開發上，意藍團隊經過多年的耕耘及投入，在「企業知識管理」領域已建立起良好的口碑及成績。 自2001年推出國內第一套知識管理套裝軟體產品以來，「eKM系列產品」歷經多次改版，不斷地提升研發技術與改進產品功能，持續開發更符合企業應用實務所需的知識管理平台，迄今已獲得逾百家客戶採用，產業涵蓋高科技、製造業、服務業、學術機構…等，而其中更  ..est Choice」知識管理類第一名，成為國內知識管理的領導品牌。  ..在知識管理的領域內，除了持續建立產品整合的技術伙伴外，意藍科技同時也與其他軟體公司、系統整合商及知識管理顧問發展緊密的合作關係，期望共同為客戶帶來更完整的知識管理解決方案及服務內容。  ..此外，於2006年亦獲得經濟部工業局領航計畫「知識文件管理共通框架平台之研發與推廣」專案補助。  ..除了透過投入研發，追求技術的提昇外，2007年為了加速在資訊分析、檢索相關領域的技術提昇，更轉投資國內搜尋引擎的領導廠商—龍捲風科技，並進一步針對雙方的技術資源進行整合，強化彼此的技術能量及能力，提供更完整的解決方案。  ..公司沿革(殊榮及認證)1999..', N'知識, 軟體, 意藍科, 研發, 資策會, 元件, 建置, 客戶, 文件, 中文', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1347329193421', 1, N'1005294004450', N'1341304726808_1', N'2012/09/11', N'10:07:34', 1347329254109, N'test_know', N'測試用', N'', N'這是一份測試文件.docx', N'/certified/1341304726808_1/1347329193421/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 0, N'2013/07/03', N'', N'', N'ROLeL110826231610013', 0, NULL, NULL, NULL, NULL, N'N', N'2012/09/11', N'', N'', N'', N'', N'test_know', N'ROLeL110826231610013', N'', N'N', N' ')
GO
INSERT INTO dbo.techdoc_version(doc_id, ver_id, type_id, category_id, create_date, create_time, create_datetime, creator, subject, sub_subject, file_name, file_url, description, language, ver_delete, status, certified_date, score_total, score_count, score_average, hit_count, expired_day, abstract, keywords, dept, forward_count, edit_date, edit_time, edit_datetime, expediter_id, ideal, ideal_date, source_from, digest, keyword, post_description, uploader, uploader_dept, techdoc_label, isSetTop, setTop_date)
  VALUES(N'1347329764015', 1, N'1005294004450', N'1341304726808_1', N'2012/09/11', N'10:16:37', 1347329797905, N'michael', N'testtest!!', N'', N'這是一份測試文件.docx', N'/certified/1341304726808_1/1347329764015/1/main/', N'', N'', N'N', N'CI', N'', 0, 0, 0, 0, N'2013/07/03', N'', N'', N'ROLeL110824214047000', 0, NULL, NULL, NULL, NULL, N'N', N'2012/09/11', N'', N'', N'', N'', N'michael', N'ROLeL110824214047000', N'', N'N', N' ')
GO
ALTER TABLE dbo.eip_group
	ADD CONSTRAINT PK__eip_group__173876EA
	PRIMARY KEY (g_id)
GO
ALTER TABLE dbo.eip_group_member
	ADD CONSTRAINT PK__eip_group_member__1A14E395
	PRIMARY KEY (g_id, m_account, m_site)
GO
ALTER TABLE dbo.eip_member
	ADD CONSTRAINT PK__eip_member__00551192
	PRIMARY KEY (m_account, m_site)
GO
ALTER TABLE dbo.techdoc_version
	ADD CONSTRAINT PK__techdoc_version__2CBDA3B5
	PRIMARY KEY (doc_id, ver_id)
GO
