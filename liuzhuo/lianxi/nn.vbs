'#################
'函数名：ReadExcel
'功能：读取Excel
'输入：有（4个）
'返回值：有ExcelValue
'创建者：李娅
'时间：2016年12月6日
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
