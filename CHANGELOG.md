# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/)

## v0.4.0 - 2025-02-07

This set of plugins was merged into the main [Statick] repository and Python package.
All future development will happen in that repository.

### Updated

- The Statick dependency was pinned to lower than version 0.12.
  - This will ensure these plugins are not installed in the same space as the main `statick` package.
    Having both packages installed would cause conflicts between plugins.

## v0.3.0 - 2025-01-20

### Added

- Support for Python 3.12 and 3.13.
- Use of `pyproject.toml` instead of `setup.py` and `requirements.txt`.
- Supports new plugin discovery mechanism for the main Statick tool.
  - Switched from yapsy to setuptools for plugin mechanism. (sscpac/statick#508)

### Changed

- Disabled code coverage requirements in CI for now.
  - Unable to get line coverage working with new plugin mechanism.
    Unit tests still work to find problems.
- Rename plugin modules so they are shorter and less redundant.

### Removed

- No longer support Python 3.8.

## v0.2.2 - 2023-06-21

### Changed

- Run deployment actions on ubuntu-latest.
- Make setup.py and tox.ini consistent with supported versions.
- Update versions of actions to use only tags.
- Unpin sphinx dependency used when building documentation.

### Removed

- Drop support for Python 3.7 due to end-of-life on 27 June 2023.
- Removed deprecated pypi package [codecov](https://github.com/codecov/codecov-python) from Tox configuration. (#74)
  Discussion at: <https://community.codecov.com/t/codecov-yanked-from-pypi-all-versions/4259>.

## v0.2.1 - 2022-10-10

### Changed

- Updated tool plugins to match new structure introduced in sscpac/statick#423.

### Fixed

- Pin flake8<5 and pycodestyle<2.9.0 until <https://github.com/tholo/pytest-flake8/issues/87> is fixed.

## v0.2.0 - 2022-01-04

### Removed

- Drop support for Python 3.6 due to end-of-life of that distribution.
  See <https://endoflife.date/python>.
  To continue using Statick with Python 3.6 [pin the version](https://pip.pypa.io/en/stable/user_guide/)
  used to the `0.1` tags.
  An example is at the discussion at <https://github.com/sscpac/statick/discussions/376>.

## v0.1.3 - 2022-01-04

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
