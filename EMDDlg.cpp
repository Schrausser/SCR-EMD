//------------------------------------------------------------------------| EMDDlg.cpp                                   //
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


CEMDDlg::CEMDDlg(CWnd* pParent ): CDialog(CEMDDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CEMDDlg)
	//}}AFX_DATA_INIT
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CEMDDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CEMDDlg)
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CEMDDlg, CDialog)
	//{{AFX_MSG_MAP(CEMDDlg)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_WM_MOUSEMOVE()
	ON_WM_SHOWWINDOW()
	ON_WM_TIMER()
	ON_WM_SIZE()
	ON_WM_KEYDOWN()
	ON_WM_LBUTTONDOWN()
	ON_WM_RBUTTONDOWN()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

BOOL CEMDDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	sw=x_=0;
	sw1=1;
	sw_m=1;

	SetTimer(0,10,0);
	ShowCursor(0);
	
	return 1; 
}

void CEMDDlg::OnShowWindow(BOOL bShow, UINT nStatus) 
{
	CDialog::OnShowWindow(bShow, nStatus);
	
	ShowWindow(SW_SHOWMAXIMIZED);//
}

void CEMDDlg::OnPaint() 
{
	UpdateWindow();

	CPaintDC ooo(this); 
	
	if(sw==0)
	{
				    CRect oo(0, 0, dlg.x, dlg.y);
		ooo.FillSolidRect(oo,  0  );
		
		ooo.SetTextColor (13357270);
				    
		            CFont o2;
	                      o2.CreateStockObject(ANSI_VAR_FONT);
		ooo.SelectObject(&o2);
		ooo.TextOut(dlg.x-100, dlg.y-20,"(C) SCHRAUSSER");
	}
			 
			 
	if (sw==1)
	{
		/*
			        CRect o1(+x_, 150, 80+x_, 600);
		ooo.FillSolidRect(o1,  0  );          
		              
			        CRect o2(80+x_, 150, 160+x_, 600);
		ooo.FillSolidRect(o2,  65280  );
						
			        CRect o3(160+x_, 150, 240+x_, 600);
		ooo.FillSolidRect(o3,  0  );
		*/

		            CRect o1((dlg.x/15    +x_)-dlg.x/15, dlg.y/6, (dlg.x/15+80 +x_)-dlg.x/15, 5*(dlg.y/6));
		ooo.FillSolidRect(o1,  0  );          
		              
			        CRect o2((dlg.x/15+80 +x_)-dlg.x/15, dlg.y/6, (dlg.x/15+160+x_)-dlg.x/15, 5*(dlg.y/6));
		ooo.FillSolidRect(o2,  65280  );
						
			        CRect o3((dlg.x/15+160+x_)-dlg.x/15, dlg.y/6, (dlg.x/15+240+x_)-dlg.x/15, 5*(dlg.y/6));
		ooo.FillSolidRect(o3,  0  );
	}
	sw=1;
}

void CEMDDlg::OnTimer(UINT nIDEvent) 
{
	if(sw1== 1)x_+=3; 
	if(sw1==-1)x_-=3;

	if(x_>=dlg.x-240|| x_<=-1)sw1*=-1;//1050 
	
	RedrawWindow();
	
	CDialog::OnTimer(nIDEvent);
}

HCURSOR CEMDDlg::OnQueryDragIcon(){return (HCURSOR) m_hIcon;}

void CEMDDlg::OnSize(UINT nType, int cx, int cy) 
{
	CDialog::OnSize(nType, cx, cy);

	dlg.x= cx;         
	dlg.y= cy;
	
	RedrawWindow();	
}

void CEMDDlg::OnMouseMove(UINT nFlags, CPoint point) 
{
	if(sw_m==1)
	{
		pt1.x=point.x;
		pt1.y=point.y;
		sw_m=0;
	}

	if(pt1.x!=point.x || pt1.y!=point.y) CDialog::OnCancel(); //
	
	CDialog::OnMouseMove(nFlags, point);
}


void CEMDDlg::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) {/*if(nChar!=VK_SPACE)*/CDialog::OnCancel();CDialog::OnKeyDown(nChar, nRepCnt, nFlags);}
void CEMDDlg::OnLButtonDown(UINT nFlags, CPoint point)         {CDialog::OnCancel();CDialog::OnLButtonDown(nFlags, point);}
void CEMDDlg::OnRButtonDown(UINT nFlags, CPoint point)         {CDialog::OnCancel();CDialog::OnRButtonDown(nFlags, point);}
