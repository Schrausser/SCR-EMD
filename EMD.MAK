# Microsoft Developer Studio Generated NMAKE File, Based on EMD.DSP
!IF "$(CFG)" == ""
CFG=EMD - Win32 Debug
!MESSAGE No configuration specified. Defaulting to EMD - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "EMD - Win32 Release" && "$(CFG)" != "EMD - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "EMD.MAK" CFG="EMD - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "EMD - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "EMD - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "EMD - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\EMD.scr"

!ELSE 

ALL : "$(OUTDIR)\EMD.scr"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\EMD.obj"
	-@erase "$(INTDIR)\EMD.pch"
	-@erase "$(INTDIR)\EMD.res"
	-@erase "$(INTDIR)\EMDDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(OUTDIR)\EMD.scr"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /Fp"$(INTDIR)\EMD.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\"\
 /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Release/
CPP_SBRS=.
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /o NUL /win32 
RSC_PROJ=/l 0x407 /fo"$(INTDIR)\EMD.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\EMD.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:no\
 /pdb:"$(OUTDIR)\EMD.pdb" /machine:I386 /out:"$(OUTDIR)\EMD.scr" 
LINK32_OBJS= \
	"$(INTDIR)\EMD.obj" \
	"$(INTDIR)\EMD.res" \
	"$(INTDIR)\EMDDlg.obj" \
	"$(INTDIR)\StdAfx.obj"

"$(OUTDIR)\EMD.scr" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "EMD - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\EMD.scr"

!ELSE 

ALL : "$(OUTDIR)\EMD.scr"

!ENDIF 

CLEAN :
	-@erase "$(INTDIR)\EMD.obj"
	-@erase "$(INTDIR)\EMD.pch"
	-@erase "$(INTDIR)\EMD.res"
	-@erase "$(INTDIR)\EMDDlg.obj"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\vc50.idb"
	-@erase "$(INTDIR)\vc50.pdb"
	-@erase "$(OUTDIR)\EMD.ilk"
	-@erase "$(OUTDIR)\EMD.pdb"
	-@erase "$(OUTDIR)\EMD.scr"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_AFXDLL" /Fp"$(INTDIR)\EMD.pch" /Yu"stdafx.h" /Fo"$(INTDIR)\\"\
 /Fd"$(INTDIR)\\" /FD /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /o NUL /win32 
RSC_PROJ=/l 0x407 /fo"$(INTDIR)\EMD.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\EMD.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=/nologo /subsystem:windows /incremental:yes\
 /pdb:"$(OUTDIR)\EMD.pdb" /debug /machine:I386 /out:"$(OUTDIR)\EMD.scr"\
 /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\EMD.obj" \
	"$(INTDIR)\EMD.res" \
	"$(INTDIR)\EMDDlg.obj" \
	"$(INTDIR)\StdAfx.obj"

"$(OUTDIR)\EMD.scr" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_OBJS)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(CPP_SBRS)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(CFG)" == "EMD - Win32 Release" || "$(CFG)" == "EMD - Win32 Debug"
SOURCE=.\EMD.cpp

!IF  "$(CFG)" == "EMD - Win32 Release"

DEP_CPP_EMD_C=\
	".\EMD.h"\
	".\EMDDlg.h"\
	

"$(INTDIR)\EMD.obj" : $(SOURCE) $(DEP_CPP_EMD_C) "$(INTDIR)"\
 "$(INTDIR)\EMD.pch"


!ELSEIF  "$(CFG)" == "EMD - Win32 Debug"

DEP_CPP_EMD_C=\
	".\EMD.h"\
	".\EMDDlg.h"\
	".\StdAfx.h"\
	

"$(INTDIR)\EMD.obj" : $(SOURCE) $(DEP_CPP_EMD_C) "$(INTDIR)"\
 "$(INTDIR)\EMD.pch"


!ENDIF 

SOURCE=.\EMD.rc
DEP_RSC_EMD_R=\
	".\res\EMD.ico"\
	".\res\EMD.rc2"\
	

"$(INTDIR)\EMD.res" : $(SOURCE) $(DEP_RSC_EMD_R) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)


SOURCE=.\EMDDlg.cpp

!IF  "$(CFG)" == "EMD - Win32 Release"

DEP_CPP_EMDDL=\
	".\EMD.h"\
	".\EMDDlg.h"\
	

"$(INTDIR)\EMDDlg.obj" : $(SOURCE) $(DEP_CPP_EMDDL) "$(INTDIR)"\
 "$(INTDIR)\EMD.pch"


!ELSEIF  "$(CFG)" == "EMD - Win32 Debug"

DEP_CPP_EMDDL=\
	".\EMD.h"\
	".\EMDDlg.h"\
	".\StdAfx.h"\
	

"$(INTDIR)\EMDDlg.obj" : $(SOURCE) $(DEP_CPP_EMDDL) "$(INTDIR)"\
 "$(INTDIR)\EMD.pch"


!ENDIF 

SOURCE=.\StdAfx.cpp
DEP_CPP_STDAF=\
	".\StdAfx.h"\
	

!IF  "$(CFG)" == "EMD - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D\
 "_AFXDLL" /Fp"$(INTDIR)\EMD.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\"\
 /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\EMD.pch" : $(SOURCE) $(DEP_CPP_STDAF)\
 "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "EMD - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D\
 "_WINDOWS" /D "_AFXDLL" /Fp"$(INTDIR)\EMD.pch" /Yc"stdafx.h" /Fo"$(INTDIR)\\"\
 /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\EMD.pch" : $(SOURCE) $(DEP_CPP_STDAF)\
 "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 


!ENDIF 

