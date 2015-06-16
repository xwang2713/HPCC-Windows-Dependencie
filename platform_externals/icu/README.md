Even though icu2c comes with compiled binaries and libraries, it doesn't have the debug build
which is required by boost-regex build. Perform the following: 

1. http://site.icu-project.org/download/54#TOC-ICU4C-Download
2. Follow the instructions in readme.html to compile ICU with VS 10 2010 64bit for both Debug and Release.
   It is important to build the Debug version since Boost-regex relies on it to detect ICU.
   
   Open the "<ICU>\source\allinone\allinone.sln" in Microsoft Visual Studio 2010 or later.
   Make sure to build makedata first before building the solution to resolve the following error:
   http://userguide.icu-project.org/icufaq#TOC-Why-am-I-seeing-a-small-only-a-few-K-instead-of-a-large-several-megabytes-data-shared-library-icudt-Opening-ICU-services-fails-with-U_MISSING_RESOURCE_ERROR-and-u_init-returns-failure


3. You can get the precompiled icu from Precomiled icu packages: http://www.npcglib.org/~stathis/blog/precompiled-icu/   
   Choose lowest rev. Visual Studio package in case there is a compatibility issue.
