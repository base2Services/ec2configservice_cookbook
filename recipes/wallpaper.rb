#
# Cookbook Name:: ec2configservice
# Recipe:: wallpaper
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

node['ec2config']['wallpaper']['custom'].each do |setting|
  if setting.source == 'environmentvariable' && !setting.value.nil?
    env setting.identifier do
      value setting.value
    end
  end
end

template 'C:\\Program Files\\Amazon\\Ec2ConfigService\\Settings\\WallpaperSettings.xml' do
  source 'WallpaperSettings.xml.erb'
  variables(
    default_settings: node['ec2config']['wallpaper']['default'],
    custom_settings: node['ec2config']['wallpaper']['custom']
  )
end
