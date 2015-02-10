TFTPServer for Windows CE

Disclaimer

This software should be used as a development tool only. It should not be used in production devices at all,
because

1-) It is buggy

2-) It is just a hacked port from an untested unix implementation

3-) It is not secure AT ALL

License: GPL

Original source code taken from http://tftp.sourceforge.net/
opts.c and opst.h implementation taken from http://www.seebs.net/

Instructions:

Copy the tftpserverce.exe to the (MIPS) target device
change %BOARDIP% value in tftpce.bat or set a %BOARDIP% enviroment variable with the ip of the board.
Copy tftpce.bat to <Documents and Settins>\<username>\SendTo
Right click on any file -> SendTo -> TFTPCE

Know issues

Can´t send more than X files 
 ---> This is a limitation of the command line building for the batch file.
Can´t Send directories.

Features added from a standard TFTP server
----> You can ascend or descend directories. 

Questions?
Marcelo van Kampen - mvkampen@gmail.com
