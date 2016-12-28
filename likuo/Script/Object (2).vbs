'******
'对象库
'作者：杨跃娟
'******
Set objBrowser = Description.Create()
		objBrowser("micclass").Value = "Browser"
Set objPage = Description.Create()
		objPage("micclass").Value = "Page"
'登录——用户名
Set objUserName = Description.Create()
		objUserName("name").Value = "username"
'登录——密码
Set objPwd = Description.Create()
		objPwd("name").Value = "userpwd"
'登录——SUBMIT
Set objBtn = Description.Create()
		objBtn("name").Value = "SUBMIT"	
'Hi, admin!
Set objAdmin = Description.Create()
		objAdmin("text").Value = "Hi, admin!"
'退出
Set objOut = Description.Create()
		objOut("text").Value = "Sign Out"
'美食管理
Set objCateManage = Description.Create()
		objCateManage("text").Value = "美食管理"
		objCateManage("abs_x").Value = "309"
		objCateManage("abs_y").Value = "443"
'美食管理——添加
Set objAdd = Description.Create()
		objAdd("text").Value = "添加"
'美食管理——添加——美食名称
Set objName = Description.Create()
		objName("name").Value = "name"
'美食管理——添加——美食价格
Set objPrice = Description.Create()
		objPrice("name").Value = "price"
'美食管理——添加——排序方式
Set objOrderno = Description.Create()
		objOrderno("name").Value = "orderno"
'美食管理——添加——所属分类
Set objCid = Description.Create()
		objCid("name").Value = "cid"
'美食图片
Set objFile = Description.Create()
		objFile("text").Value = "选择要加载的文件"
Set objOpen = Description.Create()
		objOpen("window id").Value = "1"
		objOpen("regexpwndclass").Value = "Button"
Set objDirect = Description.Create()
		objDirect("window id").Value = "0"
'美食管理——添加——美食描述
Set objDescribe = Description.Create()
		objDescribe("name").Value = "describe"
'美食管理——添加——Submit
Set objSubmit = Description.Create()
		objSubmit("name").Value = "Submit"