#!/bin/bash

#-----------------------|DOCUMENTATION|-----------------------#
# @descr:
# @fonts: https://github.com/coreos/flannel/issues/554
#         https://coreos.com/flannel/docs/latest/flannel-config.html
#         https://coreos.com/rkt/docs/latest/signing-and-verification-guide.html#download-and-verify-an-aci
#-------------------------------------------------------------#

# @descr: Main function of the script, it runs automatically on the script call.
# @param: 
#    $@ | array: (*)
function StartInstallation {

    printf '%b\n' "CoreOS already has (Flannel) installed on your system...";

    # Download and verify an ACI
    # Using the fetch subcommand you can download and verify an ACI without immediately
    # running a pod. This can be useful to precache ACIs on a large number of hosts:
    # https://coreos.com/releases/#1632.3.0
    # https://quay.io/repository/coreos/flannel?tab=tags
    rkt fetch quay.io/coreos/flannel:v0.9.1 --insecure-options=image;

} 

# @descr: Call of execution of the script's main function.
StartInstallation "$@";

# @descr: Finishing the script!!! :P
exit 0;