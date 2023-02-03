# Swarm Deployment Scripts
A collection of scripts to help automate a setup of Docker Swarm deployment.

> Use these scripts at your own risk!

## Usage

> "~" indicates manual step

1. ~ Install Ubuntu Server with LVM (ALL)
2. ~ Set static ip using Netplan (ALL)
3. ~ Map node name to ip's in /etc/hosts file (ALL)
4. Run install (ALL)
5. Run after-install (ALL)
6. ~ Init swarm (SINGLE)
7. Register nodes in swarm
8. ~ Setup GlusterFS pool peers
9. ~ Setup replicated GlusterFS volume (SINGLE)

### ./install
1. Updates packages
2. Issues restart if needed, execute script again after restart
3. Install Docker
4. Install GlusterFS

### ./after-install
1. Create & Mount a LVM Volume for GlusterFS
2. Make directory for GlusterFS volume
