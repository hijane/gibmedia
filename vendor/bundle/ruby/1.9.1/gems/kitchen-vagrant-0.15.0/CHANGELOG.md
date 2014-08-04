## 0.15.0 / 2014-04-28

### New features

* Support vagrant-softlayer plugin

### Improvements

* Improved/updated README documentation + typos
* Remove default memory setting
* Fix relative paths in synced folders

## 0.14.0 / 2013-12-09

### New features

* Add `config[:vm_hostname]` to set config.vm.hostname in Vagrantfile. ([@fnichol][])

### Improvments

* Add `config[:guest]` documentation in README. ([@fnichol][])


## 0.13.0 / 2013-12-04

### New features

* Use Opscode's new buckets for Virtual machines, allowing for downloads of VirtualBox and VMware Fusion/Workstation Bento boxes (Vagrant minimal base boxes). ([@sethvargo][])


## 0.12.0 / 2013-11-29

### Breaking changes

* Remove `use_vagrant_provision` configuration option.

### New features

* Major refactor of Vagrantfile generation, to use an ERB template. For more details please consult the `vagrantfile_erb` section of the README. ([@fnichol][])
* Add `pre_create_command` option to run optional setup such as Bindler. ([@fnichol][])

### Improvments

* Pull request [#56][]: Enabled passing options to the synced folders. ([@antonio-osorio][])
* Pull request [#55][]: Fix README badges. ([@arangamani][])


## 0.11.3 / 2013-11-09

### Bug fixes

* Revert `quiet` option used for Vagrant version checking. ([@fnichol][])


## 0.11.2 / 2013-11-05

### Bug fixes

* Remove misleading `quiet` option ([@sethvargo][])
* Relax dependency on Test Kitchen ([@sethvargo][])
* Remove deprecated references to `vagrant-berkshelf` ([@sethvargo][])

### Improvements

* Allow users to specify custom SSH private key ([@manul][])
* Use platform to determine which vagrant box to download (assume Opscode) ([@sethvargo][])


## 0.11.1 / 2013-08-29

### Bug fixes

* Pull request [#36][]: README fix for synched_folders. ([@mattray][])

### Improvements

* Pull request [#34][]: Disable synced folders by default. ([@dje][])


## 0.11.0 / 2013-07-23

### New features

* Pull request [#30][]: Support computed defaults for a select list of pre-determined platforms (see pull request and readme for quick example). ([@fnichol][])
* Pull request [#25][]: Add rackspace support. ([@josephholsten][])

### Improvements

* Pull request [#20][]: Respect `VAGRANT_DEFAULT_PROVIDER` environment variable. ([@tmatilai][])
* Pull request [#24][]: Allow to override Vagrant default SSH username. ([@gildegoma][])
* Pull request [#21][]: Configure tailor to actually check the code style. ([@tmatilai][])

### Bug fixes

* Pull request [#29][], issue [#28][]: Allow the vagrant guest setting to be set in the generated Vagrantfile via the kitchen.yml. ([@keiths-osc][])
* Pull request [#31][]: Add some quotes around Vagrantfile value. ([@albertsj1][])


## 0.10.0 / 2013-05-08

### New features

* Pull request [#12][]: Use SSHBase functionality (using ChefDataUploader) to manage Chef provisioning in the converge action and make Vagrant's built in provisioning an optional mode by setting `use_vagrant_provision: true` in the `driver_config` section of the .kitchen.yml. As a consequence, the vagrant-berkshelf middleware is now also optional and off by default (can be re-enabled by setting `use_vagrant_berkshelf_plugin: true`). ([@fujin][])
* Pull request [#18][]: Add VMware Fusion/Workstation support. ([@TheDude05][])

### Improvements

* Issue [#19][]: Recommend the vagrant-wrapper gem in README. ([@fnichol][])


## 0.9.0 / 2013-04-19

### Upstream changes

* Pull request [#16][]: Update Vagrant Berkshelf plugin detection for the vagrant-berkshelf and drop detection for berkshelf-vagrant. ([@martinisoft][])


## 0.8.0 / 2013-04-16

### Improvements

* Pull request [#15][]: Support berkshelf-vagrant 1.1.0+ in Vagrantfiles. ([@petejkim][], [@fnichol][])
* Add an explanation of how this driver works in the README. ([@fnichol][])


## 0.7.4 / 2013-03-28

### Improvements

* Drop `vagrant ssh -c` & communicate directly via SSH. ([@fnichol][])


## 0.7.3 / 2013-03-28

### Bug fixes

* Calling #destroy should not memoize #create_vagrantfile. ([@fnichol][], [@sandfish8][])


## 0.7.2 / 2013-03-23

### Bug fixes

* Wrap strings for data_bags_path and roles_path in Vagrantfiles. ([@fnichol][])


## 0.7.1 / 2013-03-23

### Bug fixes

* Depend on test-kitchen ~> 1.0.0.alpha.1 to get API updates. ([@fnichol][])


## 0.7.0 / 2013-03-22

### New features

* Pull request [#7][]: [Breaking] Support Vagrant 1.1+ and remove vagrant gem dependency. ([@fnichol][])
* Pull request [#8][]: Add dependency checks for Vagrant and berkshelf-vagrant plugin (if necessary). ([@fnichol][])


## 0.6.0 / 2013-03-02

The initial release.

<!--- The following link definition list is generated by PimpMyChangelog --->
[#7]: https://github.com/opscode/kitchen-vagrant/issues/7
[#8]: https://github.com/opscode/kitchen-vagrant/issues/8
[#12]: https://github.com/opscode/kitchen-vagrant/issues/12
[#15]: https://github.com/opscode/kitchen-vagrant/issues/15
[#16]: https://github.com/opscode/kitchen-vagrant/issues/16
[#18]: https://github.com/opscode/kitchen-vagrant/issues/18
[#19]: https://github.com/opscode/kitchen-vagrant/issues/19
[#20]: https://github.com/opscode/kitchen-vagrant/issues/20
[#21]: https://github.com/opscode/kitchen-vagrant/issues/21
[#24]: https://github.com/opscode/kitchen-vagrant/issues/24
[#25]: https://github.com/opscode/kitchen-vagrant/issues/25
[#28]: https://github.com/opscode/kitchen-vagrant/issues/28
[#29]: https://github.com/opscode/kitchen-vagrant/issues/29
[#30]: https://github.com/opscode/kitchen-vagrant/issues/30
[#31]: https://github.com/opscode/kitchen-vagrant/issues/31
[#34]: https://github.com/opscode/kitchen-vagrant/issues/34
[#36]: https://github.com/opscode/kitchen-vagrant/issues/36
[#55]: https://github.com/opscode/kitchen-vagrant/issues/55
[#56]: https://github.com/opscode/kitchen-vagrant/issues/56
[@TheDude05]: https://github.com/TheDude05
[@albertsj1]: https://github.com/albertsj1
[@antonio-osorio]: https://github.com/antonio-osorio
[@arangamani]: https://github.com/arangamani
[@dje]: https://github.com/dje
[@fnichol]: https://github.com/fnichol
[@fujin]: https://github.com/fujin
[@gildegoma]: https://github.com/gildegoma
[@josephholsten]: https://github.com/josephholsten
[@keiths-osc]: https://github.com/keiths-osc
[@manul]: https://github.com/manul
[@martinisoft]: https://github.com/martinisoft
[@mattray]: https://github.com/mattray
[@petejkim]: https://github.com/petejkim
[@sandfish8]: https://github.com/sandfish8
[@sethvargo]: https://github.com/sethvargo
[@tmatilai]: https://github.com/tmatilai