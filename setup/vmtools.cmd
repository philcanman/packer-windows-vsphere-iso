@rem Sneak in an activation against KMS
start /wait cscript %SystemRoot%\System32\slmgr.vbs -skms atc-kms-03.wwtatc.local
start /wait cscript %SystemRoot%\System32\slmgr.vbs -ATO

@rem Silent mode, basic UI, no reboot
e:\setup64 /s /v "/qn reboot=ReallySuppress"
