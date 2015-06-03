# EC2 Config Service Cookbook
[![Cookbook](http://img.shields.io/cookbook/v/ec2configservice.svg)](https://github.com/base2Services/ec2configservice_cookbook)

Installs and Configures the EC2 config services

0.1.2 - Currently only supports:
  * Installation of the latest EC2 config service
  * Wallpaper Settings config

## Supported Platforms

 * Windows

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['ec2config']['wallpaper']['default']</tt></td>
    <td>Array</td>
    <td>array of settings to add to the wallpaper</td>
    <td>
      <tt>[{
            name: 'Hostname',
            source: 'built-in',
            identifier: 'hostname',
            value: nil
          },
          .......
      </tt>
    </td>
  </tr>
</table>

## Usage

### ec2configservice::default

Include `ec2configservice` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[ec2configservice::default]"
  ]
}
```

## License and Authors
License:: Apache License, Version 2.0

Authors::
 * Aaron Walker - base2Services
