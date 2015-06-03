#
# Attribute Name:: ec2configservice
# Recipe:: default
#
# Copyright (C) 2015 base2Services
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['ec2config']['install_url'] = 'https://ec2-downloads-windows.s3.amazonaws.com/EC2Config/EC2Install.zip'

# Default WallpaperSettings.xml values
default['ec2config']['wallpaper']['default'] = [
  {
    name: 'Hostname',
    source: 'built-in',
    identifier: 'hostname',
    value: nil
  },
  {
    name: 'Instance ID',
    source: 'metadata',
    identifier: 'meta-data/instance-id',
    value: nil
  },
  {
    name: 'Public IP Address',
    source: 'metadata',
    identifier: 'meta-data/public-ipv4',
    value: nil
  },
  {
    name: 'Private IP Address',
    source: 'metadata',
    identifier: 'meta-data/local-ipv4',
    value: nil
  },
  {
    name: 'Availability Zone',
    source: 'metadata',
    identifier: 'meta-data/placement/availability-zone',
    value: nil
  },
  {
    name: 'Instance Size',
    source: 'metadata',
    identifier: 'meta-data/instance-type',
    value: nil
  },
  {
    name: 'Architecture',
    source: 'environmentvariable',
    identifier: 'PROCESSOR_ARCHITECTURE',
    value: nil
  }
]

# Override this attribute to add custom wallpaper values
default['ec2config']['wallpaper']['custom'] = [
  {
    name: 'EC2 Config Cookbook Version',
    source: 'environmentvariable',
    identifier: 'EC2_CONFIG_COOKBOOK_VERSION',
    value: run_context.cookbook_collection['ec2configservice'].metadata.version
  }
]
