del FileBot-setup.exe

makensis filebot.nsi

signtool sign /fd SHA256 /t http://time.certum.pl/ /v /a FileBot-setup.exe
