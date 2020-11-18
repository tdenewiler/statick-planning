#!/bin/bash

rm -rf build/ dist/ .tox/ output-py* statick_output/* .*/*.egg-info ./*.egg-inf ./*.logo
find . -name __pycache__ -exec rm -rf {} \;
find . -name \*.pyc -exec rm -f {} \;
