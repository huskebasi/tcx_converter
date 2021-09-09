#!/usr/bin/env ruby
require 'pry'
require 'optparse'
require 'json'
require 'crack'
require 'ruby-progressbar'

tcx = '/home/rico/Scaricati/Run4Gear_1630330122_300821_15h28m42s.tcx'
myXML  = Crack::XML.parse(File.read(tcx))
myJSON = myXML.to_json
data = JSON.parse(myJSON)
dati = data['TrainingCenterDatabase']['Activities']['Activity']

#Speed is in meter per second, 1m/s = 3.6 km/h
binding.pry