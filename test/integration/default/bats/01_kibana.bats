#!/usr/bin/env bats

@test "Kibana is installed" {
    run rpm -q kibana
    [ "$status" -eq 0 ]
}

@test "Kibana is running" {
    run systemctl is-active kibana
    [ "$status" -eq 0 ]
}

@test "Kibana is listening on 127.0.0.1:5601" {
    run curl -ILk 127.0.0.1:5601
    [ "$status" -eq 0 ]
}

@test "Kibana default port 5601 is set as an http port for httpd proxying" {
    set -o pipefail
    run bash -c "semanage port -l | grep '^http_port_t' | grep 5601"
    set +o pipefail
    [ "$status" -eq 0 ]
}
