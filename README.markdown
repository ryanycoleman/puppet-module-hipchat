# hipchat #

This is a simple module for installing Atlassian's HipChat client.

Currently, it just supports Ubuntu but should be trivial to extend by following [these instructions](https://www.hipchat.com/linux) provided by Atlassian. 

Use it by declaring the hipchat class.

`include hipchat`

It accepts one parameter, 'manage_repo' which defaults to true. This parameter configures the hipchat apt repository and key via [puppetlabs/apt](http://forge.puppetlabs.com).
