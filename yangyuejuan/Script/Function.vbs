'#############
		'�������ƣ�ReadExcel()
		'������Ŀ�ģ��ٴ�Excel(��)
		'���룺��
		'����ֵ����ExcValue
		'�����ߣ�Leo
		'ʱ�䣺11.3
		'#############
		'filepath:�ļ�·��
		'sheetname:excel��sheet������
		'x��y:��ͨ����(x)����(y)��λ�����ĸ���Ԫ��
		Function ReadExcel(filepath,sheetname,x,y)
			Dim ObjExcel,SrcExcel,ExcValue
			Set ObjExcel = CreateObject("Excel.Application")
			'����excel����ǰ̨������ʾ
			ObjExcel.Visible = False
			'����SrcExcel����Excel������open
			'Activate��λ�����sheet
			'ExcValue��ȡĳ����Ԫ���ֵ
			Set SrcExcel = ObjExcel.Workbooks.Open(filepath)
			SrcExcel.Worksheets(sheetname).Activate
			ExcValue = SrcExcel.Worksheets(sheetname).Cells(x,y).Value
			
			'������"�ڵ�ǰλ�÷����Ѵ���Ϊ��resume.xlw���ļ�....."������ʹ��DisplayAlerts
			'���θ�����
			ObjExcel.DisplayAlerts = False
			ObjExcel.Save
			ReadExcel = ExcValue
			
			ObjExcel.Quit
			Set ObjExcel = Nothing
			Set SrcExcel = Nothing
		End Function 


		'#############
		'�������ƣ�DoExcel()
		'������Ŀ�ģ��ٴ�Excel(д)
		'���룺��
		'����ֵ��
		'�����ߣ�Leo
		'ʱ�䣺11.3
		'#############
		'filepath:�ļ�·��
		'sheetname:excel��sheet������
		'x��y:��ͨ����(x)����(y)��λ�����ĸ���Ԫ��
		Function DoExcel(filepath,sheetname,x,y)
			Dim ObjExcel,SrcExcel,ExcValue
			Set ObjExcel = CreateObject("Excel.Application")
			'����excel����ǰ̨������ʾ
			ObjExcel.Visible = False
			'����SrcExcel����Excel������open
			'Activate��λ�����sheet
			'ExcValue��ȡĳ����Ԫ���ֵ
			Set SrcExcel = ObjExcel.Workbooks.Open(filepath)
			SrcExcel.Worksheets(sheetname).Activate
			'��CheckValue��ֵд�뵽Excel�е�ĳ����Ԫ����
			SrcExcel.Worksheets(sheetname).Cells(x,y).Value = CheckValue
			
			'������"�ڵ�ǰλ�÷����Ѵ���Ϊ��resume.xlw���ļ�....."������ʹ��DisplayAlerts
			'���θ�����
			ObjExcel.DisplayAlerts = False
			ObjExcel.Save
			
			ObjExcel.Quit
			Set ObjExcel = Nothing
			Set SrcExcel = Nothing
		End Function 

'��¼
Sub RightLogin()
	Browser(objBrowser).Sync
	'Browser(objBrowser).FullScreen
	With Browser(objBrowser).Page(objPage)
      		.WebEdit(objUserName).Set"admin"
      		.WebEdit(objPwd).Set"admin"
		.WebButton(objBtn).Click
	End With
End Sub
'�˳�
Sub ExitBrowser()
	With  Browser(objBrowser).Page(objPage)
	  	.Link(objAdmin).Click
	  	.Link(objOut).Click
	End With
	Browser(objBrowser).Page(objPage).Sync
	Browser(objBrowser).CloseAllTabs
End Sub
