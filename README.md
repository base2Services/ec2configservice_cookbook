# EC2 Config Service Cookbook

TODO: Enter the cookbook description here.

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
    <td><tt>['ec2configservice']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
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

Author:: YOUR_NAME (<YOUR_EMAIL>)
