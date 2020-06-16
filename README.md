[![Build Status](https://dev.azure.com/chefcorp-partnerengineering/Chef%20Base%20Plans/_apis/build/status/chef-base-plans.db?branchName=master)](https://dev.azure.com/chefcorp-partnerengineering/Chef%20Base%20Plans/_build/latest?definitionId=69&branchName=master)

# db

Berkeley DB is a family of embedded key-value database libraries providing scalable high-performance data management services to applications.  See [documentation](https://www.oracle.com/database/technologies/related/berkeleydb.html)

## Maintainers

* The Core Planners: <chef-core-planners@chef.io>

## Type of Package

Binary package

### Use as Dependency

Binary packages can be set as runtime or build time dependencies. See [Defining your dependencies](https://www.habitat.sh/docs/developing-packages/developing-packages/#sts=Define%20Your%20Dependencies) for more information.

To add core/db as a dependency, you can add one of the following to your plan file.

##### Buildtime Dependency

> pkg_build_deps=(core/db)

##### Runtime dependency

> pkg_deps=(core/db)

### Use as Tool

#### Installation

To install this plan, you should run the following commands to first install, and then link the binaries this plan creates.

``hab pkg install core/db --binlink``

will add the following binaries to the PATH:

* /bin/db_archive
* /bin/db_checkpoint
* /bin/db_deadlock
* /bin/db_dump
* /bin/db_hotbackup
* /bin/db_load
* /bin/db_log_verify
* /bin/db_printlog
* /bin/db_recover
* /bin/db_replicate
* /bin/db_stat
* /bin/db_tuner
* /bin/db_upgrade
* /bin/db_verify

#### Using an example binary

You can now use the binary as normal.  For example:

``/bin/db_dump --help`` or ``db_dump --help``

```bash
$ db_dump --help
db_dump: invalid option -- '-'
usage: db_dump [-klNprRV]
        [-d ahr] [-f output] [-h home] [-P password] [-s database] db_file
usage: db_dump [-kNpV] [-d ahr] [-f output] [-h home] -m database
```
