#Requires -RunAsAdministrator

$bannerText = @"

====================================================================================

                    ██████╗  █████╗ ████████╗ ██████╗██╗  ██╗                       
                    ██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██║  ██║                       
                    ██████╔╝███████║   ██║   ██║     ███████║                       
                    ██╔══██╗██╔══██║   ██║   ██║     ██╔══██║                       
                    ██████╔╝██║  ██║   ██║   ╚██████╗██║  ██║                       
                    ╚═════╝ ╚═╝  ╚═╝   ╚═╝    ╚═════╝╚═╝  ╚═╝                       
                                                                                    
██████╗ ██╗  ██╗ ██████╗██████╗      ██████╗ ██████╗ ████████╗██╗ ██████╗ ███╗   ██╗
██╔══██╗██║  ██║██╔════╝██╔══██╗    ██╔═══██╗██╔══██╗╚══██╔══╝██║██╔═══██╗████╗  ██║
██║  ██║███████║██║     ██████╔╝    ██║   ██║██████╔╝   ██║   ██║██║   ██║██╔██╗ ██║
██║  ██║██╔══██║██║     ██╔═══╝     ██║   ██║██╔═══╝    ██║   ██║██║   ██║██║╚██╗██║
██████╔╝██║  ██║╚██████╗██║         ╚██████╔╝██║        ██║   ██║╚██████╔╝██║ ╚████║
╚═════╝ ╚═╝  ╚═╝ ╚═════╝╚═╝          ╚═════╝ ╚═╝        ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
                                                                                    
            ███╗   ███╗ ██████╗ ██████╗ ██╗███████╗██╗███████╗██████╗               
            ████╗ ████║██╔═══██╗██╔══██╗██║██╔════╝██║██╔════╝██╔══██╗              
            ██╔████╔██║██║   ██║██║  ██║██║█████╗  ██║█████╗  ██████╔╝              
            ██║╚██╔╝██║██║   ██║██║  ██║██║██╔══╝  ██║██╔══╝  ██╔══██╗              
            ██║ ╚═╝ ██║╚██████╔╝██████╔╝██║██║     ██║███████╗██║  ██║              
            ╚═╝     ╚═╝ ╚═════╝ ╚═════╝ ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝              
                                                                                    

                                 (c) 2021 - BY



 █████   █████ █████  █████ ██████   █████ ███████████ ██████████ ███████████  
░░███   ░░███ ░░███  ░░███ ░░██████ ░░███ ░█░░░███░░░█░░███░░░░░█░░███░░░░░███ 
 ░███    ░███  ░███   ░███  ░███░███ ░███ ░   ░███  ░  ░███  █ ░  ░███    ░███ 
 ░███████████  ░███   ░███  ░███░░███░███     ░███     ░██████    ░██████████  
 ░███░░░░░███  ░███   ░███  ░███ ░░██████     ░███     ░███░░█    ░███░░░░░███ 
 ░███    ░███  ░███   ░███  ░███  ░░█████     ░███     ░███ ░   █ ░███    ░███ 
 █████   █████ ░░████████   █████  ░░█████    █████    ██████████ █████   █████
░░░░░   ░░░░░   ░░░░░░░░   ░░░░░    ░░░░░    ░░░░░    ░░░░░░░░░░ ░░░░░   ░░░░░ 
                                                                               
                                                                               
                                                                               
             █████   ████ █████       ██████████ █████ ██████   █████          
            ░░███   ███░ ░░███       ░░███░░░░░█░░███ ░░██████ ░░███           
             ░███  ███    ░███        ░███  █ ░  ░███  ░███░███ ░███           
             ░███████     ░███        ░██████    ░███  ░███░░███░███           
             ░███░░███    ░███        ░███░░█    ░███  ░███ ░░██████           
             ░███ ░░███   ░███      █ ░███ ░   █ ░███  ░███  ░░█████           
             █████ ░░████ ███████████ ██████████ █████ █████  ░░█████          
            ░░░░░   ░░░░ ░░░░░░░░░░░ ░░░░░░░░░░ ░░░░░ ░░░░░    ░░░░░           
                                                                                                                                                              
====================================================================================
"@

Write-Host $bannerText


$menuText = @"
====================================================================================
                                --- MAIN MENU ---
(1)   -   Batch change DHCP option for all scopes on the server where it exists
(2)   -   View legal disclaimer
(3)   -   Exit
====================================================================================
"@


$legalText = @"


====================================================================================
The MIT License

Copyright © 2010-2016 Mitchell Hashimoto

Permission is hereby granted, free of charge, to any person obtaining a copy of
thi software and associated documentation files (the “Software”), to deal in the
Software without restriction, including without limitation the rights to use, copy,
modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
and to permit persons to whom the Software is furnished to do so, subject to the
following conditions:

The above copyright notice and this permission notice shall be included in all copies
or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE
OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
====================================================================================


"@


function Show-DHCPMENU {

while($true){

Write-Host $menuText

$option = Read-Host "Select option (1-3) and press enter"

Switch($option){
1{
    $optnum = Read-Host "Enter DHCP Option Number to Modify"
    $optval = Read-Host "Enter New DHCP Option Value"
    Execute-BATCHDHCP -OptNumber $optnum -OptValue $optval
}
2{Write-Host $legalText}
3{exit}
Default{Write-Host -ForegroundColor Red "INVALID OPTION"}
}
}

}


function Execute-BATCHDHCP {

Param(
[int]$OptNumber,
$OptValue
)

$scopes = (Get-DhcpServerv4Scope).ScopeID

$scopesToModify = @()

foreach($scope in $scopes){
    $scopeOptions = Get-DhcpServerv4OptionValue -ScopeId $scope -OptionId $OptNumber -ErrorAction SilentlyContinue
    if($scopeOptions){$scopesToModify += ($scope.IPAddressToString)}
}

foreach($scopeId in $scopesToModify){
    try{
        $optArray = @()
        $OptValue = $OptValue.Replace(" ","")
        $optArray += $OptValue.split(",")
        Set-DhcpServerv4OptionValue -ScopeId $scopeId -OptionId $OptNumber -Value $optArray
        Write-Host -ForegroundColor Green $("Successfully modified scope $scopeId")
    }
    catch{
        Write-Host -ForegroundColor Red $("Error changing option $OptNumber for scope $scopeId. $_")
    }
    
}
}

Show-DHCPMENU