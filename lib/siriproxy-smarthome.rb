# -*- encoding : utf-8 -*-
require 'cora'
require 'siri_objects'
require 'pp'
require 'open-uri'

class SiriProxy::Plugin::SmartHome < SiriProxy::Plugin
    def initialize(config)
    end
    
#Geräte
#Küche              9fc52200-1747-408a-a82f-8ee294511b70
#Regal              a0a69125-00b5-489d-88e7-0ae2cf5acc0b
#Kugellampe			5786cbbe-0b69-4bf2-b665-7c89b0dda38f
#Medien				80dc02a2-bcc7-460f-bace-ea0d97ea9ba6
#Schlafzimmer		7622bd1a-e9da-4047-80b4-750376932c95
#Arbeitszimmer		09c94f50-f75a-457d-a8ad-e1c761df5d04

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

# Aktivieren
listen_for /(Küche einschalten|Küche an|Küchenlicht an|Küchenlicht einschalten)/i do
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=1'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    #system"sleep 3"
    say "Küchenlicht wird eingeschaltet"
    system"sleep10"
    system"osascript -e 'tell application 'Safari' to quit'"
    system"sleep1"
    system"open -a Safari https://mobile.rwe-smarthome.de"
    request_completed
end

listen_for /(Regallampe einschalten|Regallampe an|Regallampe anschalten)/i do
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=1'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    #system"sleep 3"
    say "Regallampe wird eingeschaltet"
    system"sleep10"
    system"osascript -e 'tell application 'Safari' to quit'"
    system"sleep1"
    system"open -a Safari https://mobile.rwe-smarthome.de"
    request_completed
end

listen_for /(Kugellampe einschalten|Kugellampe an|Kugellampe anschalten)/i do
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=1'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    #system"sleep 3"
    say "Kugellampe wird eingeschaltet"
    system"sleep10"
    system"osascript -e 'tell application 'Safari' to quit'"
    system"sleep1"
    system"open -a Safari https://mobile.rwe-smarthome.de"
    request_completed
end

listen_for /(Fernseher einschalten|Fernseher an|Fernseher anschalten)/i do
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=80dc02a2-bcc7-460f-bace-ea0d97ea9ba6&Value=1'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    #system"sleep 3"
    say "Medientechnik wird eingeschaltet"
    system"sleep10"
    system"osascript -e 'tell application 'Safari' to quit'"
    system"sleep1"
    system"open -a Safari https://mobile.rwe-smarthome.de"
    request_completed
end

listen_for /(Schlafzimmer einschalten|Schlafzimmer an|Schlafzimmer anschalten)/i do
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=7622bd1a-e9da-4047-80b4-750376932c95&Value=1'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    #system"sleep 3"
    say "Schlafzimmer wird eingeschaltet"
    system"sleep10"
    system"osascript -e 'tell application 'Safari' to quit'"
    system"sleep1"
    system"open -a Safari https://mobile.rwe-smarthome.de"
    request_completed
end

listen_for /(Arbeitszimmer einschalten|Arbeitszimmer an|Arbeitszimmer anschalten)/i do
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=09c94f50-f75a-457d-a8ad-e1c761df5d04&Value=1'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    #system"sleep 3"
    say "Arbeitszimmer wird eingeschaltet"
    system"sleep10"
    system"osascript -e 'tell application 'Safari' to quit'"
    system"sleep1"
    system"open -a Safari https://mobile.rwe-smarthome.de"
    request_completed
end

listen_for /(Ich bin zu Hause|Hallo Speedy|Ich bin zurück|Wir sind zu Hause|Wir sind zurück)/i do
    say "Willkommen zu Hause. Ich hoffe es war ein schöner Tag!!"
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=1'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    #system"sleep 10"
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=1'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    #system"sleep 10"
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=1'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    #system"sleep 10"
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=80dc02a2-bcc7-460f-bace-ea0d97ea9ba6&Value=1'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    system"sleep20"
    system"osascript -e 'tell application 'Safari' to quit'"
    system"sleep1"
    system"open -a Safari https://mobile.rwe-smarthome.de"
    request_completed
end

#Deaktivieren
listen_for /(Küchenlicht ausschalten|Küchenlicht aus|Küche ausschalten|Küche aus)/i do
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    #system"sleep 3"
    say "Küchenlicht wird ausgeschaltet"
    system"sleep10"
    system"osascript -e 'tell application 'Safari' to quit'"
    system"sleep1"
    system"open -a Safari https://mobile.rwe-smarthome.de"
    request_completed
end

listen_for /(Regallampe ausschalten|Regallampe aus|Regallampe abschalten)/i do
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    #system"sleep 3"
    say "Regallampe wird ausgeschaltet"
    system"sleep10"
    system"osascript -e 'tell application 'Safari' to quit'"
    system"sleep1"
    system"open -a Safari https://mobile.rwe-smarthome.de"
    request_completed
end

listen_for /(Kugellampe ausschalten|Kugellampe aus|Kugellampe abschalten)/i do
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    #system"sleep 3"
    say "Kugellampe wird ausgeschaltet"
    system"osascript -e 'tell application 'Safari' to quit'"
    #system"open -a Safari https://mobile.rwe-smarthome.de"
    request_completed
end

listen_for /(Fernseher ausschalten|Fernseher aus|Fernseher abschalten)/i do
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=80dc02a2-bcc7-460f-bace-ea0d97ea9ba6&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    #system"sleep 3"
    say "Medientechnik wird ausgeschaltet"
    system"sleep10"
    system"osascript -e 'tell application 'Safari' to quit'"
    system"sleep1"
    system"open -a Safari https://mobile.rwe-smarthome.de"
    request_completed
end

listen_for /(Schlafzimmer ausschalten|Schlafzimmer aus|Schlafzimmer abschalten)/i do
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=7622bd1a-e9da-4047-80b4-750376932c95&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    #system"sleep 3"
    say "Gute Nacht!!!"
    system"sleep10"
    system"osascript -e 'tell application 'Safari' to quit'"
    system"sleep1"
    system"open -a Safari https://mobile.rwe-smarthome.de"
    request_completed
end

listen_for /(Arbeitszimmer ausschalten|Arbeitszimmer aus|Arbeitszimmer abschalten)/i do
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=09c94f50-f75a-457d-a8ad-e1c761df5d04&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    say "Arbeitszimmer wird ausgeschaltet"
    system"sleep10"
    system"osascript -e 'tell application 'Safari' to quit'"
    system"sleep1"
    system"open -a Safari https://mobile.rwe-smarthome.de"
    request_completed
end

listen_for /(System Runterfahren|Arbeiten|)/i do
    say "Alle Aktoren werden deaktiviert!!"
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=80dc02a2-bcc7-460f-bace-ea0d97ea9ba6&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=7622bd1a-e9da-4047-80b4-750376932c95&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=09c94f50-f75a-457d-a8ad-e1c761df5d04&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    system"sleep20"
    system"osascript -e 'tell application 'Safari' to quit'"
    system"sleep1"
    system"open -a Safari https://mobile.rwe-smarthome.de"
    request_completed
end

listen_for /(Gute Nacht Speedy|Wir gehen schlafen|Ich gehe schlafen|Schlafen)/i do
    say "Gute Nacht, angenehme Träume!!"
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=80dc02a2-bcc7-460f-bace-ea0d97ea9ba6&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=7622bd1a-e9da-4047-80b4-750376932c95&Value=1'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    system"open 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=09c94f50-f75a-457d-a8ad-e1c761df5d04&Value=0'"
    #view = OpenLink.new(uri.gsub("//",""))
    #send_object view
    system"sleep20"
    system"osascript -e 'tell application 'Safari' to quit'"
    system"sleep1"
    system"open -a Safari https://mobile.rwe-smarthome.de"
    request_completed
end

end

#listen_for /(.*) (an|aus|[0-9]+ %)/i do |type,value| #)
#    say"" + type + " wird " + value + "geschaltet"
#	case type.downcase
#        when "Küche"    									#Wie heisst der Aktor, wo befindet er sich, welches Gerät schaltet er ???
#            type = "9fc52200-1747-408a-a82f-8ee294511b70"   	#Jeder Aktor, jede Zustandsvariable hat eine eigene ID
#		when "kommode"
#			type = "4c3c70c1-13f8-4669-9b68-0e05dec21ffa"
#		when "lampe"
#			type = "9ab18212-56b3-407a-9845-b16c40dc8738"
#		when "couch"
#			type = "1968c346-0958-427a-bc17-0da65e17fb36"
#		when "schlafzimmer"
#			type = "d7db2261-ee9b-424c-8447-8c66ed79e02c"
#		when "wohnzimmer"
#			type = "7edf2680-4454-471f-b546-6ec9e1672606"
#		when "laterne"
#			type = "5ded3e2d-e6e6-4426-90cc-004d6e077886"
#		when "abendprogramm"
#			type = "b74a307b-4438-4cf2-92fb-ec70ddc8ba02"
#	end
#
#   case value.downcase
#     when "an", "auf", "öffnen", "aktivieren", "anschalten", "starten" 			#Diese Begriffe können beliebig erweitert werden.
#       value = "1"
#     when "aus", "zu", "schließen", "deaktivieren", "abschalten", "ausschalten" 	#Diese Begriffe können beliebig erweitert werden.
#       value = "0"
#     end
#
#   system"DISPLAY=:0 firefox 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=#{type}&Value=#{value}' &"
#   system"sleep 3"
#	system"echo hallo"




#		uri = "https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=#{type}&Value=#{value}"
#	view = OpenLink.new(uri.gsub("//",""))
#   send_object view
#	end
#end


#####################################################
# @{tts#\e\\pause=300\\}
#DISPLAY=:0 firefox "https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=#{type}&Value=#{value}" &