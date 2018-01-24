#!/bin/bash
cfy blueprint upload -b hq-bp ./6wind-hq-baseline.yaml
cfy deployment create --skip-plugins-validation hq -b hq-bp
cfy executions start -d hq install
