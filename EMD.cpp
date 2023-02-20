//------------------------------------------------------------------------| EMD.cpp                                      //
//                                                                        | EMD.scr, Bildschirmschoner                   //
//                                                                        | von Dietmar Schrausser, (C) SCHRAUSSER 2011  // 
//

#include "stdafx.h"
#include "EMD.h"
#include "EMDDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


BEGIN_MESSAGE_MAP(CEMDApp, CWinApp)
	//{{AFX_MSG_MAP(CEMDApp)
	//}}AFX_MSG
	ON_COMMAND(ID_HELP, CWinApp::OnHelp)
END_MESSAGE_MAP()


CEMDApp::CEMDApp(){}
CEMDApp theApp;


BOOL CEMDApp::InitInstance()
{
	AfxEnableControlContainer();

	#ifdef _AFXDLL
	Enable3dControls();		
	#else
	Enable3dControlsStatic();	
	#endif

	        CEMDDlg dlg;
	  m_pMainWnd = &dlg;
	int nResponse = dlg.DoModal();
	
	if (nResponse == IDOK){}
	else if (nResponse == IDCANCEL){}

	return 0;
}
