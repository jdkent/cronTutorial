#!/usr/bin/env bash

rsync -av --delete $(pwd)/dirA/ $(pwd)/dirB/
