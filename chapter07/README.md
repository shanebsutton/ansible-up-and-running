This is an example app deployment from Ansible: Up and Running

I am using Vagrant for both the controller and web server, which differs from the book.

Ultimately, I was unable to get the app working. Dug through a few errors, but moving on for now. Currently getting a 503 error, and in the nginx logs it looks like nginx cannot communicate with gunicorn:

```txt
2025/03/14 19:09:41 [crit] 52229#52229: *1 connect() to unix:/home/vagrant/mezzanine/mezzanine_example/gunicorn.sock failed (2: No such file or directory) while connecting to upstream, client: 192.168.33.1, server: 192.168.33.10.nip.io,, request: "GET / HTTP/1.1", upstream: "http://unix:/home/vagrant/mezzanine/mezzanine_example/gunicorn.sock:/", host: "192.168.33.10.nip.io"
```

May try again on a linux machine or with WSL.
