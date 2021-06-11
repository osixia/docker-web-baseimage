# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [1.2.0] - 2021-02-19
## Added
  - Multiarch support
  - php7.4

### Changed
  - Upgrade baseimage to light-baseimage:1.3.3 (debian buster)
  - Upgrade to php7.3-fpm
  - Update ssl config

### Fixed 
  - Install psmisc package with apache for killall command used in finish.sh

## [1.1.2] - Unreleased
### Changed
  - Upgrade baseimage to light-baseimage:1.1.2
  - nginx logs to /proc/self/fd/1 and /proc/self/fd/2

## [1.1.1] - 2017-12-22
  - Add default ssl, security, cache and gzip config

## [1.1.0] - 2017-10-25
  - apache: enable http2
  - update ssl config (nginx, apache)
  - php7.0-fpm
  - Upgrade baseimage: light-baseimage:1.1.1 (debian stretch)
  - set php timeout to 90s

## [1.0.0] - 2017-02-22
  - order apt sources
  - time for 1.0.0 whup whup !

## [0.1.12] - 2016-11-08
### Changed
  - Use light-baseimage:0.2.6

## [0.1.11] - 2016-09-02
### Changed
  - Use light-baseimage:0.2.5

## [0.1.10] - 2016-06-09
### Changed
  - Use light-baseimage:0.2.4

## [0.1.9] - 2016-02-20
### Changed
  - Use light-baseimage:0.2.2

## [0.1.8] - 2016-01-25
### Changed
  - Use light-baseimage:0.2.1

## [0.1.7] - 2015-12-16
### Added
  - Makefile with build no cache

### Changed
  - Use light-baseimage:0.2.0

  - Use ubuntu keyserver

## [0.1.6] - 2015-11-20
### Changed
  - Use light-baseimage:0.1.5

## [0.1.5] - 2015-11-19
### Changed
  - Use light-baseimage:0.1.4

## [0.1.4] - 2015-11-06
### Changed
  - Use light-baseimage:0.1.3

## [0.1.3] - 2015-10-26
### Changed
  - Use light-baseimage:0.1.2
  - Add nginx

## [0.1.2] - 2015-08-21
### Changed
  - Fix "Package 'libapache2-mod-fastcgi' has no installation candidate"

## [0.1.1] - 2015-08-20
### Changed
  - Upgrade baseimage: light-baseimage:0.1.1

## 0.1.0 - 2015-07-23
  - Initial release

[1.2.0]: https://github.com/osixia/docker-web-baseimage/compare/v1.1.2...v1.2.0
[1.1.2]: https://github.com/osixia/docker-web-baseimage/compare/v1.1.1...v1.1.2
[1.1.1]: https://github.com/osixia/docker-web-baseimage/compare/v1.1.0...v1.1.1
[1.1.0]: https://github.com/osixia/docker-web-baseimage/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/osixia/docker-web-baseimage/compare/v0.1.12...v1.0.0
[0.1.12]: https://github.com/osixia/docker-web-baseimage/compare/v0.1.11...v0.1.12
[0.1.11]: https://github.com/osixia/docker-web-baseimage/compare/v0.1.10...v0.1.11
[0.1.10]: https://github.com/osixia/docker-web-baseimage/compare/v0.1.9...v0.1.10
[0.1.9]: https://github.com/osixia/docker-web-baseimage/compare/v0.1.8...v0.1.9
[0.1.8]: https://github.com/osixia/docker-web-baseimage/compare/v0.1.7...v0.1.8
[0.1.7]: https://github.com/osixia/docker-web-baseimage/compare/v0.1.6...v0.1.7
[0.1.6]: https://github.com/osixia/docker-web-baseimage/compare/v0.1.5...v0.1.6
[0.1.5]: https://github.com/osixia/docker-web-baseimage/compare/v0.1.4...v0.1.5
[0.1.4]: https://github.com/osixia/docker-web-baseimage/compare/v0.1.3...v0.1.4
[0.1.3]: https://github.com/osixia/docker-web-baseimage/compare/v0.1.2...v0.1.3
[0.1.2]: https://github.com/osixia/docker-web-baseimage/compare/v0.1.1...v0.1.2
[0.1.1]: https://github.com/osixia/docker-web-baseimage/compare/v0.1.0...v0.1.1