Script for installing a BigBlueButton 2.3 (or later) server in about 30 minutes.

This script also supports installation of a coturn (TURN) server on a separate server.

USAGE:
    wget -qO- https://ubuntu.bigbluebutton.org/bbb-install.sh | bash -s -- [OPTIONS]

OPTIONS (install BigBlueButton):

  -v <version>           Install given version of BigBlueButton (e.g. 'bionic-23') (required)

  -s <hostname>          Configure server with <hostname>
  -e <email>             Email for Let's Encrypt certbot

  -x                     Use Let's Encrypt certbot with manual dns challenges

  -a                     Install BBB API demos
  -g                     Install Greenlight
  -c <hostname>:<secret> Configure with coturn server at <hostname> using <secret>

  -m <link_path>         Create a Symbolic link from /var/bigbluebutton to <link_path>

  -p <host>              Use apt-get proxy at <host>
  -r <host>              Use alternative apt repository (such as packages-eu.bigbluebutton.org)

  -d                     Skip SSL certificates request (use provided certificates from mounted volume)
  -w                     Install UFW firewall

  -h                     Print help

OPTIONS (install coturn only):

  -c <hostname>:<secret> Setup a coturn server with <hostname> and <secret> (required)
  -e <email>             Configure email for Let's Encrypt certbot (required)

OPTIONS (install Let's Encrypt certificate only):

  -s <hostname>          Configure server with <hostname> (required)
  -e <email>             Configure email for Let's Encrypt certbot (required)
  -l                     Install Let's Encrypt certificate (required)
  -x                     Use Let's Encrypt certbot with manual DNS challenges (optional)


EXAMPLES:

Sample options for setup a BigBlueButton server

    -v bionic-23 -s bbb.example.com -e info@example.com -w
    -v bionic-23 -s bbb.example.com -e info@example.com -w -g
    -v bionic-23 -s bbb.example.com -e info@example.com -w -g -c turn.example.com:1234324

Sample options for setup of a coturn server (on a Ubuntu 20.04 server)

    -c turn.example.com:1234324 -e info@example.com

SUPPORT:
    Community: https://bigbluebutton.org/support
         Docs: https://github.com/bigbluebutton/bbb-install
