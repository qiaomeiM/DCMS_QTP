	'#############
	'�������ƣ�OpenPage()
	'����Ŀ�ģ���url
	'#############
	Option explicit
	Sub OpenPage (strurl)
		Dim StartURL
		StartURL =(strurl)
		Dim IE
		Set IE = CreateObject("InternetExplorer.Application")
		IE.Visible = True
		IE.Navigate StartURL
	End Sub
		'#############
		'�������ƣ�ReadExcel()
		'������Ŀ�ģ�����Excel(��)
		'���룺��
		'����ֵ����ExcValue
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
		'������Ŀ�ģ�����Excel(д)
		'���룺��
		'����ֵ��
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
			'���CheckValue�е�ֵΪtrue������Ԫ����Ϊ��ɫ��
			'���CheckValue�е�ֵΪfalse������Ԫ����Ϊ��ɫ��

				If objExcel.Cells(x,y-1) = objExcel.Cells(x,y)	Then
					objExcel.Cells(x,y+1).Value = "Pass"
					objExcel.Cells(x,y+1).Interior.ColorIndex = 10
				Else
					objExcel.Cells(x,y+1).Value = "Fail"
					objExcel.Cells(x,y+1).Interior.ColorIndex = 3
				End If 
			
				
			
			
			'������"�ڵ�ǰλ�÷����Ѵ���Ϊ��resume.xlw���ļ�....."������ʹ��DisplayAlerts
			'���θ�����
			ObjExcel.DisplayAlerts = False
			ObjExcel.Save
			
			ObjExcel.Quit
			Set ObjExcel = Nothing
			Set SrcExcel = Nothing
		End Function 
		
	