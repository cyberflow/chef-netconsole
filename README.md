netconsole Cookbook
===================
This cookbook configure linux module netconsole for sending dmesg to remote log-server.

Requirements
============
#### Platform:
* Debian
* Ubuntu

Attributes
==========

Usage
=====
#### netconsole::default
TODO: Write usage instructions for each cookbook.

Contributing
============
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

Testing
=======

This cookbook is set up to test using
* knife test
* foodcritic
* test-kitchen

To launch all the tests, run:
* bundle install
* bundle exec strainer test

License and Authors
===================
Author:: Dmitry R. <dmitry.r@cyberflow.net>  
Copyright:: 2014, Dmitry R.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.