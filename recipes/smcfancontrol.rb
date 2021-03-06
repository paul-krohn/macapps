#
# Cookbook Name:: macapps
# Recipe:: smcfancontrol
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

remote_file "#{Chef::Config[:file_cache_path]}/smcfancontrol_2_4.zip" do
  source 'http://www.eidac.de/smcfancontrol/smcfancontrol_2_4.zip'
  checksum 'f72713be5c3d8bf4ecbf7999af8dc66d23d4f5e22c49b648a485351172cb1ac3'
  notifies :run, "execute[unzip-smcfancontrol]", :immediately
end

execute "unzip-smcfancontrol" do
  # Don't extract the readme and all that other crap
  command "unzip #{Chef::Config[:file_cache_path]}/smcfancontrol_2_4.zip smcFanControl.app -d /Applications"
  action :nothing
end
