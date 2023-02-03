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
6. ~ Init swarm (SINGLE, ONCE)
   - Run on leader `docker swarm init`
7. ~ Register nodes in swarm
   1. Get join token from leader `docker swarm join-token manager`
   2. Run shown command on all other nodes
8. ~ Setup GlusterFS pool peers (execute from existing node after two are added)
   - `gluster peer probe <node hostname>`
9.  ./setup-gluster-vol, must provide peer hostnames (SINGLE, ONCE)

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

## Adding A New Node
1. Run commands in usage guide, skipping steps marked as "ONCE"
2. Add brick into GlusterFS pool
   1. `gluster volume add-brick <volume name> replica <node count> <node hostname>:/data/<brick name>/<volume name>`
   2. `gluster volume rebalance <volume name> fix-layout start` (ensure everything is synced)
   3. `gluster volume rebalance test-volume status` (watch the status)
