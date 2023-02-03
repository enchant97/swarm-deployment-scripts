# Swarm Deployment Scripts
A collection of scripts to help automate a setup of Docker Swarm deployment.

> Use these scripts at your own risk!

## Usage

> "~" indicates manual step

1. ~ Install Ubuntu Server with LVM (ALL)
2. ~ Set static ip using Netplan (ALL)
3. ~ Map node name to ip's in /etc/hosts file (ALL)
4. Run ./install (ALL)
5. Run ./post-install (ALL)
6. ~ Init swarm (SINGLE)
7. Register nodes in swarm
8. ~ Setup GlusterFS pool peers
9. ./setup-gluster-vol, must provide peer hostnames (SINGLE)

### ./install
1. Updates packages
2. Issues restart if needed, execute script again after restart
3. Install Docker
4. Install GlusterFS

### ./post-install
1. Create & Mount a LVM Volume for GlusterFS
2. Make directory for GlusterFS volume

### ./setup-gluster-vol
1. Create GlusterFS volume on provided peers
2. Start the volume
