#!/bin/bash
cfy blueprint upload -b branch-bp ./6wind-vnf-branch.yaml
cfy deployment create --skip-plugins-validation branch-1 -b branch-bp -i 6wind-vnf-branch-1-input.txt
cfy executions start -d branch-1 install
