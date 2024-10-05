#!/usr/bin/env ruby

require 'yaml'

loop do
  print "Enter Wifi SSID: "
  wifi_ssid = gets.chomp

  print "Enter Wifi password: "
  wifi_password = gets.chomp

  # Load the network-config example yaml file
  config = YAML.load_file('./network-config.example')

  # Update the wifi ssid and password in the config
  config['wifis']['wlan0']['access-points'] ||= {}
  config['wifis']['wlan0']['access-points'][wifi_ssid] = { 'password' => wifi_password }

  print "Do you want to add another WiFi network? (y/n): "
  if gets.chomp.downcase.start_with? 'y'
    next
  else
    break
  end
end

# Write the updated config
File.write('./network-config', config.to_yaml)
