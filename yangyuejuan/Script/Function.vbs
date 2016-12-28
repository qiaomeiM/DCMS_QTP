'#############
		'函数名称：ReadExcel()
		'函数的目的：操错Excel(读)
		'输入：无
		'返回值：有ExcValue
		'创建者：Leo
		'时间：11.3
		'#############
		'filepath:文件路径
		'sheetname:excel中sheet的名字
		'x，y:是通过行(x)与列(y)定位具体哪个单元格
		Function ReadExcel(filepath,sheetname,x,y)
			Dim ObjExcel,SrcExcel,ExcValue
			Set ObjExcel = CreateObject("Excel.Application")
			'设置excel程序前台不可显示
			ObjExcel.Visible = False
			'设置SrcExcel等于Excel工作薄open
			'Activate定位到活动的sheet
			'ExcValue获取某个单元格的值
			Set SrcExcel = ObjExcel.Workbooks.Open(filepath)
			SrcExcel.Worksheets(sheetname).Activate
			ExcValue = SrcExcel.Worksheets(sheetname).Cells(x,y).Value
			
			'当出现"在当前位置发现已存在为“resume.xlw”文件....."，可以使用DisplayAlerts
			'屏蔽该问题
			ObjExcel.DisplayAlerts = False
			ObjExcel.Save
			ReadExcel = ExcValue
			
			ObjExcel.Quit
			Set ObjExcel = Nothing
			Set SrcExcel = Nothing
		End Function 


		'#############
		'函数名称：DoExcel()
		'函数的目的：操错Excel(写)
		'输入：无
		'返回值：
		'创建者：Leo
		'时间：11.3
		'#############
		'filepath:文件路径
		'sheetname:excel中sheet的名字
		'x，y:是通过行(x)与列(y)定位具体哪个单元格
		Function DoExcel(filepath,sheetname,x,y)
			Dim ObjExcel,SrcExcel,ExcValue
			Set ObjExcel = CreateObject("Excel.Application")
			'设置excel程序前台不可显示
			ObjExcel.Visible = False
			'设置SrcExcel等于Excel工作薄open
			'Activate定位到活动的sheet
			'ExcValue获取某个单元格的值
			Set SrcExcel = ObjExcel.Workbooks.Open(filepath)
			SrcExcel.Worksheets(sheetname).Activate
			'将CheckValue的值写入到Excel中的某个单元格中
			SrcExcel.Worksheets(sheetname).Cells(x,y).Value = CheckValue
			
			'当出现"在当前位置发现已存在为“resume.xlw”文件....."，可以使用DisplayAlerts
			'屏蔽该问题
			ObjExcel.DisplayAlerts = False
			ObjExcel.Save
			
			ObjExcel.Quit
			Set ObjExcel = Nothing
			Set SrcExcel = Nothing
		End Function 

'登录
Sub RightLogin()
	Browser(objBrowser).Sync
	'Browser(objBrowser).FullScreen
	With Browser(objBrowser).Page(objPage)
      		.WebEdit(objUserName).Set"admin"
      		.WebEdit(objPwd).Set"admin"
		.WebButton(objBtn).Click
	End With
End Sub
'退出
Sub ExitBrowser()
	With  Browser(objBrowser).Page(objPage)
	  	.Link(objAdmin).Click
	  	.Link(objOut).Click
	End With
	Browser(objBrowser).Page(objPage).Sync
	Browser(objBrowser).CloseAllTabs
End Sub
