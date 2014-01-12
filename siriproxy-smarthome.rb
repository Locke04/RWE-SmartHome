#####################
#					#
#   Copyright by 	#
#   Backslash		#
#					#
#####################


# -*- encoding : utf-8 -*-
require 'cora'
require 'siri_objects'
require 'pp'
require 'open-uri'

class SiriProxy::Plugin::SmartHome < SiriProxy::Plugin
    def initialize(config)
    end
    
class OpenLink < SiriObject
def initialize(ref="")
super("OpenLink", "com.apple.ace.assistant")
self.ref = ref
end
end
add_property_to_class(OpenLink, :ref)

listen_for /(.*) (an|aus|[0-9]+ %)/i do |type,value| #)
    say"Gerne, ich schalte " + type + " für dich" 
	case type.downcase
		when "Regal"    									#Wie heisst der Aktor, wo befindet er sich, welches Gerät schaltet er ???
			type = "9fc52200-1747-408a-a82f-8ee294511b70"    		#Jeder Aktor bzw. jede Zustandsvariable hat eine eigene ID
		when "Lichtkugel"
			type = "4c3c70c1-13f8-4669-9b68-0e05XXXXX"
		end
	
    case value.downcase
      when "an", "auf", "öffnen", "aktivieren", "anschalten", "starten" 			#Diese Begriffe können beliebig erweitert werden.
        value = "1"
      when "aus", "zu", "schließen", "deaktivieren", "abschalten", "ausschalten" 	#Diese Begriffe können beliebig erweitert werden.
        value = "0"
    end
	  
		uri = "https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=#{type}&Value=#{value}"    #hier werden aus den einzelnen Variablen eine URL erstellt und dann an Safari gesendet
	view = OpenLink.new(uri.gsub("//",""))
    send_object view
	end
end
