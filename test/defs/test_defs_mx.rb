require File.dirname(__FILE__) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: data/mx.yaml, data/north_america_informal.yaml
class MxDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_mx
{Date.civil(2007,1,1) => 'Año nuevo', 
 Date.civil(2007,2,5) => 'Día de la Constitución', 
 Date.civil(2007,5,1) => 'Día del Trabajo',
 Date.civil(2007,5,5) => 'Cinco de Mayo',
 Date.civil(2007,9,16) => 'Día de la Independencia',
 Date.civil(2007,11,1) => 'Todos los Santos',
 Date.civil(2007,11,2) => 'Los Fieles Difuntos',
 Date.civil(2007,11,19) => 'Día de la Revolución',
 Date.civil(2007,12,25) => 'Navidad'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :mx, :informal)[0] || {})[:name]
end  
  end
end
