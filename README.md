# ansible-web-requests

This is a sample project to demonstrate different approaches to making Web API requests using Ansible. 

### Project Notes:

1. When using Ansible you must declare the actions for making the Web API calls. A couple of popular options are to use the `shell` module for example using Bash commands (along with `curl` + `jq` tools) or PowerShell cmdlets. Another option is to use the built-in Ansible `uri` module. 

2. The Docker image is used to simplfy the runtime environment dependencies (instaled packages) for the workflow to run and provides a lightweight process for the purposes of evaluation. 



<br>

### Required Prerequisites:
 - Docker installed

<br>
<br>

## Example:


### Container Image Build:
```
docker build -t ansible-web-requests:1.0.0 .
```

<br>


### Start Container (All-in-One Ansbile Playbook):
```
docker run --rm -ti ansible-web-requests:1.0.0
```

<br>


### Start Container (Specify Ansible Role):
```
docker run --rm -ti ansible-web-requests:1.0.0 --tags curl
docker run --rm -ti ansible-web-requests:1.0.0 --tags powershell
docker run --rm -ti ansible-web-requests:1.0.0 --tags ansible
```
