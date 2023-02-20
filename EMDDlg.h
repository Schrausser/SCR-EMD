//------------------------------------------------------------------------| EMDDlg.h                                     //
//                                                                        | EMD.scr, Bildschirmschoner                   //
//                                                                        | von Dietmar Schrausser, (C) SCHRAUSSER 2011  // 
//

#if !defined(AFX_EMDDLG_H__51113773_72DD_4211_A14E_C35C65E2F83B__INCLUDED_)
#define AFX_EMDDLG_H__51113773_72DD_4211_A14E_C35C65E2F83B__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif 


class CEMDDlg : public CDialog
{
	public:
	CEMDDlg(CWnd* pParent = NULL);

	POINT pt1;
	POINT dlg;

	int x_, sw, sw1, sw_m;


	//{{AFX_DATA(CEMDDlg)
	enum { IDD = IDD_EMD_DIALOG };
	//}}AFX_DATA

	//{{AFX_VIRTUAL(CEMDDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

	protected:
	HICON m_hIcon;

	//{{AFX_MSG(CEMDDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	afx_msg void OnShowWindow(BOOL bShow, UINT nStatus);
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnSize(UINT nType, int cx, int cy);
	afx_msg void OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}

#endif
