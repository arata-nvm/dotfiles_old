#!/usr/bin/env bash

# [x]hoge
function log_status {
  printf "[\033[1m\033[35mx\033[0m]%s\n" "$*";
}

# [+]hoge
function log_success {
  printf "[\033[1m\033[32m+\033[0m]%s\n" "$*";
}

# [-]hoge
function log_failure {
  printf "[\033[1m\033[31m-\033[0m]%s\n" "$*";
}

# [*]hoge
function log_info {
  printf "[\033[1m\033[34m*\033[0m]%s\n" "$*";
}

# [!]hoge
function log_warning {
  printf "[\033[1m\033[33m!\033[0m]%s\n" "$*";
}

