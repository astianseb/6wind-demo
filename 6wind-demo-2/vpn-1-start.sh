#!/bin/bash
cfy blueprint upload -b branch-1-vpn-bp ./6wind-vnf-vpn.yaml
cfy deployment create --skip-plugins-validation branch-1-vpn -b branch-1-vpn-bp -i 6wind-vnf-vpn-1-input.txt
cfy executions start -d branch-1-vpn install
