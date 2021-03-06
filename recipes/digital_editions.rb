#
# Cookbook Name:: macapps
# Recipe:: digital_editions
#
# Copyright 2014, Urbandecoder Labs LLC
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

dmg_properties = node['macapps']['digital_editions']['dmg']

dmg_package "Digital Editions 2.0 Installer" do
  volumes_dir "ADE 2.0"
  source dmg_properties['source']
  checksum dmg_properties['checksum']
  action :install
  type 'pkg'
  package_id 'com.adobe.adobedigitaleditions.app'
end
