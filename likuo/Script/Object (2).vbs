'******
'�����
'���ߣ���Ծ��
'******
Set objBrowser = Description.Create()
		objBrowser("micclass").Value = "Browser"
Set objPage = Description.Create()
		objPage("micclass").Value = "Page"
'��¼�����û���
Set objUserName = Description.Create()
		objUserName("name").Value = "username"
'��¼��������
Set objPwd = Description.Create()
		objPwd("name").Value = "userpwd"
'��¼����SUBMIT
Set objBtn = Description.Create()
		objBtn("name").Value = "SUBMIT"	
'Hi, admin!
Set objAdmin = Description.Create()
		objAdmin("text").Value = "Hi, admin!"
'�˳�
Set objOut = Description.Create()
		objOut("text").Value = "Sign Out"
'��ʳ����
Set objCateManage = Description.Create()
		objCateManage("text").Value = "��ʳ����"
		objCateManage("abs_x").Value = "309"
		objCateManage("abs_y").Value = "443"
'��ʳ���������
Set objAdd = Description.Create()
		objAdd("text").Value = "���"
'��ʳ��������ӡ�����ʳ����
Set objName = Description.Create()
		objName("name").Value = "name"
'��ʳ��������ӡ�����ʳ�۸�
Set objPrice = Description.Create()
		objPrice("name").Value = "price"
'��ʳ��������ӡ�������ʽ
Set objOrderno = Description.Create()
		objOrderno("name").Value = "orderno"
'��ʳ��������ӡ�����������
Set objCid = Description.Create()
		objCid("name").Value = "cid"
'��ʳͼƬ
Set objFile = Description.Create()
		objFile("text").Value = "ѡ��Ҫ���ص��ļ�"
Set objOpen = Description.Create()
		objOpen("window id").Value = "1"
		objOpen("regexpwndclass").Value = "Button"
Set objDirect = Description.Create()
		objDirect("window id").Value = "0"
'��ʳ��������ӡ�����ʳ����
Set objDescribe = Description.Create()
		objDescribe("name").Value = "describe"
'��ʳ��������ӡ���Submit
Set objSubmit = Description.Create()
		objSubmit("name").Value = "Submit"