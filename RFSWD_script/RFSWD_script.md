# RFSWD script
> RF Safety Watch Dog script

Display script for VE12 (Windows batch script): [dump_RFSWD_info.bat](https://github.com/FranckMauconduit/MRI-packages-siemens/blob/main/RFSWD_script/dump_RFSWD_info.bat)

Display script for VA (Linux bash script): [dump_RFSWD_info_xa.sh](https://github.com/FranckMauconduit/MRI-packages-siemens/blob/main/RFSWD_script/dump_RFSWD_info_xa.sh)

## Short description

The script extracts some of the information in the RFSWDHistoryListNew.log file on the MR system. It helps to find out the levels of SAR of a sequence and/or the limits that was reached when a sequence aborts or does not run at all.

## Information

- Software versions: All VE12U baselines, XA60 baseline. The script has initially been written and tested for VE12U UHF pTx systems (7T and above). It has then been adapted to the new log files of XA60 baseline.

- Screenshots and information are detailed in a pdf: [dump_RFSWD_info](https://github.com/FranckMauconduit/MRI-packages-siemens/blob/main/RFSWD_script/dump_RFSWD_info.pdf)

## Execution on XA platform

On XA platform, it is not convenient to execute a bat file because of security restrictions. For this reason, an alternative way to execute the script is proposed. The script is written in bash and should be executed from the MARS environment. 
1. Copy the script in a custom folder such as C:\ProgramData\Siemens\Numaris\MriCustomer\Scripts\
2. Open a command window with MARS_SSH
3. From MARS environment, navigate to folder with cd /opt/medcom/MriCustomer/Scripts
4. Execute the script with dump_RFSWD_info_xa.sh

It is also possible to create a windows shortcut file using the following line of command:
%ProgramFiles%\Siemens\Numaris\Mars\MCIR\Terminal\plink.exe -t root@MARS /opt/medcom/mricustomer/scripts/dump_rfswd_info_xa.sh

The shortcut file can even be added to the Windows Start menu by copying it into C:\ProgramData\Microsoft\Windows\Start Menu\

## Versions

- Version 1.1

add forward and reflected peak energy on each Tx channel

- Version 1.0

First release version