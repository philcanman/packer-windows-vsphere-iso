#!/bin/bash
# variable files ending with .auto.pkrvars.hcl are automatically loaded
packer build \
  -force \
  -var='os_iso_checksum=4bc6c7e7c61af4b5d1b086c5d279947357cff45c2f82021bb58628c2503eb64e' \
  -var='os_iso_url=http://pxeboot01.wwtpoc.local/ISO/Microsoft/Windows%2011/Win11_English_x64v1.iso' \
  -var='vsphere_guest_os_type=windows9_64Guest' \
  -var='vsphere_vm_name=tpl-windows-11-packer' \
  -var='autounattend_file=answer_files/11/en/autounattend.xml' .
