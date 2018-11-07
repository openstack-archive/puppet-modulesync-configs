source 'https://rubygems.org'

# TODO(tobias-urdin): Pin puppet to 5.5 release as of now since we
# cannot run puppet 6.x on CentOS 7 because of an too old Ruby version.
# The libraries jobs should be moved over to Bionic if we require 6.x
gem 'puppet', ['~> 5.5']
# TODO(aschultz): 0.8.x doesn't seem to work recursively, needs investigation
gem 'modulesync', ['>=0.6.0','<0.8.0']
# TODO(aschultz): techincally modulesync needs json which was satisfied by
# puppet previously, but since 5.0.0 they dropped that dependency which has
# broken the jobs that use this
gem 'json_pure'

# vim:ft=ruby
