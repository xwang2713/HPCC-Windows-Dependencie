Eventhough icu2c comes with compiled binaries and libraries but it doesn't have debug build
which is required by boost-regex build. User can following  

1. http://site.icu-project.org/download/54#TOC-ICU4C-Download
2. Follow the instruction in readme.html to compile ICU with VS 10 2010 64bit for both Debug and Release.
   It is important to build Debug version since Boost-regex rely on it to detect ICU.
   
   In short: open the "<ICU>\source\allinone\allinone.sln in Microsoft Visual Studio 2010 or later.
   Make sure to build makedata first before building solution to resolve following error:
   http://userguide.icu-project.org/icufaq#TOC-Why-am-I-seeing-a-small-only-a-few-K-instead-of-a-large-several-megabytes-data-shared-library-icudt-Opening-ICU-services-fails-with-U_MISSING_RESOURCE_ERROR-and-u_init-returns-failure


3. User can get precompiled icu from  Precomiled icu packages: http://www.npcglib.org/~stathis/blog/precompiled-icu/   
   Choose lowest Visual Studio package in chance there is compatibility issue.
