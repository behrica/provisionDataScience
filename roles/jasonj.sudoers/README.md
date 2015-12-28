Sudoers
========

This Ansible role lets you safely edit sudoers on the specified host

Requirements
------------

Currently only runs against Ubuntu hosts.

Role Variables
--------------

None.

Dependencies
------------

This package has no dependencies on modules not included with Ansible by default.

License
-------

MIT

Author Information
------------------

Created by Jason Johnson
https://www.twitter.com/jasonj
https://github.com/jasonj

Examples
--------

```
---
- name: Sudoers test
  hosts: all
  roles:
    - jasonj.sudoers
```
