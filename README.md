# Code samples from Ansible: Up and Running, 3rd Edition

Published in 2022...reading at the beginning of 2025.

From O'Reilly: <https://learning.oreilly.com/library/view/ansible-up-and/9781098109141/>

Code for book: <https://github.com/ansiblebook>

A lot of this will be Vagrant files to spin up test machines.

## Setup

Had trouble using WSL to launch vagrant. It worked, until it didn't...

Going to use multiple VirtualBox VMs, with one as the controller.

This will typically mean that the forwarded ports in the book examples are not necessary, as the controller and any guests will be created on a private network within VirtualBox.

`vagrant init ubuntu/focal64` to stick with the book...

Tried different boxes in later chapters, with varying degrees of success. Some boxes do not come with the guest additions for example, which prevents synced folders.
