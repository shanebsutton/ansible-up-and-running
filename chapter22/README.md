# Readme

Example from Chapter 22 in the book.

## Nexus Role Issues

The Nexus role from 'ansible-thoteam.nexus3-oss' appears to be out of date and no longer maintained. The download links from Sonatype have not been updated.

See [this issue in GitHub](https://github.com/ansible-ThoTeam/nexus3-oss/issues/441)

A new fork recommended in that issue is: <https://github.com/CloudKrafter/nexus-ansible-collection>

However, the Sonatype link is still an issue with the 'cloudkrafter.nexus.nexus_oss' role.

The error I am currently seeing:

```bash
TASK [nexus : Download Nexus package] ******************************************************************************************************************************************************************
[WARNING]: could not parse environment value, skipping: ['{{ nexus_proxy_env_vars | default(omit) }}']
fatal: [server04]: FAILED! => {"changed": false, "download_url": null, "msg": "Error determining download URL: Failed to get download URL: No valid download URLs found for version 3.79.1-04", "version": "3.79.1-04"}
```

May revisit later...
