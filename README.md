# Overview: ansible-role-kibana
This role will install and configure [Kibana](https://www.elastic.co/products/kibana) to visualize your logs and stuff.

- - - -

# Variables

Set the package module installation state to either *present* or *latest*.

    kibana_package_state: present

Settings that determine where kibana listens. Defaults to the following.

    kibana_listen_addr: 127.0.0.1
    kibana_listen_port: 5601

- - - -
# How to hack away at this role
Before submitting a PR, please create a test and run it through test-kitchen.

You will need to have at least Ruby 2.x, probably through rbenv, and Bundler.

    bundle install
    bundle update

    ssh-add -D
    ssh-add -k ~/KEY_NAME
    ssh-add -L
    bundle exec kitchen create
    bundle exec kitchen converge
    bundle exec kitchen verify
    bundle exec kitchen destroy

You will want to added the following entry to `/etc/hosts` so you can hit your local version. Note that the 192.168.33.102 comes from `.kitchen.yml`.

    192.168.33.102 kibana.whatever.test

You should now be able to access [http://kibana.whatever.test/](http://kibana.whatever.test/) and see the Kibana dashboard!

- - - -
# Theme Music
[Leftover Crack - Poliamor Fiesta Crack](https://www.youtube.com/watch?v=nq1lhJLdgJI)
