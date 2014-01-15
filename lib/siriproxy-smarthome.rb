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

class OpenLink < SiriObject
def initialize(ref="")
super("OpenLink", "com.apple.ace.assistant")
self.ref = ref
end
end
add_property_to_class(OpenLink, :ref)

# Aktivieren

listen_for /(Küche einschalten|Küche an|Küchenlicht an|Küchenlicht einschalten)/i do
    say "Küchenlicht wird eingeschaltet"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=1'"
    request_completed
    sleep(5)
    system"killall Safari"
    system"open '/Applications/Safari.app'"
end

listen_for /(Stehlampe einschalten|Stehlampe an|Stehlampe anschalten)/i do
    say "Stehlampe eingeschaltet"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=1'"
    request_completed
    sleep(5)
    system"killall Safari"
    system"open '/Applications/Safari.app'"
end

listen_for /(Kugellampe einschalten|Kugellampe an|Kugellampe anschalten)/i do
    say "Kugellampe eingeschaltet"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=1'"
    request_completed
    sleep(5)
    system"killall Safari"
    system"open '/Applications/Safari.app'"
end

listen_for /(Fernseher einschalten|Fernseher an|Fernseher anschalten)/i do
    say "Medientechnik wird eingeschaltet"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=80dc02a2-bcc7-460f-bace-ea0d97ea9ba6&Value=1'"
    request_completed
    sleep(5)
    system"killall Safari"
    system"open '/Applications/Safari.app'"
end

listen_for /(Schlafzimmer einschalten|Schlafzimmer an|Schlafzimmer anschalten)/i do
    say "Schlafzimmer wird eingeschaltet"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=7622bd1a-e9da-4047-80b4-750376932c95&Value=1'"
    request_completed
    sleep(5)
    ssystem"killall Safari"
    system"open '/Applications/Safari.app'"
end

listen_for /(Arbeitszimmer einschalten|Arbeitszimmer an|Arbeitszimmer anschalten)/i do
    say "Arbeitszimmer wird eingeschaltet"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=09c94f50-f75a-457d-a8ad-e1c761df5d04&Value=1'"
    request_completed
    sleep(5)
    system"killall Safari"
    system"open '/Applications/Safari.app'"
end

listen_for /(Ich bin zu Hause|Hallo Speedy|Ich bin zurück|Wir sind zu Hause|Wir sind zurück)/i do
    say "Willkommen zu Hause. Ich hoffe es war ein schöner Tag!!"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=1'"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=1'"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=1'"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=80dc02a2-bcc7-460f-bace-ea0d97ea9ba6&Value=1'"
    request_completed
    sleep(5)
    system"killall Safari"
    system"open '/Applications/Safari.app'"
end

#Deaktivieren

listen_for /(Küchenlicht ausschalten|Küchenlicht aus|Küche ausschalten|Küche aus)/i do
    say "Küchenlicht wird ausgeschaltet"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=0'"
    request_completed
    sleep(5)
    system"killall Safari"
    system"open '/Applications/Safari.app'"
end

listen_for /(Stehlampe ausschalten|Stehlampe aus|Stehlampe abschalten)/i do
    say "Stehlampe ausgeschaltet"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=0'"
    request_completed
    sleep(5)
    system"killall Safari"
    system"open '/Applications/Safari.app'"
end

listen_for /(Kugellampe ausschalten|Kugellampe aus|Kugellampe abschalten)/i do
    say "Kugellampe ausgeschaltet"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=0'"
    request_completed
    sleep(5)
    system"killall Safari"
    system"open '/Applications/Safari.app'"
end

listen_for /(Fernseher ausschalten|Fernseher aus|Fernseher abschalten)/i do
    say "Medientechnik wird ausgeschaltet"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=80dc02a2-bcc7-460f-bace-ea0d97ea9ba6&Value=0'"
    request_completed
    sleep(5)
    system"killall Safari"
    system"open '/Applications/Safari.app'"
end

listen_for /(Schlafzimmer ausschalten|Schlafzimmer aus|Schlafzimmer abschalten)/i do
    say "Gute Nacht!!!"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=7622bd1a-e9da-4047-80b4-750376932c95&Value=0'"
    request_completed
    sleep(5)
    system"killall Safari"
    system"open '/Applications/Safari.app'"
end

listen_for /(Arbeitszimmer ausschalten|Arbeitszimmer aus|Arbeitszimmer abschalten)/i do
    say "Arbeitszimmer wird ausgeschaltet"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=09c94f50-f75a-457d-a8ad-e1c761df5d04&Value=0'"
    request_completed
    sleep(5)
    system"killall Safari"
    system"open '/Applications/Safari.app'"
end

listen_for /(System Runterfahren|Arbeiten|)/i do
    say "Alle Aktoren werden deaktiviert!!"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=0'"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=0'"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=0'"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=80dc02a2-bcc7-460f-bace-ea0d97ea9ba6&Value=0'"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=7622bd1a-e9da-4047-80b4-750376932c95&Value=0'"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=09c94f50-f75a-457d-a8ad-e1c761df5d04&Value=0'"
    request_completed
    sleep(5)
    system"killall Safari"
    system"open '/Applications/Safari.app'"
end

listen_for /(Gute Nacht|Wir gehen schlafen|Ich gehe schlafen|Schlafen)/i do
    say "Gute Nacht, angenehme Träume!!"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=0'"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=0'"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=0'"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=80dc02a2-bcc7-460f-bace-ea0d97ea9ba6&Value=0'"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=7622bd1a-e9da-4047-80b4-750376932c95&Value=1'"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=09c94f50-f75a-457d-a8ad-e1c761df5d04&Value=0'"
    request_completed
    sleep(5)
    system"killall Safari"
    system"open '/Applications/Safari.app'"
end
end
