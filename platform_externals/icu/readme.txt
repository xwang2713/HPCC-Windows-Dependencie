1. http://site.icu-project.org/download/54#TOC-ICU4C-Download
2. Follow the instruction in readme.html to compile ICU with VS 9 2008 64bit for both Debug and Release.
   It is important to build Debug version since Boost-regex rely on it to detect ICU.
   
   In short: open the "<ICU>\source\allinone\allinone.sln in Microsoft Visual Studio 2010.
   Make sure to build makedata first before building solution to resolve following error:
   http://userguide.icu-project.org/icufaq#TOC-Why-am-I-seeing-a-small-only-a-few-K-instead-of-a-large-several-megabytes-data-shared-library-icudt-Opening-ICU-services-fails-with-U_MISSING_RESOURCE_ERROR-and-u_init-returns-failure
   
