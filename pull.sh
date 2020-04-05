#!/bin/bash
git checkout src/main.py
git fetch upstream pull/$1/head
git checkout -b pull/$1 FETCH_HEAD