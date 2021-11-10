# Windows DHCP Option Bulk Modifier
 
## Usage
Run the script in an Admin PowerShell window ON the DHCP Server

Press option 1 and follow the prompts.

Wherever the option number you specify is found on the DHCP server, it will be changed to the value you specify. This is useful for changing DNS servers or TFTP servers across the enterprise.


#### Why?
This script was created to aid in cutting over to a new Cisco Unified Communications deployment. It is intended to modify DHCP option 150 as such, but will work for any DHCP option number.