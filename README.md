# Crood

![Build](https://github.com/leandronsp/crood/actions/workflows/build.yml/badge.svg)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop)
[![Ruby Style Guide](https://img.shields.io/badge/code_style-community-brightgreen.svg)](https://rubystyle.guide)

A simple CRUD maker.

## Requirements

Ruby

## Development tooling

Make and Docker

## Using make

```bash
$ make help
```
Output:
```
Usage: make <target>
  help                       Prints available commands
  bundle.install             Installs the Ruby gems
  bash                       Creates a container Bash
  run.tests                  Runs Unit tests
  rubocop                    Runs code linter with auto-correction
  ci                         Runs code linter and unit tests in CI
  server                     Runs the web server
```
