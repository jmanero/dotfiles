Atom Configuration
==================

Atom stores its profile in `~/.atom`. Unique identifiers have been removed from `config.cson`, and packages have been listed in `packages.list`.

To install packages: `for PACKAGE in $(cat packages.list); do apm install $PACKAGE; done`
