##################################
##  CCDC AUTO-HARDENING SCRIPT  ##
##     By: Patrick Coffelt      ##
##                              ##
## For:                         ##
##  -Windows Server '03,'08,'12 ##
##  -Windows 7                  ##
##################################

#Get OS version for correct downloads
$temp = (gwmi win32_operatingsystem).Caption

#region Get OS Version
if       ($temp -match "2012") {
    $OSVersion = "2012"
} elseif ($temp -match "2008") {
    $OSVersion = "2008"
} elseif ($temp -match "2003") {
    $OSVersion = "2003"
}


#region Get IP
$url = "http://checkip.dyndns.com"
$webclient = New-Object System.Net.WebClient 
$Ip = $webclient.DownloadString($url)
$Ip2 = $Ip.ToString()
$ip3 = $Ip2.Split(" ")
$ip4 = $ip3[5]
$ip5 = $ip4.replace("</body>","")
$FinalIPAddress = $ip5.replace("</html>","")
#endregion
