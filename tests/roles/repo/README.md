# Ansible role for YUM repo subjects

Put this role in your test_repo.yml playbook. You'll need
to have the following variables defined:

 * subjects: Space separated list of repo files to enable
 * packages: List of packages to install from those repos

Include any playbooks after this role with tests you want to
run. For example test_repo.yml
