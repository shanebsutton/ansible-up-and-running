# Ansible Up and Running: Chapter 09

This is an example app deployment from "Ansible: Up and Running"

Sample code: <https://github.com/ansiblebook/ansiblebook/tree/master/chapter09>

I am using Vagrant for both the controller and web server, which differs from the book.

After making a few tweaks the site comes up at <https://www.192.168.56.10.nip.io/>

`roles/mezzanine/tasks/django.yml`:

- "Set the site id" task
  - Add an executable to specify the version of Python

  ```yml
  - name: Set the site id
    script: setsite.py
    args:
      executable: python3
    <more>
  ```

- "Set the admin password" task
  - Add an executable to specify the version of Python

  ```yml
  - name: Set the admin password
    script: setadmin.py
    args:
      executable: python3
    <more>
  ```

Also slightly updated the machine definitions in the Vagrantfile, and used provisioners to create and share SSH keys.

## Makefile

The example code for the chapter also introduced a Makefile.

I have included it here, but I have not modified it for my use case (a Vagrant hosted controller).
