//------------------------------------------------------------------------| EMD.h                                        //
//                                                                        | EMD.scr, Bildschirmschoner                   //
//                                                                        | von Dietmar Schrausser, (C) SCHRAUSSER 2011  // 
//


#if !defined(AFX_EMD_H__9D2ED6FA_E526_4083_BA98_94441F4270D6__INCLUDED_)
#define AFX_EMD_H__9D2ED6FA_E526_4083_BA98_94441F4270D6__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif 

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"	


class CEMDApp : public CWinApp
{
	public:
	CEMDApp();

	//{{AFX_VIRTUAL(CEMDApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL


	//{{AFX_MSG(CEMDApp)
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}

#endif 
