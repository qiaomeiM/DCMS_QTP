'#################
'��������ReadExcel
'���ܣ���ȡExcel
'���룺�У�4����
'����ֵ����ExcelValue
'�����ߣ����
'ʱ�䣺2016��12��6��
'#################

Function ReadExcel(filepath,sheetname,x,y)
	Dim ExcelSheet
	Dim ExcelValue
	Dim ExcelOpen
	Set ExcelSheet = CreateObject("Excel.Sheet")
	ExcelOpen.Application.Visible = False
	Set ExcelOpen = ExcelOpen.Workbooks.Open(filepath)
	ExcelOpen.Worksheets(sheetname).Activate
	ExcelValue = ExcelOpen.Worksheets(sheetname).Cells(x,y).Values
	
	ExcelSheet.DisplayAlerts = False
	ExcelSheet.Save
	ReadExcel = ExcelValue
	
	ExcelSheet.Quit
	Set ExcelSheet = Nothing
	Set ExcelOpen = Nothing 
End Function 
