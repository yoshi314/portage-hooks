# portage-hooks
A bunch of various portage hooks

# Installation

add `source /etc/portage/portage-hooks` to /etc/portage/bashrc

Copy portage-hooks to /etc/portage and create necessary hooks

# What it does

When an ebuild phase comes up, the scripts in hooks/<phase>.d will get executed in alphabetical order.
  
You can get a list pf phases from gentoo docs, or the script will print them out, even if there are no hook assigned.
