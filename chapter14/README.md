# Chapter 14 Examples

If problems with line endings the following is helpful:

`sed -i 's/.$//' file`

From: <https://ubuntuforums.org/showthread.php?t=1436135>


## venv issues

If problems with virtual envs...likely has something to do with symlinks and the shared folder between the guest and host. Can use a different directory as the project directory on the guest and copy files if necessary. Running Git Bash as admin works as well.

See:

- <https://superuser.com/questions/1115329/vagrant-shared-folder-and-symbolic-links-under-windows-10>
- <https://www.thomaswiesner.com/running-vagrant-with-symbolic-links-enabled>
- <https://stackoverflow.com/questions/24200333/symbolic-links-and-synced-folders-in-vagrant>

Ultimately used the last option and changed the sync type to `rsync`. Note that `rsync` is not automatic.

Can use `vagrant rsync` command for a manual sync. See `vagrant rsync -help`.

Note that `vagrant rsync` appears to be one way, from the host to the guest.

`vagrant rsync-auto` runs continuously to sync. Would have to `vagrant ssh` in another window...
