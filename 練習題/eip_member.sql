CREATE TABLE eip_member ( 
	m_account    	nvarchar(32) NOT NULL,
	m_password   	nvarchar(80) NOT NULL,
	m_block      	nchar(1) NULL,
	m_name       	nvarchar(80) NULL,
	m_email      	nvarchar(80) NULL,
	m_gender     	nchar(1) NULL,
	is_ad        	nvarchar(10) NULL,
	m_create_date	nvarchar(10) NULL,
	m_create_time	nvarchar(8) NULL 
	)
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'123456', N'b59c67bf196a4758191e42f76670ceba', N'N', N'123456', N'aaa@cc.kk', N'M', N'KM', N'2012/05/17', N'16:27:26')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'BOARD_MGR', N'BOARD_MGR', N'Y', N'版主', N'board-mgr@eland', N'M', N'KM', N'2001/10/15', N'11:20:00')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'CATEGORY_MGR', N'CATEGORY_MGR', N'Y', N'文件分類管理者', N'category-mgr@eland', N'M', N'KM', N'2001/10/15', N'11:20:00')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'cnlin', N'cnlin', N'N', N'林俊男', N'cnlin@eland.com.tw', N'M', N'KM', N'2012/08/13', N'10:58:54')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'cnlintest', N'cnlintest', N'N', N'CNLIN', N'cnlin@eland.com.tw', N'M', N'KM', N'2012/08/15', N'15:37:33')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'DEPT_MGR', N'DEPT_MGR', N'Y', N'部門主管', N'dept-mgr@eland', N'M', N'KM', N'2001/10/15', N'11:20:00')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'eipadmin', N'eipadmin', N'N', N'系統管理者', N'pert@eland.com.tw', N'M', N'KM', N'2001/10/15', N'11:20:00')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'guest', N'guest', N'N', N'Guest', N'guest@eland', N'M', N'KM', N'2001/10/15', N'11:20:00')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'hsia', N'hsia', N'N', N'阿霞', N'pert@eland.com.tw', N'F', N'KM', N'2012/06/27', N'15:18:48')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'jean', N'jean', N'N', N'錦兒', N'pert0912@yahoo.com.tw', N'F', N'KM', N'2012/06/27', N'14:35:58')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'kay', N'kay', N'N', N'凱兒', N'pert@eland.com.tw', N'M', N'KM', N'2012/06/27', N'14:31:36')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'pert', N'pert', N'N', N'楊錦霞', N'pert@eland.com.tw', N'M', N'KM', N'2012/06/20', N'11:21:02')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'su1', N'su1', N'N', N'蘇大義', N'pert@eland.com.tw', N'M', N'KM', N'2012/08/17', N'09:40:54')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test001', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試A', N'ww@cc.com', N'F', N'KM', N'2012/04/19', N'03:46:28')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test003', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試C', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:46:31')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test004', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試D', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:46:32')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test005', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試E', N'ww@cc.com', N'F', N'KM', N'2012/04/19', N'03:46:34')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test006', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試F', N'ww@cc.com', N'F', N'KM', N'2012/04/19', N'03:46:35')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test007', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試G', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:46:36')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test008', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試H', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:46:37')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test009', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試I', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:46:39')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test010', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試J', N'ww@cc.com', N'F', N'KM', N'2012/04/19', N'03:46:40')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test012', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試K', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:46:41')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test013', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試L', N'ww@cc.com', N'F', N'KM', N'2012/04/19', N'03:46:43')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test015', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試N', N'ww@cc.com', N'F', N'KM', N'2012/04/19', N'03:46:45')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test016', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試O', N'ww@cc.com', N'F', N'KM', N'2012/04/19', N'03:46:47')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test020', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試S', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:46:52')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test021', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試T', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:46:53')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test022', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試A2', N'ww@cc.com', N'F', N'KM', N'2012/04/19', N'03:46:55')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test023', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試B2', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:46:56')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test024', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試C2', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:46:57')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test025', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試D2', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:46:59')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test026', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試E2', N'ww@cc.com', N'F', N'KM', N'2012/04/19', N'03:47:00')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test027', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試F2', N'ww@cc.com', N'F', N'KM', N'2012/04/19', N'03:47:01')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test028', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試G2', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:47:03')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test029', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試H2', N'brucehu@eland.com.tw', N'M', N'KM', N'2012/04/19', N'03:47:04')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test030', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試I2', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:47:05')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test031', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試J2', N'ww@cc.com', N'F', N'KM', N'2012/04/19', N'03:47:07')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test032', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試K2', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:47:08')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test033', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試L2', N'ww@cc.com', N'F', N'KM', N'2012/04/19', N'03:47:09')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test034', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試M2', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:47:11')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test035', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試N2', N'ww@cc.com', N'F', N'KM', N'2012/04/19', N'03:47:12')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test036', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試O2', N'ww@cc.com', N'F', N'KM', N'2012/04/19', N'03:47:13')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test037', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試P2', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:47:15')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test038', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試Q2', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:47:16')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test039', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試R2', N'ww@cc.com', N'F', N'KM', N'2012/04/19', N'03:47:17')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test040', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試S2', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:47:19')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test041', N'b59c67bf196a4758191e42f76670ceba', N'N', N'測試T2', N'ww@cc.com', N'M', N'KM', N'2012/04/19', N'03:47:20')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test101', N'b59c67bf196a4758191e42f76670ceba', N'N', N'運輸組test101', N'brucehu@eland.com.tw', N'M', N'KM', N'2012/07/12', N'05:25:59')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test102', N'b59c67bf196a4758191e42f76670ceba', N'N', N'運輸組test102', N'wei.0317@hotmail.com', N'M', N'KM', N'2012/07/12', N'05:26:06')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test103', N'b59c67bf196a4758191e42f76670ceba', N'N', N'運輸組test103', N'wei.0317@hotmail.com', N'M', N'KM', N'2012/07/12', N'05:26:09')
GO
INSERT INTO eip_member(m_account, m_password, m_block, m_name, m_email, m_gender, is_ad, m_create_date, m_create_time)
  VALUES(N'test104', N'b59c67bf196a4758191e42f76670ceba', N'N', N'運輸組test104', N'wei.0317@hotmail.com', N'M', N'KM', N'2012/07/12', N'05:26:10')
GO
