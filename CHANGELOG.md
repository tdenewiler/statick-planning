# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)

## Unreleased

### Added

### Fixed

### Removed

## v0.1.3

### Added

- Add Python 3.10 support.
- Add plugin for VAL Parser tool from King's College London.
- Switch type hints from comment style to inline style.
- Switch workflow testing from local installed Statick to
  [Statick GitHub Action](https://github.com/sscpac/statick-action).

### Fixed

- Use quotes for version numbers in YAML to avoid truncating trailing zeros.
- Do not fail workflow if Codecov results are not uploaded successfully.
  That step is too brittle and fails intermittently.

## v0.1.2 - 2021-09-22

### Added

- Add testing support for Python 3.10.
- Add weekly scheduled test actions to identify issues on a consistent basis.
  This will catch bugs related to updated dependencies when the code is not modified.

### Fixed

- Fixed a bug in the stock planning configuration file.
  The name of the tool plugin in the configuration file was not updated to reflect the renamed plugin.
- Fixed pylint warnings related to using the open call without specifying an encoding.

### Removed

- No longer supporting Ubuntu 16.04.
- No longer supporting Python 3.5.

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
