# -*- encoding : utf-8 -*-
require 'cora'
require 'siri_objects'
require 'pp'
require 'open-uri'

class SiriProxy::Plugin::SmartHome < SiriProxy::Plugin
    def initialize(config)
    end
    
#Geräte
#KisteBaum 			451fa82c-0235-4997-a755-f2e7f8b79d62
#Kommode			4c3c70c1-13f8-4669-9b68-0e05dec21ffa
#Ventilator			9ab18212-56b3-407a-9845-b16c40dc8738
#Couch				1968c346-0958-427a-bc17-0da65e17fb36
#Schlaflicht		d7db2261-ee9b-424c-8447-8c66ed79e02c
#Laterne			5ded3e2d-e6e6-4426-90cc-004d6e077886

#Heizung Wohnz.		02dace6d-9182-4165-8219-54ce6866e198
#Heizung Schlafz.	83c2e189-0f5b-4a1f-8559-a82f0d59eb4f

#Zustandsvariable
#Lüften				1c0e203a-faaf-40f8-82fc-8303c3245af5
#LICHT AUS			18221e7c-4ad2-4091-b46d-738d0afd0112
#Wohnzimmer alle	7edf2680-4454-471f-b546-6ec9e1672606


class OpenLink < SiriObject
def initialize(ref="")
super("OpenLink", "com.apple.ace.assistant")
self.ref = ref
end
end
add_property_to_class(OpenLink, :ref)

listen_for /(.*) (an|aus|[0-9]+ %)/i do |type,value| #)
    say"" + type + " wird " + value + "geschaltet"
	case type.downcase
        when "Küche"    									#Wie heisst der Aktor, wo befindet er sich, welches Gerät schaltet er ???
            type = "9fc52200-1747-408a-a82f-8ee294511b70"   	#Jeder Aktor, jede Zustandsvariable hat eine eigene ID
		when "kommode"
			type = "4c3c70c1-13f8-4669-9b68-0e05dec21ffa"
		when "lampe"
			type = "9ab18212-56b3-407a-9845-b16c40dc8738"
		when "couch"
			type = "1968c346-0958-427a-bc17-0da65e17fb36"
		when "schlafzimmer"
			type = "d7db2261-ee9b-424c-8447-8c66ed79e02c"
		when "wohnzimmer"
			type = "7edf2680-4454-471f-b546-6ec9e1672606"
		when "laterne"
			type = "5ded3e2d-e6e6-4426-90cc-004d6e077886"
		when "abendprogramm"
			type = "b74a307b-4438-4cf2-92fb-ec70ddc8ba02"
	end
	
    case value.downcase
      when "an", "auf", "öffnen", "aktivieren", "anschalten", "starten" 			#Diese Begriffe können beliebig erweitert werden.
        value = "1"
      when "aus", "zu", "schließen", "deaktivieren", "abschalten", "ausschalten" 	#Diese Begriffe können beliebig erweitert werden.
        value = "0"
      end


    response = open("https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id="+type+"&Value="+value)
#system"DISPLAY=:0; 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=#{type}&Value=#{value}' &"
	system"sleep 3"
	system"echo hallo"

end

listen_for /ich kann nicht einschlafen/i do
	say"ein Schaf @{tts#\e\\pause=400\\}"
	say"2 Schafe @{tts#\e\\pause=400\\}"
	say"3 Schafe @{tts#\e\\pause=400\\}"
	say"4 Schafe @{tts#\e\\pause=400\\}"
	say"5 Schafe @{tts#\e\\pause=400\\}"
	say"6 Schafe @{tts#\e\\pause=400\\}"
	say"7 Schafe @{tts#\e\\pause=400\\}"
	say"8 Schafe @{tts#\e\\pause=400\\}"

end

#		uri = "https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=#{type}&Value=#{value}"
#	view = OpenLink.new(uri.gsub("//",""))
#   send_object view
#	end
end


#####################################################
# @{tts#\e\\pause=300\\}
#DISPLAY=:0 firefox "https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=#{type}&Value=#{value}" &