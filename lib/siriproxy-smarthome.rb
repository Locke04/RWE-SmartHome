
require 'cora'
require 'siri_objects'
require 'pp'

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

# Aktivieren



listen_for /(Küche einschalten|Küche an|Küchenlicht an|Küchenlicht einschalten)/i do
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "Küchenlicht eingeschaltet"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=1'"
    sleep(1)
    system"killall Safari"
    sleep(1)
    system"open '/Applications/Safari.app'"
    request_completed
end

listen_for /(Lampen an|Leuchten an|Lampen einschalten|Licht aus)/i do
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "Alle Lampen eingeschaltet!!"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=1'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=1'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=1'"
    sleep(3)
    system"killall Safari"
    sleep(1)
    system"open '/Applications/Safari.app'"
    request_completed
end

listen_for /(Stehlampe einschalten|Stehlampe an|Stehlampe anschalten)/i do
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "Stehlampe eingeschaltet"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=1'"
    sleep(1)
    system"killall Safari"
    sleep(1)
    system"open '/Applications/Safari.app'"
    request_completed
end

listen_for /(Kugellampe einschalten|Kugellampe an|Kugellampe anschalten)/i do
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "Kugellampe eingeschaltet"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=1'"
    sleep(1)
    system"killall Safari"
    sleep(1)
    system"open '/Applications/Safari.app'"
    request_completed
end

listen_for /(Fernseher einschalten|Fernseher an|Fernseher anschalten)/i do
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "TV-Säule aktiviert"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=80dc02a2-bcc7-460f-bace-ea0d97ea9ba6&Value=1'"
    sleep(1)
    system"killall Safari"
    sleep(1)
    system"open '/Applications/Safari.app'"
    request_completed
end

listen_for /(Schlafzimmer einschalten|Schlafzimmer an|Schlafzimmer anschalten)/i do
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "Schlafzimmer eingeschaltet"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=7622bd1a-e9da-4047-80b4-750376932c95&Value=1'"
    sleep(1)
    ssystem"killall Safari"
    sleep(1)
    system"open '/Applications/Safari.app'"
    request_completed
end

listen_for /(Arbeitszimmer einschalten|Arbeitszimmer an|Arbeitszimmer anschalten)/i do
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "IT-Zentrale aktiviert"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=09c94f50-f75a-457d-a8ad-e1c761df5d04&Value=1'"
    sleep(1)
    system"killall Safari"
    sleep(1)
    system"open '/Applications/Safari.app'"
    request_completed
end

listen_for /(Ich bin zu Hause|Hallo Speedy|Hi Speedy|Ich bin zurück|Wir sind zu Hause|Wir sind zurück|Einschalten|Guten Morgen)/i do
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "System wird eingeschaltet"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=1'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=1'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=1'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=80dc02a2-bcc7-460f-bace-ea0d97ea9ba6&Value=1'"
    sleep(3)
    system"killall Safari"
    sleep(1)
    system"open '/Applications/Safari.app'"
    request_completed
end

#Deaktivieren

listen_for /(Lampen aus|Leuchten aus|Lampen ausschalten)/i do
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "Alle Lampen ausgeschaltet!!"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=0'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=0'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=0'"
    sleep(3)
    system"killall 'Safari'"
    sleep(1)
    system"open '/Applications/Safari.app'"
    request_completed
end

listen_for /(Küchenlicht ausschalten|Küchenlicht aus|Küche ausschalten|Küche aus)/i do
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "Küchenlicht ausgeschaltet"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=0'"
    sleep(1)
    system"killall Safari"
    sleep(1)
    system"open '/Applications/Safari.app'"
    request_completed
end

listen_for /(Stehlampe ausschalten|Stehlampe aus|Stehlampe abschalten)/i do
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "Stehlampe ausgeschaltet"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=0'"
    sleep(1)
    system"killall Safari"
    sleep(1)
    system"open '/Applications/Safari.app'"
    request_completed
end

listen_for /(Kugellampe ausschalten|Kugellampe aus|Kugellampe abschalten)/i do
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "Kugellampe ausgeschaltet"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=0'"
    sleep(1)
    system"killall Safari"
    sleep(1)
    system"open '/Applications/Safari.app'"
    request_completed
end

listen_for /(Fernseher ausschalten|Fernseher aus|Fernseher abschalten)/i do
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "TV-Säule deaktiviert"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=80dc02a2-bcc7-460f-bace-ea0d97ea9ba6&Value=0'"
    sleep(1)
    system"killall Safari"
    sleep(1)
    system"open '/Applications/Safari.app'"
    request_completed
end

listen_for /(Schlafzimmer ausschalten|Schlafzimmer aus|Schlafzimmer abschalten)/i do
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "Schlafzimmer ausgeschaltet"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=7622bd1a-e9da-4047-80b4-750376932c95&Value=0'"
    sleep(1)
    system"killall Safari"
    slkeep(1)
    system"open '/Applications/Safari.app'"
    equest_completed
end

listen_for /(Arbeitszimmer ausschalten|Arbeitszimmer aus|Arbeitszimmer abschalten)/i do
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "IT-Zentrale deaktiviert"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=09c94f50-f75a-457d-a8ad-e1c761df5d04&Value=0'"
    sleep(1)
    system"killall Safari"
    sleep(1)
    system"open '/Applications/Safari.app'"
    request_completed
end

listen_for /(System Runterfahren|Arbeiten)/i do
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "Alle Aktoren werden deaktiviert!!"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=0'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=0'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=0'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=80dc02a2-bcc7-460f-bace-ea0d97ea9ba6&Value=0'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=7622bd1a-e9da-4047-80b4-750376932c95&Value=0'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=09c94f50-f75a-457d-a8ad-e1c761df5d04&Value=0'"
    sleep(3)
    system"killall Safari"
    sleep(1)
    system"open '/Applications/Safari.app'"
    request_completed
end

listen_for /(Gute Nacht|Wir gehen schlafen|Ich gehe schlafen|Schlafen)/i do
    system"open -a '/Applications/Safari.app' 'mobile.rwe-smarthome.de/MobileWeb/OverviewAndControl'"
    say "Gute Nacht!"
    sleep(1)
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=7622bd1a-e9da-4047-80b4-750376932c95&Value=1'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=9fc52200-1747-408a-a82f-8ee294511b70&Value=0'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=a0a69125-00b5-489d-88e7-0ae2cf5acc0b&Value=0'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=5786cbbe-0b69-4bf2-b665-7c89b0dda38f&Value=0'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=80dc02a2-bcc7-460f-bace-ea0d97ea9ba6&Value=0'"
    system"open -a '/Applications/Safari.app' 'https://mobile.rwe-smarthome.de/MobileWeb/JsonApi/SetActuatorValue/?Id=09c94f50-f75a-457d-a8ad-e1c761df5d04&Value=0'"
    sleep(3)
    system"killall Safari"
    sleep(1)
    system"open '/Applications/Safari.app'"
    request_completed
end

end
