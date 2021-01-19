# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)

## Unreleased

### Added

### Fixed

### Removed

## v0.1.1 - 2021-01-19

### Added

- Use new Statick feature of walking directory structure once per package for discovery phase.

### Changed

- Convert use of print() and show tool output flags to the built-in Python logging module.
- Rename `val` tool plugin to `val_validate`.
  This matches the actual utility name, and provides room to add other utilities from the VAL project.

## v0.1.0 - 2020-11-18

### Added

- Discovery plugin to find PDDL files.
  The files are sorted into domain and problem file types based on the contents of the file.
- Tool plugin for the `Validate` application from
  [VAL](https://github.com/KCL-Planning/VAL/tree/master/applications#validate).
  `Validate` is a utility to check the syntax of PDDL files.
  In order to use the tool a domain file is required to have been discovered, and a problem file is optional.
