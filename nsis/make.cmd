set SETUP="FileBot-setup.exe"
set NSI="filebot.nsi"
set DIGEST="../hash/nsis.sha256"

del %SETUP%
makensis %NSI%
signtool sign /fd SHA256 /t http://time.certum.pl/ /v /a %SETUP%
powershell (get-filehash -algorithm SHA256 %SETUP%).hash.toLower() > %DIGEST%
