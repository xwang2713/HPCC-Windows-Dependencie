1) Microsoft Visual Studio 9 2008 by default may only enable 32bit
   To add 64bit support re-run the setup.exe select "Add or Remove Features"
   -> Language Tools -> Visual C++. Select "X64Compiler and Tools"


2) when build HPCC Platform debug version x86 if get "LINK : fatal error LNK1000: Internal error during IncrBuildImage"
   download VS90-KB948127.exe to fix it. This is a known problem on VS 9 (2008)

3) Wehn build HPCC Platform debug version x64 and get following error install 
   "http://www.microsoft.com/en-us/download/confirmation.aspx?id=2092

     The application has failed to start because its side-by-side configuration is incorrect. Please see the
     application event log or use the command-line sxstrace.exe tool for more detail.
     Project : error PRJ0019: A tool returned an error code from "Generating ../../generated/WsDeploy.xml"

     The root problem is Microsoft.VC90.DebugCRT,processorArchitecture="amd64" could not be found. 
     
     The workaround is to copy c:\Program Files(x86)\Microsoft Visual Studio 9.0\VC\redict\Debug_NonRedist\
     amd64\Microsoft.VC90.DebugCRT\*.* to <HPCC Build>\bin\Debug, then run build from Visual Studio (Debug x64)


4) Precomiled icu packages: http://www.npcglib.org/~stathis/blog/precompiled-icu/
