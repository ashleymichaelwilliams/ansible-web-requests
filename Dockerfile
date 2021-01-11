FROM centos:centos7

LABEL maintainer="Ashley Williams <ashleymichaelwilliams@gmail.com"
LABEL description="Sample Ansible project to demonstrate different approaches to making Web API requests."


# Add Project Files
ADD . /ansible-playbook/


# Install Required YUM Packages
ADD https://packages.microsoft.com/config/rhel/7/prod.repo /etc/yum.repos.d/microsoft.repo
RUN yum -y install https://packages.endpoint.com/rhel/7/os/x86_64/endpoint-repo-1.7-1.x86_64.rpm
RUN yum install -y epel-release && \
      yum install -y python3-pip jq git powershell

# Install Python Packages
RUN pip-3 install ansible jmespath


WORKDIR /ansible-playbook/
ENTRYPOINT ["ansible-playbook", "site.yml"]