# This must be loaded before any of the card language modules!
exportObj = exports ? this

exportObj.unreleasedExpansions = [
]

exportObj.isReleased = (data) ->
    if data.standard
        return true
    for source in data.sources
        return true if source not in exportObj.unreleasedExpansions
    false

String::canonicalize = ->
    this.toLowerCase()
        .replace(/[^a-z0-9]/g, '')
        .replace(/\s+/g, '-')

# Returns an independent copy of the data which can be modified by translation
# modules.
exportObj.basicCardData = ->
    ships:
        "T-65 X-wing":
            name: "T-65 X-wing"
            factions: [ "Rebel Alliance" ]
            attack: 3
            agility: 2
            hull: 4
            shields: 2
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 1, 1, 1, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0]
                [ 2, 2, 2, 2, 2, 0, 0, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
            ]
            autoequip: [
                "Servomotor S-Foils"
            ]
        "BTL-A4 Y-wing":
            name: "BTL-A4 Y-wing"
            factions: [ "Rebel Alliance", "Scum and Villainy" ]
            attack: 2
            agility: 1
            hull: 6
            shields: 2
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
                "R-Reload"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 1, 1, 1, 0, 0]
                [ 2, 2, 1, 2, 2, 0]
                [ 3, 2, 2, 2, 3, 0]
                [ 0, 0, 3, 0, 0, 3]
            ]
        "RZ-1 A-wing":
            name: "RZ-1 A-wing"
            factions: [ "Rebel Alliance" ]
            attack: 2
            agility: 3
            hull: 2
            shields: 2
            chassis: "Vectored Thrusters"
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 0, 0, 0]
                [ 1, 1, 1, 1, 1, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 3, 3]
                [ 0, 0, 1, 0, 0, 0, 0, 0]
                [ 0, 0, 1, 0, 0, 3, 0, 0]
            ]
        "Modified YT-1300 Light Freighter":
            name: "Modified YT-1300 Light Freighter"
            factions: [ "Rebel Alliance" ]
            attackdt: 3
            agility: 1
            hull: 8
            shields: 5
            keyword: ["Freighter"]
            actions: [
                "Focus"
                "Lock"
                "Rotate Arc"
                "R-Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 3, 0, 0]
            ]
            base: "Large"
        "Customized YT-1300 Light Freighter":
            name: "Customized YT-1300 Light Freighter"
            factions: [ "Scum and Villainy" ]
            attackdt: 2
            agility: 1
            hull: 8
            shields: 3
            keyword: ["Freighter"]
            actions: [
                "Focus"
                "Lock"
                "Rotate Arc"
                "R-Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 1, 1, 1, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 3, 0, 0]
            ]
            base: "Large"
        "TIE/ln Fighter":
            name: "TIE/ln Fighter"
            factions: ["Rebel Alliance", "Galactic Empire"]
            attack: 2
            agility: 3
            hull: 3
            shields: 0
            actions: [
                "Focus"
                "Barrel Roll"
                "Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 0]
                [ 2, 1, 1, 1, 2, 0]
                [ 2, 2, 1, 2, 2, 3]
                [ 0, 0, 2, 0, 0, 3]
                [ 0, 0, 2, 0, 0, 0]
            ]
        "TIE Advanced x1":
            name: "TIE Advanced x1"
            factions: [ "Galactic Empire" ]
            attack: 2
            agility: 3
            hull: 3
            shields: 2
            chassis: "Advanced Targeting Computer"
            actions: [
                "Focus"
                "R-> Barrel Roll"
                "Lock"
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 1, 2, 1, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
            ]
        "TIE/in Interceptor":
            name: "TIE/in Interceptor"
            icon: "tieinterceptor"
            factions: [ "Galactic Empire" ]
            attack: 3
            agility: 3
            hull: 3
            shields: 0
            chassis: "Autothrusters"
            actions: [
                "Focus"
                "Barrel Roll"
                "Boost"
                "Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 0, 0, 0]
                [ 1, 1, 1, 1, 1, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 3, 3]
                [ 0, 0, 1, 0, 0, 3, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0]
            ]
        "Firespray-class Patrol Craft":
            name: "Firespray-class Patrol Craft"
            factions: [ "Scum and Villainy", "Separatist Alliance"]
            attack: 3
            attackb: 3
            agility: 2
            hull: 6
            shields: 4
            base: "Medium"
            actions: [
                "Focus"
                "Lock"
                "Boost"
                "R-Reinforce"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
            ]
        "HWK-290 Light Freighter":
            name: "HWK-290 Light Freighter"
            factions: [ "Rebel Alliance", "Scum and Villainy" ]
            attackt: 2
            agility: 2
            hull: 3
            shields: 2
            keyword: ["Freighter"]
            actions: [
                "Focus"
                "R-> Rotate Arc"
                "Lock"
                "R-> Rotate Arc"
                "Rotate Arc"
                "R-Boost"
                "R-Jam"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0]
                [ 0, 1, 1, 1, 0]
                [ 2, 2, 1, 2, 2]
                [ 3, 2, 1, 2, 3]
                [ 0, 0, 2, 0, 0]
            ]
        "Lambda-class T-4a Shuttle":
            name: "Lambda-class T-4a Shuttle"
            factions: [ "Galactic Empire" ]
            attack: 3
            attackb: 2
            agility: 1
            hull: 6
            shields: 4
            actions: [
                "Focus"
                "Coordinate"
                "Reinforce"
                "R-Jam"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0]
                [ 0, 1, 1, 1, 0]
                [ 3, 2, 1, 2, 3]
                [ 0, 3, 2, 3, 0]
            ]
            base: "Large"
        "A/SF-01 B-wing":
            name: "A/SF-01 B-wing"
            factions: [ "Rebel Alliance" ]
            attack: 3
            agility: 1
            hull: 4
            shields: 4
            actions: [
                "Focus"
                "R-> Barrel Roll"
                "Lock"
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 3, 3]
                [ 2, 2, 1, 2, 2, 3, 0, 0, 0, 0]
                [ 0, 3, 1, 3, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
            ]
            autoequip: [
                'Stabilized S-Foils'
            ]
        "TIE/sa Bomber":
            name: "TIE/sa Bomber"
            factions: [ "Galactic Empire" ]
            attack: 2
            agility: 2
            hull: 6
            shields: 0
            chassis: "Nimble Bomber"
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R-> Lock"
                "R-Reload"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0]
                [ 2, 1, 1, 1, 2, 0]
                [ 2, 2, 1, 2, 2, 3]
                [ 0, 0, 2, 0, 0, 0]
                [ 0, 0, 0, 0, 0, 3]
            ]
        "Z-95-AF4 Headhunter":
            name: "Z-95-AF4 Headhunter"
            factions: [ "Rebel Alliance", "Scum and Villainy" ]
            attack: 2
            agility: 2
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0]
                [ 2, 1, 1, 1, 2, 0]
                [ 2, 2, 1, 2, 2, 3]
                [ 0, 0, 2, 0, 0, 3]
            ]
        "TIE/d Defender":
            name: "TIE/d Defender"
            factions: [ "Galactic Empire" ]
            attack: 3
            agility: 3
            hull: 3
            shields: 4
            chassis: "Full Throttle"
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 3, 1, 0, 1, 3, 0]
                [ 3, 2, 1, 2, 3, 3]
                [ 2, 2, 1, 2, 2, 0]
                [ 0, 0, 1, 0, 0, 2]
                [ 0, 0, 1, 0, 0, 0]
            ]
        "E-wing":
            name: "E-wing"
            factions: [ "Rebel Alliance" ]
            attack: 3
            agility: 3
            hull: 3
            shields: 3
            chassis: "Experimental Scanners"
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "R-> Lock"
                "Boost"
                "R-> Lock"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 3, 1, 1, 1, 3, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 3, 3 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0 ]
            ]
        "TIE/ph Phantom":
            name: "TIE/ph Phantom"
            factions: [ "Galactic Empire" ]
            attack: 3
            agility: 2
            hull: 3
            shields: 2
            chassis: "Stygium Array"
            actions: [
                "Focus"
                "Evade"
                "Barrel Roll"
                "Cloak"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 2, 2, 0, 2, 2, 0]
                [ 2, 1, 1, 1, 2, 0]
                [ 2, 2, 1, 2, 2, 3]
                [ 0, 0, 2, 0, 0, 3]
            ]
        "YT-2400 Light Freighter":
            name: "YT-2400 Light Freighter"
            factions: [ "Rebel Alliance", "Scum and Villainy" ]
            attackdt: 3
            agility: 2
            hull: 6
            shields: 4
            keyword: ["Freighter"]
            chassis: "Sensor Blackout"
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
                "Rotate Arc"
            ]
            base: "Large"
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0]
                [ 2, 2, 1, 2, 2, 0]
                [ 2, 2, 2, 2, 2, 0]
                [ 0, 0, 2, 0, 0, 3]
            ]
        "VT-49 Decimator":
            name: "VT-49 Decimator"
            factions: [ "Galactic Empire" ]
            attackdt: 3
            agility: 0
            hull: 12
            shields: 4
            actions: [
                "Focus"
                "Lock"
                "Reinforce"
                "Rotate Arc"
                "R-Coordinate"
            ]
            base: "Large"
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 3, 1, 1, 1, 3, 0]
                [ 2, 2, 1, 2, 2, 0]
                [ 2, 2, 2, 2, 2, 0]
                [ 0, 0, 2, 0, 0, 0]
            ]
        "StarViper-class Attack Platform":
            name: "StarViper-class Attack Platform"
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 3
            hull: 4
            shields: 1
            chassis: "Microthrusters"
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R-> Focus"
                "Boost"
                "R-> Focus"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 0, 0, 0]
            ]
        "M3-A Interceptor":
            name: "M3-A Interceptor"
            factions: [ "Scum and Villainy" ]
            attack: 2
            agility: 3
            hull: 3
            shields: 1
            chassis: "Weapon Hardpoint"
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 0, 1, 2, 0 ]
                [ 2, 2, 1, 2, 2, 0 ]
                [ 0, 2, 1, 2, 0, 3 ]
                [ 0, 0, 2, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3 ]
            ]
        "Aggressor Assault Fighter":
            name: "Aggressor Assault Fighter"
            factions: [ "Scum and Villainy" ]
            attack: 3
            agility: 3
            hull: 5
            shields: 3
            chassis: "Advanced Droid Brain"
            actions: [
                "Calculate"
                "Evade"
                "Lock"
                "Boost"
            ]
            base: "Medium"
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0, 3, 3 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0 ]
            ]
        "YV-666 Light Freighter":
            name: "YV-666 Light Freighter"
            factions: [ "Scum and Villainy" ]
            attackf: 3
            agility: 1
            hull: 9
            shields: 3
            base: "Large"
            actions: [
                "Focus"
                "Reinforce"
                "Lock"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 3, 2, 1, 2, 3, 0 ]
                [ 2, 2, 1, 2, 2, 0 ]
                [ 0, 0, 2, 0, 0, 0 ]
            ]
        "Kihraxz Fighter":
            name: "Kihraxz Fighter"
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 2
            hull: 5
            shields: 1
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 0, 1, 2, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 3, 3 ]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0 ]
            ]
        "BTL-S8 K-wing":
            name: "BTL-S8 K-wing"
            factions: ["Rebel Alliance"]
            attackdt: 2
            agility: 1
            hull: 6
            shields: 3
            base: "Medium"
            actions: [
                "Focus"
                "Lock"
                "Slam"
                "Rotate Arc"
                "Reload"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0 ]
                [ 0, 2, 2, 2, 0, 0 ]
            ]
        "TIE/ca Punisher":
            name: "TIE/ca Punisher"
            factions: ["Galactic Empire"]
            attack: 2
            agility: 1
            hull: 6
            shields: 3
            base: "Medium"
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
                "Boost"
                "R-> Lock"
                "Reload"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0 ]
                [ 3, 2, 2, 2, 3, 0 ]
                [ 0, 0, 0, 0, 0, 3 ]
            ]
        "VCX-100 Light Freighter":
            name: "VCX-100 Light Freighter"
            factions: ["Rebel Alliance"]
            attack: 4
            agility: 0
            hull: 10
            shields: 4
            base: "Large"
            keyword: ["Freighter"]
            chassis: "Tail Gun"
            actions: [
                "Focus"
                "Lock"
                "Reinforce"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 3, 2, 1, 2, 3, 0 ]
                [ 2, 1, 1, 1, 2, 0 ]
                [ 3, 2, 2, 2, 3, 0 ]
                [ 0, 0, 2, 0, 0, 3 ]
            ]
        "Attack Shuttle":
            name: "Attack Shuttle"
            factions: ["Rebel Alliance"]
            attack: 3
            agility: 2
            hull: 3
            shields: 1
            chassis: "Locked and Loaded"
            actions: [
                "Focus"
                "Evade"
                "Barrel Roll"
                "R-> Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 3, 1, 1, 1, 3, 0 ]
                [ 2, 2, 1, 2, 2, 0 ]
                [ 3, 2, 2, 2, 3, 0 ]
                [ 0, 0, 2, 0, 0, 3 ]
            ]
        "TIE Advanced v1":
            name: "TIE Advanced v1"
            factions: ["Galactic Empire"]
            attack: 2
            agility: 3
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "R-> Focus"
                "Boost"
                "R-> Focus"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 1, 0, 1, 1, 0, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 3, 3 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "G-1A Starfighter":
            name: "G-1A Starfighter"
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 1
            hull: 5
            shields: 4
            base: "Medium"
            actions: [
                "Focus"
                "Lock"
                "Jam"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0 ]
                [ 3, 1, 1, 1, 3, 0 ]
                [ 2, 2, 1, 2, 2, 3 ]
                [ 0, 3, 2, 3, 0, 0 ]
                [ 0, 0, 3, 0, 0, 3 ]
            ]
        "JumpMaster 5000":
            name: "JumpMaster 5000"
            factions: ["Scum and Villainy"]
            base: "Large"
            attackt: 2
            agility: 2
            hull: 6
            shields: 3
            actions: [
                "Focus"
                "R-> Rotate Arc"
                "Lock"
                "R-> Rotate Arc"
                "R-Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 2, 3, 0, 0, 0 ]
                [ 2, 1, 1, 2, 3, 0, 0, 0 ]
                [ 0, 1, 1, 2, 0, 0, 3, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0 ]
            ]
        "ARC-170 Starfighter":
            name: "ARC-170 Starfighter"
            factions: ["Rebel Alliance","Galactic Republic"]
            attack: 3
            attackb: 2
            agility: 1
            hull: 6
            shields: 3
            base: "Medium"
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0 ]
                [ 3, 2, 2, 2, 3, 0 ]
                [ 0, 0, 3, 0, 0, 3 ]
            ]
        "Fang Fighter":
            name: "Fang Fighter"
            factions: ["Scum and Villainy", "Rebel Alliance"]
            attack: 3
            agility: 3
            hull: 4
            shields: 0
            chassis: "Concordia Faceoff"
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R-> Focus"
                "Boost"
                "R-> Focus"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 0, 0, 0, 2, 0, 0, 0, 0, 0 ]
                [ 1, 1, 1, 1, 1, 0, 0, 0, 3, 3 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "Lancer-Class Pursuit Craft":
            name: "Lancer-Class Pursuit Craft"
            factions: ["Scum and Villainy"]
            base: "Large"
            attack: 3
            attackt: 2
            agility: 2
            hull: 8
            shields: 2
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Rotate Arc"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 2, 2, 2, 0, 0]
                [ 2, 2, 1, 2, 2, 0]
                [ 1, 1, 1, 1, 1, 0]
                [ 0, 0, 1, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 3]
            ]
        "Quadrijet Transfer Spacetug":
            name: "Quadrijet Transfer Spacetug"
            factions: ["Scum and Villainy"]
            attack: 2
            agility: 2
            hull: 5
            shields: 0
            chassis: "Spacetug Tractor Array"
            actions: [
                "Focus"
                "R-Evade"
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 3, 0, 3 ]
                [ 2, 1, 1, 1, 2, 0, 3, 3, 0, 0, 0, 3, 0 ]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "UT-60D U-wing":
            name: "UT-60D U-wing"
            factions: ["Rebel Alliance"]
            base: "Medium"
            attack: 3
            agility: 2
            hull: 5
            shields: 3
            actions: [
                "Focus"
                "Lock"
                "R-Coordinate"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0 ]
                [ 0, 1, 1, 1, 0 ]
                [ 2, 1, 1, 1, 2 ]
                [ 0, 2, 2, 2, 0 ]
                [ 0, 0, 2, 0, 0 ]
            ]
            autoequip: [
                "Pivot Wing"
            ]
        "TIE/sk Striker":
            name: "TIE/sk Striker"
            factions: ["Galactic Empire"]
            attack: 3
            agility: 2
            hull: 4
            shields: 0
            chassis: "Adaptive Ailerons"
            actions: [
                "Focus"
                "Evade"
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 3, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 3, 3 ]
                [ 0, 2, 1, 2, 0, 0, 0, 0 ]
            ]
        "Auzituck Gunship":
            name: "Auzituck Gunship"
            factions: ["Rebel Alliance"]
            attackf: 3
            agility: 1
            hull: 6
            shields: 2
            actions: [
                "Focus"
                "R-Barrel Roll"
                "Reinforce"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0 ]
            ]
        "Scurrg H-6 Bomber":
            name: "Scurrg H-6 Bomber"
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 1
            hull: 6
            shields: 4
            base: "Medium"
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 0, 0, 3, 3 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "TIE/ag Aggressor":
            name: "TIE/ag Aggressor"
            factions: ["Galactic Empire"]
            attack: 2
            agility: 2
            hull: 4
            shields: 1
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R-> Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0 ]
            ]
        "Alpha-Class Star Wing":
            name: "Alpha-Class Star Wing"
            factions: ["Galactic Empire"]
            attack: 2
            agility: 2
            hull: 4
            shields: 3
            actions: [
                "Focus"
                "Lock"
                "Slam"
                "Reload"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 2, 1, 2, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0 ]
                [ 2, 2, 2, 2, 2, 0, 0, 0 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0 ]
            ]
        "M12-L Kimogila Fighter":
            name: "M12-L Kimogila Fighter"
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 1
            hull: 7
            shields: 2
            base: "Medium"
            chassis: "Dead to Rights"
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
                "Reload"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 3, 2, 1, 2, 3, 0]
                [ 2, 1, 1, 1, 2, 0]
                [ 2, 2, 1, 2, 2, 0]
                [ 0, 0, 0, 0, 0, 3]
            ]
        "Sheathipede-Class Shuttle":
            name: "Sheathipede-Class Shuttle"
            factions: ["Rebel Alliance"]
            attack: 2
            attackb: 2
            agility: 2
            hull: 4
            shields: 1
            chassis: "Comms Shuttle"
            actions: [
                "Focus"
                "Coordinate"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 3, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 2, 1, 2, 3, 3, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ]
        "TIE Reaper":
            name: "TIE Reaper"
            factions: ["Galactic Empire"]
            attack: 3
            agility: 1
            hull: 6
            shields: 2
            base: "Medium"
            chassis: "Controlled Ailerons"
            actions: [
                "Focus"
                "Evade"
                "Jam"
                "R-Coordinate"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0 ]
                [ 3, 1, 1, 1, 3, 0, 3, 3 ]
                [ 3, 2, 1, 2, 3, 0, 0, 0 ]
                [ 0, 2, 1, 2, 0, 0, 0, 0 ]
            ]
        "Escape Craft":
            name: "Escape Craft"
            factions: ["Scum and Villainy"]
            attack: 2
            agility: 2
            hull: 2
            shields: 2
            chassis: "Co-Pilot"
            actions: [
                "Focus"
                "Barrel Roll"
                "R-Coordinate"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0, 0, 0 ]
                [ 3, 2, 1, 2, 3, 0, 0, 0 ]
                [ 0, 2, 2, 2, 0, 3, 0, 0 ]
            ]
        "T-70 X-wing":
            name: "T-70 X-wing"
            factions: [ "Resistance"]
            attack: 3
            agility: 2
            hull: 4
            shields: 3
            chassis: "Weapon Hardpoint"
            actions: [
                "Focus"
                "Lock"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 1, 1, 1, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
            ]
            autoequip: [
                "Integrated S-Foils"
            ]
        "RZ-2 A-wing":
            name: "RZ-2 A-wing"
            factions: ["Resistance"]
            attackt: 2
            agility: 3
            hull: 2
            shields: 2
            chassis: "Refined Gyrostabilizers"
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 0, 0, 0]
                [ 1, 1, 1, 1, 1, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 3, 3]
                [ 0, 0, 1, 0, 0, 0, 0, 0]
                [ 0, 0, 1, 0, 0, 3, 0, 0]
            ]
        "TIE/fo Fighter":
            name: "TIE/fo Fighter"
            factions: ["First Order"]
            attack: 2
            agility: 3
            hull: 3
            shields: 1
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 0, 0, 0]
                [ 1, 1, 1, 1, 1, 0, 3, 3]
                [ 2, 2, 1, 2, 2, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 3, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0]
            ]
        "TIE/vn Silencer":
            name: "TIE/vn Silencer"
            factions: ["First Order"]
            attack: 3
            agility: 3
            hull: 4
            shields: 2
            chassis: "Autothrusters"
            actions: [
                "Focus"
                "Boost"
                "Lock"
                "Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 0, 0, 0, 0, 0]
                [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 3, 3]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
            ]
        "TIE/sf Fighter":
            name: "TIE/sf Fighter"
            factions: ["First Order"]
            attack: 2
            attackt: 2
            agility: 2
            hull: 3
            shields: 3
            chassis: "Heavy Weapon Turret"
            actions: [
                "Focus"
                "> Rotate Arc"
                "Evade"
                "> Rotate Arc"
                "Lock"
                "> Rotate Arc"
                "Barrel Roll"
                "> Rotate Arc"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 3, 3, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
            ]
        "Upsilon-Class Command Shuttle":
            name: "Upsilon-Class Command Shuttle"
            factions: ["First Order"]
            attack: 4
            agility: 1
            hull: 6
            shields: 6
            chassis: "Linked Battery"
            actions: [
                "Focus"
                "Lock"
                "Reinforce"
                "Coordinate"
                "Jam"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 2, 1, 2, 3, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0]
                [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ]
            base: "Large"
        "MG-100 StarFortress":
            name: "MG-100 StarFortress"
            factions: ["Resistance"]
            attack: 3
            attackdt: 2
            agility: 1
            hull: 9
            shields: 3
            actions: [
                "Focus"
                "Lock"
                "Rotate Arc"
                "Reload"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0]
                [ 0, 3, 2, 3, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ]
            base: "Large"
        "Scavenged YT-1300":
            name: "Scavenged YT-1300"
            factions: [ "Resistance" ]
            attackdt: 3
            agility: 1
            hull: 8
            shields: 3
            keyword: ["Freighter"]
            actions: [
                "Focus"
                "Lock"
                "R-Boost"
                "R-Rotate Arc"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0]
                [ 2, 2, 2, 2, 2, 0, 3, 3]
                [ 0, 0, 3, 0, 0, 0, 0, 0]
            ]
            base: "Large"
        "Modified TIE/ln Fighter":
            name: "Modified TIE/ln Fighter"
            factions: ["Scum and Villainy"]
            attack: 2
            agility: 3
            hull: 3
            shields: 0
            chassis: "Notched Stabilizers"
            actions: [
                "Focus"
                "Barrel Roll"
                "Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 0]
                [ 2, 1, 1, 1, 2, 0]
                [ 2, 2, 1, 2, 2, 3]
                [ 0, 0, 2, 0, 0, 0]
                [ 0, 0, 3, 0, 0, 0]
            ]
        "V-19 Torrent Starfighter":
            name: "V-19 Torrent Starfighter"
            factions: ["Galactic Republic"]
            attack: 2
            agility: 2
            hull: 5
            shields: 0
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "R-> Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 3, 3]
                [ 0, 3, 1, 3, 0, 3, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
            ]
        "Delta-7 Aethersprite":
            name: "Delta-7 Aethersprite"
            factions: ["Galactic Republic"]
            attack: 2
            agility: 3
            hull: 3
            shields: 1
            chassis: "Fine-Tuned Controls"
            actions: [
                "Focus"
                "F-Evade"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 0, 1, 2, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 3, 3, 0, 0]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
            ]
            autoequip: [
                "Calibrated Laser Targeting"
            ]
        "Delta-7b Aethersprite":
            name: "Delta-7b Aethersprite"
            icon: "delta7aethersprite"
            factions: ["Galactic Republic"]
            attack: 3
            agility: 2
            hull: 3
            shields: 3
            chassis: "Fine-Tuned Controls"
            actions: [
                "Focus"
                "F-Evade"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 0, 1, 2, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 3, 3, 0, 0]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0]
            ]
        "Sith Infiltrator":
            name: "Sith Infiltrator"
            factions: ["Separatist Alliance"]
            attack: 3
            agility: 1
            hull: 6
            base: "Large"
            shields: 4
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 3, 3, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 0, 0, 0, 3, 0, 0, 0, 0]
            ]
        "Vulture-class Droid Fighter":
            name: "Vulture-class Droid Fighter"
            factions: ["Separatist Alliance"]
            attack: 2
            agility: 2
            hull: 3
            shields: 0
            chassis: "Networked Calculations"
            actions: [
                "Calculate"
                "Lock"
                "Barrel Roll"
                "R-> Calculate"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 3, 0, 0, 0, 0]
                [ 1, 2, 1, 2, 1, 0, 0, 0, 3, 3]
                [ 2, 3, 1, 3, 2, 0, 0, 0, 0, 0]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
            ]
            autoequip: [
                'Grappling Struts'
            ]
        "Belbullab-22 Starfighter":
            name: "Belbullab-22 Starfighter"
            factions: ["Separatist Alliance"]
            attack: 3
            agility: 2
            hull: 3
            shields: 2
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R-> Focus"
                "Boost"
                "R-> Focus"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 2, 0, 2, 2, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0]
                [ 3, 2, 1, 2, 3, 0, 3, 3, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
            ]
        "Naboo Royal N-1 Starfighter":
            name: "Naboo Royal N-1 Starfighter"
            factions: ["Galactic Republic", "Scum and Villainy"]
            attack: 2
            agility: 2
            hull: 3
            shields: 2
            chassis: "Full Throttle"
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 2, 2, 2, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
            ]
        "Hyena-class Droid Bomber":
            name: "Hyena-class Droid Bomber"
            factions: ["Separatist Alliance"]
            attack: 2
            agility: 2
            hull: 5
            shields: 0
            chassis: "Networked Calculations"
            actions: [
                "Calculate"
                "Lock"
                "Barrel Roll"
                "R-> Lock"
                "R-Reload"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 3, 2, 3, 2, 0, 0, 0, 0, 0]
                [ 1, 2, 1, 2, 1, 3, 0, 0, 3, 3]
                [ 2, 0, 1, 0, 2, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
            ]
            autoequip: [
                'Landing Struts'
            ]
        "Resistance Transport Pod":
            name: "Resistance Transport Pod"
            factions: ["Resistance"]
            attack: 2
            agility: 2
            hull: 3
            shields: 1
            actions: [
                "Focus"
                "R-Lock"
                "R-Barrel Roll"
                "R-Jam"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 0, 0]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0]
                [ 0, 3, 2, 3, 0, 3, 0, 0, 0, 0]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0]
            ]
        "Resistance Transport":
            name: "Resistance Transport"
            factions: ["Resistance"]
            attack: 2
            agility: 1
            hull: 5
            shields: 3
            actions: [
                "Focus"
                "Lock"
                "R-Coordinate"
                "R-Jam"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 3, 1, 1, 1, 3, 0, 0, 0, 0, 0, 3, 0, 3 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 3, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "Nantex-Class Starfighter":
            name: "Nantex-Class Starfighter"
            factions: ["Separatist Alliance"]
            attackbull: 3
            attackt: 2
            agility: 3
            hull: 4
            shields: 0
            chassis: "Pinpoint Tractor Array"
            actions: [
                "Focus"
                "Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 1, 0, 1, 2, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 3, 3]
                [ 0, 0, 2, 0, 0, 0, 0, 0]
                [ 0, 0, 2, 0, 0, 3, 0, 0]
            ]
        "BTL-B Y-wing":
            name: "BTL-B Y-wing"
            factions: ["Galactic Republic"]
            attack: 2
            agility: 1
            hull: 5
            shields: 3
            chassis: "Plated Hull"
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
                "R-Reload"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0]
                [ 2, 2, 1, 2, 2, 0]
                [ 3, 2, 2, 2, 3, 0]
                [ 0, 0, 3, 0, 0, 3]
                [ 0, 0, 0, 0, 0, 0]
            ]
        "Fireball":
            name: "Fireball"
            factions: ["Resistance"]
            attack: 2
            agility: 2
            hull: 6
            shields: 0
            chassis: "Explosion with Wings"
            actions: [
                "Focus"
                "Evade"
                "Barrel Roll"
                "Slam"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 0, 0, 3, 3 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "TIE/ba Interceptor":
            name: "TIE/ba Interceptor"
            factions: ["First Order"]
            attack: 3
            agility: 3
            hull: 2
            shields: 2
            chassis: "Fine-Tuned Thrusters"
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 1, 0, 1, 1, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 3, 3, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0 ]
            ]
        "Xi-class Light Shuttle":
            name: "Xi-class Light Shuttle"
            factions: ["First Order"]
            attack: 2
            agility: 2
            hull: 5
            shields: 2
            base: "Medium"
            actions: [
                "Focus"
                "R-Lock"
                "R-Coordinate"
                "Jam"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 1, 1, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "HMP Droid Gunship":
            name: "HMP Droid Gunship"
            factions: ["Separatist Alliance"]
            attackf: 2
            agility: 1
            hull: 5
            shields: 3
            chassis: "Networked Aim"
            actions: [
                "Calculate"
                "Lock"
                "R-Barrel Roll"
                "Reload"
                "R-> Calculate"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 3, 1, 3, 0, 0, 0, 0, 0, 0 ]
                [ 1, 2, 1, 2, 1, 0, 0, 0, 0, 0 ]
                [ 2, 3, 2, 3, 2, 0, 0, 0, 0, 0 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
            ]
            autoequip: [
                'Repulsorlift Stabilizers'
            ]
        "LAAT/i Gunship":
            name: "LAAT/i Gunship"
            factions: ["Galactic Republic"]
            attackdt: 2
            agility: 1
            hull: 8
            shields: 2
            base: "Medium"
            chassis: "Fire Convergence"
            actions: [
                "Focus"
                "Lock"
                "Rotate Arc"
                "R-Reinforce"
                "Reload"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0 ]
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "TIE/rb Heavy":
            name: "TIE/rb Heavy"
            factions: ["Galactic Empire"]
            attackt: 2
            agility: 1
            hull: 8
            shields: 0
            base: "Medium"
            chassis: "Rotating Cannons"
            actions: [
                "Focus"
                "Reinforce"
                "Lock"
                "R-Barrel Roll"
                "Rotate Arc"
                "R-> Calculate"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 3, 2, 1, 2, 3, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 0, 0, 3, 3 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "Droid Tri-fighter":
            name: "Droid Tri-fighter"
            factions: ["Separatist Alliance"]
            attack: 3
            agility: 3
            hull: 3
            shields: 0
            chassis: "Networked Calculations"
            actions: [
                "Calculate"
                "Evade"
                "Lock"
                "Barrel Roll"
                "R-> Evade"
                "Boost"
                "R-> Calculate"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 0, 0, 0, 2, 0, 0, 0, 3, 3 ]
                [ 1, 2, 1, 2, 1, 0, 0, 0, 0, 0 ]
                [ 1, 2, 1, 2, 1, 3, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0 ]
            ]
        "Nimbus-class V-wing":
            name: "Nimbus-class V-wing"
            factions: ["Galactic Republic"]
            attack: 2
            agility: 3
            hull: 2
            shields: 2
            keyword: ["TIE"]
            chassis: "Twin Ion Engines"
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
                "Boost"
                "R-> Lock"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 3, 0, 3, 2, 0, 0, 0, 0, 0 ]
                [ 1, 1, 1, 1, 1, 3, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "Eta-2 Actis":
            name: "Eta-2 Actis"
            factions: ["Galactic Republic"]
            attackbull: 3
            attack: 2
            agility: 3
            hull: 3
            shields: 0
            chassis: "Intuitive Controls"
            actions: [
                "Focus"
                "Evade"
                "F-Lock"
                "Barrel Roll"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 0, 0, 0, 2, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 4, 4 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "Syliure-class Hyperspace Ring":
            name: "Syliure-class Hyperspace Ring"
            factions: ["Galactic Republic"]
            agility: 1
            hull: 1
            shields: 2
            actions: [
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "BTA-NR2 Y-wing":
            name: "BTA-NR2 Y-wing"
            factions: ["Resistance"]
            attack: 2
            agility: 1
            hull: 4
            shields: 3
            chassis: "Intuitive Interface"
            actions: [
                "Focus"
                "R-Lock"
                "R-Barrel Roll"
                "R-Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 1, 1, 1, 0, 0]
                [ 2, 2, 1, 2, 2, 0]
                [ 3, 2, 1, 2, 3, 0]
                [ 0, 0, 3, 0, 0, 0]
                [ 0, 0, 0, 0, 0, 3]
            ]
        "TIE/wi Whisper Modified Interceptor":
            name: "TIE/wi Whisper Modified Interceptor"
            factions: ["First Order"]
            attackbull: 3
            attackt: 2
            agility: 2
            hull: 3
            shields: 2
            chassis: "Heavy Weapon Turret"
            actions: [
                "Focus"
                "> Rotate Arc"
                "Evade"
                "Lock"
                "Barrel Roll"
                "> Rotate Arc"
                "Boost"
                "> Rotate Arc"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 0, 0, 0, 2, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 3, 3, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
            ]
            autoequip: [
                "Enhanced Jamming Suite"
            ]
        "TIE/se Bomber":
            name: "TIE/se Bomber"
            factions: ["First Order"]
            attack: 2
            agility: 2
            hull: 4
            shields: 2
            chassis: "Pursuit Thrusters"
            actions: [
                "Focus"
                "Lock"
                "Barrel Roll"
                "R-> Lock"
                "R-Boost"
                "Reload"
                "R-> Evade"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 3, 2, 1, 2, 3, 0, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 3, 3, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "Gauntlet Fighter":
            name: "Gauntlet Fighter"
            factions: ["Rebel Alliance", "Galactic Empire", "Scum and Villainy", "Galactic Republic", "Separatist Alliance"]
            attack: 3
            attackb: 2
            agility: 2
            hull: 9
            shields: 2
            base: "Large"
            actions: [
                "Focus"
                "R-Reinforce"
                "Lock"
                "R-Coordinate"
            ]
            autoequip: [
                "Swivel Wing"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 1, 0, 1, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 0, 0 ]
                [ 3, 2, 2, 2, 3, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "ST-70 Assault Ship":
            name: "ST-70 Assault Ship"
            factions: ["Scum and Villainy"]
            attack: 3
            agility: 2
            hull: 7
            shields: 2
            base: "Medium"
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "R-Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 3, 2, 1, 2, 3, 0, 0, 0, 0, 0 ]
                [ 2, 2, 1, 2, 2, 0, 0, 0, 3, 3 ]
                [ 3, 2, 1, 2, 3, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 3, 0, 0, 0, 0 ]
            ]
        "Clone Z-95 Headhunter":
            name: "Clone Z-95 Headhunter"
            factions: [ "Galactic Republic" ]
            attack: 2
            agility: 2
            hull: 2
            shields: 2
            chassis: "Versatile Frame"
            actions: [
                "Focus"
                "Lock"
                "R-Barrel Roll"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0]
                [ 0, 2, 1, 2, 0, 0]
                [ 2, 1, 1, 1, 2, 0]
                [ 2, 2, 1, 2, 2, 3]
                [ 0, 0, 2, 0, 0, 3]
            ]
        "Rogue-class Starfighter":
            name: "Rogue-class Starfighter"
            factions: [ "Separatist Alliance", "Scum and Villainy" ]
            attack: 2
            agility: 2
            hull: 5
            shields: 2
            chassis: "Dead to Rights"
            actions: [
                "Focus"
                "R-> Boost"
                "Focus"
                "R-> Barrel Roll"
                "Evade"
                "R-> Barrel Roll"
                "Lock"
                "R-Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 2, 1, 0, 1, 2, 0, 0, 0, 0, 0 ]
                [ 2, 1, 1, 1, 2, 0, 0, 0, 3, 3 ]
                [ 3, 2, 1, 2, 3, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 3, 0, 0, 0, 0 ]
            ]

        # Epic Section
        "CR90 Corellian Corvette":
            name: "CR90 Corellian Corvette"
            icon: "cr90corvette"
            factions: ["Galactic Republic", "Rebel Alliance", "Resistance"]
            base: "Huge"
            attackl: 4
            attackr: 4
            agility: 0
            hull: 18
            shields: 7
            shieldrecurr: 2
            energy: 7
            energyrecurr: 2
            chassis: "Broadside Batteries"
            actions: [
                "Focus"
                "Reinforce"
                "Lock"
                "R-Coordinate"
                "Jam"
            ]
            maneuvers: [
                [ 0, 3, 3, 3, 0]
                [ 0, 2, 2, 2, 0]
                [ 0, 1, 1, 1, 0]
                [ 0, 3, 1, 3, 0]
                [ 0, 0, 3, 0, 0]
                [ 0, 0, 3, 0, 0]
            ]
        "Raider-class Corvette":
            name: "Raider-class Corvette"
            factions: ["Galactic Empire", "First Order"]
            base: "Huge"
            attackf: 4
            agility: 0
            hull: 20
            shields: 8
            shieldrecurr: 2
            energy: 6
            energyrecurr: 2
            chassis: "Concentrated Batteries"
            actions: [
                "Focus"
                "Reinforce"
                "Lock"
                "Coordinate"
                "Jam"
            ]
            maneuvers: [
                [ 0, 3, 3, 3, 0]
                [ 0, 1, 2, 1, 0]
                [ 0, 2, 1, 2, 0]
                [ 0, 3, 1, 3, 0]
                [ 0, 0, 2, 0, 0]
                [ 0, 0, 3, 0, 0]
            ]
        "GR-75 Medium Transport":
            name: "GR-75 Medium Transport"
            factions: ["Rebel Alliance", "Resistance"]
            base: "Huge"
            attack: 2
            agility: 0
            hull: 12
            shields: 3
            shieldrecurr: 1
            energy: 4
            energyrecurr: 1
            chassis: "Resupply Craft"
            actions: [
                "Focus"
                "R-Lock"
                "Coordinate"
                "R-Reinforce"
                "Jam"
            ]
            maneuvers: [
                [ 0, 3, 3, 3, 0]
                [ 0, 1, 1, 1, 0]
                [ 0, 2, 2, 2, 0]
                [ 0, 0, 3, 0, 0]
                [ 0, 0, 3, 0, 0]
            ]
        "Gozanti-class Cruiser":
            name: "Gozanti-class Cruiser"
            factions: ["Galactic Empire", "First Order", "Galactic Republic", "Separatist Alliance"]
            base: "Huge"
            attack: 3
            agility: 0
            hull: 11
            shields: 5
            shieldrecurr: 1
            energy: 3
            energyrecurr: 1
            chassis: "Docking Clamps"
            actions: [
                "Focus"
                "Reinforce"
                "Lock"
                "Coordinate"
                "Jam"
            ]
            maneuvers: [
                [ 0, 3, 3, 3, 0]
                [ 0, 2, 1, 2, 0]
                [ 0, 3, 1, 3, 0]
                [ 0, 0, 1, 0, 0]
                [ 0, 0, 3, 0, 0]
            ]
        "C-ROC Cruiser":
            name: "C-ROC Cruiser"
            factions: ["Separatist Alliance", "Scum and Villainy"]
            base: "Huge"
            attack: 3
            agility: 0
            hull: 12
            shields: 4
            shieldrecurr: 1
            energy: 4
            energyrecurr: 1
            chassis: "Overdrive Burners"
            actions: [
                "Focus"
                "Reinforce"
                "Lock"
                "R-Coordinate"
                "Jam"
            ]
            maneuvers: [
                [ 0, 3, 3, 3, 0]
                [ 0, 2, 1, 2, 0]
                [ 0, 2, 1, 2, 0]
                [ 0, 3, 2, 3, 0]
                [ 0, 0, 3, 0, 0]
                [ 0, 0, 3, 0, 0]
            ]
        "Trident-class Assault Ship":
            name: "Trident-class Assault Ship"
            factions: ["Separatist Alliance", "Scum and Villainy"]
            base: "Huge"
            attack: 3
            agility: 0
            hull: 10
            shields: 4
            shieldrecurr: 1
            energy: 3
            energyrecurr: 2
            chassis: "Tractor Grasp"
            actions: [
                "Focus"
                "R-Evade"
                "R-Reinforce"
                "Lock"
                "R-Coordinate"
            ]
            maneuvers: [
                [ 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0 ]
                [ 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 3, 0 ]
                [ 0, 2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0 ]
                [ 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
            ]

    # name field is for convenience only
    pilotsById: [
        {
            name: "Cavern Angels Zealot"
            xws_name: "cavernangelszealot"
            id: 0
            xws_name: "cavernangelszealot"
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            keyword: ["Partisan"]
            skill: 1
            points: 5
            loadout: 4
            pointsxwa: 10
            loadoutxwa: 10
            slots: [
                "Astromech"
                "Illicit"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Configuration"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Blue Squadron Escort"
            xws_name: "bluesquadronescort"
            id: 1
            xws_name: "bluesquadronescort"
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 2
            points: 5
            loadout: 4
            pointsxwa: 10
            loadoutxwa: 10
            slots: [
                "Astromech"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Torpedo"
                "Configuration"
            ]
        }
        {
            name: "Red Squadron Veteran"
            xws_name: "redsquadronveteran"
            id: 2
            xws_name: "redsquadronveteran"
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 3
            points: 5
            loadout: 3
            pointsxwa: 11
            loadoutxwa: 14
            slots: [
                "Talent"
                "Astromech"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Torpedo"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Jek Porkins"
            xws_name: "jekporkins"
            id: 3
            xws_name: "jekporkins"
            unique: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 4
            points: 5
            loadout: 15
            pointsxwa: 10
            loadoutxwa: 8
            slots: [
                "Talent"
                "Torpedo"
                "Astromech"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Torpedo"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Luke Skywalker"
            xws_name: "lukeskywalker"
            id: 4
            xws_name: "lukeskywalker"
            unique: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            keyword: ["Light Side"]
            force: 2
            points: 6
            loadout: 24
            pointsxwa: 14
            loadoutxwa: 10
            slots: [
                "Force"
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Torpedo"
                "Configuration"
                "Force"
                "Force"
            ]
        }
        {
            name: "Wedge Antilles"
            xws_name: "wedgeantilles"
            id: 5
            xws_name: "wedgeantilles"
            unique: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 6
            points: 5
            loadout: 9
            pointsxwa: 14
            loadoutxwa: 13
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Torpedo"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Garven Dreis (X-Wing)"
            xws_name: "garvendreis"
            id: 6
            xws_name: "garvendreis"
            unique: true
            xwsship: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 4
            points: 5
            loadout: 16
            pointsxwa: 12
            loadoutxwa: 13
            slots: [
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Astromech"
                "Gunner"
                "Gunner"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Biggs Darklighter"
            xws_name: "biggsdarklighter"
            id: 7
            xws_name: "biggsdarklighter"
            unique: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 3
            points: 5
            loadout: 18
            pointsxwa: 10
            loadoutxwa: 7
            slots: [
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Torpedo"
                "Configuration"
            ]
        }
        {
            name: "Edrio Two Tubes"
            xws_name: "edriotwotubes"
            id: 8
            xws_name: "edriotwotubes"
            unique: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 2
            points: 4
            loadout: 10
            pointsxwa: 11
            loadoutxwa: 16
            keyword: ["Partisan"]
            slots: [
                "Missile"
                "Illicit"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Configuration"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Thane Kyrell"
            xws_name: "thanekyrell"
            id: 9
            xws_name: "thanekyrell"
            unique: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            points: 4
            loadout: 8
            pointsxwa: 11
            loadoutxwa: 8
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Torpedo"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Leevan Tenza"
            xws_name: "leevantenza"
            id: 10
            xws_name: "leevantenza"
            unique: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 3
            points: 4
            loadout: 8
            pointsxwa: 10
            loadoutxwa: 10
            keyword: ["Partisan"]
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Illicit"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Configuration"
                "Missile"
                "Illicit"
                "Talent"
            ]
        }
        {
            name: "whoops"
            xws_name: "whoops"
            id: 11
            xws_name: "whoops"
            skip: true
        }
        {
            name: "Kullbee Sperado"
            xws_name: "kullbeesperado"
            id: 12
            xws_name: "kullbeesperado"
            unique: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 4
            points: 4
            loadout: 7
            pointsxwa: 11
            loadoutxwa: 14
            keyword: ["Partisan"]
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Illicit"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Configuration"
                "Missile"
                "Illicit"
                "Talent"
            ]
        }
        {
            name: "Sabine Wren (TIE Fighter)"
            xws_name: "sabinewren"
            id: 13
            xws_name: "sabinewren"
            unique: true
            xwsship: true
            faction: "Rebel Alliance"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 2
            loadout: 0
            pointsxwa: 10
            loadoutxwa: 13
            keyword: ["Spectre", "Mandalorian"]
            slots: [
                "Talent"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
                "Talent"
            ]
        }
        {
            name: "Ezra Bridger (TIE Fighter)"
            xws_name: "ezrabridger"
            id: 14
            xws_name: "ezrabridger"
            unique: true
            faction: "Rebel Alliance"
            ship: "TIE/ln Fighter"
            skill: 3
            force: 1
            points: 3
            loadout: 6
            pointsxwa: 9
            loadoutxwa: 6
            keyword: ["Light Side","Spectre"]
            slots: [
                "Force"
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
                "Force"
            ]
        }
        {
            name: '"Zeb" Orrelios (TIE Fighter)'
            id: 15
            xws_name: "zeborrelios"
            xwsname: "zeborrelios-tielnfighter"
            unique: true
            faction: "Rebel Alliance"
            ship: "TIE/ln Fighter"
            skill: 2
            points: 3
            loadout: 8
            pointsxwa: 8
            loadoutxwa: 6
            keyword: ["Spectre"]
            slots: [
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
            ]
        }
        {
            name: "Captain Rex"
            xws_name: "captainrex"
            id: 16
            xws_name: "captainrex"
            unique: true
            faction: "Rebel Alliance"
            ship: "TIE/ln Fighter"
            skill: 2
            points: 3
            loadout: 8
            pointsxwa: 7
            loadoutxwa: 9
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Talent"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
                "Talent"
            ]
            applies_condition: 'Suppressive Fire'.canonicalize()
        }
        {
            name: "Miranda Doni"
            xws_name: "mirandadoni"
            id: 17
            xws_name: "mirandadoni"
            unique: true
            faction: "Rebel Alliance"
            ship: "BTL-S8 K-wing"
            skill: 4
            points: 5
            loadout: 14
            pointsxwa: 12
            loadoutxwa: 19
            slots: [
                "Torpedo"
                "Missile"
                "Gunner"
                "Crew"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Device"
                "Modification"
                "Gunner"
                "Crew"
                "Talent"
            ]
        }
        {
            name: "Esege Tuketu"
            xws_name: "esegetuketu"
            id: 18
            xws_name: "esegetuketu"
            unique: true
            faction: "Rebel Alliance"
            ship: "BTL-S8 K-wing"
            skill: 3
            points: 5
            loadout: 16
            pointsxwa: 12
            loadoutxwa: 16
            slots: [
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Crew"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Device"
                "Modification"
                "Gunner"
                "Crew"
            ]
        }
        {
            name: "empty"
            xws_name: "empty"
            id: 19
            xws_name: "empty"
            skip: true
        }
        {
            name: "Warden Squadron Pilot"
            xws_name: "wardensquadronpilot"
            id: 20
            xws_name: "wardensquadronpilot"
            faction: "Rebel Alliance"
            ship: "BTL-S8 K-wing"
            skill: 2
            points: 5
            loadout: 7
            pointsxwa: 11
            loadoutxwa: 18
            slots: [
                "Torpedo"
                "Missile"
                "Gunner"
                "Device"
                "Device"
            ]
            slotsxwa: [
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Device"
                "Modification"
                "Gunner"
                "Crew"
            ]
        }
        {
            name: "Corran Horn"
            xws_name: "corranhorn"
            id: 21
            xws_name: "corranhorn"
            unique: true
            faction: "Rebel Alliance"
            ship: "E-wing"
            skill: 5
            points: 6
            loadout: 20
            pointsxwa: 14
            loadoutxwa: 12
            slots: [
                "Talent"
                "Tech"
                "Sensor"
                "Sensor"
                "Torpedo"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Torpedo"
                "Modification"
                "Sensor"
                "Astromech"
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Gavin Darklighter"
            xws_name: "gavindarklighter"
            id: 22
            xws_name: "gavindarklighter"
            unique: true
            faction: "Rebel Alliance"
            ship: "E-wing"
            skill: 4
            points: 5
            loadout: 18
            pointsxwa: 14
            loadoutxwa: 14
            slots: [
                "Talent"
                "Tech"
                "Sensor"
                "Torpedo"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Torpedo"
                "Modification"
                "Sensor"
                "Astromech"
                "Talent"
            ]
        }
        {
            name: "Rogue Squadron Escort"
            xws_name: "roguesquadronescort"
            id: 23
            xws_name: "roguesquadronescort"
            faction: "Rebel Alliance"
            ship: "E-wing"
            skill: 4
            points: 5
            loadout: 12
            pointsxwa: 14
            loadoutxwa: 17
            slots: [
                "Sensor"
                "Torpedo"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Torpedo"
                "Modification"
                "Sensor"
                "Astromech"
                "Talent"
            ]
        }
        {
            name: "Knave Squadron Escort"
            xws_name: "knavesquadronescort"
            id: 24
            xws_name: "knavesquadronescort"
            faction: "Rebel Alliance"
            ship: "E-wing"
            skill: 2
            points: 5
            loadout: 14
            pointsxwa: 12
            loadoutxwa: 8
            slots: [
                "Sensor"
                "Tech"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Torpedo"
                "Modification"
                "Sensor"
                "Astromech"
            ]
        }
        {
            name: "Norra Wexley (Y-Wing)"
            xws_name: "norrawexley"
            id: 25
            xws_name: "norrawexley"
            unique: true
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 5
            points: 5
            loadout: 18
            pointsxwa: 13
            loadoutxwa: 14
            slots: [
                "Talent"
                "Turret"
                "Gunner"
                "Astromech"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Astromech"
                "Gunner"
                "Gunner"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Horton Salm"
            xws_name: "hortonsalm"
            id: 26
            xws_name: "hortonsalm"
            unique: true
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 3
            loadout: 7
            pointsxwa: 9
            loadoutxwa: 12
            slots: [
                "Turret"
                "Torpedo"
                "Missile"
                "Astromech"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
                "Talent"
            ]
        }
        {
            name: '"Dutch" Vander'
            id: 27
            xws_name: "dutchvander"
            xwsname: "dutchvander"
            unique: true
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 4
            loadout: 12
            pointsxwa: 11
            loadoutxwa: 18
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Missile"
                "Astromech"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
                "Talent"
            ]
        }
        {
            name: "Evaan Verlaine"
            xws_name: "evaanverlaine"
            id: 28
            xws_name: "evaanverlaine"
            unique: true
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 3
            points: 3
            loadout: 8
            pointsxwa: 8
            loadoutxwa: 7
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Missile"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
            ]
        }
        {
            name: "Gold Squadron Veteran"
            xws_name: "goldsquadronveteran"
            id: 29
            xws_name: "goldsquadronveteran"
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 3
            points: 4
            loadout: 6
            pointsxwa: 9
            loadoutxwa: 13
            slots: [
                "Turret"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
                "Talent"
            ]
        }
        {
            name: "Gray Squadron Bomber"
            xws_name: "graysquadronbomber"
            id: 30
            xws_name: "graysquadronbomber"
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 2
            points: 4
            loadout: 8
            pointsxwa: 7
            loadoutxwa: 5
            slots: [
                "Device"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
            ]
        }
        {
            name: "Bodhi Rook"
            xws_name: "bodhirook"
            id: 31
            xws_name: "bodhirook"
            unique: true
            faction: "Rebel Alliance"
            ship: "UT-60D U-wing"
            skill: 4
            points: 5
            loadout: 10
            pointsxwa: 11
            loadoutxwa: 10
            slots: [
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Cassian Andor"
            xws_name: "cassianandor"
            id: 32
            xws_name: "cassianandor"
            unique: true
            faction: "Rebel Alliance"
            ship: "UT-60D U-wing"
            skill: 3
            points: 5
            loadout: 12
            pointsxwa: 12
            loadoutxwa: 12
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Modification"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Heff Tobber"
            xws_name: "hefftobber"
            id: 33
            xws_name: "hefftobber"
            unique: true
            faction: "Rebel Alliance"
            ship: "UT-60D U-wing"
            skill: 2
            points: 5
            loadout: 9
            pointsxwa: 12
            loadoutxwa: 16
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Modification"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Magva Yarro"
            xws_name: "magvayarro"
            id: 34
            xws_name: "magvayarro"
            unique: true
            faction: "Rebel Alliance"
            ship: "UT-60D U-wing"
            skill: 3
            points: 5
            loadout: 14
            pointsxwa: 13
            loadoutxwa: 17
            keyword: ["Partisan"]
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Modification"
                "Configuration"
                "Talent"
                "Illicit"
            ]
        }
        {
            name: "Saw Gerrera"
            xws_name: "sawgerrera"
            id: 35
            xws_name: "sawgerrera"
            unique: true
            faction: "Rebel Alliance"
            ship: "UT-60D U-wing"
            skill: 4
            points: 5
            loadout: 18
            pointsxwa: 13
            loadoutxwa: 16
            keyword: ["Partisan"]
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Modification"
                "Configuration"
                "Talent"
                "Illicit"
            ]
        }
        {
            name: "Benthic Two Tubes"
            xws_name: "benthictwotubes"
            id: 36
            xws_name: "benthictwotubes"
            unique: true
            faction: "Rebel Alliance"
            ship: "UT-60D U-wing"
            skill: 2
            points: 5
            loadout: 16
            pointsxwa: 12
            loadoutxwa: 14
            keyword: ["Partisan"]
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Modification"
                "Configuration"
                "Talent"
                "Illicit"
            ]
        }
        {
            name: "Blue Squadron Scout"
            xws_name: "bluesquadronscout"
            id: 37
            xws_name: "bluesquadronscout"
            faction: "Rebel Alliance"
            ship: "UT-60D U-wing"
            skill: 2
            points: 12
            loadout: 17
            pointsxwa: 12
            loadoutxwa: 17
            slots: [
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Modification"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Partisan Renegade"
            xws_name: "partisanrenegade"
            id: 38
            xws_name: "partisanrenegade"
            faction: "Rebel Alliance"
            ship: "UT-60D U-wing"
            skill: 1
            points: 5
            loadout: 6
            pointsxwa: 11
            loadoutxwa: 12
            keyword: ["Partisan"]
            slots: [
                "Illicit"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Modification"
                "Configuration"
                "Illicit"
            ]
        }
        {
            name: "Dash Rendar"
            xws_name: "dashrendar"
            id: 39
            xws_name: "dashrendar"
            unique: true
            faction: "Rebel Alliance"
            ship: "YT-2400 Light Freighter"
            skill: 5
            points: 10
            loadout: 22
            pointsxwa: 20
            loadoutxwa: 20
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Talent"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Missile"
            ]
            chassis: "Sensor Blindspot"
            ship_override:
                attackdt: 4
        }
        {
            name: '"Leebo"'
            id: 40
            xws_name: "leebo"
            xwsname: "leebo"
            unique: true
            faction: "Rebel Alliance"
            ship: "YT-2400 Light Freighter"
            skill: 3
            points: 8
            loadout: 16
            pointsxwa: 20
            loadoutxwa: 19
            keyword: ["Droid"]
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Talent"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Missile"
            ]
            chassis: "Sensor Blindspot"
            ship_override:
                attackdt: 4
        }
        {
            name: "Wild Space Fringer"
            xws_name: "wildspacefringer"
            id: 41
            xws_name: "wildspacefringer"
            faction: "Rebel Alliance"
            ship: "YT-2400 Light Freighter"
            skill: 1
            points: 8
            loadout: 7
            pointsxwa: 17
            loadoutxwa: 14
            slots: [
                "Missile"
                "Illicit"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Missile"
            ]
            chassis: "Sensor Blindspot"
            ship_override:
                attackdt: 4
        }
        {
            name: "Han Solo"
            xws_name: "hansolo"
            id: 42
            xws_name: "hansolo-modifiedyt1300lightfreighter"
            unique: true
            xwsaddon: "modifiedyt1300lightfreighter"
            faction: "Rebel Alliance"
            ship: "Modified YT-1300 Light Freighter"
            skill: 6
            points: 7
            loadout: 15
            pointsxwa: 16
            loadoutxwa: 20
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Lando Calrissian"
            xws_name: "landocalrissian"
            id: 43
            xws_name: "landocalrissian-modifiedyt1300lightfreighter"
            unique: true
            xwsaddon: "modifiedyt1300lightfreighter"
            faction: "Rebel Alliance"
            ship: "Modified YT-1300 Light Freighter"
            skill: 5
            points: 7
            loadout: 21
            pointsxwa: 14
            loadoutxwa: 20
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
                "Talent"
            ]
        }
        {
            name: "Chewbacca"
            xws_name: "chewbacca"
            id: 44
            xws_name: "chewbacca"
            unique: true
            faction: "Rebel Alliance"
            ship: "Modified YT-1300 Light Freighter"
            skill: 4
            charge: 1
            recurring: 1
            points: 7
            loadout: 18
            pointsxwa: 17
            loadoutxwa: 15
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Missile"
                "Title"
                "Talent"
            ]
        }
        {
            name: "Outer Rim Smuggler"
            xws_name: "outerrimsmuggler"
            id: 45
            xws_name: "outerrimsmuggler"
            faction: "Rebel Alliance"
            ship: "Modified YT-1300 Light Freighter"
            skill: 1
            points: 7
            loadout: 6
            pointsxwa: 16
            loadoutxwa: 13
            slots: [
                "Missile"
                "Gunner"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Modification"
                "Missile"
            ]
        }
        {
            name: "Jan Ors"
            xws_name: "janors"
            id: 46
            xws_name: "janors"
            unique: true
            faction: "Rebel Alliance"
            ship: "HWK-290 Light Freighter"
            skill: 5
            points: 6
            loadout: 10
            pointsxwa: 15
            loadoutxwa: 12
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Device"
                "Modification"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Talent"
                "Crew"
                "Modification"
                "Device"
                "Title"
            ]
        }
        {
            name: "Roark Garnet"
            xws_name: "roarkgarnet"
            id: 47
            xws_name: "roarkgarnet"
            unique: true
            faction: "Rebel Alliance"
            ship: "HWK-290 Light Freighter"
            skill: 4
            points: 5
            loadout: 12
            pointsxwa: 13
            loadoutxwa: 12
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Modification"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Talent"
                "Crew"
                "Modification"
                "Device"
                "Title"
            ]
        }
        {
            name: "Kyle Katarn"
            xws_name: "kylekatarn"
            id: 48
            xws_name: "kylekatarn"
            unique: true
            faction: "Rebel Alliance"
            ship: "HWK-290 Light Freighter"
            skill: 3
            points: 5
            loadout: 8
            pointsxwa: 11
            loadoutxwa: 10
            slots: [
                "Talent"
                "Talent"
                "Crew"
                "Device"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Talent"
                "Crew"
                "Modification"
                "Device"
                "Title"
            ]
        }
        {
            name: "Rebel Scout"
            xws_name: "rebelscout"
            id: 49
            xws_name: "rebelscout"
            faction: "Rebel Alliance"
            ship: "HWK-290 Light Freighter"
            skill: 2
            points: 4
            loadout: 6
            pointsxwa: 7
            loadoutxwa: 7
            slots: [
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Device"
                "Device"
            ]
        }
        {
            name: "Jake Farrell"
            xws_name: "jakefarrell"
            id: 50
            xws_name: "jakefarrell"
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 4
            points: 4
            loadout: 11
            pointsxwa: 11
            loadoutxwa: 16
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Missile"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Arvel Crynyd"
            xws_name: "arvelcrynyd"
            id: 51
            xws_name: "arvelcrynyd"
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 3
            points: 3
            loadout: 5
            pointsxwa: 9
            loadoutxwa: 7
            slots: [
                "Talent"
                "Talent"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: "Green Squadron Pilot"
            xws_name: "greensquadronpilot"
            id: 52
            xws_name: "greensquadronpilot"
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 3
            points: 4
            loadout: 4
            pointsxwa: 9
            loadoutxwa: 9
            slots: [
                "Talent"
                "Talent"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: "Phoenix Squadron Pilot"
            xws_name: "phoenixsquadronpilot"
            id: 53
            xws_name: "phoenixsquadronpilot"
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 1
            points: 4
            loadout: 3
            pointsxwa: 8
            loadoutxwa: 5
            slots: [
                "Talent"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: "Airen Cracken"
            xws_name: "airencracken"
            id: 54
            xws_name: "airencracken"
            unique: true
            faction: "Rebel Alliance"
            ship: "Z-95-AF4 Headhunter"
            skill: 5
            points: 4
            loadout: 11
            pointsxwa: 8
            loadoutxwa: 9
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Missile"
            ]
        }
        {
            name: "Lieutenant Blount"
            xws_name: "lieutenantblount"
            id: 55
            xws_name: "lieutenantblount"
            unique: true
            faction: "Rebel Alliance"
            ship: "Z-95-AF4 Headhunter"
            skill: 4
            points: 3
            loadout: 11
            pointsxwa: 9
            loadoutxwa: 17
            slots: [
                "Talent"
                "Talent"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Missile"
            ]
        }
        {
            name: "Tala Squadron Pilot"
            xws_name: "talasquadronpilot"
            id: 56
            xws_name: "talasquadronpilot"
            faction: "Rebel Alliance"
            ship: "Z-95-AF4 Headhunter"
            skill: 2
            points: 3
            loadout: 4
            pointsxwa: 8
            loadoutxwa: 16
            slots: [
                "Talent"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Missile"
            ]
        }
        {
            name: "Bandit Squadron Pilot"
            xws_name: "banditsquadronpilot"
            id: 57
            xws_name: "banditsquadronpilot"
            faction: "Rebel Alliance"
            ship: "Z-95-AF4 Headhunter"
            skill: 1
            points: 3
            loadout: 5
            pointsxwa: 6
            loadoutxwa: 5
            slots: [
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Missile"
            ]
        }
        {
            name: "Wullffwarro"
            xws_name: "wullffwarro"
            id: 58
            xws_name: "wullffwarro"
            unique: true
            faction: "Rebel Alliance"
            ship: "Auzituck Gunship"
            skill: 4
            points: 5
            loadout: 11
            pointsxwa: 13
            loadoutxwa: 14
            slots: [
                "Talent"
                "Crew"
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Lowhhrick"
            xws_name: "lowhhrick"
            id: 59
            xws_name: "lowhhrick"
            unique: true
            faction: "Rebel Alliance"
            ship: "Auzituck Gunship"
            skill: 3
            points: 5
            loadout: 10
            pointsxwa: 12
            loadoutxwa: 13
            slots: [
                "Talent"
                "Crew"
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Kashyyyk Defender"
            xws_name: "kashyyykdefender"
            id: 60
            xws_name: "kashyyykdefender"
            faction: "Rebel Alliance"
            ship: "Auzituck Gunship"
            skill: 1
            points: 5
            loadout: 6
            pointsxwa: 11
            loadoutxwa: 9
            slots: [
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Hera Syndulla (VCX-100)"
            xws_name: "herasyndulla"
            id: 61
            xws_name: "herasyndulla"
            unique: true
            faction: "Rebel Alliance"
            ship: "VCX-100 Light Freighter"
            skill: 5
            points: 7
            loadout: 20
            pointsxwa: 10
            loadoutxwa: 12
            keyword: ["Spectre"]
            slots: [
                "Talent"
                "Sensor"
                "Turret"
                "Torpedo"
                "Crew"
                "Crew"
                "Gunner"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Kanan Jarrus"
            xws_name: "kananjarrus"
            id: 62
            xws_name: "kananjarrus"
            unique: true
            faction: "Rebel Alliance"
            ship: "VCX-100 Light Freighter"
            skill: 3
            keyword: ["Light Side", "Jedi", "Spectre"]
            force: 2
            points: 7
            loadout: 20
            pointsxwa: 19
            loadoutxwa: 20
            slots: [
                "Force"
                "Sensor"
                "Turret"
                "Torpedo"
                "Crew"
                "Crew"
                "Gunner"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Gunner"
                "Turret"
                "Modification"
                "Torpedo"
                "Title"
                "Force"
            ]
        }
        {
            name: '"Chopper"'
            id: 63
            xws_name: "chopper"
            xwsname: "chopper"
            unique: true
            faction: "Rebel Alliance"
            ship: "VCX-100 Light Freighter"
            skill: 2
            points: 6
            loadout: 14
            pointsxwa: 16
            loadoutxwa: 12
            keyword: ["Droid","Spectre"]
            slots: [
                "Sensor"
                "Turret"
                "Torpedo"
                "Crew"
                "Crew"
                "Gunner"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Gunner"
                "Turret"
                "Modification"
                "Torpedo"
                "Title"
            ]
        }
        {
            name: "Lothal Rebel"
            xws_name: "lothalrebel"
            id: 64
            xws_name: "lothalrebel"
            faction: "Rebel Alliance"
            ship: "VCX-100 Light Freighter"
            skill: 2
            points: 7
            loadout: 8
            pointsxwa: 15
            loadoutxwa: 9
            slots: [
                "Turret"
                "Torpedo"
                "Gunner"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Gunner"
                "Turret"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Hera Syndulla"
            xws_name: "herasyndulla"
            id: 65
            xws_name: "herasyndulla"
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 5
            points: 4
            loadout: 9
            pointsxwa: 10
            loadoutxwa: 12
            keyword: ["Spectre"]
            slots: [
                "Talent"
                "Turret"
                "Crew"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Sabine Wren"
            xws_name: "sabinewren"
            id: 66
            xws_name: "sabinewren"
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 3
            points: 4
            loadout: 6
            pointsxwa: 10
            loadoutxwa: 13
            keyword: ["Mandalorian","Spectre"]
            slots: [
                "Talent"
                "Turret"
                "Crew"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
                "Talent"
            ]
        }
        {
            name: "Ezra Bridger"
            xws_name: "ezrabridger"
            id: 67
            xws_name: "ezrabridger"
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 3
            keyword: ["Light Side","Spectre"]
            force: 1
            points: 4
            loadout: 7
            pointsxwa: 9
            loadoutxwa: 6
            slots: [
                "Force"
                "Turret"
                "Crew"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
                "Force"
            ]
        }

        {
            name: '"Zeb" Orrelios'
            id: 68
            xws_name: "zeborrelios"
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 2
            points: 3
            loadout: 10
            pointsxwa: 8
            loadoutxwa: 6
            keyword: ["Spectre"]
            slots: [
                "Talent"
                "Turret"
                "Crew"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
            ]
        }
        {
            name: "Fenn Rau (Sheathipede)"
            xws_name: "fennrau"
            id: 69
            xws_name: "fennrau"
            unique: true
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 6
            points: 5
            loadout: 10
            pointsxwa: 14
            loadoutxwa: 9
            keyword: ["Mandalorian","Spectre"]
            slots: [
                "Talent"
                "Crew"
                "Astromech"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
                "Torpedo"
                "Talent"
            ]
        }
        {
            name: "Ezra Bridger (Sheathipede)"
            xws_name: "ezrabridger"
            id: 70
            xws_name: "ezrabridger"
            unique: true
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 3
            force: 1
            points: 4
            loadout: 6
            pointsxwa: 9
            loadoutxwa: 6
            keyword: ["Light Side","Spectre"]
            slots: [
                "Force"
                "Crew"
                "Astromech"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
                "Force"
            ]
        }
        {
            name: '"Zeb" Orrelios (Sheathipede)'
            id: 71
            xws_name: "zeborrelios"
            xwsname: "zeborrelios-sheathipedeclassshuttle"
            unique: true
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 2
            points: 3
            loadout: 3
            pointsxwa: 8
            loadoutxwa: 6
            keyword: ["Spectre"]
            slots: [
                "Talent"
                "Crew"
                "Astromech"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
            ]
        }
        {
            name: "AP-5"
            xws_name: "ap5"
            id: 72
            xws_name: "ap-5"
            unique: true
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 1
            points: 3
            loadout: 5
            pointsxwa: 8
            loadoutxwa: 7
            keyword: ["Droid","Spectre"]
            slots: [
                "Crew"
                "Modification"
                "Astromech"
                "Title"
            ]
            slotsxwa: [
                "Astromech"
                "Crew"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Braylen Stramm"
            xws_name: "braylenstramm"
            id: 73
            xws_name: "braylenstramm"
            unique: true
            faction: "Rebel Alliance"
            ship: "A/SF-01 B-wing"
            skill: 4
            points: 5
            loadout: 12
            pointsxwa: 12
            loadoutxwa: 10
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Device"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Missile"
                "Modification"
                "Sensor"
                "Torpedo"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Ten Numb"
            xws_name: "tennumb"
            id: 74
            xws_name: "tennumb"
            unique: true
            faction: "Rebel Alliance"
            ship: "A/SF-01 B-wing"
            skill: 4
            points: 5
            loadout: 14
            pointsxwa: 11
            loadoutxwa: 8
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Device"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Missile"
                "Modification"
                "Sensor"
                "Torpedo"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Blade Squadron Veteran"
            xws_name: "bladesquadronveteran"
            id: 75
            xws_name: "bladesquadronveteran"
            faction: "Rebel Alliance"
            ship: "A/SF-01 B-wing"
            skill: 3
            points: 4
            loadout: 4
            pointsxwa: 12
            loadoutxwa: 16
            slots: [
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Configuration"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Missile"
                "Modification"
                "Sensor"
                "Torpedo"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Blue Squadron Pilot"
            xws_name: "bluesquadronpilot"
            id: 76
            xws_name: "bluesquadronpilot"
            faction: "Rebel Alliance"
            ship: "A/SF-01 B-wing"
            skill: 2
            points: 4
            loadout: 4
            pointsxwa: 10
            loadoutxwa: 8
            slots: [
                "Sensor"
                "Cannon"
                "Cannon"
                "Device"
                "Configuration"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Missile"
                "Modification"
                "Sensor"
                "Torpedo"
                "Configuration"
            ]
        }
        {
            name: "Norra Wexley"
            xws_name: "norrawexley"
            id: 77
            xws_name: "norrawexley"
            unique: true
            faction: "Rebel Alliance"
            ship: "ARC-170 Starfighter"
            skill: 5
            points: 5
            loadout: 8
            pointsxwa: 13
            loadoutxwa: 14
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Astromech"
                "Gunner"
                "Gunner"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Shara Bey"
            xws_name: "sharabey"
            id: 78
            xws_name: "sharabey"
            unique: true
            faction: "Rebel Alliance"
            ship: "ARC-170 Starfighter"
            skill: 4
            points: 4
            loadout: 8
            pointsxwa: 12
            loadoutxwa: 13
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Gunner"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Astromech"
                "Gunner"
                "Gunner"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Garven Dreis"
            xws_name: "garvendreis"
            id: 79
            xws_name: "garvendreis"
            unique: true
            faction: "Rebel Alliance"
            ship: "ARC-170 Starfighter"
            skill: 4
            points: 4
            loadout: 7
            pointsxwa: 12
            loadoutxwa: 13
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Gunner"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Astromech"
                "Gunner"
                "Gunner"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Ibtisam"
            xws_name: "ibtisam"
            id: 80
            xws_name: "ibtisam"
            unique: true
            faction: "Rebel Alliance"
            ship: "ARC-170 Starfighter"
            skill: 3
            points: 4
            loadout: 9
            pointsxwa: 11
            loadoutxwa: 12
            slots: [
                "Talent"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Astromech"
                "Gunner"
                "Gunner"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "IG-88A"
            xws_name: "ig88a"
            id: 81
            xws_name: "ig-88a"
            unique: true
            faction: "Scum and Villainy"
            ship: "Aggressor Assault Fighter"
            skill: 4
            points: 7
            loadout: 16
            pointsxwa: 17
            loadoutxwa: 20
            keyword: ["Bounty Hunter","Droid"]
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Talent"
                "Cannon"
                "Cannon"
                "Sensor"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "IG-88B"
            xws_name: "ig88b"
            id: 82
            xws_name: "ig-88b"
            unique: true
            faction: "Scum and Villainy"
            ship: "Aggressor Assault Fighter"
            skill: 4
            points: 7
            loadout: 16
            pointsxwa: 16
            loadoutxwa: 16
            keyword: ["Bounty Hunter","Droid"]
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Talent"
                "Cannon"
                "Cannon"
                "Sensor"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "IG-88C"
            xws_name: "ig88c"
            id: 83
            xws_name: "ig-88c"
            unique: true
            faction: "Scum and Villainy"
            ship: "Aggressor Assault Fighter"
            skill: 4
            points: 7
            loadout: 16
            pointsxwa: 16
            loadoutxwa: 16
            keyword: ["Bounty Hunter","Droid"]
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Talent"
                "Cannon"
                "Cannon"
                "Sensor"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "IG-88D"
            xws_name: "ig88d"
            id: 84
            xws_name: "ig-88d"
            unique: true
            faction: "Scum and Villainy"
            ship: "Aggressor Assault Fighter"
            skill: 4
            points: 6
            loadout: 13
            pointsxwa: 15
            loadoutxwa: 14
            keyword: ["Bounty Hunter","Droid"]
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Talent"
                "Cannon"
                "Cannon"
                "Sensor"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Kavil"
            xws_name: "kavil"
            id: 85
            xws_name: "kavil"
            unique: true
            faction: "Scum and Villainy"
            ship: "BTL-A4 Y-wing"
            skill: 5
            points: 4
            loadout: 7
            pointsxwa: 11
            loadoutxwa: 17
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Missile"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Device"
                "Turret"
                "Talent"
                "Illicit"
                "Missile"
            ]
        }
        {
            name: "Drea Renthal"
            xws_name: "drearenthal"
            id: 86
            xws_name: "drearenthal"
            unique: true
            faction: "Scum and Villainy"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 4
            loadout: 10
            pointsxwa: 10
            loadoutxwa: 10
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Missile"
                "Astromech"
                "Device"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Device"
                "Turret"
                "Talent"
                "Illicit"
                "Missile"
            ]
        }
        {
            name: "Hired Gun"
            xws_name: "hiredgun"
            id: 87
            xws_name: "hiredgun"
            faction: "Scum and Villainy"
            ship: "BTL-A4 Y-wing"
            skill: 2
            points: 4
            loadout: 6
            pointsxwa: 9
            loadoutxwa: 12
            slots: [
                "Turret"
                "Torpedo"
                "Missile"
                "Device"
                "Illicit"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Device"
                "Turret"
                "Illicit"
                "Missile"
            ]
        }
        {
            name: "Crymorah Goon"
            xws_name: "crymorahgoon"
            id: 88
            xws_name: "crymorahgoon"
            faction: "Scum and Villainy"
            ship: "BTL-A4 Y-wing"
            skill: 1
            points: 4
            loadout: 4
            pointsxwa: 7
            loadoutxwa: 4
            slots: [
                "Turret"
                "Missile"
                "Device"
                "Illicit"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Device"
                "Turret"
                "Illicit"
                "Missile"
            ]
        }
        {
            name: "Han Solo (Scum)"
            xws_name: "hansolo"
            id: 89
            xws_name: "hansolo"
            unique: true
            faction: "Scum and Villainy"
            ship: "Customized YT-1300 Light Freighter"
            xws: "hansolo"
            skill: 6
            points: 5
            loadout: 10
            pointsxwa: 16
            loadoutxwa: 20
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Lando Calrissian (Scum)"
            xws_name: "landocalrissian"
            id: 90
            xws_name: "landocalrissian"
            unique: true
            xws: "landocalrissian"
            faction: "Scum and Villainy"
            ship: "Customized YT-1300 Light Freighter"
            skill: 4
            points: 5
            loadout: 10
            pointsxwa: 14
            loadoutxwa: 20
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Gunner"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
                "Talent"
            ]
        }
        {
            name: "L3-37"
            xws_name: "l337"
            id: 91
            xws_name: "l3-37"
            unique: true
            faction: "Scum and Villainy"
            ship: "Customized YT-1300 Light Freighter"
            skill: 2
            points: 5
            loadout: 9
            pointsxwa: 12
            loadoutxwa: 15
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Freighter Captain"
            xws_name: "freightercaptain"
            id: 92
            xws_name: "freightercaptain"
            faction: "Scum and Villainy"
            ship: "Customized YT-1300 Light Freighter"
            skill: 1
            points: 5
            loadout: 6
            pointsxwa: 13
            loadoutxwa: 16
            slots: [
                "Missile"
                "Gunner"
                "Illicit"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Lando Calrissian (Scum) (Escape Craft)"
            xws_name: "landocalrissian"
            id: 93
            xws_name: "landocalrissian"
            unique: true
            faction: "Scum and Villainy"
            ship: "Escape Craft"
            skill: 4
            points: 3
            loadout: 4
            pointsxwa: 14
            loadoutxwa: 20
            slots: [
                "Talent"
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
                "Talent"
            ]
        }
        {
            name: "Outer Rim Pioneer"
            xws_name: "outerrimpioneer"
            id: 94
            xws_name: "outerrimpioneer"
            unique: true
            faction: "Scum and Villainy"
            ship: "Escape Craft"
            skill: 3
            points: 3
            loadout: 4
            pointsxwa: 7
            loadoutxwa: 9
            slots: [
                "Talent"
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "L3-37 (Escape Craft)"
            xws_name: "l337"
            id: 95
            xws_name: "l3-37"
            unique: true
            faction: "Scum and Villainy"
            ship: "Escape Craft"
            skill: 2
            points: 3
            loadout: 4
            pointsxwa: 12
            loadoutxwa: 15
            keyword: ["Droid"]
            slots: [
                "Talent"
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Autopilot Drone"
            xws_name: "autopilotdrone"
            id: 96
            xws_name: "autopilotdrone"
            unique: true
            faction: "Scum and Villainy"
            ship: "Escape Craft"
            skill: 1
            charge: 3
            points: 2
            loadout: 0
            pointsxwa: 3
            loadoutxwa: 0
            keyword: ["Droid"]
            chassis: "Rigged Energy Cells"
            slots: []
        }
        {
            name: "Fenn Rau"
            xws_name: "fennrau"
            id: 97
            xws_name: "fennrau"
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 6
            points: 6
            loadout: 12
            pointsxwa: 14
            loadoutxwa: 9
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
                "Torpedo"
                "Talent"
            ]
        }
        {
            name: "Old Teroch"
            xws_name: "oldteroch"
            id: 98
            xws_name: "oldteroch"
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 5
            points: 5
            loadout: 10
            pointsxwa: 13
            loadoutxwa: 12
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Kad Solus"
            xws_name: "kadsolus"
            id: 99
            xws_name: "kadsolus"
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 4
            loadout: 8
            pointsxwa: 11
            loadoutxwa: 11
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Missile"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Joy Rekkoff"
            xws_name: "joyrekkoff"
            id: 100
            xws_name: "joyrekkoff"
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 4
            loadout: 7
            pointsxwa: 12
            loadoutxwa: 12
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Missile"
                "Torpedo"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Skull Squadron Pilot"
            xws_name: "skullsquadronpilot"
            id: 101
            xws_name: "skullsquadronpilot"
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 4
            loadout: 6
            pointsxwa: 11
            loadoutxwa: 10
            keyword: ["Mandalorian"]
            slots: [
                "Torpedo"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Zealous Recruit"
            xws_name: "zealousrecruit"
            id: 102
            xws_name: "zealousrecruit"
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 1
            points: 4
            loadout: 5
            pointsxwa: 10
            loadoutxwa: 10
            keyword: ["Mandalorian"]
            slots: [
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Boba Fett"
            xws_name: "bobafett"
            id: 103
            xws_name: "bobafett"
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
            skill: 5
            points: 8
            loadout: 18
            pointsxwa: 20
            loadoutxwa: 20
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Cannon"
                "Crew"
                "Illicit"
                "Missile"
                "Modification"
                "Device"
                "Title"
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Emon Azzameen"
            xws_name: "emonazzameen"
            id: 104
            xws_name: "emonazzameen"
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
            skill: 4
            points: 7
            loadout: 17
            pointsxwa: 18
            loadoutxwa: 20
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Cannon"
                "Crew"
                "Illicit"
                "Missile"
                "Modification"
                "Device"
                "Title"
                "Talent"
            ]
        }
        {
            name: "Kath Scarlet"
            xws_name: "kathscarlet"
            id: 105
            xws_name: "kathscarlet"
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
            skill: 4
            points: 7
            loadout: 18
            pointsxwa: 16
            loadoutxwa: 9
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Cannon"
                "Crew"
                "Illicit"
                "Missile"
                "Modification"
                "Device"
                "Title"
                "Talent"
            ]
        }
        {
            name: "Koshka Frost"
            xws_name: "koshkafrost"
            id: 106
            xws_name: "koshkafrost"
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
            skill: 3
            points: 7
            loadout: 16
            pointsxwa: 16
            loadoutxwa: 10
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Cannon"
                "Crew"
                "Illicit"
                "Missile"
                "Modification"
                "Device"
                "Talent"
            ]
        }
        {
            name: "Krassis Trelix"
            xws_name: "krassistrelix"
            id: 107
            xws_name: "krassistrelix"
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
            skill: 3
            points: 7
            loadout: 18
            pointsxwa: 17
            loadoutxwa: 18
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Cannon"
                "Crew"
                "Illicit"
                "Missile"
                "Modification"
                "Device"
                "Talent"
            ]
        }
        {
            name: "Bounty Hunter"
            xws_name: "bountyhunter"
            id: 108
            xws_name: "bountyhunter"
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
            skill: 2
            points: 7
            loadout: 10
            pointsxwa: 14
            loadoutxwa: 6
            keyword: ["Bounty Hunter"]
            slots: [
                "Cannon"
                "Missile"
                "Device"
                "Illicit"
            ]
            slotsxwa: [
                "Cannon"
                "Crew"
                "Illicit"
                "Missile"
                "Modification"
                "Device"
            ]
        }
        {
            name: "4-LOM"
            xws_name: "4lom"
            id: 109
            xws_name: "4-lom"
            unique: true
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 3
            points: 5
            loadout: 14
            pointsxwa: 12
            loadoutxwa: 13
            keyword: ["Bounty Hunter","Droid"]
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Missile"
                "Sensor"
                "Modification"
                "Title"
                "Talent"
            ]
        }
        {
            name: "Zuckuss"
            xws_name: "zuckuss"
            id: 110
            xws_name: "zuckuss"
            unique: true
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 3
            points: 5
            loadout: 10
            pointsxwa: 11
            loadoutxwa: 11
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Sensor"
                "Crew"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Missile"
                "Sensor"
                "Modification"
                "Title"
                "Talent"
            ]
        }
        {
            name: "Gand Findsman"
            xws_name: "gandfindsman"
            id: 111
            xws_name: "gandfindsman"
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 1
            points: 5
            loadout: 3
            pointsxwa: 10
            loadoutxwa: 8
            keyword: ["Bounty Hunter"]
            slots: [
                "Illicit"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Missile"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Palob Godalhi"
            xws_name: "palobgodalhi"
            id: 112
            xws_name: "palobgodalhi"
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290 Light Freighter"
            skill: 3
            points: 5
            loadout: 10
            pointsxwa: 12
            loadoutxwa: 8
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Modification"
                "Device"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Dace Bonearm"
            xws_name: "dacebonearm"
            id: 113
            xws_name: "dacebonearm"
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290 Light Freighter"
            skill: 4
            charge: 3
            recurring: 1
            points: 4
            loadout: 12
            pointsxwa: 11
            loadoutxwa: 9
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Modification"
                "Device"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Torkil Mux"
            xws_name: "torkilmux"
            id: 114
            xws_name: "torkilmux"
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290 Light Freighter"
            skill: 2
            points: 5
            loadout: 8
            pointsxwa: 9
            loadoutxwa: 10
            slots: [
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Modification"
                "Device"
            ]
        }
        {
            name: "Dengar"
            xws_name: "dengar"
            id: 115
            xws_name: "dengar"
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 6
            charge: 1
            recurring: 1
            points: 6
            loadout: 11
            pointsxwa: 16
            loadoutxwa: 18
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Torpedo"
                "Cannon"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Cannon"
                "Gunner"
                "Illicit"
                "Modification"
                "Torpedo"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Tel Trevura"
            xws_name: "teltrevura"
            id: 116
            xws_name: "teltrevura"
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 4
            charge: 1
            points: 6
            loadout: 20
            pointsxwa: 13
            loadoutxwa: 21
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Cannon"
                "Gunner"
                "Illicit"
                "Modification"
                "Torpedo"
                "Talent"
            ]
        }
        {
            name: "Manaroo"
            xws_name: "manaroo"
            id: 117
            xws_name: "manaroo"
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 3
            points: 5
            loadout: 15
            pointsxwa: 12
            loadoutxwa: 13
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Torpedo"
                "Cannon"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Cannon"
                "Gunner"
                "Illicit"
                "Modification"
                "Torpedo"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Contracted Scout"
            xws_name: "contractedscout"
            id: 118
            xws_name: "contractedscout"
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 2
            points: 5
            loadout: 4
            pointsxwa: 11
            loadoutxwa: 11
            slots: [
                "Torpedo"
                "Cannon"
                "Illicit"
            ]
            slotsxwa: [
                "Cannon"
                "Gunner"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Talonbane Cobra"
            xws_name: "talonbanecobra"
            id: 119
            xws_name: "talonbanecobra"
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 5
            points: 5
            loadout: 12
            pointsxwa: 12
            loadoutxwa: 15
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Missile"
                "Talent"
            ]
        }
        {
            name: "Graz"
            xws_name: "graz"
            id: 120
            xws_name: "graz"
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 4
            points: 4
            loadout: 8
            pointsxwa: 11
            loadoutxwa: 12
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Missile"
                "Talent"
            ]
        }
        {
            name: "Viktor Hel"
            xws_name: "viktorhel"
            id: 121
            xws_name: "viktorhel"
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 4
            points: 4
            loadout: 10
            pointsxwa: 11
            loadoutxwa: 14
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Missile"
                "Talent"
            ]
        }
        {
            name: "Captain Jostero"
            xws_name: "captainjostero"
            id: 122
            xws_name: "captainjostero"
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 3
            points: 4
            loadout: 12
            pointsxwa: 10
            loadoutxwa: 11
            slots: [
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Missile"
            ]
        }
        {
            name: "Black Sun Ace"
            xws_name: "blacksunace"
            id: 123
            xws_name: "blacksunace"
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 3
            points: 4
            loadout: 3
            pointsxwa: 11
            loadoutxwa: 16
            slots: [
                "Talent"
            ]
            slotsxwa: [
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Missile"
                "Talent"
            ]
        }
        {
            name: "Cartel Marauder"
            xws_name: "cartelmarauder"
            id: 124
            xws_name: "cartelmarauder"
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 2
            points: 4
            loadout: 7
            pointsxwa: 9
            loadoutxwa: 4
            slots: [
                "Illicit"
            ]
            slotsxwa: [
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Missile"
            ]
        }
        {
            name: "Asajj Ventress"
            xws_name: "asajjventress"
            id: 125
            xws_name: "asajjventress"
            unique: true
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 4
            points: 8
            loadout: 20
            pointsxwa: 18
            loadoutxwa: 20
            force: 2
            keyword: ["Bounty Hunter","Dark Side"]
            slots: [
                "Force"
                "Talent"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Force"
            ]
        }
        {
            name: "Ketsu Onyo"
            xws_name: "ketsuonyo"
            id: 126
            xws_name: "ketsuonyo"
            unique: true
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 5
            points: 7
            loadout: 15
            pointsxwa: 18
            loadoutxwa: 18
            keyword: ["Bounty Hunter","Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Sabine Wren (Scum)"
            xws_name: "sabinewren"
            id: 127
            xws_name: "sabinewren"
            unique: true
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 3
            points: 6
            loadout: 9
            pointsxwa: 10
            loadoutxwa: 13
            keyword: ["Bounty Hunter","Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
                "Talent"
            ]
        }
        {
            name: "Shadowport Hunter"
            xws_name: "shadowporthunter"
            id: 128
            xws_name: "shadowporthunter"
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 2
            points: 6
            loadout: 6
            pointsxwa: 14
            loadoutxwa: 7
            keyword: ["Bounty Hunter"]
            slots: [
                "Illicit"
                "Illicit"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Torani Kulda"
            xws_name: "toranikulda"
            id: 129
            xws_name: "toranikulda"
            unique: true
            faction: "Scum and Villainy"
            ship: "M12-L Kimogila Fighter"
            skill: 4
            points: 5
            loadout: 10
            pointsxwa: 13
            loadoutxwa: 16
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Illicit"
                "Missile"
                "Torpedo"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Dalan Oberos"
            xws_name: "dalanoberos"
            id: 130
            xws_name: "dalanoberos"
            unique: true
            faction: "Scum and Villainy"
            ship: "M12-L Kimogila Fighter"
            skill: 3
            charge: 2
            points: 5
            loadout: 12
            pointsxwa: 11
            loadoutxwa: 10
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Illicit"
                "Missile"
                "Torpedo"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Cartel Executioner"
            xws_name: "cartelexecutioner"
            id: 131
            xws_name: "cartelexecutioner"
            faction: "Scum and Villainy"
            ship: "M12-L Kimogila Fighter"
            skill: 3
            points: 5
            loadout: 3
            pointsxwa: 10
            loadoutxwa: 6
            slots: [
                "Missile"
            ]
            slotsxwa: [
                "Astromech"
                "Illicit"
                "Missile"
                "Torpedo"
                "Modification"
            ]
        }
        {
            name: "Serissu"
            xws_name: "serissu"
            id: 132
            xws_name: "serissu"
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 5
            points: 4
            loadout: 12
            pointsxwa: 10
            loadoutxwa: 9
            slots: [
                "Talent"
                "Talent"
                "Cannon"
                "Modification"
                "Modification"
                "HardpointShip"
            ]
            slotsxwa: [
                "Hardpoint"
                "Modification"
                "Talent"
                "HardpointShip"
            ]
        }
        {
            name: "Genesis Red"
            xws_name: "genesisred"
            id: 133
            xws_name: "genesisred"
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 4
            points: 4
            loadout: 14
            pointsxwa: 10
            loadoutxwa: 13
            slots: [
                "Talent"
                "Illicit"
                "Modification"
                "HardpointShip"
            ]
            slotsxwa: [
                "Hardpoint"
                "Modification"
                "Talent"
                "HardpointShip"
            ]
        }
        {
            name: "Laetin A'shera"
            xws_name: "laetinashera"
            id: 134
            xws_name: "laetinashera"
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 3
            points: 3
            loadout: 9
            pointsxwa: 9
            loadoutxwa: 10
            slots: [
                "Talent"
                "Modification"
                "HardpointShip"
            ]
            slotsxwa: [
                "Hardpoint"
                "Modification"
                "Talent"
                "HardpointShip"
            ]
        }
        {
            name: "Quinn Jast"
            xws_name: "quinnjast"
            id: 135
            xws_name: "quinnjast"
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 3
            points: 3
            loadout: 12
            pointsxwa: 9
            loadoutxwa: 12
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Modification"
                "HardpointShip"
            ]
            slotsxwa: [
                "Hardpoint"
                "Modification"
                "Talent"
                "HardpointShip"
            ]
        }
        {
            name: "Tansarii Point Veteran"
            xws_name: "tansariipointveteran"
            id: 136
            xws_name: "tansariipointveteran"
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 3
            points: 3
            loadout: 3
            pointsxwa: 8
            loadoutxwa: 5
            slots: [
                "Modification"
                "HardpointShip"
            ]
            slotsxwa: [
                "Hardpoint"
                "Modification"
                "Talent"
                "HardpointShip"
            ]
        }
        {
            name: "Inaldra"
            xws_name: "inaldra"
            id: 137
            xws_name: "inaldra"
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 2
            points: 3
            loadout: 11
            pointsxwa: 8
            loadoutxwa: 8
            slots: [
                "Modification"
                "HardpointShip"
            ]
            slotsxwa: [
                "HardpointShip"
                "Modification"
            ]
        }
        {
            name: "Sunny Bounder"
            xws_name: "sunnybounder"
            id: 138
            xws_name: "sunnybounder"
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 1
            points: 3
            loadout: 8
            pointsxwa: 8
            loadoutxwa: 10
            slots: [
                "Modification"
                "HardpointShip"
            ]
            slotsxwa: [
                "HardpointShip"
                "Modification"
            ]
        }
        {
            name: "Cartel Spacer"
            xws_name: "cartelspacer"
            id: 139
            xws_name: "cartelspacer"
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 1
            points: 3
            loadout: 4
            pointsxwa: 7
            loadoutxwa: 3
            slots: [
                "Modification"
                "HardpointShip"
            ]
            slotsxwa: [
                "HardpointShip"
                "Modification"
            ]
        }
        {
            name: "Constable Zuvio"
            xws_name: "constablezuvio"
            id: 140
            xws_name: "constablezuvio"
            unique: true
            faction: "Scum and Villainy"
            ship: "Quadrijet Transfer Spacetug"
            skill: 4
            points: 4
            loadout: 13
            pointsxwa: 10
            loadoutxwa: 19
            slots: [
                "Talent"
                "Tech"
                "Device"
                "Device"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Modification"
                "Talent"
                "Device"
            ]
        }
        {
            name: "Sarco Plank"
            xws_name: "sarcoplank"
            id: 141
            xws_name: "sarcoplank"
            unique: true
            faction: "Scum and Villainy"
            ship: "Quadrijet Transfer Spacetug"
            skill: 2
            points: 4
            loadout: 6
            pointsxwa: 9
            loadoutxwa: 14
            keyword: ["Bounty Hunter"]
            slots: [
                "Tech"
                "Crew"
                "Device"
                "Illicit"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Modification"
                "Illicit"
                "Tech"
            ]
        }
        {
            name: "Unkar Plutt"
            xws_name: "unkarplutt"
            id: 142
            xws_name: "unkarplutt"
            unique: true
            faction: "Scum and Villainy"
            ship: "Quadrijet Transfer Spacetug"
            skill: 2
            points: 4
            loadout: 7
            pointsxwa: 9
            loadoutxwa: 13
            slots: [
                "Tech"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Jakku Gunrunner"
            xws_name: "jakkugunrunner"
            id: 143
            xws_name: "jakkugunrunner"
            faction: "Scum and Villainy"
            ship: "Quadrijet Transfer Spacetug"
            skill: 1
            points: 4
            loadout: 4
            pointsxwa: 7
            loadoutxwa: 4
            slots: [
                "Device"
                "Illicit"
                "Illicit"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Captain Nym"
            xws_name: "captainnym"
            id: 144
            xws_name: "captainnym"
            unique: true
            faction: "Scum and Villainy"
            ship: "Scurrg H-6 Bomber"
            skill: 5
            charge: 1
            recurring: 1
            points: 6
            loadout: 17
            pointsxwa: 14
            loadoutxwa: 22
            slots: [
                "Talent"
                "Turret"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Modification"
                "Device"
                "Device"
                "Turret"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Sol Sixxa"
            xws_name: "solsixxa"
            id: 145
            xws_name: "solsixxa"
            unique: true
            faction: "Scum and Villainy"
            ship: "Scurrg H-6 Bomber"
            skill: 3
            points: 5
            loadout: 12
            pointsxwa: 12
            loadoutxwa: 16
            slots: [
                "Talent"
                "Turret"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Modification"
                "Device"
                "Device"
                "Turret"
                "Talent"
                "Illicit"
            ]
        }
        {
            name: "Lok Revenant"
            xws_name: "lokrevenant"
            id: 146
            xws_name: "lokrevenant"
            faction: "Scum and Villainy"
            ship: "Scurrg H-6 Bomber"
            skill: 2
            points: 5
            loadout: 7
            pointsxwa: 12
            loadoutxwa: 11
            slots: [
                "Turret"
                "Gunner"
                "Device"
                "Device"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Modification"
                "Device"
                "Device"
                "Turret"
            ]
        }
        {
            name: "Guri"
            xws_name: "guri"
            id: 147
            xws_name: "guri"
            unique: true
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 5
            points: 7
            loadout: 20
            pointsxwa: 14
            loadoutxwa: 14
            keyword: ["Droid"]
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Illicit"
                "Modification"
                "Sensor"
                "Torpedo"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Prince Xizor"
            xws_name: "princexizor"
            id: 148
            xws_name: "princexizor"
            unique: true
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 4
            points: 5
            loadout: 7
            pointsxwa: 13
            loadoutxwa: 16
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Illicit"
                "Modification"
                "Sensor"
                "Torpedo"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Dalan Oberos (StarViper)"
            xws_name: "dalanoberos"
            id: 149
            xws_name: "dalanoberos"
            unique: true
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 4
            points: 5
            loadout: 10
            pointsxwa: 11
            loadoutxwa: 10
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Illicit"
                "Missile"
                "Torpedo"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Black Sun Assassin"
            xws_name: "blacksunassassin"
            id: 150
            xws_name: "blacksunassassin"
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 3
            points: 5
            loadout: 6
            pointsxwa: 12
            loadoutxwa: 11
            slots: [
                "Tech"
            ]
            slotsxwa: [
                "Illicit"
                "Modification"
                "Sensor"
                "Torpedo"
                "Talent"
            ]
        }
        {
            name: "Black Sun Enforcer"
            xws_name: "blacksunenforcer"
            id: 151
            xws_name: "blacksunenforcer"
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 2
            points: 5
            loadout: 6
            pointsxwa: 10
            loadoutxwa: 7
            slots: [
                "Tech"
            ]
            slotsxwa: [
                "Illicit"
                "Modification"
                "Sensor"
                "Torpedo"
            ]
        }
        {
            name: "Moralo Eval"
            xws_name: "moraloeval"
            id: 152
            xws_name: "moraloeval"
            unique: true
            faction: "Scum and Villainy"
            ship: "YV-666 Light Freighter"
            skill: 4
            charge: 2
            points: 7
            loadout: 20
            pointsxwa: 15
            loadoutxwa: 13
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Talent"
                "Gunner"
            ]
        }
        {
            name: "Bossk"
            xws_name: "bossk"
            id: 153
            xws_name: "bossk"
            unique: true
            faction: "Scum and Villainy"
            ship: "YV-666 Light Freighter"
            skill: 4
            points: 6
            loadout: 16
            pointsxwa: 16
            loadoutxwa: 18
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Cannon"
                "Missile"
                "Talent"
                "Title"
                "Gunner"
            ]
        }
        {
            name: "Latts Razzi"
            xws_name: "lattsrazzi"
            id: 154
            xws_name: "lattsrazzi"
            unique: true
            faction: "Scum and Villainy"
            ship: "YV-666 Light Freighter"
            skill: 3
            points: 6
            loadout: 22
            pointsxwa: 15
            loadoutxwa: 15
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Cannon"
                "Missile"
                "Talent"
                "Title"
                "Gunner"
            ]
        }
        {
            name: "Trandoshan Slaver"
            xws_name: "trandoshanslaver"
            id: 155
            xws_name: "trandoshanslaver"
            faction: "Scum and Villainy"
            ship: "YV-666 Light Freighter"
            skill: 2
            points: 6
            loadout: 6
            pointsxwa: 14
            loadoutxwa: 9
            slots: [
                "Cannon"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Gunner"
            ]
        }
        {
            name: "N'dru Suhlak"
            xws_name: "ndrusuhlak"
            id: 156
            xws_name: "ndrusuhlak"
            unique: true
            faction: "Scum and Villainy"
            ship: "Z-95-AF4 Headhunter"
            skill: 4
            points: 3
            loadout: 7
            pointsxwa: 8
            loadoutxwa: 14
            slots: [
                "Talent"
                "Missile"
                "Missile"
                "Illicit"
            ]
            slotsxwa: [
                "Talent"
                "Illicit"
                "Modification"
                "Missile"
            ]
        }
        {
            name: "Kaa'to Leeachos"
            xws_name: "kaatoleeachos"
            id: 157
            xws_name: "kaatoleeachos"
            unique: true
            faction: "Scum and Villainy"
            ship: "Z-95-AF4 Headhunter"
            skill: 3
            points: 3
            loadout: 11
            pointsxwa: 7
            loadoutxwa: 13
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Illicit"
                "Modification"
                "Missile"
            ]
        }
        {
            name: "Black Sun Soldier"
            xws_name: "blacksunsoldier"
            id: 158
            xws_name: "blacksunsoldier"
            faction: "Scum and Villainy"
            ship: "Z-95-AF4 Headhunter"
            skill: 3
            points: 3
            loadout: 4
            pointsxwa: 7
            loadoutxwa: 10
            slots: [
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Illicit"
                "Modification"
                "Missile"
            ]
        }
        {
            name: "Binayre Pirate"
            xws_name: "binayrepirate"
            id: 159
            xws_name: "binayrepirate"
            faction: "Scum and Villainy"
            ship: "Z-95-AF4 Headhunter"
            skill: 1
            points: 3
            loadout: 2
            pointsxwa: 6
            loadoutxwa: 5
            slots: [
                "Illicit"
            ]
            slotsxwa: [
                "Illicit"
                "Modification"
                "Missile"
            ]
        }
        {
            name: "Nashtah Pup"
            xws_name: "nashtahpup"
            id: 160
            xws_name: "nashtahpup"
            unique: true
            faction: "Scum and Villainy"
            ship: "Z-95-AF4 Headhunter"
            skill: "*"
            points: 2
            loadout: 0
            pointsxwa: 0
            loadoutxwa: 0
            slots: []
            restrictions: [
                ["Unique", "Hound's Tooth"]
                slotsxwa: [
                ]
            ]
            restriction_func: (ship) ->
                builder = ship.builder
                for t, things of builder.uniques_in_use
                    if t != 'Slot'
                        # check if any thing’s base name contains “houndstooth”
                        if 'houndstooth' in (thing.canonical_name.getXWSBaseName() for thing in things)
                            for shiplist in ship.builder.ships
                                for upgrade in shiplist.upgrades
                                    if upgrade.data? and ship.pilot?
                                        if upgrade.data.name is "Hound's Tooth"
                                            ship.pilot.skill = shiplist.pilot.skill
                                            break
                            return true
                false
        }
        {
            name: "Major Vynder"
            xws_name: "majorvynder"
            id: 161
            xws_name: "majorvynder"
            unique: true
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 4
            points: 5
            loadout: 16
            pointsxwa: 11
            loadoutxwa: 17
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Sensor"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Lieutenant Karsabi"
            xws_name: "lieutenantkarsabi"
            id: 162
            xws_name: "lieutenantkarsabi"
            unique: true
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 3
            points: 5
            loadout: 14
            pointsxwa: 10
            loadoutxwa: 17
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Sensor"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Rho Squadron Pilot"
            xws_name: "rhosquadronpilot"
            id: 163
            xws_name: "rhosquadronpilot"
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 3
            points: 5
            loadout: 9
            pointsxwa: 10
            loadoutxwa: 14
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Sensor"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Nu Squadron Pilot"
            xws_name: "nusquadronpilot"
            id: 164
            xws_name: "nusquadronpilot"
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 2
            points: 5
            loadout: 7
            pointsxwa: 9
            loadoutxwa: 12
            slots: [
                "Sensor"
                "Cannon"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Sensor"
                "Configuration"
            ]
        }
        {
            name: "Captain Kagi"
            xws_name: "captainkagi"
            id: 165
            xws_name: "captainkagi"
            unique: true
            faction: "Galactic Empire"
            ship: "Lambda-class T-4a Shuttle"
            skill: 4
            points: 6
            loadout: 22
            pointsxwa: 13
            loadoutxwa: 17
            slots: [
                "Sensor"
                "Cannon"
                "Crew"
                "Crew"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Lieutenant Sai"
            xws_name: "lieutenantsai"
            id: 166
            xws_name: "lieutenantsai"
            unique: true
            faction: "Galactic Empire"
            ship: "Lambda-class T-4a Shuttle"
            skill: 3
            points: 5
            loadout: 14
            pointsxwa: 10
            loadoutxwa: 5
            slots: [
                "Sensor"
                "Cannon"
                "Crew"
                "Crew"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Colonel Jendon"
            xws_name: "coloneljendon"
            id: 167
            xws_name: "coloneljendon"
            unique: true
            faction: "Galactic Empire"
            ship: "Lambda-class T-4a Shuttle"
            skill: 3
            charge: 2
            points: 6
            loadout: 20
            pointsxwa: 13
            loadoutxwa: 18
            slots: [
                "Sensor"
                "Cannon"
                "Cannon"
                "Crew"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Omicron Group Pilot"
            xws_name: "omicrongrouppilot"
            id: 168
            xws_name: "omicrongrouppilot"
            faction: "Galactic Empire"
            ship: "Lambda-class T-4a Shuttle"
            skill: 1
            points: 5
            loadout: 8
            pointsxwa: 11
            loadoutxwa: 15
            slots: [
                "Sensor"
                "Cannon"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Grand Inquisitor"
            xws_name: "grandinquisitor"
            id: 169
            xws_name: "grandinquisitor"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced v1"
            skill: 5
            points: 5
            loadout: 10
            pointsxwa: 13
            loadoutxwa: 15
            force: 2
            keyword: ["Dark Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Sensor"
                "Missile"
            ]
            slotsxwa: [
                "Missile"
                "Sensor"
                "Modification"
                "Force"
                "Force"
            ]
        }
        {
            name: "Seventh Sister"
            xws_name: "seventhsister"
            id: 170
            xws_name: "seventhsister"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced v1"
            skill: 4
            points: 4
            loadout: 6
            pointsxwa: 11
            loadoutxwa: 13
            force: 2
            keyword: ["Dark Side"]
            slots: [
                "Force"
                "Talent"
                "Sensor"
                "Missile"
            ]
            slotsxwa: [
                "Missile"
                "Sensor"
                "Modification"
                "Force"
            ]
        }
        {
            name: "Inquisitor"
            xws_name: "inquisitor"
            id: 171
            xws_name: "inquisitor"
            faction: "Galactic Empire"
            ship: "TIE Advanced v1"
            skill: 3
            points: 4
            loadout: 5
            pointsxwa: 10
            loadoutxwa: 13
            force: 1
            keyword: ["Dark Side"]
            slots: [
                "Force"
                "Sensor"
            ]
            slotsxwa: [
                "Missile"
                "Sensor"
                "Modification"
                "Force"
            ]
        }
        {
            name: "Baron of the Empire"
            xws_name: "baronoftheempire"
            id: 172
            xws_name: "baronoftheempire"
            faction: "Galactic Empire"
            ship: "TIE Advanced v1"
            skill: 3
            points: 4
            loadout: 4
            pointsxwa: 9
            loadoutxwa: 10
            slots: [
                "Talent"
                "Sensor"
                "Missile"
            ]
            slotsxwa: [
                "Missile"
                "Sensor"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Darth Vader"
            xws_name: "darthvader"
            id: 173
            xws_name: "darthvader"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 6
            keyword: ["Dark Side","Sith"]
            points: 7
            loadout: 21
            pointsxwa: 15
            loadoutxwa: 7
            force: 3
            slots: [
                "Force"
                "Force"
                "Talent"
                "Tech"
                "Sensor"
                "Missile"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Sensor"
                "Modification"
                "Force"
                "Force"
            ]
        }
        {
            name: "Maarek Stele"
            xws_name: "maarekstele"
            id: 174
            xws_name: "maarekstele"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 5
            points: 4
            loadout: 10
            pointsxwa: 11
            loadoutxwa: 10
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Sensor"
                "Modification"
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Ved Foslo"
            xws_name: "vedfoslo"
            id: 175
            xws_name: "vedfoslo"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 4
            points: 4
            loadout: 8
            pointsxwa: 10
            loadoutxwa: 7
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Sensor"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Zertik Strom"
            xws_name: "zertikstrom"
            id: 176
            xws_name: "zertikstrom"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 3
            points: 4
            loadout: 14
            pointsxwa: 10
            loadoutxwa: 11
            slots: [
                "Sensor"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Storm Squadron Ace"
            xws_name: "stormsquadronace"
            id: 177
            xws_name: "stormsquadronace"
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 3
            points: 4
            loadout: 2
            pointsxwa: 10
            loadoutxwa: 9
            slots: [
                "Talent"
                "Sensor"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Sensor"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Tempest Squadron Pilot"
            xws_name: "tempestsquadronpilot"
            id: 178
            xws_name: "tempestsquadronpilot"
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 2
            points: 4
            loadout: 4
            pointsxwa: 9
            loadoutxwa: 5
            slots: [
                "Sensor"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Soontir Fel"
            xws_name: "soontirfel"
            id: 179
            xws_name: "soontirfel"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 6
            points: 5
            loadout: 10
            pointsxwa: 12
            loadoutxwa: 8
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Turr Phennir"
            xws_name: "turrphennir"
            id: 180
            xws_name: "turrphennir"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            loadout: 9
            pointsxwa: 10
            loadoutxwa: 9
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Saber Squadron Ace"
            xws_name: "sabersquadronace"
            id: 181
            xws_name: "sabersquadronace"
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            loadout: 3
            pointsxwa: 10
            loadoutxwa: 10
            slots: [
                "Talent"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Alpha Squadron Pilot"
            xws_name: "alphasquadronpilot"
            id: 182
            xws_name: "alphasquadronpilot"
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 1
            points: 4
            loadout: 2
            pointsxwa: 8
            loadoutxwa: 1
            slots: [
                "Talent"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Major Vermeil"
            xws_name: "majorvermeil"
            id: 183
            xws_name: "majorvermeil"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Reaper"
            skill: 4
            points: 5
            loadout: 16
            pointsxwa: 13
            loadoutxwa: 19
            slots: [
                "Talent"
                "Crew"
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Captain Feroph"
            xws_name: "captainferoph"
            id: 184
            xws_name: "captainferoph"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Reaper"
            skill: 3
            points: 4
            loadout: 5
            pointsxwa: 11
            loadoutxwa: 13
            slots: [
                "Talent"
                "Crew"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: '"Vizier"'
            id: 185
            xws_name: "vizier"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Reaper"
            skill: 2
            points: 4
            loadout: 12
            pointsxwa: 9
            loadoutxwa: 7
            slots: [
                "Crew"
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Scarif Base Pilot"
            xws_name: "scarifbasepilot"
            id: 186
            xws_name: "scarifbasepilot"
            faction: "Galactic Empire"
            ship: "TIE Reaper"
            skill: 1
            points: 4
            loadout: 6
            pointsxwa: 11
            loadoutxwa: 14
            slots: [
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Lieutenant Kestal"
            xws_name: "lieutenantkestal"
            id: 187
            xws_name: "lieutenantkestal"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ag Aggressor"
            skill: 4
            points: 5
            loadout: 19
            pointsxwa: 9
            loadoutxwa: 17
            slots: [
                "Talent"
                "Turret"
                "Missile"
                "Missile"
                "Gunner"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Turret"
                "Missile"
                "Modification"
                "Sensor"
                "Talent"
            ]
        }
        {
            name: '"Double Edge"'
            id: 188
            xws_name: "doubleedge"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ag Aggressor"
            skill: 2
            points: 4
            loadout: 13
            pointsxwa: 8
            loadoutxwa: 14
            slots: [
                "Talent"
                "Turret"
                "Missile"
                "Missile"
                "Gunner"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Turret"
                "Missile"
                "Sensor"
                "Modification"
            ]
            slotsxwa: {
                "Gunner"
                "Sensor"
                "Turret"
                "Missile"
                "Modification"
            }
        }
        {
            name: "Onyx Squadron Scout"
            xws_name: "onyxsquadronscout"
            id: 189
            xws_name: "onyxsquadronscout"
            faction: "Galactic Empire"
            ship: "TIE/ag Aggressor"
            skill: 3
            points: 4
            loadout: 12
            pointsxwa: 8
            loadoutxwa: 9
            slots: [
                "Talent"
                "Turret"
                "Missile"
                "Gunner"
            ]
            slotsxwa: [
                "Gunner"
                "Turret"
                "Missile"
                "Modification"
                "Sensor"
                "Talent"
            ]
        }
        {
            name: "Sienar Specialist"
            xws_name: "sienarspecialist"
            id: 190
            xws_name: "sienarspecialist"
            faction: "Galactic Empire"
            ship: "TIE/ag Aggressor"
            skill: 2
            points: 4
            loadout: 8
            pointsxwa: 7
            loadoutxwa: 6
            slots: [
                "Turret"
                "Missile"
                "Gunner"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Turret"
                "Missile"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: '"Redline"'
            id: 191
            xws_name: "redline"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ca Punisher"
            skill: 5
            points: 7
            loadout: 25
            pointsxwa: 15
            loadoutxwa: 20
            slots: [
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Torpedo"
                "Device"
                "Device"
                "Sensor"
                "Modification"
                "Talent"
            ]
        }
        {
            name: '"Deathrain"'
            id: 192
            xws_name: "deathrain"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ca Punisher"
            skill: 4
            points: 6
            loadout: 20
            pointsxwa: 13
            loadoutxwa: 24
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Torpedo"
                "Device"
                "Device"
                "Sensor"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Cutlass Squadron Pilot"
            xws_name: "cutlasssquadronpilot"
            id: 193
            xws_name: "cutlasssquadronpilot"
            faction: "Galactic Empire"
            ship: "TIE/ca Punisher"
            skill: 2
            points: 5
            loadout: 6
            pointsxwa: 10
            loadoutxwa: 14
            slots: [
                "Sensor"
                "Torpedo"
                "Missile"
                "Gunner"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Torpedo"
                "Device"
                "Device"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "Colonel Vessery"
            xws_name: "colonelvessery"
            id: 194
            xws_name: "colonelvessery"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            skill: 4
            points: 7
            loadout: 10
            pointsxwa: 18
            loadoutxwa: 16
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Cannon"
                "Missile"
                "Modification"
                "Sensor"
                "Configuration"
                "Cannon"
            ]
        }
        {
            name: "Countess Ryad"
            xws_name: "countessryad"
            id: 195
            xws_name: "countessryad"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            skill: 4
            points: 7
            loadout: 12
            pointsxwa: 17
            loadoutxwa: 13
            slots: [
                "Talent"
                "Sensor"
                "Sensor"
                "Cannon"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Cannon"
                "Missile"
                "Modification"
                "Sensor"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Rexler Brath"
            xws_name: "rexlerbrath"
            id: 196
            xws_name: "rexlerbrath"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            skill: 5
            points: 7
            loadout: 13
            pointsxwa: 18
            loadoutxwa: 13
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Cannon"
                "Missile"
                "Modification"
                "Sensor"
                "Configuration"
            ]
        }
        {
            name: "Onyx Squadron Ace"
            xws_name: "onyxsquadronace"
            id: 197
            xws_name: "onyxsquadronace"
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            skill: 4
            points: 7
            loadout: 6
            pointsxwa: 16
            loadoutxwa: 10
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Cannon"
                "Missile"
                "Modification"
                "Sensor"
                "Configuration"
            ]
        }
        {
            name: "Delta Squadron Pilot"
            xws_name: "deltasquadronpilot"
            id: 198
            xws_name: "deltasquadronpilot"
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            skill: 1
            points: 7
            loadout: 4
            pointsxwa: 15
            loadoutxwa: 9
            slots: [
                "Sensor"
                "Cannon"
                "Configuration"
            ]
            slotsxwa: [
                "Cannon"
                "Missile"
                "Modification"
                "Sensor"
                "Configuration"
            ]
        }
        {
            name: '"Whisper"'
            id: 199
            xws_name: "whisper"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ph Phantom"
            skill: 5
            points: 5
            loadout: 8
            pointsxwa: 13
            loadoutxwa: 15
            slots: [
                "Talent"
                "Sensor"
                "Gunner"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Modification"
                "Sensor"
                "Talent"
            ]
        }
        {
            name: '"Echo"'
            id: 200
            xws_name: "echo"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ph Phantom"
            skill: 4
            points: 5
            loadout: 9
            pointsxwa: 11
            loadoutxwa: 13
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Gunner"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Modification"
                "Sensor"
                "Talent"
            ]
        }
        {
            name: "Sigma Squadron Ace"
            xws_name: "sigmasquadronace"
            id: 201
            xws_name: "sigmasquadronace"
            faction: "Galactic Empire"
            ship: "TIE/ph Phantom"
            skill: 4
            points: 6
            loadout: 9
            pointsxwa: 11
            loadoutxwa: 10
            slots: [
                "Talent"
                "Sensor"
                "Gunner"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Modification"
                "Sensor"
            ]
        }
        {
            name: "Imdaar Test Pilot"
            xws_name: "imdaartestpilot"
            id: 202
            xws_name: "imdaartestpilot"
            faction: "Galactic Empire"
            ship: "TIE/ph Phantom"
            skill: 3
            points: 5
            loadout: 6
            pointsxwa: 10
            loadoutxwa: 9
            slots: [
                "Sensor"
                "Gunner"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Modification"
                "Sensor"
            ]
        }
        {
            name: "Captain Jonus"
            xws_name: "captainjonus"
            id: 203
            xws_name: "captainjonus"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 4
            points: 4
            loadout: 10
            pointsxwa: 10
            loadoutxwa: 10
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Torpedo"
                "Missile"
                "Device"
                "Device"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Major Rhymer"
            xws_name: "majorrhymer"
            id: 204
            xws_name: "majorrhymer"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 4
            points: 3
            loadout: 7
            pointsxwa: 10
            loadoutxwa: 13
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Torpedo"
                "Missile"
                "Device"
                "Device"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Tomax Bren"
            xws_name: "tomaxbren"
            id: 205
            xws_name: "tomaxbren"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 5
            points: 3
            loadout: 7
            pointsxwa: 10
            loadoutxwa: 13
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Torpedo"
                "Missile"
                "Device"
                "Device"
                "Modification"
                "Talent"
            ]
        }
        {
            name: '"Deathfire"'
            id: 206
            xws_name: "deathfire"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 2
            points: 3
            loadout: 11
            pointsxwa: 9
            loadoutxwa: 12
            slots: [
                "Torpedo"
                "Torpedo"
                "Missile"
                "Gunner"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Torpedo"
                "Missile"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: "Gamma Squadron Ace"
            xws_name: "gammasquadronace"
            id: 207
            xws_name: "gammasquadronace"
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 3
            points: 4
            loadout: 8
            pointsxwa: 10
            loadoutxwa: 14
            slots: [
                "Torpedo"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Torpedo"
                "Missile"
                "Device"
                "Device"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Scimitar Squadron Pilot"
            xws_name: "scimitarsquadronpilot"
            id: 208
            xws_name: "scimitarsquadronpilot"
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 2
            points: 4
            loadout: 6
            pointsxwa: 8
            loadoutxwa: 5
            slots: [
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Torpedo"
                "Missile"
                "Device"
                "Device"
                "Modification"
            ]
        }
        {
            name: '"Countdown"'
            id: 209
            xws_name: "countdown"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/sk Striker"
            skill: 4
            points: 4
            loadout: 11
            pointsxwa: 10
            loadoutxwa: 10
            slots: [
                "Talent"
                "Talent"
                "Gunner"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Device"
            ]
        }
        {
            name: '"Pure Sabacc"'
            id: 210
            xws_name: "puresabacc"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/sk Striker"
            skill: 4
            points: 4
            loadout: 9
            pointsxwa: 10
            loadoutxwa: 11
            slots: [
                "Talent"
                "Gunner"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Modification"
                "Device"
                "Talent"
            ]
        }
        {
            name: '"Duchess"'
            id: 211
            xws_name: "duchess"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/sk Striker"
            skill: 5
            points: 4
            loadout: 7
            pointsxwa: 11
            loadoutxwa: 17
            slots: [
                "Talent"
                "Talent"
                "Gunner"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Modification"
                "Device"
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Black Squadron Scout"
            xws_name: "blacksquadronscout"
            id: 212
            xws_name: "blacksquadronscout"
            faction: "Galactic Empire"
            ship: "TIE/sk Striker"
            skill: 3
            points: 4
            loadout: 5
            pointsxwa: 9
            loadoutxwa: 8
            slots: [
                "Talent"
                "Gunner"
                "Device"
            ]
            slotsxwa: [
                "Gunner"
                "Modification"
                "Device"
                "Talent"
            ]
        }
        {
            name: "Planetary Sentinel"
            xws_name: "planetarysentinel"
            id: 213
            xws_name: "planetarysentinel"
            faction: "Galactic Empire"
            ship: "TIE/sk Striker"
            skill: 1
            points: 4
            loadout: 4
            pointsxwa: 8
            loadoutxwa: 4
            slots: [
                "Gunner"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Modification"
                "Device"
            ]
        }
        {
            name: "Rear Admiral Chiraneau"
            xws_name: "rearadmiralchiraneau"
            id: 214
            xws_name: "rearadmiralchiraneau"
            unique: true
            faction: "Galactic Empire"
            ship: "VT-49 Decimator"
            skill: 5
            points: 7
            loadout: 20
            pointsxwa: 20
            loadoutxwa: 24
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Crew"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Torpedo"
                "Modification"
                "Device"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Captain Oicunn"
            xws_name: "captainoicunn"
            id: 215
            xws_name: "captainoicunn"
            unique: true
            faction: "Galactic Empire"
            ship: "VT-49 Decimator"
            skill: 3
            points: 7
            loadout: 19
            pointsxwa: 18
            loadoutxwa: 18
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Crew"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Torpedo"
                "Modification"
                "Device"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Patrol Leader"
            xws_name: "patrolleader"
            id: 216
            xws_name: "patrolleader"
            faction: "Galactic Empire"
            ship: "VT-49 Decimator"
            skill: 2
            points: 7
            loadout: 12
            pointsxwa: 16
            loadoutxwa: 9
            slots: [
                "Torpedo"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Torpedo"
                "Modification"
                "Device"
            ]
        }
        {
            name: '"Howlrunner"'
            id: 217
            xws_name: "howlrunner"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 5
            points: 4
            loadout: 8
            pointsxwa: 8
            loadoutxwa: 6
            slots: [
                "Talent"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Iden Versio"
            xws_name: "idenversio"
            id: 218
            xws_name: "idenversio"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 4
            charge: 1
            points: 4
            loadout: 8
            pointsxwa: 10
            loadoutxwa: 16
            slots: [
                "Talent"
                "Talent"
                "Cannon"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Talent"
                "Missile"
                "Modification"
                "Sensor"
            ]
        }
        {
            name: '"Mauler" Mithel'
            id: 219
            xws_name: "maulermithel"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 5
            points: 3
            loadout: 4
            pointsxwa: 8
            loadoutxwa: 9
            slots: [
                "Talent"
                "Cannon"
            ]
            slotsxwa: [
                "Modification"
                "Talent"
            ]
        }
        {
            name: '"Scourge" Skutu'
            id: 220
            xws_name: "scourgeskutu"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 5
            points: 3
            loadout: 3
            pointsxwa: 8
            loadoutxwa: 9
            slots: [
                "Talent"
            ]
            slotsxwa: [
                "Modification"
                "Talent"
            ]
        }
        {
            name: '"Wampa"'
            id: 221
            xws_name: "wampa"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 1
            recurring: 1
            charge: 1
            points: 3
            loadout: 5
            pointsxwa: 6
            loadoutxwa: 2
            slots: [
                "Modification"
            ]
            slotsxwa: [
                "Modification"
            ]
        }
        {
            name: "Del Meeko"
            xws_name: "delmeeko"
            id: 222
            xws_name: "delmeeko"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 4
            points: 3
            loadout: 10
            pointsxwa: 9
            loadoutxwa: 17
            slots: [
                "Talent"
                "Cannon"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Talent"
                "Missile"
                "Modification"
                "Sensor"
            ]
        }
        {
            name: "Gideon Hask"
            xws_name: "gideonhask"
            id: 223
            xws_name: "gideonhask"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 4
            points: 3
            loadout: 12
            pointsxwa: 9
            loadoutxwa: 16
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Talent"
                "Missile"
                "Modification"
                "Sensor"
            ]
        }
        {
            name: "Seyn Marana"
            xws_name: "seynmarana"
            id: 224
            xws_name: "seynmarana"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 4
            points: 3
            loadout: 12
            pointsxwa: 8
            loadoutxwa: 11
            slots: [
                "Talent"
                "Cannon"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Talent"
                "Missile"
                "Modification"
                "Sensor"
            ]
        }
        {
            name: "Valen Rudor"
            xws_name: "valenrudor"
            id: 225
            xws_name: "valenrudor"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 3
            loadout: 5
            pointsxwa: 8
            loadoutxwa: 8
            slots: [
                "Talent"
                "Talent"
            ]
            slotsxwa: [
                "Modification"
                "Talent"
            ]
        }
        {
            name: '"Night Beast"'
            id: 226
            xws_name: "nightbeast"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 2
            points: 3
            loadout: 4
            pointsxwa: 8
            loadoutxwa: 9
            slots: [
                "Modification"
            ]
            slotsxwa: [
                "Modification"
            ]
        }
        {
            name: "Black Squadron Ace"
            xws_name: "blacksquadronace"
            id: 227
            xws_name: "blacksquadronace"
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 2
            loadout: 0
            pointsxwa: 6
            loadoutxwa: 5
            slots: [
                "Talent"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Obsidian Squadron Pilot"
            xws_name: "obsidiansquadronpilot"
            id: 228
            xws_name: "obsidiansquadronpilot"
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 2
            points: 2
            loadout: 0
            pointsxwa: 5
            loadoutxwa: 2
            slots: [
            ]
            slotsxwa: [
                "Modification"
            ]
        }
        {
            name: "Academy Pilot"
            xws_name: "academypilot"
            id: 229
            xws_name: "academypilot"
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 1
            points: 2
            loadout: 0
            pointsxwa: 5
            loadoutxwa: 0
            slots: [
                "Modification"
            ]
            slotsxwa: [
            ]
        }
        {
            name: "Spice Runner"
            xws_name: "spicerunner"
            id: 230
            xws_name: "spicerunner"
            faction: "Scum and Villainy"
            ship: "HWK-290 Light Freighter"
            skill: 1
            points: 3
            loadout: 4
            pointsxwa: 7
            loadoutxwa: 5
            slots: [
                "Device"
                "Illicit"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Modification"
                "Device"
            ]
        }
        {
            name: "Poe Dameron"
            xws_name: "poedameron"
            id: 231
            xws_name: "poedameron"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 6
            points: 7
            loadout: 25
            pointsxwa: 17
            loadoutxwa: 20
            charge: 1
            recurring: 1
            slots: [
                "Talent"
                "Astromech"
                "Tech"
                "Torpedo"
                "Modification"
                "Modification"
                "Configuration"
                "Title"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "Talent"
                "Talent"
                "Title"
                "HardpointShip"
            ]
        }
        {
            id: 232 # duplicate, has been removed
            skip: true
        }
        {
            name: '"Midnight"'
            id: 233
            xws_name: "midnight"
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 6
            points: 3
            loadout: 7
            pointsxwa: 11
            loadoutxwa: 19
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Tech"
                "Modification"
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            id: 234 # duplicate, has been removed
            skip: true
        }
        {
            name: '"Muse"'
            id: 235
            xws_name: "muse"
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 2
            points: 3
            loadout: 9
            pointsxwa: 8
            loadoutxwa: 9
            slots: [
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Tech"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Kylo Ren"
            xws_name: "kyloren"
            id: 236
            xws_name: "kyloren"
            unique: true
            faction: "First Order"
            ship: "TIE/vn Silencer"
            skill: 5
            force: 2
            keyword: ["Dark Side"]
            points: 7
            loadout: 24
            pointsxwa: 16
            loadoutxwa: 10
            applies_condition: '''I'll Show You the Dark Side'''.canonicalize()
            slots: [
                "Force"
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Tech"
                "Modification"
                "Missile"
                "Torpedo"
                "Configuration"
                "Force"
            ]
        }
        {
            name: '"Blackout"'
            id: 237
            xws_name: "blackout"
            unique: true
            faction: "First Order"
            ship: "TIE/vn Silencer"
            skill: 5
            points: 5
            loadout: 12
            pointsxwa: 15
            loadoutxwa: 14
            slots: [
                "Talent"
                "Tech"
                "Tech"
                "Torpedo"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Tech"
                "Modification"
                "Missile"
                "Torpedo"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Lieutenant Dormitz"
            xws_name: "lieutenantdormitz"
            id: 238
            xws_name: "lieutenantdormitz"
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 2
            points: 8
            loadout: 20
            pointsxwa: 18
            loadoutxwa: 22
            slots: [
                "Sensor"
                "Sensor"
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
                "Modification"
            ]
            slotsxwa: [
                "Cannon"
                "Sensor"
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "L'ulo L'ampar"
            xws_name: "lulolampar"
            id: 239
            xws_name: "lulolampar"
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 5
            points: 4
            loadout: 10
            pointsxwa: 10
            loadoutxwa: 8
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Tech"
                "Modification"
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Tallissan Lintra"
            xws_name: "tallissanlintra"
            id: 240
            xws_name: "tallissanlintra"
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 5
            charge: 1
            recurring: 1
            points: 4
            loadout: 12
            pointsxwa: 10
            loadoutxwa: 12
            slots: [
                "Talent"
                "Talent"
                "Talent"
                "Torpedo"
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Tech"
                "Modification"
                "Talent"
                "Talent"
                "Sensor"
            ]
        }
        {
            name: "blanks"
            xws_name: "blanks"
            id: 241
            xws_name: "blanks"
            skip: true
        }
        {
            name: '"Backdraft"'
            id: 242
            xws_name: "backdraft"
            unique: true
            faction: "First Order"
            ship: "TIE/sf Fighter"
            skill: 4
            points: 4
            loadout: 5
            pointsxwa: 12
            loadoutxwa: 19
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Missile"
                "Gunner"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Gunner"
                "Modification"
                "Tech"
                "Missile"
                "Talent"
                "Modification"
            ]
        }
        {
            name: '"Quickdraw"'
            id: 243
            xws_name: "quickdraw"
            unique: true
            faction: "First Order"
            ship: "TIE/sf Fighter"
            skill: 6
            charge: 1
            recurring: 1
            points: 5
            loadout: 12
            pointsxwa: 14
            loadoutxwa: 24
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Gunner"
                "Sensor"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Gunner"
                "Modification"
                "Tech"
                "Missile"
                "Talent"
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Rey"
            xws_name: "rey"
            id: 244
            xws_name: "rey"
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            keyword: ["Light Side"]
            skill: 5
            points: 7
            loadout: 25
            pointsxwa: 20
            loadoutxwa: 23
            force: 2
            slots: [
                "Force"
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Illicit"
                "Illicit"
                "Modification"
                "Missile"
                "Force"
                "Force"
                "Title"
            ]
        }
        {
            name: "Han Solo (Resistance)"
            xws_name: "hansolo"
            id: 245
            xws_name: "hansolo"
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 6
            points: 6
            loadout: 15
            pointsxwa: 16
            loadoutxwa: 20
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Chewbacca (Resistance)"
            xws_name: "chewbacca"
            id: 246
            xws_name: "chewbacca"
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 4
            points: 6
            loadout: 18
            pointsxwa: 17
            loadoutxwa: 15
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Missile"
                "Title"
                "Talent"
            ]
        }
        {
            name: "Captain Seevor"
            xws_name: "captainseevor"
            id: 247
            xws_name: "captainseevor"
            unique: true
            faction: "Scum and Villainy"
            ship: "Modified TIE/ln Fighter"
            skill: 3
            charge: 1
            recurring: 1
            points: 3
            loadout: 7
            pointsxwa: 8
            loadoutxwa: 8
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Mining Guild Surveyor"
            xws_name: "miningguildsurveyor"
            id: 248
            xws_name: "miningguildsurveyor"
            faction: "Scum and Villainy"
            ship: "Modified TIE/ln Fighter"
            skill: 2
            points: 3
            loadout: 1
            pointsxwa: 6
            loadoutxwa: 6
            slots: [
                "Talent"
            ]
            slotsxwa: [
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Ahhav"
            xws_name: "ahhav"
            id: 249
            xws_name: "ahhav"
            unique: true
            faction: "Scum and Villainy"
            ship: "Modified TIE/ln Fighter"
            skill: 3
            points: 3
            loadout: 8
            pointsxwa: 8
            loadoutxwa: 11
            slots: [
                "Talent"
                "Illicit"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Finch Dallow"
            xws_name: "finchdallow"
            id: 250
            xws_name: "finchdallow"
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 4
            points: 6
            loadout: 22
            pointsxwa: 17
            loadoutxwa: 28
            slots: [
                "Sensor"
                "Tech"
                "Missile"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Device"
                "Device"
                "Crew"
                "Gunner"
                "Gunner"
                "Tech"
                "Modification"
                "Talent"
                "Sensor"
            ]
        }
        {
            name: "Major Stridan"
            xws_name: "majorstridan"
            id: 251
            xws_name: "majorstridan"
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 4
            points: 7
            loadout: 13
            pointsxwa: 18
            loadoutxwa: 25
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
            slotsxwa: [
                "Cannon"
                "Sensor"
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Kare Kun"
            xws_name: "karekun"
            id: 252
            xws_name: "karekun"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 4
            loadout: 8
            pointsxwa: 12
            loadoutxwa: 13
            slots: [
                "Talent"
                "Tech"
                "Cannon"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "Talent"
                "HardpointShip"
            ]
        }
        {
            name: "Joph Seastriker"
            xws_name: "jophseastriker"
            id: 253
            xws_name: "jophseastriker"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 3
            points: 5
            loadout: 13
            pointsxwa: 11
            loadoutxwa: 10
            slots: [
                "Talent"
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Lieutenant Bastian"
            xws_name: "lieutenantbastian"
            id: 254
            xws_name: "lieutenantbastian"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 2
            points: 5
            loadout: 14
            pointsxwa: 10
            loadoutxwa: 4
            slots: [
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Jaycris Tubbs"
            xws_name: "jaycristubbs"
            id: 255
            xws_name: "jaycristubbs"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 1
            points: 4
            loadout: 8
            pointsxwa: 10
            loadoutxwa: 7
            slots: [
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Black Squadron Ace (T-70)"
            xws_name: "blacksquadronace"
            id: 256
            xws_name: "blacksquadronace"
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 5
            loadout: 10
            pointsxwa: 6
            loadoutxwa: 5
            slots: [
                "Talent"
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Modification"
                "Talent"
                "HardpointShip"
            ]
        }
        {
            name: "Red Squadron Expert"
            xws_name: "redsquadronexpert"
            id: 257
            xws_name: "redsquadronexpert"
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 3
            points: 5
            loadout: 2
            pointsxwa: 11
            loadoutxwa: 9
            slots: [
                "Talent"
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "Talent"
                "HardpointShip"
            ]
        }
        {
            name: "Blue Squadron Rookie"
            xws_name: "bluesquadronrookie"
            id: 258
            xws_name: "bluesquadronrookie"
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 1
            points: 5
            loadout: 4
            pointsxwa: 10
            loadoutxwa: 5
            slots: [
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Zeta Squadron Survivor"
            xws_name: "zetasquadronsurvivor"
            id: 259
            xws_name: "zetasquadronsurvivor"
            faction: "First Order"
            ship: "TIE/sf Fighter"
            skill: 2
            points: 4
            loadout: 4
            pointsxwa: 10
            loadoutxwa: 16
            slots: [
                "Talent"
                "Tech"
                "Gunner"
                "Sensor"
            ]
            slotsxwa: [
                "Sensor"
                "Gunner"
                "Modification"
                "Tech"
                "Missile"
            ]
        }
        {
            name: "Cobalt Squadron Bomber"
            xws_name: "cobaltsquadronbomber"
            id: 260
            xws_name: "cobaltsquadronbomber"
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 1
            points: 6
            loadout: 11
            pointsxwa: 15
            loadoutxwa: 20
            slots: [
                "Sensor"
                "Tech"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Device"
                "Device"
                "Crew"
                "Gunner"
                "Gunner"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "TN-3465"
            xws_name: "tn3465"
            id: 261
            xws_name: "tn-3465"
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 2
            points: 3
            loadout: 5
            pointsxwa: 7
            loadoutxwa: 6
            slots: [
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Tech"
                "Modification"
            ]
        }
        {
            name: '"Scorch"'
            id: 262
            xws_name: "scorch"
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 4
            points: 3
            loadout: 6
            pointsxwa: 10
            loadoutxwa: 14
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Tech"
                "Modification"
                "Talent"
                "Modification"
            ]
        }
        {
            name: '"Longshot"'
            id: 263
            xws_name: "longshot"
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 3
            points: 3
            loadout: 8
            pointsxwa: 7
            loadoutxwa: 3
            slots: [
                "Talent"
                "Tech"
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Tech"
                "Modification"
            ]
        }
        {
            name: '"Static"'
            id: 264
            xws_name: "static"
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 4
            points: 3
            loadout: 8
            pointsxwa: 8
            loadoutxwa: 8
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Cannon"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Tech"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Lieutenant Rivas"
            xws_name: "lieutenantrivas"
            id: 265
            xws_name: "lieutenantrivas"
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 1
            points: 3
            loadout: 4
            pointsxwa: 7
            loadoutxwa: 5
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Commander Malarus"
            xws_name: "commandermalarus"
            id: 266
            xws_name: "commandermalarus"
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 5
            points: 3
            loadout: 4
            pointsxwa: 10
            loadoutxwa: 15
            charge: 2
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Tech"
                "Modification"
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Omega Squadron Ace"
            xws_name: "omegasquadronace"
            id: 267
            xws_name: "omegasquadronace"
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 3
            points: 3
            loadout: 4
            pointsxwa: 8
            loadoutxwa: 9
            slots: [
                "Talent"
                "Tech"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Tech"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Zeta Squadron Pilot"
            xws_name: "zetasquadronpilot"
            id: 268
            xws_name: "zetasquadronpilot"
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 2
            points: 3
            loadout: 3
            pointsxwa: 7
            loadoutxwa: 6
            slots: [
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Epsilon Squadron Cadet"
            xws_name: "epsilonsquadroncadet"
            id: 269
            xws_name: "epsilonsquadroncadet"
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 1
            points: 3
            loadout: 2
            pointsxwa: 6
            loadoutxwa: 0
            slots: [
                "Tech"
            ]
            slotsxwa: [
            ]
        }
        {
            name: "Greer Sonnel"
            xws_name: "greersonnel"
            id: 270
            xws_name: "greersonnel"
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 4
            points: 4
            loadout: 7
            pointsxwa: 9
            loadoutxwa: 8
            slots: [
                "Talent"
                "Missile"
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Tech"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Zari Bangel"
            xws_name: "zaribangel"
            id: 271
            xws_name: "zaribangel"
            unique: true
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 3
            points: 4
            loadout: 11
            pointsxwa: 10
            loadoutxwa: 15
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
                "Tech"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Tech"
                "Modification"
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Darth Maul"
            xws_name: "darthmaul"
            id: 272
            xws_name: "darthmaul"
            unique: true
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 5
            force: 3
            keyword: ["Dark Side","Sith"]
            points: 6
            loadout: 14
            pointsxwa: 17
            loadoutxwa: 14
            slots: [
                "Force"
                "Force"
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Device"
                "Modification"
                "Title"
                "Tactical Relay"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Modification"
                "Force"
                "Force"
                "Torpedo"
                "Title"
            ]
        }
        {
            name: "Anakin Skywalker"
            xws_name: "anakinskywalker"
            id: 273
            xws_name: "anakinskywalker"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 6
            force: 3
            points: 6
            loadout: 10
            pointsxwa: 14
            loadoutxwa: 9
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: "Luminara Unduli"
            xws_name: "luminaraunduli"
            id: 274
            xws_name: "luminaraunduli"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 4
            force: 2
            points: 4
            loadout: 7
            pointsxwa: 10
            loadoutxwa: 7
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: "Barriss Offee"
            xws_name: "barrissoffee"
            id: 275
            xws_name: "barrissoffee"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 4
            force: 1
            points: 4
            loadout: 9
            pointsxwa: 10
            loadoutxwa: 10
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
            ]
        }
        {
            name: "Ahsoka Tano"
            xws_name: "ahsokatano"
            id: 276
            xws_name: "ahsokatano"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 3
            force: 2
            points: 4
            loadout: 7
            pointsxwa: 10
            loadoutxwa: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
            ]
        }
        {
            name: "Jedi Knight"
            xws_name: "jediknight"
            id: 277
            xws_name: "jediknight"
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 3
            force: 1
            points: 4
            loadout: 3
            pointsxwa: 9
            loadoutxwa: 6
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
            ]
        }
        {
            name: "Obi-Wan Kenobi"
            xws_name: "obiwankenobi"
            id: 278
            xws_name: "obi-wankenobi"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 5
            force: 3
            points: 5
            loadout: 10
            pointsxwa: 13
            loadoutxwa: 10
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: "Trade Federation Drone"
            xws_name: "tradefederationdrone"
            id: 279
            xws_name: "tradefederationdrone"
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            points: 2
            loadout: 0
            pointsxwa: 5
            loadoutxwa: 2
            keyword: ["Droid"]
            slots: [
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Configuration"
            ]
        }
        {
            name: '"Sinker"'
            id: 280
            xws_name: "sinker"
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 3
            points: 5
            loadout: 15
            pointsxwa: 11
            loadoutxwa: 6
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Gunner"
                "Gunner"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Gunner"
                "Gunner"
                "Modification"
                "Torpedo"
                "Talent"
            ]
        }
        {
            name: "Petty Officer Thanisson"
            xws_name: "pettyofficerthanisson"
            id: 281
            xws_name: "pettyofficerthanisson"
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 1
            points: 7
            loadout: 14
            pointsxwa: 16
            loadoutxwa: 15
            charge: 1
            recurring: 1
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
                "Cannon"
                "Sensor"
                "Modification"
            ]
            slotsxwa: [
                "Cannon"
                "Sensor"
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Captain Cardinal"
            xws_name: "captaincardinal"
            id: 282
            xws_name: "captaincardinal"
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 4
            points: 7
            loadout: 12
            pointsxwa: 17
            loadoutxwa: 19
            charge: 2
            slots: [
                "Talent"
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
            slotsxwa: [
                "Cannon"
                "Sensor"
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Modification"
                "Talent"
            ]
        }
        {
            name: '"Avenger"'
            id: 283
            xws_name: "avenger"
            unique: true
            faction: "First Order"
            ship: "TIE/vn Silencer"
            skill: 3
            points: 5
            loadout: 10
            pointsxwa: 14
            loadoutxwa: 15
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Tech"
                "Modification"
                "Missile"
                "Torpedo"
                "Configuration"
            ]
        }
        {
            name: '"Recoil"'
            id: 284
            xws_name: "recoil"
            unique: true
            faction: "First Order"
            ship: "TIE/vn Silencer"
            skill: 4
            points: 5
            loadout: 10
            pointsxwa: 14
            loadoutxwa: 13
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Tech"
                "Modification"
                "Missile"
                "Torpedo"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Omega Squadron Expert"
            xws_name: "omegasquadronexpert"
            id: 285
            xws_name: "omegasquadronexpert"
            faction: "First Order"
            ship: "TIE/sf Fighter"
            skill: 3
            points: 4
            loadout: 3
            pointsxwa: 11
            loadoutxwa: 19
            slots: [
                "Tech"
                "Missile"
                "Gunner"
                "Sensor"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Gunner"
                "Modification"
                "Tech"
                "Missile"
                "Talent"
            ]
        }
        {
            name: "Sienar-Jaemus Engineer"
            xws_name: "sienarjaemusengineer"
            id: 286
            xws_name: "sienar-jaemusengineer"
            faction: "First Order"
            ship: "TIE/vn Silencer"
            skill: 1
            points: 5
            loadout: 5
            pointsxwa: 11
            loadoutxwa: 5
            slots: [
                "Tech"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Tech"
                "Missile"
                "Torpedo"
                "Configuration"
            ]
        }
        {
            name: "First Order Test Pilot"
            xws_name: "firstordertestpilot"
            id: 287
            xws_name: "firstordertestpilot"
            faction: "First Order"
            ship: "TIE/vn Silencer"
            skill: 4
            points: 5
            loadout: 5
            pointsxwa: 12
            loadoutxwa: 5
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Tech"
                "Modification"
                "Missile"
                "Torpedo"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Starkiller Base Pilot"
            xws_name: "starkillerbasepilot"
            id: 288
            xws_name: "starkillerbasepilot"
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 2
            points: 7
            loadout: 8
            pointsxwa: 16
            loadoutxwa: 15
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
            slotsxwa: [
                "Cannon"
                "Sensor"
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Lieutenant Tavson"
            xws_name: "lieutenanttavson"
            id: 289
            xws_name: "lieutenanttavson"
            unique: true
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 3
            charge: 2
            recurring: 1
            points: 8
            loadout: 17
            pointsxwa: 17
            loadoutxwa: 17
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Cannon"
                "Sensor"
                "Modification"
            ]
            slotsxwa: [
                "Cannon"
                "Sensor"
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: '"Null"'
            id: 290
            xws_name: "null"
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 0
            points: 3
            loadout: 5
            pointsxwa: 8
            loadoutxwa: 8
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Tech"
            ]
            slotsxwa: [
                "Sensor"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Cat"
            xws_name: "cat"
            id: 291
            xws_name: "cat"
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 1
            points: 5
            loadout: 17
            pointsxwa: 15
            loadoutxwa: 22
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Device"
                "Device"
                "Crew"
                "Gunner"
                "Gunner"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Ben Teene"
            xws_name: "benteene"
            id: 292
            xws_name: "benteene"
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 3
            points: 5
            loadout: 19
            pointsxwa: 15
            loadoutxwa: 19
            slots: [
                "Sensor"
                "Tech"
                "Tech"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Device"
                "Device"
                "Crew"
                "Gunner"
                "Gunner"
                "Tech"
                "Modification"
            ]
            applies_condition: 'Rattled'.canonicalize()
        }
        {
            name: "Edon Kappehl"
            xws_name: "edonkappehl"
            id: 293
            xws_name: "edonkappehl"
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 3
            points: 6
            loadout: 22
            pointsxwa: 16
            loadoutxwa: 23
            slots: [
                "Sensor"
                "Tech"
                "Cannon"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Device"
                "Device"
                "Crew"
                "Gunner"
                "Gunner"
                "Tech"
                "Modification"
                "Sensor"
            ]
        }
        {
            name: "Vennie"
            xws_name: "vennie"
            id: 294
            xws_name: "vennie"
            unique: true
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 2
            points: 6
            loadout: 18
            pointsxwa: 17
            loadoutxwa: 27
            slots: [
                "Sensor"
                "Torpedo"
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Device"
                "Device"
                "Crew"
                "Gunner"
                "Gunner"
                "Tech"
                "Modification"
            ]
        }
        {
            name: "Resistance Sympathizer"
            xws_name: "resistancesympathizer"
            id: 295
            xws_name: "resistancesympathizer"
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 2
            points: 6
            loadout: 10
            pointsxwa: 15
            loadoutxwa: 16
            slots: [
                "Talent"
                "Missile"
                "Gunner"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Jessika Pava"
            xws_name: "jessikapava"
            id: 296
            xws_name: "jessikapava"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 3
            points: 4
            loadout: 6
            pointsxwa: 12
            loadoutxwa: 10
            charge: 1
            recurring: 1
            slots: [
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "Temmin Wexley"
            xws_name: "temminwexley"
            id: 297
            xws_name: "temminwexley"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 4
            loadout: 9
            pointsxwa: 12
            loadoutxwa: 11
            slots: [
                "Talent"
                "Tech"
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "Talent"
                "HardpointShip"
            ]
        }
        {
            name: "Nien Nunb"
            xws_name: "niennunb"
            id: 298
            xws_name: "niennunb"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 5
            points: 5
            loadout: 16
            pointsxwa: 14
            loadoutxwa: 16
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "Talent"
                "Tech"
                "HardpointShip"
            ]
        }
        {
            name: "Ello Asty"
            xws_name: "elloasty"
            id: 299
            xws_name: "elloasty"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 5
            points: 4
            loadout: 4
            pointsxwa: 14
            loadoutxwa: 16
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "Talent"
                "HardpointShip"
            ]
        }
        {
            name: "Green Squadron Expert"
            xws_name: "greensquadronexpert"
            id: 300
            xws_name: "greensquadronexpert"
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 3
            points: 4
            loadout: 2
            pointsxwa: 9
            loadoutxwa: 8
            slots: [
                "Talent"
                "Talent"
                "Tech"
            ]
            slotsxwa: [
                "Missile"
                "Tech"
                "Modification"
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Blue Squadron Recruit"
            xws_name: "bluesquadronrecruit"
            id: 301
            xws_name: "bluesquadronrecruit"
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 1
            points: 4
            loadout: 4
            pointsxwa: 8
            loadoutxwa: 3
            slots: [
                "Talent"
                "Tech"
            ]
            slotsxwa: [
                "Missile"
                "Tech"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Foreman Proach"
            xws_name: "foremanproach"
            id: 302
            xws_name: "foremanproach"
            unique: true
            faction: "Scum and Villainy"
            ship: "Modified TIE/ln Fighter"
            skill: 4
            points: 3
            loadout: 6
            pointsxwa: 8
            loadoutxwa: 11
            slots: [
                "Talent"
                "Talent"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Modification"
                "Talent"
                "Illicit"
            ]
        }
        {
            name: "Overseer Yushyn"
            xws_name: "overseeryushyn"
            id: 303
            xws_name: "overseeryushyn"
            unique: true
            faction: "Scum and Villainy"
            ship: "Modified TIE/ln Fighter"
            skill: 2
            charge: 1
            recurring: 1
            points: 3
            loadout: 7
            pointsxwa: 6
            loadoutxwa: 5
            slots: [
                "Talent"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Modification"
                "Illicit"
            ]
        }
        {
            name: "Mining Guild Sentry"
            xws_name: "miningguildsentry"
            id: 304
            xws_name: "miningguildsentry"
            faction: "Scum and Villainy"
            ship: "Modified TIE/ln Fighter"
            skill: 1
            points: 3
            loadout: 3
            pointsxwa: 5
            loadoutxwa: 1
            slots: [
                "Illicit"
            ]
            slotsxwa: [
                "Modification"
                "Modification"
            ]
        }
        {
            name: "General Grievous"
            xws_name: "generalgrievous"
            id: 305
            xws_name: "generalgrievous"
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            unique: true
            skill: 4
            points: 5
            loadout: 14
            pointsxwa: 12
            loadoutxwa: 20
            slots: [
                "Talent"
                "Missile"
                "Modification"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Modification"
                "Modification"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Wat Tambor"
            xws_name: "wattambor"
            id: 306
            xws_name: "wattambor"
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            unique: true
            skill: 3
            points: 4
            loadout: 9
            pointsxwa: 10
            loadoutxwa: 14
            slots: [
                "Talent"
                "Tactical Relay"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Modification"
                "Tactical Relay"
                "Talent"
            ]
        }
        {
            name: "Feethan Ottraw Autopilot"
            xws_name: "feethanottrawautopilot"
            id: 307
            xws_name: "feethanottrawautopilot"
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            skill: 1
            points: 4
            loadout: 5
            pointsxwa: 9
            loadoutxwa: 10
            keyword: ["Droid"]
            slots: [
                "Tactical Relay"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Modification"
                "Tactical Relay"
            ]
        }
        {
            name: "Captain Sear"
            xws_name: "captainsear"
            id: 308
            xws_name: "captainsear"
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            unique: true
            skill: 2
            points: 5
            loadout: 17
            pointsxwa: 10
            loadoutxwa: 11
            slots: [
                "Tactical Relay"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Modification"
                "Tactical Relay"
            ]
        }
        {
            name: "Precise Hunter"
            xws_name: "precisehunter"
            id: 309
            xws_name: "precisehunter"
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 3
            points: 3
            loadout: 8
            pointsxwa: 5
            loadoutxwa: 0
            max_per_squad: 3
            keyword: ["Droid"]
            slots: [
                "Cannon"
                "Configuration"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Haor Chall Prototype"
            xws_name: "haorchallprototype"
            id: 310
            xws_name: "haorchallprototype"
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            points: 2
            loadout: 4
            pointsxwa: 6
            loadoutxwa: 7
            max_per_squad: 2
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Configuration"
                "Missile"
            ]
        }
        {
            name: "DFS-081"
            xws_name: "dfs081"
            id: 311
            xws_name: "dfs-081"
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 3
            points: 2
            loadout: 7
            pointsxwa: 6
            loadoutxwa: 7
            unique: true
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Configuration"
                "Missile"
            ]
        }
        {
            name: "Plo Koon"
            xws_name: "plokoon"
            id: 312
            xws_name: "plokoon"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 5
            force: 2
            points: 5
            loadout: 14
            pointsxwa: 12
            loadoutxwa: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: "Saesee Tiin"
            xws_name: "saeseetiin"
            id: 313
            xws_name: "saeseetiin"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 4
            force: 2
            points: 4
            loadout: 8
            pointsxwa: 10
            loadoutxwa: 7
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: "Mace Windu"
            xws_name: "macewindu"
            id: 314
            xws_name: "macewindu"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 4
            force: 3
            points: 4
            loadout: 7
            pointsxwa: 11
            loadoutxwa: 7
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: '"Kickback"'
            id: 315
            xws_name: "kickback"
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 4
            points: 3
            loadout: 8
            pointsxwa: 8
            loadoutxwa: 11
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: '"Odd Ball"'
            id: 316
            xws_name: "oddball"
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 5
            points: 4
            loadout: 16
            pointsxwa: 9
            loadoutxwa: 16
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: '"Swoop"'
            id: 317
            xws_name: "swoop"
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 3
            points: 4
            loadout: 13
            pointsxwa: 8
            loadoutxwa: 10
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: '"Axe"'
            id: 318
            xws_name: "axe"
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 3
            points: 3
            loadout: 8
            pointsxwa: 9
            loadoutxwa: 17
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: '"Tucker"'
            id: 319
            xws_name: "tucker"
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 2
            points: 4
            loadout: 13
            pointsxwa: 8
            loadoutxwa: 13
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Blue Squadron Protector"
            xws_name: "bluesquadronprotector"
            id: 320
            xws_name: "bluesquadronprotector"
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 3
            points: 4
            loadout: 4
            pointsxwa: 9
            loadoutxwa: 16
            keyword: ["Clone"]
            slots: [
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Gold Squadron Trooper"
            xws_name: "goldsquadrontrooper"
            id: 321
            xws_name: "goldsquadrontrooper"
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 2
            points: 4
            loadout: 6
            pointsxwa: 7
            loadoutxwa: 5
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Anakin Skywalker (N-1 Starfighter)"
            xws_name: "anakinskywalker"
            id: 322
            xws_name: "anakinskywalker"
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 4
            force: 1
            points: 5
            loadout: 20
            pointsxwa: 14
            loadoutxwa: 9
            keyword: ["Light Side"]
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: "Bravo Flight Officer"
            xws_name: "bravoflightofficer"
            id: 323
            xws_name: "bravoflightofficer"
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 2
            points: 4
            loadout: 8
            pointsxwa: 8
            loadoutxwa: 6
            slots: [
                "Sensor"
                "Torpedo"
                "Astromech"
            ]
            slotsxwa: [
                "Talent"
                "Astromech"
                "Modification"
                "Torpedo"
                "Sensor"
            ]
        }
        {
            name: "Techno Union Bomber"
            xws_name: "technounionbomber"
            id: 324
            xws_name: "technounionbomber"
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 1
            points: 3
            loadout: 6
            pointsxwa: 8
            loadoutxwa: 12
            keyword: ["Droid"]
            slots: [
                "Torpedo"
                "Device"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Device"
                "Configuration"
                "Torpedo"
            ]
        }
        {
            name: "Bombardment Drone"
            xws_name: "bombardmentdrone"
            id: 325
            xws_name: "bombardmentdrone"
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 3
            max_per_squad: 3
            keyword: ["Droid"]
            points: 3
            loadout: 8
            pointsxwa: 8
            loadoutxwa: 8
            slots: [
                "Device"
                "Device"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Device"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "DBS-404"
            xws_name: "dbs404"
            id: 326
            xws_name: "dbs-404"
            unique: true
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 4
            points: 4
            loadout: 10
            pointsxwa: 9
            loadoutxwa: 12
            keyword: ["Droid"]
            slots: [
                "Torpedo"
                "Missile"
                "Device"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Device"
                "Configuration"
                "Torpedo"
            ]
        }
        {
            name: "Separatist Bomber"
            xws_name: "separatistbomber"
            id: 327
            xws_name: "separatistbomber"
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 3
            points: 3
            loadout: 4
            pointsxwa: 9
            loadoutxwa: 14
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Device"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Device"
                "Configuration"
                "Missile"
            ]
        }
        {
            name: "DBS-32C"
            xws_name: "dbs32c"
            id: 328
            xws_name: "dbs-32c"
            unique: true
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 3
            points: 4
            loadout: 16
            pointsxwa: 9
            loadoutxwa: 10
            keyword: ["Droid"]
            slots: [
                "Sensor"
                "Tactical Relay"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Device"
                "Configuration"
                "Missile"
                "Tactical Relay"
                "Sensor"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Barrel Roll"
                    "R-> Lock"
                    "R-Jam"
                ]
        }
        {
            name: "Baktoid Prototype"
            xws_name: "baktoidprototype"
            id: 329
            xws_name: "baktoidprototype"
            max_per_squad: 2
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 1
            points: 3
            loadout: 9
            pointsxwa: 8
            loadoutxwa: 10
            keyword: ["Droid"]
            slots: [
                "Sensor"
                "Missile"
                "Missile"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Device"
                "Configuration"
                "Missile"
                "Missile"
            ]
        }
        {
            name: "Naboo Handmaiden"
            xws_name: "naboohandmaiden"
            id: 330
            xws_name: "naboohandmaiden"
            max_per_squad: 2
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 1
            points: 4
            loadout: 8
            pointsxwa: 9
            loadoutxwa: 9
            applies_condition: '''Decoyed'''.canonicalize()
            slots: [
                "Sensor"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Astromech"
                "Modification"
                "Torpedo"
                "Sensor"
            ]
        }
        {
            name: "Dineé Ellberger"
            xws_name: "dineeellberger"
            id: 331
            xws_name: "dineéellberger"
            xws: "dineeellberger"
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 3
            points: 4
            loadout: 14
            pointsxwa: 10
            loadoutxwa: 14
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
            ]
            slotsxwa: [
                "Talent"
                "Astromech"
                "Modification"
                "Torpedo"
                "Sensor"
            ]
        }
        {
            name: "Padmé Amidala"
            xws_name: "padmeamidala"
            id: 332
            xws_name: "padméamidala"
            xws: "padmeamidala"
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 4
            points: 4
            loadout: 16
            pointsxwa: 11
            loadoutxwa: 15
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
            ]
            slotsxwa: [
                "Talent"
                "Astromech"
                "Modification"
                "Torpedo"
                "Sensor"
            ]
        }
        {
            name: "Ric Olié"
            xws_name: "ricolie"
            id: 333
            xws_name: "ricolié"
            xws: "ricolie"
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 5
            points: 4
            loadout: 12
            pointsxwa: 10
            loadoutxwa: 12
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
            ]
            slotsxwa: [
                "Talent"
                "Astromech"
                "Modification"
                "Torpedo"
                "Sensor"
                "Talent"
            ]
        }
        {
            name: "Count Dooku"
            xws_name: "countdooku"
            id: 334
            xws_name: "countdooku"
            unique: true
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 3
            force: 3
            points: 7
            loadout: 24
            pointsxwa: 15
            loadoutxwa: 8
            keyword: ["Dark Side","Sith"]
            slots: [
                "Force"
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Device"
                "Modification"
                "Title"
                "Tactical Relay"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Modification"
                "Force"
                "Force"
                "Title"
            ]
        }
        {
            name: "0-66"
            xws_name: "066"
            id: 335
            xws_name: "0-66"
            unique: true
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 3
            points: 5
            loadout: 12
            pointsxwa: 13
            loadoutxwa: 13
            keyword: ["Droid"]
            slots: [
                "Talent"
                "Cannon"
                "Torpedo"
                "Crew"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Modification"
                "Torpedo"
                "Tactical Relay"
                "Title"
            ]
        }
        {
            name: "Dark Courier"
            xws_name: "darkcourier"
            id: 336
            xws_name: "darkcourier"
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 2
            points: 6
            loadout: 9
            pointsxwa: 12
            loadoutxwa: 6
            slots: [
                "Cannon"
                "Torpedo"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "DFS-311"
            xws_name: "dfs311"
            id: 337
            xws_name: "dfs-311"
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            points: 3
            loadout: 10
            pointsxwa: 7
            loadoutxwa: 11
            unique: true
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Configuration"
                "Missile"
                "Modification"
            ]
        }
        {
            name: '"Odd Ball" (ARC-170)'
            id: 338
            xws_name: "oddball"
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 5
            points: 4
            loadout: 7
            pointsxwa: 9
            loadoutxwa: 16
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Torpedo"
                "Gunner"
                "Gunner"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: '"Jag"'
            id: 339
            xws_name: "jag"
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 3
            points: 4
            loadout: 9
            pointsxwa: 10
            loadoutxwa: 4
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Gunner"
                "Gunner"
                "Astromech"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Gunner"
                "Gunner"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Squad Seven Veteran"
            xws_name: "squadsevenveteran"
            id: 340
            xws_name: "squadsevenveteran"
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 3
            points: 5
            loadout: 10
            pointsxwa: 12
            loadoutxwa: 16
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Gunner"
                "Gunner"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Gunner"
                "Gunner"
                "Modification"
                "Torpedo"
                "Talent"
            ]
        }
        {
            name: "104th Battalion Pilot"
            xws_name: "104thbattalionpilot"
            id: 341
            xws_name: "104thbattalionpilot"
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 2
            points: 5
            loadout: 8
            pointsxwa: 11
            loadoutxwa: 8
            keyword: ["Clone"]
            slots: [
                "Torpedo"
                "Gunner"
                "Gunner"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Gunner"
                "Gunner"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: '"Wolffe"'
            id: 342
            xws_name: "wolffe"
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 4
            charge: 1
            points: 4
            loadout: 9
            pointsxwa: 11
            loadoutxwa: 9
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Gunner"
                "Gunner"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Gunner"
                "Gunner"
                "Modification"
                "Torpedo"
                "Talent"
            ]
        }
        {
            name: "Separatist Drone"
            xws_name: "separatistdrone"
            id: 343
            xws_name: "separatistdrone"
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 3
            points: 2
            loadout: 3
            pointsxwa: 6
            loadoutxwa: 6
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Configuration"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Configuration"
                "Missile"
            ]
        }
        {
            name: "Skakoan Ace"
            xws_name: "skakoanace"
            id: 344
            xws_name: "skakoanace"
            faction: "Separatist Alliance"
            ship: "Belbullab-22 Starfighter"
            skill: 3
            points: 4
            loadout: 4
            pointsxwa: 10
            loadoutxwa: 14
            slots: [
                "Talent"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Rose Tico"
            xws_name: "rosetico"
            id: 345
            xws_name: "rosetico"
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport Pod"
            skill: 3
            points: 3
            loadout: 9
            pointsxwa: 7
            loadoutxwa: 11
            slots: [
                "Talent"
                "Tech"
                "Crew"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Tech"
                "Talent"
            ]
        }
        {
            name: "Logistics Division Pilot"
            xws_name: "logisticsdivisionpilot"
            id: 346
            xws_name: "logisticsdivisionpilot"
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 1
            points: 4
            loadout: 6
            pointsxwa: 10
            loadoutxwa: 19
            slots: [
                "Cannon"
                "Crew"
                "Astromech"
                "Astromech"
            ]
            slotsxwa: [
                "Astromech"
                "Crew"
                "Crew"
                "Modification"
                "Tech"
                "Cannon"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Pammich Nerro Goode"
            xws_name: "pammichnerrogoode"
            id: 347
            xws_name: "pammichnerrogoode"
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 3
            points: 4
            loadout: 12
            pointsxwa: 11
            loadoutxwa: 22
            slots: [
                "Tech"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Crew"
                "Crew"
                "Modification"
                "Tech"
                "Cannon"
                "Torpedo"
                "Cannon"
            ]
        }
        {
            name: "Vi Moradi"
            xws_name: "vimoradi"
            id: 348
            xws_name: "vimoradi"
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport Pod"
            skill: 1
            points: 3
            loadout: 6
            pointsxwa: 6
            loadoutxwa: 8
            applies_condition: '''Compromising Intel'''.canonicalize()
            slots: [
                "Tech"
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Tech"
            ]
        }
        {
            name: "BB-8"
            xws_name: "bb8"
            id: 349
            xws_name: "bb-8"
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport Pod"
            skill: 3
            points: 2
            loadout: 4
            pointsxwa: 6
            loadoutxwa: 9
            keyword: ["Droid"]
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Tech"
            ]
        }
        {
            name: "Finn"
            xws_name: "finn"
            id: 350
            xws_name: "finn"
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport Pod"
            skill: 2
            points: 4
            loadout: 15
            pointsxwa: 9
            loadoutxwa: 16
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Tech"
                "Talent"
            ]
        }
        {
            name: "Cova Nell"
            xws_name: "covanell"
            id: 351
            xws_name: "covanell"
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 4
            points: 5
            loadout: 20
            pointsxwa: 12
            loadoutxwa: 18
            slots: [
                "Talent"
                "Tech"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Crew"
                "Crew"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Crew"
                "Crew"
                "Modification"
                "Tech"
                "Cannon"
                "Torpedo"
                "Talent"
                "Cannon"
            ]
        }
        {
            name: "Nodin Chavdri"
            xws_name: "nodinchavdri"
            id: 352
            xws_name: "nodinchavdri"
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 2
            points: 5
            loadout: 20
            pointsxwa: 9
            loadoutxwa: 12
            slots: [
                "Tech"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
                "Crew"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Crew"
                "Crew"
                "Modification"
                "Tech"
                "Cannon"
                "Torpedo"
            ]
        }
        {
            name: "Stalgasin Hive Guard"
            xws_name: "stalgasinhiveguard"
            id: 353
            xws_name: "stalgasinhiveguard"
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 3
            points: 4
            loadout: 4
            pointsxwa: 9
            loadoutxwa: 5
            slots: [
                "Talent"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Petranaki Arena Ace"
            xws_name: "petranakiarenaace"
            id: 354
            xws_name: "petranakiarenaace"
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 4
            points: 4
            loadout: 6
            pointsxwa: 10
            loadoutxwa: 8
            slots: [
                "Talent"
                "Talent"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Gorgol"
            unique: true
            xws_name: "gorgol"
            id: 355
            xws_name: "gorgol"
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 2
            points: 4
            loadout: 9
            pointsxwa: 8
            loadoutxwa: 5
            slots: [
                "Talent"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Chertek"
            unique: true
            xws_name: "chertek"
            id: 356
            xws_name: "chertek"
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 4
            points: 4
            loadout: 10
            pointsxwa: 10
            loadoutxwa: 14
            slots: [
                "Talent"
                "Talent"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Sun Fac"
            unique: true
            xws_name: "sunfac"
            id: 357
            xws_name: "sunfac"
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 6
            points: 5
            loadout: 15
            pointsxwa: 13
            loadoutxwa: 17
            slots: [
                "Talent"
                "Talent"
                "Talent"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Berwer Kret"
            unique: true
            xws_name: "berwerkret"
            id: 358
            xws_name: "berwerkret"
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 5
            points: 4
            loadout: 7
            pointsxwa: 9
            loadoutxwa: 7
            slots: [
                "Talent"
                "Talent"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Anakin Skywalker (Y-Wing)"
            unique: true
            xws_name: "anakinskywalker"
            id: 359
            xws_name: "anakinskywalker"
            faction: "Galactic Republic"
            ship: "BTL-B Y-wing"
            skill: 6
            force: 3
            points: 6
            loadout: 20
            pointsxwa: 14
            loadoutxwa: 9
            keyword: ["Jedi", "Light Side"]
            slots: [
                "Force"
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: "Shadow Squadron Veteran"
            xws_name: "shadowsquadronveteran"
            id: 360
            xws_name: "shadowsquadronveteran"
            faction: "Galactic Republic"
            ship: "BTL-B Y-wing"
            skill: 3
            points: 4
            loadout: 4
            pointsxwa: 9
            loadoutxwa: 13
            keyword: ["Clone"]
            slots: [
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Gunner"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
                "Talent"
            ]
        }
        {
            name: "Red Squadron Bomber"
            xws_name: "redsquadronbomber"
            id: 361
            xws_name: "redsquadronbomber"
            faction: "Galactic Republic"
            ship: "BTL-B Y-wing"
            skill: 2
            points: 4
            loadout: 6
            pointsxwa: 8
            loadoutxwa: 9
            keyword: ["Clone"]
            slots: [
                "Turret"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Device"
            ]
            slotsxwa: [
                "Astromech"
                "Gunner"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
            ]
        }
        {
            name: "R2-D2"
            xws_name: "r2d2"
            id: 362
            xws_name: "r2-d2"
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-wing"
            skill: 2
            points: 3
            loadout: 9
            pointsxwa: 10
            loadoutxwa: 20
            keyword: ["Droid"]
            slots: [
                "Sensor"
                "Turret"
                "Torpedo"
                "Crew"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
                "Crew"
            ]
        }
        {
            name: '"Goji"'
            id: 363
            xws_name: "goji"
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-wing"
            skill: 2
            points: 4
            loadout: 16
            pointsxwa: 9
            loadoutxwa: 13
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Turret"
                "Gunner"
                "Astromech"
                "Device"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Gunner"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
            ]
        }
        {
            name: '"Broadside"'
            id: 364
            xws_name: "broadside"
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-wing"
            skill: 3
            points: 3
            loadout: 10
            pointsxwa: 9
            loadoutxwa: 10
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Gunner"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
            ]
        }
        {
            name: '"Matchstick"'
            id: 365
            xws_name: "matchstick"
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-wing"
            skill: 4
            points: 3
            loadout: 9
            pointsxwa: 10
            loadoutxwa: 13
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Gunner"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
                "Talent"
            ]
        }
        {
            name: '"Odd Ball" (Y-Wing)'
            id: 366
            xws_name: "oddball"
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-wing"
            skill: 5
            points: 4
            loadout: 18
            pointsxwa: 9
            loadoutxwa: 16
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Torpedo"
                "Gunner"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Republic Judiciary"
            xws_name: "republicjudiciary"
            id: 367
            xws_name: "republicjudiciary"
            faction: "Galactic Republic"
            ship: "CR90 Corellian Corvette"
            skill: 8
            engagement: 0
            points: 14
            loadout: 40
            pointsxwa: 14
            loadoutxwa: 40
            slots: [
                "Command"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Team"
                "Cargo"
            ]
            slotsxwa: [
                "Command"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Team"
                "Cargo"
            ]
        }
        {
            name: "Alderaanian Guard"
            xws_name: "alderaanianguard"
            id: 368
            xws_name: "alderaanianguard"
            faction: "Rebel Alliance"
            ship: "CR90 Corellian Corvette"
            skill: 8
            engagement: 0
            points: 14
            loadout: 40
            pointsxwa: 14
            loadoutxwa: 40
            slots: [
                "Command"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Team"
                "Cargo"
                "Title"
            ]
            slotsxwa: [
                "Command"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Team"
                "Cargo"
                "Title"
            ]
        }
        {
            name: "Outer Rim Patrol"
            xws_name: "outerrimpatrol"
            id: 369
            xws_name: "outerrimpatrol"
            faction: "Galactic Empire"
            ship: "Raider-class Corvette"
            skill: 8
            engagement: 0
            points: 15
            loadout: 50
            pointsxwa: 15
            loadoutxwa: 50
            slots: [
                "Command"
                "Torpedo"
                "Missile"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Team"
                "Team"
                "Cargo"
                "Title"
            ]
            slotsxwa: [
                "Command"
                "Missile"
                "Torpedo"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Team"
                "Team"
                "Cargo"
                "Title"
            ]
        }
        {
            name: "First Order Collaborators"
            xws_name: "firstordercollaborators"
            id: 370
            xws_name: "firstordercollaborators"
            faction: "First Order"
            ship: "Raider-class Corvette"
            skill: 8
            engagement: 0
            points: 15
            loadout: 50
            pointsxwa: 15
            loadoutxwa: 50
            slots: [
                "Command"
                "Torpedo"
                "Missile"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Team"
                "Team"
                "Cargo"
            ]
            slotsxwa: [
                "Command"
                "Torpedo"
                "Missile"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Team"
                "Team"
                "Cargo"
            ]
        }
        {
            name: "Echo Base Evacuees"
            xws_name: "echobaseevacuees"
            id: 371
            xws_name: "echobaseevacuees"
            faction: "Rebel Alliance"
            ship: "GR-75 Medium Transport"
            skill: 7
            engagement: 1
            points: 10
            loadout: 25
            pointsxwa: 10
            loadoutxwa: 25
            slots: [
                "Command"
                "Hardpoint"
                "Turret"
                "Crew"
                "Crew"
                "Team"
                "Cargo"
                "Cargo"
                "Title"
            ]
            slotsxwa: [
                "Command"
                "Hardpoint"
                "Turret"
                "Crew"
                "Crew"
                "Team"
                "Cargo"
                "Cargo"
                "Title"
            ]
        }
        {
            name: "New Republic Volunteers"
            xws_name: "newrepublicvolunteers"
            id: 372
            xws_name: "newrepublicvolunteers"
            faction: "Resistance"
            ship: "GR-75 Medium Transport"
            skill: 7
            engagement: 1
            points: 10
            loadout: 25
            pointsxwa: 10
            loadoutxwa: 25
            slots: [
                "Command"
                "Hardpoint"
                "Turret"
                "Crew"
                "Crew"
                "Team"
                "Cargo"
                "Cargo"
            ]
            slotsxwa: [
                "Command"
                "Hardpoint"
                "Turret"
                "Crew"
                "Crew"
                "Team"
                "Cargo"
                "Cargo"
            ]
        }
        {
            name: "Outer Rim Garrison"
            xws_name: "outerrimgarrison"
            id: 373
            xws_name: "outerrimgarrison"
            faction: "Galactic Empire"
            ship: "Gozanti-class Cruiser"
            skill: 7
            engagement: 1
            points: 11
            loadout: 40
            pointsxwa: 11
            loadoutxwa: 40
            slots: [
                "Command"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Cargo"
                "Cargo"
                "Title"
            ]
            slotsxwa: [
                "Command"
                "Crew"
                "Gunner"
                "Cargo"
                "Title"
                "Hardpoint"
                "Crew"
                "Team"
                "Cargo"
            ]
        }
        {
            name: "First Order Sympathizers"
            xws_name: "firstordersympathizers"
            id: 374
            xws_name: "firstordersympathizers"
            faction: "First Order"
            ship: "Gozanti-class Cruiser"
            skill: 7
            engagement: 1
            points: 11
            loadout: 40
            pointsxwa: 11
            loadoutxwa: 40
            slots: [
                "Command"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Cargo"
                "Cargo"
            ]
            slotsxwa: [
                "Command"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Cargo"
                "Cargo"
            ]
        }
        {
            name: "Separatist Privateers"
            xws_name: "separatistprivateers"
            id: 375
            xws_name: "separatistprivateers"
            faction: "Separatist Alliance"
            ship: "C-ROC Cruiser"
            skill: 7
            engagement: 1
            points: 10
            loadout: 30
            pointsxwa: 10
            loadoutxwa: 30
            slots: [
                "Command"
                "Hardpoint"
                "Crew"
                "Crew"
                "Tactical Relay"
                "Team"
                "Cargo"
                "Device"
                "Configuration"
            ]
            slotsxwa: [
                "Command"
                "Hardpoint"
                "Crew"
                "Crew"
                "Tactical Relay"
                "Team"
                "Cargo"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "Syndicate Smugglers"
            xws_name: "syndicatesmugglers"
            id: 376
            xws_name: "syndicatesmugglers"
            faction: "Scum and Villainy"
            ship: "C-ROC Cruiser"
            skill: 7
            engagement: 1
            points: 10
            loadout: 30
            pointsxwa: 10
            loadoutxwa: 30
            slots: [
                "Command"
                "Hardpoint"
                "Crew"
                "Crew"
                "Team"
                "Cargo"
                "Device"
                "Illicit"
                "Title"
                "Configuration"
            ]
            slotsxwa: [
                "Command"
                "Hardpoint"
                "Crew"
                "Crew"
                "Team"
                "Cargo"
                "Device"
                "Illicit"
                "Title"
                "Configuration"
            ]
        }
        {
            name: "Jarek Yeager"
            xws_name: "jarekyeager"
            id: 377
            xws_name: "jarekyeager"
            faction: "Resistance"
            unique: true
            ship: "Fireball"
            skill: 5
            points: 3
            loadout: 9
            pointsxwa: 9
            loadoutxwa: 14
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Modification"
                "Astromech"
                "Illicit"
                "Missile"
                "Talent"
                "Modification"
                "Title"
            ]
        }
        {
            name: "Kazuda Xiono"
            xws_name: "kazudaxiono"
            id: 378
            xws_name: "kazudaxiono"
            faction: "Resistance"
            unique: true
            ship: "Fireball"
            skill: 4
            points: 4
            loadout: 14
            pointsxwa: 10
            loadoutxwa: 15
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Modification"
                "Astromech"
                "Illicit"
                "Missile"
                "Talent"
                "Modification"
                "Title"
            ]
        }
        {
            name: "R1-J5"
            xws_name: "r1j5"
            id: 379
            xws_name: "r1-j5"
            faction: "Resistance"
            unique: true
            ship: "Fireball"
            skill: 1
            points: 3
            loadout: 8
            pointsxwa: 6
            loadoutxwa: 5
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Crew"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Modification"
                "Illicit"
                "Missile"
                "Crew"
                "Title"
            ]
        }
        {
            name: "Colossus Station Mechanic"
            xws_name: "colossusstationmechanic"
            id: 380
            xws_name: "colossusstationmechanic"
            faction: "Resistance"
            ship: "Fireball"
            skill: 2
            points: 3
            loadout: 5
            pointsxwa: 7
            loadoutxwa: 5
            slots: [
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Astromech"
                "Illicit"
                "Missile"
            ]
        }
        {
            name: "Major Vonreg"
            xws_name: "majorvonreg"
            id: 381
            xws_name: "majorvonreg"
            faction: "First Order"
            unique: true
            skill: 6
            ship: "TIE/ba Interceptor"
            points: 5
            loadout: 14
            pointsxwa: 14
            loadoutxwa: 17
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Missile"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Tech"
                "Modification"
                "Talent"
                "Talent"
                "Modification"
            ]
        }
        {
            name: '"Holo"'
            id: 382
            xws_name: "holo"
            faction: "First Order"
            unique: true
            skill: 5
            ship: "TIE/ba Interceptor"
            points: 5
            loadout: 12
            pointsxwa: 13
            loadoutxwa: 15
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Tech"
                "Modification"
                "Talent"
                "Talent"
                "Modification"
            ]
        }
        {
            name: '"Ember"'
            id: 383
            xws_name: "ember"
            faction: "First Order"
            unique: true
            skill: 4
            ship: "TIE/ba Interceptor"
            points: 4
            loadout: 7
            pointsxwa: 10
            loadoutxwa: 8
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Tech"
                "Modification"
                "Talent"
                "Modification"
            ]
        }
        {
            name: "First Order Provocateur"
            xws_name: "firstorderprovocateur"
            id: 384
            xws_name: "firstorderprovocateur"
            faction: "First Order"
            skill: 3
            ship: "TIE/ba Interceptor"
            points: 4
            loadout: 3
            pointsxwa: 9
            loadoutxwa: 5
            slots: [
                "Talent"
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Tech"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Captain Phasma"
            xws_name: "captainphasma"
            id: 385
            xws_name: "captainphasma"
            faction: "First Order"
            unique: true
            skill: 4
            ship: "TIE/sf Fighter"
            points: 4
            loadout: 6
            pointsxwa: 10
            loadoutxwa: 15
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Missile"
                "Gunner"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Gunner"
                "Modification"
                "Tech"
                "Missile"
                "Talent"
            ]
        }
        {
            name: '"Rush"'
            id: 386
            xws_name: "rush"
            faction: "First Order"
            unique: true
            skill: 2
            ship: "TIE/vn Silencer"
            points: 5
            loadout: 11
            pointsxwa: 13
            loadoutxwa: 8
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Tech"
                "Modification"
                "Missile"
                "Torpedo"
                "Configuration"
            ]
        }
        {
            name: "Zizi Tlo"
            xws_name: "zizitlo"
            id: 387
            xws_name: "zizitlo"
            faction: "Resistance"
            unique: true
            skill: 5
            charge: 1
            recurring: 1
            ship: "RZ-2 A-wing"
            points: 4
            loadout: 7
            pointsxwa: 11
            loadoutxwa: 14
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Tech"
                "Modification"
                "Talent"
                "Talent"
                "Tech"
            ]
        }
        {
            name: "Ronith Blario"
            xws_name: "ronithblario"
            id: 388
            xws_name: "ronithblario"
            faction: "Resistance"
            unique: true
            skill: 2
            ship: "RZ-2 A-wing"
            points: 4
            loadout: 10
            pointsxwa: 9
            loadoutxwa: 9
            slots: [
                "Talent"
                "Missile"
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Tech"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Paige Tico"
            xws_name: "paigetico"
            id: 389
            xws_name: "paigetico"
            faction: "Resistance"
            unique: true
            skill: 5
            ship: "MG-100 StarFortress"
            points: 6
            loadout: 23
            pointsxwa: 16
            loadoutxwa: 21
            charge: 1
            recurring: 1
            slots: [
                "Talent"
                "Sensor"
                "Tech"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Device"
                "Device"
                "Crew"
                "Gunner"
                "Gunner"
                "Tech"
                "Modification"
                "Talent"
                "Sensor"
                "Modification"
            ]
        }
        {
            name: "K-2SO"
            xws_name: "k2so"
            id: 390
            xws_name: "k-2so"
            faction: "Rebel Alliance"
            unique: true
            skill: 3
            ship: "UT-60D U-wing"
            points: 5
            loadout: 10
            pointsxwa: 11
            loadoutxwa: 11
            keyword: ["Droid"]
            slots: [
                "Sensor"
                "Crew"
                "Crew"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Gina Moonsong"
            xws_name: "ginamoonsong"
            id: 391
            xws_name: "ginamoonsong"
            faction: "Rebel Alliance"
            unique: true
            skill: 5
            ship: "A/SF-01 B-wing"
            points: 4
            loadout: 11
            pointsxwa: 11
            loadoutxwa: 10
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Device"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Missile"
                "Modification"
                "Sensor"
                "Torpedo"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Alexsandr Kallus"
            xws_name: "alexsandrkallus"
            id: 392
            xws_name: "alexsandrkallus"
            faction: "Rebel Alliance"
            unique: true
            skill: 4
            ship: "VCX-100 Light Freighter"
            points: 7
            loadout: 16
            pointsxwa: 17
            loadoutxwa: 14
            keyword: ["Spectre"]
            slots: [
                "Talent"
                "Torpedo"
                "Sensor"
                "Turret"
                "Crew"
                "Crew"
                "Modification"
                "Gunner"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Gunner"
                "Turret"
                "Modification"
                "Torpedo"
                "Title"
                "Talent"
            ]
        }
        {
            name: "Leia Organa"
            xws_name: "leiaorgana"
            id: 393
            xws_name: "leiaorgana"
            faction: "Rebel Alliance"
            unique: true
            skill: 5
            ship: "Modified YT-1300 Light Freighter"
            keyword: ["Light Side"]
            points: 7
            loadout: 24
            pointsxwa: 19
            loadoutxwa: 17
            force: 1
            slots: [
                "Force"
                "Missile"
                "Gunner"
                "Crew"
                "Crew"
                "Modification"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Missile"
                "Title"
                "Force"
            ]
        }
        {
            name: "Fifth Brother"
            xws_name: "fifthbrother"
            id: 394
            xws_name: "fifthbrother"
            faction: "Galactic Empire"
            unique: true
            skill: 4
            keyword: ["Dark Side"]
            ship: "TIE Advanced v1"
            points: 4
            loadout: 7
            pointsxwa: 11
            loadoutxwa: 12
            force: 2
            slots: [
                "Force"
                "Talent"
                "Sensor"
                "Missile"
            ]
            slotsxwa: [
                "Missile"
                "Sensor"
                "Modification"
                "Force"
            ]
        }
        {
            name: '"Vagabond"'
            id: 395
            xws_name: "vagabond"
            faction: "Galactic Empire"
            unique: true
            skill: 2
            ship: "TIE/sk Striker"
            points: 4
            loadout: 12
            pointsxwa: 9
            loadoutxwa: 14
            slots: [
                "Talent"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Modification"
                "Device"
            ]
        }
        {
            name: "Morna Kee"
            xws_name: "mornakee"
            id: 396
            xws_name: "mornakee"
            faction: "Galactic Empire"
            unique: true
            skill: 4
            ship: "VT-49 Decimator"
            points: 7
            loadout: 22
            pointsxwa: 18
            loadoutxwa: 16
            charge: 3
            slots: [
                "Talent"
                "Torpedo"
                "Crew"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Torpedo"
                "Modification"
                "Device"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Lieutenant LeHuse"
            xws_name: "lieutenantlehuse"
            id: 397
            xws_name: "lieutenantlehuse"
            faction: "First Order"
            unique: true
            skill: 5
            ship: "TIE/sf Fighter"
            points: 4
            loadout: 7
            pointsxwa: 13
            loadoutxwa: 25
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Missile"
                "Gunner"
                "Sensor"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Gunner"
                "Modification"
                "Tech"
                "Missile"
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Bossk (Z-95 Headhunter)"
            xws_name: "bossk"
            id: 398
            xws_name: "bossk"
            faction: "Scum and Villainy"
            unique: true
            skill: 4
            ship: "Z-95-AF4 Headhunter"
            points: 2
            loadout: 3
            pointsxwa: 16
            loadoutxwa: 18
            keyword: ["Bounty Hunter"]
            chassis: "Pursuit Craft"
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Cannon"
                "Missile"
                "Talent"
                "Title"
                "Gunner"
            ]
        }
        {
            name: "G4R-GOR V/M"
            id: 399
            xws_name: "g4rgorvm"
            faction: "Scum and Villainy"
            unique: true
            skill: 0
            ship: "M3-A Interceptor"
            points: 3
            loadout: 9
            pointsxwa: 7
            loadoutxwa: 5
            keyword: ["Droid"]
            slots: [
                "Modification"
                "HardpointShip"
            ]
            slotsxwa: [
                "Modification"
                "HardpointShip"
            ]
        }
        {
            name: "Nom Lumb"
            xws_name: "nomlumb"
            id: 400
            xws_name: "nomlumb"
            faction: "Scum and Villainy"
            unique: true
            skill: 1
            ship: "JumpMaster 5000"
            points: 5
            loadout: 11
            pointsxwa: 11
            loadoutxwa: 13
            keyword: ["Bounty Hunter"]
            slots: [
                "Cannon"
                "Cannon"
                "Torpedo"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Cannon"
                "Gunner"
                "Illicit"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "First Order Courier"
            xws_name: "firstordercourier"
            id: 401
            xws_name: "firstordercourier"
            faction: "First Order"
            skill: 2
            ship: "Xi-class Light Shuttle"
            points: 4
            loadout: 10
            pointsxwa: 8
            loadoutxwa: 8
            slots: [
                "Tech"
                "Tech"
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Modification"
            ]
        }
        {
            name: "Agent Terex"
            xws_name: "agentterex"
            id: 402
            xws_name: "agentterex"
            faction: "First Order"
            unique: true
            skill: 3
            ship: "Xi-class Light Shuttle"
            points: 4
            loadout: 13
            pointsxwa: 9
            loadoutxwa: 12
            slots: [
                "Talent"
                "Tech"
                "Tech"
                "Crew"
                "Illicit"
                "Illicit"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Modification"
                "Illicit"
                "Illicit"
                "Illicit"
            ]
        }
        {
            name: "Gideon Hask (Xi Shuttle)"
            xws_name: "gideonhask"
            id: 403
            xws_name: "gideonhask"
            faction: "First Order"
            unique: true
            skill: 4
            ship: "Xi-class Light Shuttle"
            points: 4
            loadout: 15
            pointsxwa: 9
            loadoutxwa: 16
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Talent"
                "Missile"
                "Modification"
                "Sensor"
            ]
        }
        {
            name: "Commander Malarus (Xi Shuttle)"
            xws_name: "commandermalarus"
            id: 404
            xws_name: "commandermalarus"
            faction: "First Order"
            unique: true
            skill: 5
            ship: "Xi-class Light Shuttle"
            points: 4
            loadout: 15
            pointsxwa: 10
            loadoutxwa: 15
            slots: [
                "Talent"
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Tech"
                "Modification"
                "Talent"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Baktoid Drone"
            xws_name: "baktoiddrone"
            id: 405
            xws_name: "baktoiddrone"
            faction: "Separatist Alliance"
            skill: 1
            ship: "HMP Droid Gunship"
            points: 4
            loadout: 8
            pointsxwa: 10
            loadoutxwa: 11
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Device"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Missile"
                "Missile"
                "Modification"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "TransGalMeg Control Link"
            xws_name: "transgalmegcontrollink"
            id: 406
            xws_name: "transgalmegcontrollink"
            faction: "Galactic Republic"
            skill: "*"
            ship: "Syliure-class Hyperspace Ring"
            points: 2
            pointsxwa: 2
            loadoutxwa: 0
            slots: [
                "Hyperdrive"
            ]
            slotsxwa: [
                "Hyperdrive"
            ]
        }
        {
            name: "Separatist Predator"
            xws_name: "separatistpredator"
            id: 407
            xws_name: "separatistpredator"
            faction: "Separatist Alliance"
            skill: 3
            ship: "HMP Droid Gunship"
            points: 4
            loadout: 9
            pointsxwa: 11
            loadoutxwa: 15
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Missile"
                "Device"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Missile"
                "Missile"
                "Modification"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "Geonosian Prototype"
            xws_name: "geonosianprototype"
            id: 408
            xws_name: "geonosianprototype"
            faction: "Separatist Alliance"
            skill: 2
            max_per_squad: 2
            ship: "HMP Droid Gunship"
            points: 4
            loadout: 12
            pointsxwa: 10
            loadoutxwa: 12
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Missile"
                "Cannon"
                "Cannon"
                "Tactical Relay"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Device"
                "Configuration"
                "Cannon"
                "Cannon"
            ]
        }
        {
            name: "DGS-047"
            xws_name: "dgs047"
            id: 409
            xws_name: "dgs-047"
            faction: "Separatist Alliance"
            skill: 1
            unique: true
            ship: "HMP Droid Gunship"
            points: 3
            loadout: 8
            pointsxwa: 9
            loadoutxwa: 6
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Missile"
                "Tactical Relay"
                "Crew"
                "Device"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Missile"
                "Missile"
                "Modification"
                "Device"
                "Configuration"
                "Tactical Relay"
            ]
        }
        {
            name: "DGS-286"
            xws_name: "dgs286"
            id: 410
            xws_name: "dgs-286"
            faction: "Separatist Alliance"
            skill: 3
            unique: true
            ship: "HMP Droid Gunship"
            points: 3
            loadout: 7
            pointsxwa: 11
            loadoutxwa: 17
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Missile"
                "Tactical Relay"
                "Crew"
                "Device"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Missile"
                "Missile"
                "Modification"
                "Device"
                "Configuration"
                "Tactical Relay"
                "Torpedo"
            ]
        }
        {
            name: "Onderon Oppressor"
            xws_name: "onderonoppressor"
            id: 411
            xws_name: "onderonoppressor"
            faction: "Separatist Alliance"
            skill: 3
            max_per_squad: 2
            ship: "HMP Droid Gunship"
            points: 4
            loadout: 15
            pointsxwa: 10
            loadoutxwa: 12
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Missile"
                "Crew"
                "Device"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Missile"
                "Missile"
                "Modification"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "212th Battalion Pilot"
            xws_name: "212thbattalionpilot"
            id: 412
            xws_name: "212thbattalionpilot"
            faction: "Galactic Republic"
            skill: 2
            charge: 2
            recurring: 1
            ship: "LAAT/i Gunship"
            points: 5
            loadout: 7
            pointsxwa: 11
            loadoutxwa: 11
            keyword: ["Clone"]
            slots: [
                "Missile"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Modification"
                "Missile"
                "Missile"
            ]
        }
        {
            name: '"Hound"'
            id: 413
            xws_name: "hound"
            faction: "Galactic Republic"
            skill: 2
            unique: true
            charge: 2
            recurring: 1
            ship: "LAAT/i Gunship"
            points: 6
            loadout: 20
            pointsxwa: 11
            loadoutxwa: 8
            keyword: ["Clone"]
            slots: [
                "Sensor"
                "Missile"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Modification"
                "Missile"
                "Missile"
            ]
        }
        {
            name: '"Warthog"'
            id: 414
            xws_name: "warthog"
            faction: "Galactic Republic"
            skill: 3
            unique: true
            charge: 2
            recurring: 1
            ship: "LAAT/i Gunship"
            points: 6
            loadout: 18
            pointsxwa: 13
            loadoutxwa: 16
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Modification"
                "Missile"
                "Missile"
                "Talent"
            ]
        }
        {
            name: '"Hawk"'
            id: 415
            xws_name: "hawk"
            faction: "Galactic Republic"
            skill: 4
            charge: 2
            recurring: 1
            unique: true
            ship: "LAAT/i Gunship"
            points: 6
            loadout: 25
            pointsxwa: 12
            loadoutxwa: 9
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Modification"
                "Missile"
                "Missile"
                "Talent"
            ]
        }
        {
            name: "Carida Academy Cadet"
            xws_name: "caridaacademycadet"
            id: 416
            xws_name: "caridaacademycadet"
            faction: "Galactic Empire"
            skill: 1
            ship: "TIE/rb Heavy"
            points: 5
            loadout: 8
            pointsxwa: 9
            loadoutxwa: 8
            slots: [
                "Cannon"
                "Cannon"
                "Configuration"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Gunner"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Onyx Squadron Sentry"
            xws_name: "onyxsquadronsentry"
            id: 417
            xws_name: "onyxsquadronsentry"
            faction: "Galactic Empire"
            skill: 3
            ship: "TIE/rb Heavy"
            points: 5
            loadout: 7
            pointsxwa: 10
            loadoutxwa: 11
            slots: [
                "Cannon"
                "Cannon"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Gunner"
                "Modification"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Lyttan Dree"
            xws_name: "lyttandree"
            id: 418
            xws_name: "lyttandree"
            faction: "Galactic Empire"
            skill: 3
            unique: true
            ship: "TIE/rb Heavy"
            points: 5
            loadout: 14
            pointsxwa: 10
            loadoutxwa: 9
            slots: [
                "Sensor"
                "Cannon"
                "Cannon"
                "Gunner"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Gunner"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: '"Rampage"'
            id: 419
            xws_name: "rampage"
            faction: "Galactic Empire"
            skill: 4
            unique: true
            ship: "TIE/rb Heavy"
            points: 4
            loadout: 10
            pointsxwa: 11
            loadoutxwa: 17
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Gunner"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Gunner"
                "Modification"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Fearsome Predator"
            xws_name: "fearsomepredator"
            id: 420
            xws_name: "fearsomepredator"
            faction: "Separatist Alliance"
            max_per_squad: 3
            skill: 3
            ship: "Droid Tri-fighter"
            points: 3
            loadout: 3
            pointsxwa: 9
            loadoutxwa: 4
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Sensor"
                "Modification"
                "Modification"
                "Missile"
                "Cannon"
                "Configuration"
            ]
            applies_condition: '''Fearful Prey'''.canonicalize()
        }
        {
            name: "DIS-347"
            xws_name: "dis347"
            id: 421
            xws_name: "dis-347"
            faction: "Separatist Alliance"
            skill: 3
            unique: true
            ship: "Droid Tri-fighter"
            points: 3
            loadout: 4
            pointsxwa: 9
            loadoutxwa: 6
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Sensor"
                "Modification"
                "Modification"
                "Missile"
                "Cannon"
                "Configuration"
            ]
        }
        {
            name: "DIS-T81"
            xws_name: "dist81"
            id: 422
            xws_name: "dis-t81"
            faction: "Separatist Alliance"
            skill: 4
            unique: true
            ship: "Droid Tri-fighter"
            points: 3
            loadout: 3
            pointsxwa: 10
            loadoutxwa: 12
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Modification"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Sensor"
                "Modification"
                "Modification"
                "Missile"
                "Cannon"
                "Configuration"
            ]
        }
        {
            name: "Phlac-Arphocc Prototype"
            xws_name: "phlacarphoccprototype"
            id: 423
            xws_name: "phlac-arphoccprototype"
            faction: "Separatist Alliance"
            skill: 5
            max_per_squad: 2
            ship: "Droid Tri-fighter"
            points: 3
            loadout: 6
            pointsxwa: 10
            loadoutxwa: 9
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Sensor"
                "Modification"
                "Modification"
                "Missile"
                "Cannon"
                "Configuration"
            ]
        }
        {
            name: "Colicoid Interceptor"
            xws_name: "colicoidinterceptor"
            id: 424
            xws_name: "colicoidinterceptor"
            faction: "Separatist Alliance"
            skill: 1
            ship: "Droid Tri-fighter"
            points: 3
            loadout: 4
            pointsxwa: 8
            loadoutxwa: 3
            slots: [
                "Talent"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Sensor"
                "Modification"
                "Modification"
                "Missile"
                "Cannon"
                "Configuration"
            ]
        }
        {
            name: "Separatist Interceptor"
            xws_name: "separatistinterceptor"
            id: 425
            xws_name: "separatistinterceptor"
            faction: "Separatist Alliance"
            skill: 3
            ship: "Droid Tri-fighter"
            points: 3
            loadout: 3
            pointsxwa: 9
            loadoutxwa: 6
            slots: [
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Sensor"
                "Modification"
                "Modification"
                "Missile"
                "Cannon"
                "Configuration"
            ]
        }
        {
            name: "Separatist Racketeer"
            xws_name: "separatistracketeer"
            id: 426
            xws_name: "separatistracketeer"
            faction: "Separatist Alliance"
            skill: 2
            ship: "Firespray-class Patrol Craft"
            points: 7
            loadout: 10
            pointsxwa: 15
            loadoutxwa: 8
            slots: [
                "Cannon"
                "Missile"
                "Device"
            ]
            slotsxwa: [
                "Cannon"
                "Crew"
                "Illicit"
                "Missile"
                "Modification"
                "Device"
            ]
        }
        {
            name: "Boba Fett (Separatist)"
            xws_name: "bobafett"
            id: 427
            xws_name: "bobafett"
            faction: "Separatist Alliance"
            unique: true
            skill: 3
            ship: "Firespray-class Patrol Craft"
            points: 7
            loadout: 16
            pointsxwa: 20
            loadoutxwa: 20
            keyword: ["Bounty Hunter"]
            slots: [
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Cannon"
                "Crew"
                "Illicit"
                "Missile"
                "Modification"
                "Device"
                "Title"
                "Talent"
                "Modification"
            ]
        }
        {
            name: "Zam Wesell"
            xws_name: "zamwesell"
            id: 428
            xws_name: "zamwesell"
            faction: "Separatist Alliance"
            unique: true
            skill: 5
            charge: 4
            ship: "Firespray-class Patrol Craft"
            points: 8
            loadout: 22
            pointsxwa: 19
            loadoutxwa: 12
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Cannon"
                "Crew"
                "Illicit"
                "Missile"
                "Modification"
                "Device"
                "Title"
                "Talent"
            ]
            applies_condition: ['''You'd Better Mean Business'''.canonicalize(),'You Should Thank Me'.canonicalize()]
        }
        {
            name: "Jango Fett"
            xws_name: "jangofett"
            id: 429
            xws_name: "jangofett"
            faction: "Separatist Alliance"
            skill: 6
            unique: true
            ship: "Firespray-class Patrol Craft"
            points: 8
            loadout: 22
            pointsxwa: 20
            loadoutxwa: 20
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Cannon"
                "Crew"
                "Illicit"
                "Missile"
                "Modification"
                "Device"
                "Title"
                "Talent"
            ]
        }
        {
            name: "Loyalist Volunteer"
            xws_name: "loyalistvolunteer"
            id: 430
            xws_name: "loyalistvolunteer"
            faction: "Galactic Republic"
            skill: 2
            ship: "Nimbus-class V-wing"
            points: 3
            loadout: 4
            pointsxwa: 7
            loadoutxwa: 1
            slots: [
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: "Shadow Squadron Escort"
            xws_name: "shadowsquadronescort"
            id: 431
            xws_name: "shadowsquadronescort"
            faction: "Galactic Republic"
            skill: 3
            ship: "Nimbus-class V-wing"
            points: 3
            loadout: 3
            pointsxwa: 9
            loadoutxwa: 10
            keyword: ["Clone"]
            slots: [
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Configuration"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Wilhuff Tarkin"
            xws_name: "wilhufftarkin"
            id: 432
            xws_name: "wilhufftarkin"
            faction: "Galactic Republic"
            skill: 3
            unique: true
            ship: "Nimbus-class V-wing"
            points: 3
            loadout: 8
            pointsxwa: 8
            loadoutxwa: 7
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: '"Klick"'
            id: 433
            xws_name: "klick"
            faction: "Galactic Republic"
            skill: 4
            unique: true
            ship: "Nimbus-class V-wing"
            points: 3
            loadout: 8
            pointsxwa: 10
            loadoutxwa: 14
            charge: 1
            recurring: 1
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Configuration"
                "Modification"
            ]
        }
        {
            name: '"Contrail"'
            id: 434
            xws_name: "contrail"
            faction: "Galactic Republic"
            skill: 5
            unique: true
            ship: "Nimbus-class V-wing"
            points: 3
            loadout: 11
            pointsxwa: 9
            loadoutxwa: 8
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Configuration"
                "Modification"
                "Talent"
            ]
        }
        {
            name: '"Odd Ball" (V-wing)'
            id: 435
            xws_name: "oddball"
            faction: "Galactic Republic"
            skill: 5
            unique: true
            ship: "Nimbus-class V-wing"
            points: 3
            loadout: 9
            pointsxwa: 9
            loadoutxwa: 16
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Torpedo"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Missile"
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Jedi General"
            xws_name: "jedigeneral"
            id: 436
            xws_name: "jedigeneral"
            faction: "Galactic Republic"
            skill: 4
            ship: "Eta-2 Actis"
            points: 5
            loadout: 4
            pointsxwa: 10
            loadoutxwa: 9
            force: 2
            keyword: ["Jedi", "Light Side"]
            slots: [
                "Force"
                "Cannon"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Force"
                "Astromech"
                "Cannon"
                "Modification"
            ]
        }
        {
            name: "Yoda"
            xws_name: "yoda"
            id: 437
            xws_name: "yoda"
            faction: "Galactic Republic"
            skill: 3
            unique: true
            ship: "Eta-2 Actis"
            points: 4
            loadout: 12
            pointsxwa: 10
            loadoutxwa: 8
            force: 3
            keyword: ["Jedi", "Light Side"]
            slots: [
                "Force"
                "Force"
                "Cannon"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Force"
                "Astromech"
                "Cannon"
                "Modification"
                "Force"
            ]
        }
        {
            name: "Shaak Ti"
            xws_name: "shaakti"
            id: 438
            xws_name: "shaakti"
            faction: "Galactic Republic"
            skill: 4
            unique: true
            ship: "Eta-2 Actis"
            points: 4
            loadout: 10
            pointsxwa: 12
            loadoutxwa: 14
            force: 2
            keyword: ["Jedi", "Light Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Cannon"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Force"
                "Astromech"
                "Cannon"
                "Modification"
                "Force"
            ]
        }
        {
            name: "Aayla Secura"
            xws_name: "aaylasecura"
            id: 439
            xws_name: "aaylasecura"
            faction: "Galactic Republic"
            skill: 5
            unique: true
            ship: "Eta-2 Actis"
            points: 5
            loadout: 15
            pointsxwa: 11
            loadoutxwa: 11
            force: 2
            keyword: ["Jedi", "Light Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Cannon"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Force"
                "Astromech"
                "Cannon"
                "Modification"
                "Force"
            ]
        }
        {
            name: "Obi-Wan Kenobi (Eta-2)"
            xws_name: "obiwankenobi"
            id: 440
            xws_name: "obi-wankenobi"
            faction: "Galactic Republic"
            skill: 5
            unique: true
            ship: "Eta-2 Actis"
            force: 3
            points: 5
            loadout: 15
            pointsxwa: 13
            loadoutxwa: 10
            keyword: ["Jedi", "Light Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Cannon"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: "Anakin Skywalker (Eta-2)"
            xws_name: "anakinskywalker"
            id: 441
            xws_name: "anakinskywalker"
            faction: "Galactic Republic"
            skill: 6
            unique: true
            force: 3
            ship: "Eta-2 Actis"
            points: 5
            loadout: 15
            pointsxwa: 14
            loadoutxwa: 9
            keyword: ["Jedi", "Light Side", "Dark Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Cannon"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: "Poe Dameron (HoH)"
            xwsaddon: 'swz68'
            xws_name: "poedameron"
            id: 442
            xws_name: "poedameron"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 6
            points: 6
            loadout: 19
            pointsxwa: 17
            loadoutxwa: 20
            charge: 2
            recurring: 1
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "Talent"
                "Talent"
                "Title"
                "HardpointShip"
            ]
        }
        {
            name: "Temmin Wexley (HoH)"
            xwsaddon: 'swz68'
            xws_name: "temminwexley"
            id: 443
            xws_name: "temminwexley"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 5
            loadout: 13
            pointsxwa: 12
            loadoutxwa: 11
            slots: [
                "Talent"
                "Tech"
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "Talent"
                "HardpointShip"
            ]
        }
        {
            name: "Merl Cobben"
            xws_name: "merlcobben"
            id: 444
            xws_name: "merlcobben"
            faction: "Resistance"
            unique: true
            skill: 1
            ship: "RZ-2 A-wing"
            points: 3
            loadout: 4
            pointsxwa: 8
            loadoutxwa: 4
            slots: [
                "Talent"
                "Missile"
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Tech"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Suralinda Javos"
            xws_name: "suralindajavos"
            id: 445
            xws_name: "suralindajavos"
            faction: "Resistance"
            unique: true
            skill: 3
            ship: "RZ-2 A-wing"
            points: 4
            loadout: 10
            pointsxwa: 9
            loadoutxwa: 8
            slots: [
                "Talent"
                "Talent"
                "Cannon"
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Tech"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Wrobie Tyce"
            xws_name: "wrobietyce"
            id: 446
            xws_name: "wrobietyce"
            faction: "Resistance"
            unique: true
            skill: 4
            ship: "RZ-2 A-wing"
            points: 3
            loadout: 4
            pointsxwa: 8
            loadoutxwa: 3
            slots: [
                "Talent"
                "Missile"
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Tech"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Seftin Vanik"
            xws_name: "seftinvanik"
            id: 447
            xws_name: "seftinvanik"
            faction: "Resistance"
            unique: true
            skill: 5
            ship: "RZ-2 A-wing"
            points: 4
            loadout: 12
            pointsxwa: 10
            loadoutxwa: 11
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Tech"
                "Modification"
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Nimi Chireen"
            xws_name: "nimichireen"
            id: 448
            xws_name: "nimichireen"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 2
            points: 4
            loadout: 9
            pointsxwa: 11
            loadoutxwa: 10
            slots: [
                "Astromech"
                "Tech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "HardpointShip"
            ]
        }
        {
            name: "C'ai Threnalli"
            xws_name: "caithrenalli"
            id: 449
            xws_name: "caithrenalli"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 4
            loadout: 7
            pointsxwa: 12
            loadoutxwa: 14
            slots: [
                "Talent"
                "Astromech"
                "Tech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "Talent"
                "HardpointShip"
            ]
        }
        {
            name: "Hera Syndulla (B-Wing)"
            xws_name: "herasyndulla"
            id: 450
            xws_name: "herasyndulla"
            unique: true
            faction: "Rebel Alliance"
            keyword: ["Spectre"]
            ship: "A/SF-01 B-wing"
            skill: 6
            points: 5
            loadout: 14
            pointsxwa: 10
            loadoutxwa: 12
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
                "Device"
                "Modification"
                "Configuration"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Hera Syndulla (A-Wing)"
            xws_name: "herasyndulla"
            id: 451
            xws_name: "herasyndulla"
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            keyword: ["Spectre"]
            skill: 6
            points: 4
            loadout: 5
            pointsxwa: 10
            loadoutxwa: 12
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Missile"
                "Configuration"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Wedge Antilles (A-Wing)"
            xws_name: "wedgeantilles"
            id: 452
            xws_name: "wedgeantilles"
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 4
            points: 3
            loadout: 5
            pointsxwa: 14
            loadoutxwa: 13
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Torpedo"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Sabine Wren (A-Wing)"
            xws_name: "sabinewren"
            id: 453
            xws_name: "sabinewren"
            unique: true
            faction: "Rebel Alliance"
            keyword: ["Mandalorian"]
            ship: "RZ-1 A-wing"
            skill: 3
            points: 3
            loadout: 7
            pointsxwa: 10
            loadoutxwa: 13
            slots: [
                "Talent"
                "Modification"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
                "Talent"
            ]
        }
        {
            name: "Vult Skerris"
            xws_name: "vultskerris"
            id: 454
            xws_name: "vultskerris"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            skill: 5
            charge: 1
            recurring: -1
            points: 7
            loadout: 13
            pointsxwa: 17
            loadoutxwa: 11
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Cannon"
                "Missile"
                "Modification"
                "Sensor"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Ciena Ree"
            xws_name: "cienaree"
            id: 455
            xws_name: "cienaree"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 6
            points: 5
            loadout: 14
            pointsxwa: 11
            loadoutxwa: 9
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Gideon Hask (TIE Interceptor)"
            xws_name: "gideonhask"
            id: 456
            xws_name: "gideonhask"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            loadout: 7
            pointsxwa: 9
            loadoutxwa: 16
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Talent"
                "Missile"
                "Modification"
                "Sensor"
            ]
        }
        {
            name: "Kanan Jarrus (HWK-290)"
            xws_name: "kananjarrus"
            id: 457
            xws_name: "kananjarrus"
            unique: true
            faction: "Scum and Villainy"
            keyword: ["Light Side", "Jedi"]
            ship: "HWK-290 Light Freighter"
            skill: 3
            force: 1
            points: 4
            loadout: 6
            pointsxwa: 19
            loadoutxwa: 20
            slots: [
                "Force"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Gunner"
                "Turret"
                "Modification"
                "Torpedo"
                "Title"
                "Force"
            ]
        }
        {
            name: "Leema Kai"
            xws_name: "leemakai"
            id: 458
            xws_name: "leemakai"
            unique: true
            faction: "Scum and Villainy"
            ship: "BTL-A4 Y-wing"
            skill: 5
            points: 3
            loadout: 8
            pointsxwa: 11
            loadoutxwa: 21
            slots: [
                "Tech"
                "Turret"
                "Torpedo"
                "Missile"
                "Astromech"
                "Device"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
                "Talent"
            ]
        }
        {
            name: "Arliz Hadrassian"
            xws_name: "arlizhadrassian"
            id: 459
            xws_name: "arlizhadrassian"
            unique: true
            faction: "Scum and Villainy"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 3
            loadout: 10
            pointsxwa: 10
            loadoutxwa: 14
            slots: [
                "Tech"
                "Turret"
                "Torpedo"
                "Missile"
                "Astromech"
                "Device"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
                "Talent"
            ]
        }
        {
            name: "Padric"
            xws_name: "padric"
            id: 460
            xws_name: "padric"
            unique: true
            faction: "Scum and Villainy"
            ship: "BTL-A4 Y-wing"
            skill: 3
            points: 4
            loadout: 10
            pointsxwa: 8
            loadoutxwa: 8
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Torpedo"
                "Missile"
                "Astromech"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
                "Talent"
            ]
        }
        {
            name: "Derek Klivian"
            xws_name: "derekklivian"
            id: 461
            xws_name: "derekklivian"
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 3
            points: 3
            loadout: 6
            pointsxwa: 9
            loadoutxwa: 12
            slots: [
                "Talent"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Missile"
                "Configuration"
            ]
        }
        {
            name: "Shara Bey (A-Wing)"
            xws_name: "sharabey"
            id: 462
            xws_name: "sharabey"
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 4
            points: 4
            loadout: 7
            pointsxwa: 12
            loadoutxwa: 13
            slots: [
                "Talent"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Astromech"
                "Gunner"
                "Gunner"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Ahsoka Tano (A-Wing)"
            xws_name: "ahsokatano"
            id: 463
            xws_name: "ahsokatano"
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            keyword: ["Light Side"]
            skill: 5
            force: 3
            points: 4
            loadout: 7
            pointsxwa: 10
            loadoutxwa: 8
            slots: [
                "Force"
                "Force"
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
            ]
        }
        {
            name: "Netrem Pollard"
            xws_name: "netrempollard"
            id: 464
            xws_name: "netrempollard"
            unique: true
            faction: "Rebel Alliance"
            ship: "A/SF-01 B-wing"
            skill: 3
            points: 4
            loadout: 10
            pointsxwa: 10
            loadoutxwa: 10
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Missile"
                "Device"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Missile"
                "Modification"
                "Sensor"
                "Torpedo"
                "Configuration"
            ]
        }
        {
            name: "Commandant Goran"
            xws_name: "commandantgoran"
            id: 465
            xws_name: "commandantgoran"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            loadout: 8
            pointsxwa: 10
            loadoutxwa: 6
            slots: [
                "Talent"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Nash Windrider"
            xws_name: "nashwindrider"
            id: 466
            xws_name: "nashwindrider"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 2
            charge: 1
            recurring: 1
            points: 4
            loadout: 6
            pointsxwa: 9
            loadoutxwa: 6
            slots: [
                "Missile"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Lieutenant Lorrir"
            xws_name: "lieutenantlorrir"
            id: 467
            xws_name: "lieutenantlorrir"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 3
            points: 3
            loadout: 6
            pointsxwa: 9
            loadoutxwa: 7
            slots: [
                "Talent"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Configuration"
            ]
        }
        {
            name: "Vult Skerris (TIE Interceptor)"
            xws_name: "vultskerris"
            id: 468
            xws_name: "vultskerris"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 5
            charge: 1
            recurring: -1
            points: 4
            loadout: 9
            pointsxwa: 17
            loadoutxwa: 11
            slots: [
                "Talent"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Cannon"
                "Missile"
                "Modification"
                "Sensor"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Darth Vader (TIE Defender)"
            xws_name: "darthvader"
            id: 469
            xws_name: "darthvader"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            keyword: ["Dark Side", "Sith"]
            skill: 6
            force: 3
            points: 9
            loadout: 10
            pointsxwa: 15
            loadoutxwa: 7
            slots: [
                "Force"
                "Tech"
                "Cannon"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Missile"
                "Sensor"
                "Modification"
                "Force"
                "Force"
            ]
        }
        {
            name: "Captain Dobbs"
            xws_name: "captaindobbs"
            id: 470
            xws_name: "captaindobbs"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            skill: 3
            points: 7
            loadout: 15
            pointsxwa: 16
            loadoutxwa: 10
            slots: [
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Cannon"
                "Missile"
                "Modification"
                "Sensor"
                "Configuration"
            ]
        }
        {
            name: "Jinata Security Officer"
            xws_name: "jinatasecurityofficer"
            id: 471
            xws_name: "jinatasecurityofficer"
            faction: "Scum and Villainy"
            ship: "BTL-A4 Y-wing"
            skill: 2
            points: 4
            loadout: 5
            pointsxwa: 8
            loadoutxwa: 7
            slots: [
                "Turret"
                "Torpedo"
                "Missile"
                "Device"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
            ]
        }
        {
            name: "Amaxine Warrior"
            xws_name: "amaxinewarrior"
            id: 472
            xws_name: "amaxinewarrior"
            faction: "Scum and Villainy"
            ship: "BTL-A4 Y-wing"
            skill: 3
            points: 4
            loadout: 6
            pointsxwa: 10
            loadoutxwa: 16
            slots: [
                "Turret"
                "Torpedo"
                "Missile"
                "Astromech"
                "Device"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
                "Talent"
            ]
        }
        {
            name: "Gamut Key"
            xws_name: "gamutkey"
            id: 473
            xws_name: "gamutkey"
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290 Light Freighter"
            skill: 3
            charge: 2
            recurring: 1
            points: 4
            loadout: 8
            pointsxwa: 10
            loadoutxwa: 17
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Modification"
                "Device"
                "Talent"
            ]
        }
        {
            name: "Tápusk"
            xws: "tapusk"
            xws_name: "tapusk"
            id: 474
            xws_name: "tápusk"
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290 Light Freighter"
            skill: 5
            charge: 2
            recurring: 1
            points: 4
            loadout: 10
            pointsxwa: 10
            loadoutxwa: 13
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Illicit"
                "Modification"
                "Device"
                "Talent"
            ]
        }
        {
            name: "Colicoid Destroyer"
            xws_name: "colicoiddestroyer"
            id: 475
            xws_name: "colicoiddestroyer"
            faction: "Separatist Alliance"
            ship: "Trident-class Assault Ship"
            skill: 8
            engagement: 0
            points: 11
            loadout: 45
            pointsxwa: 11
            loadoutxwa: 45
            slots: [
                "Command"
                "Torpedo"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Cargo"
                "Title"
            ]
            slotsxwa: [
                "Command"
                "Torpedo"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Cargo"
                "Title"
            ]
        }
        {
            name: "Lawless Pirates"
            xws_name: "lawlesspirates"
            id: 476
            xws_name: "lawlesspirates"
            faction: "Scum and Villainy"
            ship: "Trident-class Assault Ship"
            skill: 8
            engagement: 0
            points: 11
            loadout: 45
            pointsxwa: 11
            loadoutxwa: 45
            slots: [
                "Command"
                "Torpedo"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Cargo"
                "Title"
            ]
            slotsxwa: [
                "Command"
                "Torpedo"
                "Hardpoint"
                "Hardpoint"
                "Crew"
                "Crew"
                "Gunner"
                "Team"
                "Cargo"
                "Title"
            ]
        }
        {
            name: "Zorii Bliss"
            xws_name: "zoriibliss"
            id: 477
            xws_name: "zoriibliss"
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 5
            points: 4
            loadout: 9
            pointsxwa: 9
            loadoutxwa: 10
            charge: 1
            recurring: 1
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Illicit"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Turret"
                "Modification"
                "Modification"
                "Tech"
                "Device"
                "Talent"
                "Illicit"
            ]
        }
        {
            name: "Teza Nasz"
            xws_name: "tezanasz"
            id: 478
            xws_name: "tezanasz"
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 4
            points: 4
            loadout: 12
            pointsxwa: 8
            loadoutxwa: 10
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Turret"
                "Modification"
                "Modification"
                "Tech"
                "Device"
                "Talent"
            ]
        }
        {
            name: "Wilsa Teshlo"
            xws_name: "wilsateshlo"
            id: 479
            xws_name: "wilsateshlo"
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 4
            points: 4
            loadout: 12
            pointsxwa: 8
            loadoutxwa: 8
            slots: [
                "Tech"
                "Turret"
                "Missile"
                "Astromech"
                "Device"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Turret"
                "Modification"
                "Modification"
                "Tech"
                "Device"
                "Talent"
            ]
        }
        {
            name: "Shasa Zaro"
            xws_name: "shasazaro"
            id: 480
            xws_name: "shasazaro"
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 3
            points: 3
            loadout: 9
            pointsxwa: 9
            loadoutxwa: 14
            slots: [
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Turret"
                "Modification"
                "Modification"
                "Tech"
                "Device"
                "Talent"
            ]
        }
        {
            name: "Lega Fossang"
            xws_name: "legafossang"
            id: 481
            xws_name: "legafossang"
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 3
            points: 3
            loadout: 7
            pointsxwa: 8
            loadoutxwa: 9
            slots: [
                "Tech"
                "Turret"
                "Missile"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Turret"
                "Modification"
                "Modification"
                "Tech"
                "Device"
            ]
        }
        {
            name: "Aftab Ackbar"
            xws_name: "aftabackbar"
            id: 482
            xws_name: "aftabackbar"
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 2
            points: 4
            loadout: 13
            pointsxwa: 7
            loadoutxwa: 8
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Turret"
                "Modification"
                "Modification"
                "Tech"
                "Device"
            ]
        }
        {
            name: "Corus Kapellim"
            xws_name: "coruskapellim"
            id: 483
            xws_name: "coruskapellim"
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 1
            points: 3
            loadout: 8
            pointsxwa: 9
            loadoutxwa: 17
            slots: [
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Illicit"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Turret"
                "Modification"
                "Modification"
                "Tech"
                "Device"
                "Illicit"
            ]
        }
        {
            name: "C'ai Threnalli (Y-Wing)"
            xws_name: "caithrenalli"
            id: 484
            xws_name: "caithrenalli"
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 2
            points: 4
            loadout: 10
            pointsxwa: 12
            loadoutxwa: 14
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "New Republic Patrol"
            xws_name: "newrepublicpatrol"
            id: 485
            xws_name: "newrepublicpatrol"
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 3
            points: 4
            loadout: 7
            pointsxwa: 7
            loadoutxwa: 5
            slots: [
                "Talent"
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Turret"
                "Modification"
                "Modification"
                "Tech"
                "Device"
            ]
        }
        {
            name: "Kijimi Spice Runner"
            xws_name: "kijimispicerunner"
            id: 486
            xws_name: "kijimispicerunner"
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 2
            points: 4
            loadout: 4
            pointsxwa: 8
            loadoutxwa: 10
            slots: [
                "Tech"
                "Turret"
                "Astromech"
                "Device"
                "Modification"
                "Illicit"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Turret"
                "Modification"
                "Modification"
                "Tech"
                "Device"
                "Illicit"
            ]
        }
        {
            name: "Kylo Ren (TIE Whisper)"
            xws_name: "kyloren"
            id: 487
            xws_name: "kyloren"
            unique: true
            faction: "First Order"
            ship: "TIE/wi Whisper Modified Interceptor"
            keyword: ["Dark Side", "Light Side"]
            skill: 5
            force: 3
            points: 5
            loadout: 14
            pointsxwa: 16
            loadoutxwa: 10
            slots: [
                "Force"
                "Force"
                "Talent"
                "Missile"
                "Tech"
                "Tech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Tech"
                "Modification"
                "Missile"
                "Torpedo"
                "Configuration"
                "Force"
            ]
        }
        {
            name: '"Wrath"'
            id: 488
            xws_name: "wrath"
            unique: true
            faction: "First Order"
            ship: "TIE/wi Whisper Modified Interceptor"
            skill: 5
            points: 5
            loadout: 15
            pointsxwa: 13
            loadoutxwa: 17
            slots: [
                "Talent"
                "Talent"
                "Cannon"
                "Tech"
                "Tech"
                "Configuration"
            ]
            slotsxwa: [
                "Gunner"
                "Tech"
                "Tech"
                "Modification"
                "Configuration"
                "Talent"
                "Cannon"
            ]
        }
        {
            name: '"Nightfall"'
            id: 489
            xws_name: "nightfall"
            unique: true
            faction: "First Order"
            ship: "TIE/wi Whisper Modified Interceptor"
            skill: 4
            points: 4
            loadout: 10
            pointsxwa: 11
            loadoutxwa: 11
            slots: [
                "Talent"
                "Missile"
                "Tech"
                "Tech"
                "Configuration"
            ]
            slotsxwa: [
                "Gunner"
                "Tech"
                "Tech"
                "Modification"
                "Missile"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: '"Whirlwind"'
            id: 490
            xws_name: "whirlwind"
            unique: true
            faction: "First Order"
            ship: "TIE/wi Whisper Modified Interceptor"
            skill: 3
            points: 4
            loadout: 12
            pointsxwa: 11
            loadoutxwa: 10
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Tech"
                "Tech"
                "Configuration"
            ]
            slotsxwa: [
                "Gunner"
                "Tech"
                "Tech"
                "Modification"
                "Missile"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "709th Legion Ace"
            xws_name: "709thlegionace"
            id: 491
            xws_name: "709thlegionace"
            faction: "First Order"
            ship: "TIE/wi Whisper Modified Interceptor"
            skill: 4
            points: 4
            loadout: 10
            pointsxwa: 10
            loadoutxwa: 5
            slots: [
                "Talent"
                "Missile"
                "Tech"
                "Tech"
                "Configuration"
            ]
            slotsxwa: [
                "Gunner"
                "Tech"
                "Tech"
                "Modification"
                "Missile"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Red Fury Zealot"
            xws_name: "redfuryzealot"
            id: 492
            xws_name: "redfuryzealot"
            faction: "First Order"
            ship: "TIE/wi Whisper Modified Interceptor"
            skill: 2
            points: 4
            loadout: 3
            pointsxwa: 8
            loadoutxwa: 5
            slots: [
                "Talent"
                "Missile"
                "Tech"
                "Tech"
                "Configuration"
            ]
            slotsxwa: [
                "Gunner"
                "Tech"
                "Tech"
                "Modification"
                "Missile"
            ]
        }
        {
            name: '"Breach"'
            id: 493
            xws_name: "breach"
            unique: true
            faction: "First Order"
            ship: "TIE/se Bomber"
            skill: 5
            points: 5
            loadout: 18
            pointsxwa: 11
            loadoutxwa: 19
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Gunner"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Modification"
                "Tech"
                "Device"
                "Device"
                "Missile"
                "Talent"
                "Torpedo"
            ]
        }
        {
            name: '"Scorch" (TIE/Se Bomber)'
            id: 494
            xws_name: "scorch"
            unique: true
            faction: "First Order"
            ship: "TIE/se Bomber"
            skill: 4
            points: 3
            loadout: 7
            pointsxwa: 10
            loadoutxwa: 14
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Tech"
                "Modification"
                "Talent"
                "Modification"
            ]
        }
        {
            name: '"Dread"'
            id: 495
            xws_name: "dread"
            unique: true
            faction: "First Order"
            ship: "TIE/se Bomber"
            skill: 3
            points: 3
            loadout: 8
            pointsxwa: 9
            loadoutxwa: 12
            slots: [
                "Tech"
                "Torpedo"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Modification"
                "Tech"
                "Device"
                "Device"
                "Missile"
                "Talent"
            ]
        }
        {
            name: '"Grudge"'
            id: 496
            xws_name: "grudge"
            unique: true
            faction: "First Order"
            ship: "TIE/se Bomber"
            skill: 2
            points: 4
            loadout: 15
            pointsxwa: 10
            loadoutxwa: 15
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Modification"
                "Tech"
                "Device"
                "Device"
                "Missile"
            ]
        }
        {
            name: "First Order Cadet"
            xws_name: "firstordercadet"
            id: 497
            xws_name: "firstordercadet"
            faction: "First Order"
            ship: "TIE/se Bomber"
            skill: 3
            points: 4
            loadout: 7
            pointsxwa: 11
            loadoutxwa: 19
            slots: [
                "Tech"
                "Torpedo"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Modification"
                "Tech"
                "Device"
                "Device"
                "Missile"
                "Torpedo"
            ]
        }
        {
            name: "Sienar-Jaemus Test Pilot"
            xws_name: "sienarjaemustestpilot"
            id: 498
            xws_name: "sienar-jaemustestpilot"
            faction: "First Order"
            ship: "TIE/se Bomber"
            skill: 2
            points: 4
            loadout: 8
            pointsxwa: 9
            loadoutxwa: 10
            slots: [
                "Tech"
                "Tech"
                "Missile"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Modification"
                "Tech"
                "Device"
                "Device"
                "Missile"
            ]
        }
        {
            name: "Bodica Venj"
            xws_name: "bodicavenj"
            id: 499
            xws_name: "bodicavenj"
            faction: "Rebel Alliance"
            unique: true
            ship: "Fang Fighter"
            skill: 4
            points: 4
            loadout: 7
            pointsxwa: 12
            loadoutxwa: 13
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
                "Torpedo"
                "Talent"
            ]
        }
        {
            name: "Dirk Ullodin"
            xws_name: "dirkullodin"
            id: 500
            xws_name: "dirkullodin"
            faction: "Rebel Alliance"
            unique: true
            ship: "Fang Fighter"
            skill: 3
            points: 4
            loadout: 9
            pointsxwa: 11
            loadoutxwa: 13
            keyword: ["Mandalorian"]
            slots: [
                "Torpedo"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Fenn Rau (Rebel Fang)"
            xws_name: "fennrau"
            id: 501
            xws_name: "fennrau-fangfighter"
            faction: "Rebel Alliance"
            xwsaddon: "fangfighter"
            unique: true
            ship: "Fang Fighter"
            skill: 6
            points: 5
            loadout: 9
            pointsxwa: 14
            loadoutxwa: 9
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Talent"
                "Torpedo"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
                "Torpedo"
                "Talent"
            ]
        }
        {
            name: "Clan Wren Volunteer"
            xws_name: "clanwrenvolunteer"
            id: 502
            xws_name: "clanwrenvolunteer"
            faction: "Rebel Alliance"
            ship: "Fang Fighter"
            skill: 3
            points: 4
            loadout: 12
            pointsxwa: 10
            loadoutxwa: 10
            max_per_squad: 2
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Torpedo"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Moff Gideon"
            xws_name: "moffgideon"
            id: 503
            xws_name: "moffgideon"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 4
            charge: 2
            recurring: 1
            points: 4
            loadout: 8
            pointsxwa: 9
            loadoutxwa: 12
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Illicit"
                "Talent"
            ]
        }
        {
            name: "ISB Jingoist"
            xws_name: "isbjingoist"
            id: 504
            xws_name: "isbjingoist"
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 4
            points: 3
            loadout: 5
            pointsxwa: 8
            loadoutxwa: 8
            max_per_squad: 2
            slots: [
                "Talent"
                "Illicit"
            ]
            slotsxwa: [
                "Modification"
                "Illicit"
            ]
        }
        {
            name: "Mandalorian Royal Guard"
            xws_name: "mandalorianroyalguard"
            id: 505
            xws_name: "mandalorianroyalguard"
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 4
            loadout: 7
            pointsxwa: 12
            loadoutxwa: 15
            max_per_squad: 2
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Missile"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Bo-Katan Kryze"
            xws_name: "bokatankryze"
            id: 506
            xws_name: "bo-katankryze"
            skip: true
        }
        {
            name: "Pre Vizsla"
            xws_name: "previzsla"
            id: 507
            xws_name: "previzsla"
            faction: "Separatist Alliance"
            ship: "Gauntlet Fighter"
            skill: 3
            points: 6
            loadout: 14
            pointsxwa: 16
            loadoutxwa: 16
            charge: 2
            recurring: 1
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Device"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Death Watch Warrior"
            xws_name: "deathwatchwarrior"
            id: 508
            xws_name: "deathwatchwarrior"
            faction: "Separatist Alliance"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 7
            loadout: 10
            pointsxwa: 15
            loadoutxwa: 14
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "Bo-Katan Kryze"
            xws_name: "bokatankryze"
            id: 509
            xws_name: "bo-katankryze-separatistalliance"
            faction: "Separatist Alliance"
            xwsaddon: "separatistalliance"
            ship: "Gauntlet Fighter"
            skill: 4
            points: 6
            loadout: 12
            pointsxwa: 16
            loadoutxwa: 20
            charge: 1
            recurring: 1
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Device"
                "Configuration"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Bo-Katan Kryze (Republic)"
            xws: "bokatankryze"
            xws_name: "bokatankryze"
            id: 510
            xws_name: "bo-katankryze"
            faction: "Galactic Republic"
            ship: "Gauntlet Fighter"
            skill: 4
            points: 6
            loadout: 12
            pointsxwa: 16
            loadoutxwa: 20
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Torpedo"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Configuration"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Device"
                "Configuration"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Nite Owl Liberator"
            xws_name: "niteowlliberator"
            id: 511
            xws_name: "niteowlliberator"
            faction: "Galactic Republic"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 7
            loadout: 12
            pointsxwa: 15
            loadoutxwa: 20
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "Maul"
            xws_name: "maul"
            id: 512
            xws_name: "maul"
            faction: "Scum and Villainy"
            ship: "Gauntlet Fighter"
            skill: 5
            points: 8
            loadout: 15
            pointsxwa: 18
            loadoutxwa: 18
            unique: true
            force: 3
            keyword: ["Dark Side", "Sith"]
            slots: [
                "Force"
                "Talent"
                "Crew"
                "Gunner"
                "Missile"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Device"
                "Configuration"
                "Force"
                "Force"
                "Title"
            ]
        }
        {
            name: "Shadow Collective Operator"
            xws_name: "shadowcollectiveoperator"
            id: 513
            xws_name: "shadowcollectiveoperator"
            faction: "Scum and Villainy"
            ship: "Gauntlet Fighter"
            skill: 1
            points: 7
            loadout: 10
            pointsxwa: 15
            loadoutxwa: 16
            keyword: ["Mandalorian"]
            slots: [
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Illicit"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "Rook Kast"
            xws_name: "rookkast"
            id: 514
            xws_name: "rookkast"
            faction: "Scum and Villainy"
            ship: "Gauntlet Fighter"
            skill: 3
            points: 7
            loadout: 14
            pointsxwa: 17
            loadoutxwa: 17
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Modification"
                "Illicit"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Device"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Captain Hark"
            xws_name: "captainhark"
            id: 515
            xws_name: "captainhark"
            faction: "Galactic Empire"
            ship: "Gauntlet Fighter"
            skill: 3
            points: 6
            loadout: 14
            pointsxwa: 16
            loadoutxwa: 20
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Device"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Imperial Super Commando"
            xws_name: "imperialsupercommando"
            id: 516
            xws_name: "imperialsupercommando"
            faction: "Galactic Empire"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 7
            loadout: 10
            pointsxwa: 15
            loadoutxwa: 20
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Illicit"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Device"
                "Configuration"
            ]
        }
        {
            name: "Gar Saxon"
            xws_name: "garsaxon"
            id: 517
            xws_name: "garsaxon"
            faction: "Galactic Empire"
            ship: "Gauntlet Fighter"
            skill: 3
            points: 7
            loadout: 18
            pointsxwa: 17
            loadoutxwa: 20
            charge: 2
            recurring: 1
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Torpedo"
                "Device"
                "Illicit"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Device"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Mandalorian Resistance Pilot"
            xws_name: "mandalorianresistancepilot"
            id: 518
            xws_name: "mandalorianresistancepilot"
            faction: "Rebel Alliance"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 7
            loadout: 10
            pointsxwa: 15
            loadoutxwa: 20
            unique: true
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Device"
                "Configuration"
                "Title"
                "Talent"
            ]
        }
        {
            name: '"Chopper" (Gauntlet Fighter)'
            id: 519
            xws_name: "chopper"
            xwsname: "chopper-gauntletfighter"
            faction: "Rebel Alliance"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 6
            loadout: 10
            pointsxwa: 16
            loadoutxwa: 12
            keyword: ["Droid","Spectre"]
            unique: true
            slots: [
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Configuration"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Sensor"
                "Gunner"
                "Turret"
                "Modification"
                "Torpedo"
                "Title"
            ]
        }
        {
            name: "Ezra Bridger (Gauntlet Fighter)"
            xws_name: "ezrabridger"
            id: 520
            xws_name: "ezrabridger"
            faction: "Rebel Alliance"
            ship: "Gauntlet Fighter"
            skill: 3
            force: 1
            points: 6
            loadout: 12
            pointsxwa: 9
            loadoutxwa: 6
            keyword: ["Light Side","Spectre"]
            unique: true
            slots: [
                "Force"
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
                "Configuration"
            ]
            slotsxwa: [
                "Crew"
                "Modification"
                "Turret"
                "Title"
                "Force"
            ]
        }
        {
            name: "Q9-0"
            xws_name: "q90"
            id: 521
            xws_name: "q9-0"
            faction: "Scum and Villainy"
            ship: "ST-70 Assault Ship"
            skill: 5
            points: 6
            loadout: 16
            pointsxwa: 15
            loadoutxwa: 10
            unique: true
            keyword: ["Droid"]
            slots: [
                "Crew"
                "Gunner"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Talent"
                "Title"
            ]
        }
        {
            name: "The Mandalorian"
            xws_name: "themandalorian"
            id: 522
            xws_name: "themandalorian"
            faction: "Scum and Villainy"
            ship: "ST-70 Assault Ship"
            skill: 5
            points: 6
            loadout: 10
            pointsxwa: 16
            loadoutxwa: 16
            unique: true
            keyword: ["Bounty Hunter", "Mandalorian"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Guild Bounty Hunter"
            xws_name: "guildbountyhunter"
            id: 523
            xws_name: "guildbountyhunter"
            faction: "Scum and Villainy"
            ship: "ST-70 Assault Ship"
            skill: 3
            points: 6
            loadout: 14
            pointsxwa: 14
            loadoutxwa: 13
            max_per_squad: 2
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Crew"
                "Gunner"
                "Illicit"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Outer Rim Enforcer"
            xws_name: "outerrimenforcer"
            id: 524
            xws_name: "outerrimenforcer"
            faction: "Scum and Villainy"
            ship: "ST-70 Assault Ship"
            skill: 2
            points: 6
            loadout: 10
            pointsxwa: 13
            loadoutxwa: 11
            slots: [
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
            ]
        }
        {
            name: "Plo Koon (Delta-7b)"
            xws_name: "plokoon"
            id: 525
            xws_name: "plokoon"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 5
            force: 2
            points: 7
            loadout: 19
            pointsxwa: 12
            loadoutxwa: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Talent"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: "Saesee Tiin (Delta-7b)"
            xws_name: "saeseetiin"
            id: 526
            xws_name: "saeseetiin"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 2
            points: 6
            loadout: 9
            pointsxwa: 10
            loadoutxwa: 7
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: "Mace Windu (Delta-7b)"
            xws_name: "macewindu"
            id: 527
            xws_name: "macewindu"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 3
            points: 5
            loadout: 7
            pointsxwa: 11
            loadoutxwa: 7
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: "Anakin Skywalker (Delta-7b)"
            xws_name: "anakinskywalker"
            id: 528
            xws_name: "anakinskywalker"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 6
            force: 3
            points: 7
            loadout: 15
            pointsxwa: 14
            loadoutxwa: 9
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: "Luminara Unduli (Delta-7b)"
            xws_name: "luminaraunduli"
            id: 529
            xws_name: "luminaraunduli"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 2
            points: 6
            loadout: 7
            pointsxwa: 10
            loadoutxwa: 7
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: "Barriss Offee (Delta-7b)"
            xws_name: "barrissoffee"
            id: 530
            xws_name: "barrissoffee"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 1
            points: 5
            loadout: 10
            pointsxwa: 10
            loadoutxwa: 10
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
            ]
        }
        {
            name: "Ahsoka Tano (Delta-7b)"
            xws_name: "ahsokatano"
            id: 531
            xws_name: "ahsokatano"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 3
            force: 2
            points: 5
            loadout: 10
            pointsxwa: 10
            loadoutxwa: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
            ]
        }
        {
            name: "Jedi Knight (Delta-7b)"
            xws_name: "jediknight"
            id: 532
            xws_name: "jediknight"
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 3
            force: 1
            points: 6
            loadout: 8
            pointsxwa: 9
            loadoutxwa: 6
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
            ]
        }
        {
            name: "Obi-Wan Kenobi (Delta-7b)"
            xws_name: "obiwankenobi"
            id: 533
            xws_name: "obi-wankenobi"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 5
            force: 3
            points: 7
            loadout: 15
            pointsxwa: 13
            loadoutxwa: 10
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: "Cad Bane"
            xws_name: "cadbane"
            id: 534
            xws_name: "cadbane"
            unique: true
            faction: "Scum and Villainy"
            ship: "Rogue-class Starfighter"
            skill: 4
            charge: 2
            recurring: 1
            points: 4
            loadout: 13
            pointsxwa: 12
            loadoutxwa: 20
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Illicit"
                "Modification"
                "Modification"
                "Missile"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Viktor Hel (Rogue)"
            xws_name: "viktorhel"
            id: 535
            xws_name: "viktorhel"
            unique: true
            faction: "Scum and Villainy"
            ship: "Rogue-class Starfighter"
            skill: 4
            points: 4
            loadout: 11
            pointsxwa: 11
            loadoutxwa: 14
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Missile"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Missile"
                "Talent"
            ]
        }
        {
            name: "Nom Lumb (Rogue)"
            xws_name: "nomlumb"
            id: 536
            xws_name: "nomlumb"
            unique: true
            faction: "Scum and Villainy"
            ship: "Rogue-class Starfighter"
            skill: 1
            points: 4
            loadout: 11
            pointsxwa: 11
            loadoutxwa: 13
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Missile"
                "Illicit"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Cannon"
                "Gunner"
                "Illicit"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Outer Rim Hunter"
            xws_name: "outerrimhunter"
            id: 537
            xws_name: "outerrimhunter"
            faction: "Scum and Villainy"
            ship: "Rogue-class Starfighter"
            skill: 3
            points: 4
            loadout: 5
            pointsxwa: 9
            loadoutxwa: 8
            slots: [
                "Cannon"
                "Cannon"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Illicit"
                "Modification"
                "Modification"
                "Cannon"
                "Cannon"
            ]
        }
        {
            name: "Cad Bane (Separatist)"
            xwsaddon: "separatistalliance"
            xws_name: "cadbane-separatistalliance"
            id: 538
            xws_name: "cadbane-separatistalliance"
            unique: true
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 4
            charge: 1
            recurring: 1
            points: 4
            loadout: 13
            pointsxwa: 11
            loadoutxwa: 11
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Illicit"
                "Modification"
                "Modification"
                "Talent"
                "Title"
                "Missile"
            ]
        }
        {
            name: "IG-101"
            xws_name: "ig101"
            id: 539
            xws_name: "ig-101"
            unique: true
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 4
            points: 4
            loadout: 11
            pointsxwa: 9
            loadoutxwa: 8
            chassis: "Networked Calculations"
            keyword: ["Droid"]
            slots: [
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "IG-102"
            xws_name: "ig102"
            id: 540
            xws_name: "ig-102"
            unique: true
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 4
            points: 4
            loadout: 11
            pointsxwa: 9
            loadoutxwa: 7
            chassis: "Networked Calculations"
            keyword: ["Droid"]
            slots: [
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "IG-111"
            xws_name: "ig111"
            id: 541
            xws_name: "ig-111"
            unique: true
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 1
            points: 4
            loadout: 12
            pointsxwa: 10
            loadoutxwa: 9
            chassis: "Networked Calculations"
            keyword: ["Droid"]
            slots: [
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "MagnaGuard Protector"
            xws_name: "magnaguardprotector"
            id: 542
            xws_name: "magnaguardprotector"
            max_per_squad: 2
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 4
            points: 4
            loadout: 10
            pointsxwa: 10
            loadoutxwa: 8
            chassis: "Networked Calculations"
            keyword: ["Droid"]
            slots: [
                "Cannon"
                "Cannon"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
                "Talent"
            ]
            applies_condition: 'Guarded'.canonicalize()
        }
        {
            name: "MagnaGuard Executioner"
            xws_name: "magnaguardexecutioner"
            id: 543
            xws_name: "magnaguardexecutioner"
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 3
            points: 4
            loadout: 6
            pointsxwa: 9
            loadoutxwa: 9
            chassis: "Networked Calculations"
            keyword: ["Droid"]
            slots: [
                "Cannon"
                "Cannon"
                "Modification"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
        }
        {
            name: '"Knack"'
            id: 544
            xws_name: "knack"
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 5
            points: 3
            loadout: 7
            pointsxwa: 8
            loadoutxwa: 11
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Sensor"
                "Talent"
            ]
        }
        {
            name: '"Slider"'
            id: 545
            xws_name: "slider"
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 4
            charge: 2
            recurring: 1
            points: 2
            loadout: 3
            pointsxwa: 7
            loadoutxwa: 5
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Modification"
                "Modification"
                "VersatileShip"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Sensor"
            ]
        }
        {
            name: '"Hawk" (Z-95)'
            id: 546
            xws_name: "hawk"
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 4
            points: 3
            loadout: 8
            pointsxwa: 12
            loadoutxwa: 9
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "Modification"
                "VersatileShip"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Modification"
                "Missile"
                "Missile"
                "Talent"
            ]
        }
        {
            name: '"Warthog" (Z-95)'
            id: 547
            xws_name: "warthog"
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 3
            points: 3
            loadout: 10
            pointsxwa: 13
            loadoutxwa: 16
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Modification"
                "Missile"
                "Missile"
                "Talent"
            ]
        }
        {
            name: '"Boost"'
            id: 548
            xws_name: "boost"
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 3
            points: 2
            loadout: 3
            pointsxwa: 8
            loadoutxwa: 10
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Sensor"
            ]
        }
        {
            name: '"Drift"'
            id: 549
            xws_name: "drift"
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 3
            points: 3
            loadout: 5
            pointsxwa: 8
            loadoutxwa: 12
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Sensor"
            ]
        }
        {
            name: '"Stub"'
            id: 550
            xws_name: "stub"
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 3
            points: 3
            loadout: 8
            pointsxwa: 8
            loadoutxwa: 10
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Sensor"
            ]
        }
        {
            name: '"Killer"'
            id: 551
            xws_name: "killer"
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 2
            points: 3
            loadout: 11
            pointsxwa: 7
            loadoutxwa: 5
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Cannon"
                "Modification"
                "VersatileShip"
            ]
            slotsxwa: [
                "Modification"
                "Sensor"
            ]
        }
        {
            name: "Reaper Squadron Scout"
            xws_name: "reapersquadronscout"
            id: 552
            xws_name: "reapersquadronscout"
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 3
            points: 3
            loadout: 2
            pointsxwa: 8
            loadoutxwa: 11
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "VersatileShip"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Sensor"
            ]
        }
        {
            name: "7th Sky Corps Pilot"
            xws_name: "7thskycorpspilot"
            id: 553
            xws_name: "7thskycorpspilot"
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 2
            points: 3
            loadout: 3
            pointsxwa: 6
            loadoutxwa: 3
            keyword: ["Clone"]
            slots: [
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
            slotsxwa: [
                "Modification"
                "Sensor"
            ]
        }
        {
            name: "Garven Dreis (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            xws_name: "garvendreis-battleofyavin"
            id: 554
            xws_name: "garvendreis-battleofyavin"
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 4
            points: 4
            pointsxwa: 12
            loadoutxwa: 0
            chassis: "Hope"
            upgrades: [
                "Adv. Proton Torpedoes"
                "R5-K6 (BoY)"
            ]
        }
        {
            name: "Luke Skywalker (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            xws_name: "lukeskywalker-battleofyavin"
            id: 555
            xws_name: "lukeskywalker-battleofyavin"
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            points: 5
            pointsxwa: 16
            loadoutxwa: 0
            force: 2
            chassis: "Hope"
            upgrades: [
                "Instinctive Aim"
                "Attack Speed (BoY)"
                "Proton Torpedoes"
                "R2-D2 (BoY)"
            ]
        }
        {
            name: "Jek Porkins (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            xws_name: "jekporkins-battleofyavin"
            id: 556
            xws_name: "jekporkins-battleofyavin"
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 4
            points: 4
            pointsxwa: 12
            loadoutxwa: 0
            chassis: "Hope"
            upgrades: [
                "Adv. Proton Torpedoes"
                "R5-D8 (BoY)"
                "Unstable Sublight Engines (BoY)"
            ]
        }
        {
            name: "Biggs Darklighter (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            xws_name: "biggsdarklighter-battleofyavin"
            id: 557
            xws_name: "biggsdarklighter-battleofyavin"
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 3
            points: 5
            pointsxwa: 13
            loadoutxwa: 0
            chassis: "Hope"
            upgrades: [
                "Attack Speed (BoY)"
                "Selfless (BoY)"
                "Proton Torpedoes"
                "R2-F2 (BoY)"
            ]
        }
        {
            name: "Wedge Antilles (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            xws_name: "wedgeantilles-battleofyavin"
            id: 558
            xws_name: "wedgeantilles-battleofyavin"
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            points: 5
            pointsxwa: 15
            loadoutxwa: 0
            chassis: "Hope"
            upgrades: [
                "Attack Speed (BoY)"
                "Marksmanship"
                "Proton Torpedoes"
                "R2-A3 (BoY)"
            ]
        }
        {
            name: "Han Solo (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            xws_name: "hansolo-battleofyavin"
            id: 559
            xws_name: "hansolo-battleofyavin"
            faction: "Rebel Alliance"
            ship: "Modified YT-1300 Light Freighter"
            skill: 6
            points: 7
            pointsxwa: 18
            loadoutxwa: 0
            charge: 4
            chassis: "Solo"
            upgrades: [
                "Chewbacca (BoY)"
                "Rigged Cargo Chute"
                "Millennium Falcon"
                "L3-37's Programming (BoY)"
            ]
        }
        {
            name: '"Dutch" Vander (BoY)'
            xwsaddon: "battleofyavin"
            unique: true
            id: 560
            xws_name: "dutchvander-battleofyavin"
            xwsname: "dutchvander-battleofyavin"
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 10
            pointsxwa: 10
            loadoutxwa: 0
            chassis: "Hope"
            upgrades: [
                "Ion Cannon Turret"
                "Adv. Proton Torpedoes"
                "Targeting Astromech (BoY)"
            ]
        }
        {
            name: "Dex Tiree (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            xws_name: "dextiree-battleofyavin"
            id: 561
            xws_name: "dextiree-battleofyavin"
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 2
            points: 4
            pointsxwa: 9
            loadoutxwa: 0
            chassis: "Hope"
            upgrades: [
                "Dorsal Turret"
                "Adv. Proton Torpedoes"
                "R4 Astromech"
            ]
        }
        {
            name: '"Pops" Krail (BoY)'
            xwsaddon: "battleofyavin"
            unique: true
            id: 562
            xws_name: "popskrail-battleofyavin"
            xwsname: "popskrail-battleofyavin"
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 10
            pointsxwa: 10
            loadoutxwa: 0
            chassis: "Hope"
            upgrades: [
                "Ion Cannon Turret"
                "Adv. Proton Torpedoes"
                "R4 Astromech"
            ]
        }
        {
            name: "Hol Okand (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            xws_name: "holokand-battleofyavin"
            id: 563
            xws_name: "holokand-battleofyavin"
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 3
            pointsxwa: 10
            loadoutxwa: 0
            chassis: "Hope"
            upgrades: [
                "Dorsal Turret"
                "Adv. Proton Torpedoes"
                "Precise Astromech (BoY)"
            ]
        }
        {
            name: "Darth Vader (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            xws_name: "darthvader-battleofyavin"
            id: 564
            xws_name: "darthvader-battleofyavin"
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 6
            points: 6
            pointsxwa: 17
            loadoutxwa: 0
            force: 3
            keyword: ["Dark Side", "Sith"]
            ship_override:
                shields: 3
                upgrades: [
                    "Marksmanship"
                    "Hate"
                    "Afterburners"
                ]
        }
        {
            name: '"Backstabber" (BoY)'
            xwsaddon: "battleofyavin"
            unique: true
            id: 565
            xws_name: "backstabber-battleofyavin"
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 5
            points: 10
            pointsxwa: 10
            loadoutxwa: 0
            ship_override:
                hull: 4
                upgrades: [
                    "Crack Shot"
                    "Disciplined"
                    "Afterburners"
                ]
        }
        {
            name: '"Mauler" Mithel (BoY)'
            xwsaddon: "battleofyavin"
            unique: true
            id: 566
            xws_name: "maulermithel-battleofyavin"
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 5
            points: 3
            pointsxwa: 10
            loadoutxwa: 0
            ship_override:
                hull: 4
                upgrades: [
                    "Predator"
                    "Afterburners"
                ]
        }
        {
            name: '"Dark Curse" (BoY)'
            xwsaddon: "battleofyavin"
            unique: true
            id: 567
            xws_name: "darkcurse-battleofyavin"
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 6
            points: 9
            pointsxwa: 9
            loadoutxwa: 0
            ship_override:
                hull: 4
                upgrades: [
                    "Ruthless"
                    "Precision Ion Engines"
                ]
        }
        {
            name: '"Wampa" (BoY)'
            xwsaddon: "battleofyavin"
            unique: true
            id: 568
            xws_name: "wampa-battleofyavin"
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 1
            charge: 1
            recurring: 1
            points: 7
            pointsxwa: 7
            loadoutxwa: 0
            ship_override:
                hull: 4
                actions: [
                    "Focus"
                    "Lock"
                    "Evade"
                    "Barrel Roll"
                ]
            upgrades: [
                "Elusive"
                "Vengeful (BoY)"
            ]
        }
        {
            name: "Iden Versio (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            xws_name: "idenversio-battleofyavin"
            id: 569
            xws_name: "idenversio-battleofyavin"
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 5
            pointsxwa: 12
            loadoutxwa: 0
            charge: 2
            recurring: 1
            chassis: "Sensitive Controls"
            ship_override:
                shields: 1
            upgrades: [
                "Predator"
                "Fanatic (BoY)"
            ]
        }
        {
            name: "Sigma 4 (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            xws_name: "sigma4-battleofyavin"
            id: 570
            xws_name: "sigma4-battleofyavin"
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            pointsxwa: 10
            loadoutxwa: 0
            charge: 2
            chassis: "Sensitive Controls"
            ship_override:
                hull: 4
            upgrades: [
                "Disciplined"
                "Primed Thrusters"
            ]
        }
        {
            name: "Sigma 5 (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            xws_name: "sigma5-battleofyavin"
            id: 571
            xws_name: "sigma5-battleofyavin"
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            pointsxwa: 10
            loadoutxwa: 0
            charge: 2
            chassis: "Sensitive Controls"
            ship_override:
                hull: 4
            upgrades: [
                "Sensor Jammer (BoY)"
                "Elusive"
            ]
        }
        {
            name: "Sigma 6 (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            xws_name: "sigma6-battleofyavin"
            id: 572
            xws_name: "sigma6-battleofyavin"
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            pointsxwa: 11
            loadoutxwa: 0
            charge: 2
            chassis: "Sensitive Controls"
            ship_override:
                hull: 4
            upgrades: [
                "Daredevil"
                "Afterburners"
            ]
        }
        {
            name: "Sigma 7 (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            xws_name: "sigma7-battleofyavin"
            id: 573
            xws_name: "sigma7-battleofyavin"
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            pointsxwa: 10
            loadoutxwa: 0
            charge: 2
            chassis: "Sensitive Controls"
            ship_override:
                hull: 4
                actions: [
                    "Focus"
                    "Evade"
                    "Barrel Roll"
                    "Boost"
                    "Lock"
                ]
            upgrades: [
                "Marksmanship"
                "Fire-Control System"
            ]
        }
        {
            name: "Anakin Skywalker (SoC)"
            xwsaddon: "siegeofcoruscant"
            unique: true
            xws_name: "anakinskywalker-siegeofcoruscant"
            id: 574
            xws_name: "anakinskywalker-siegeofcoruscant"
            faction: "Galactic Republic"
            ship: "Eta-2 Actis"
            skill: 6
            points: 4
            pointsxwa: 13
            loadoutxwa: 0
            force: 3
            chassis: "Intuitive Controls"
            keyword: ["Jedi","Light Side","Dark Side"]
            upgrades: [
                "Malice"
                "Ancillary Ion Weapons (SoC)"
                "R2-D2 (Republic)"
            ]
        }
        {
            name: "Obi-Wan Kenobi (SoC)"
            xwsaddon: "siegeofcoruscant"
            unique: true
            xws_name: "obiwankenobi-siegeofcoruscant"
            id: 575
            xws_name: "obi-wankenobi-siegeofcoruscant"
            faction: "Galactic Republic"
            ship: "Eta-2 Actis"
            skill: 5
            points: 4
            pointsxwa: 11
            loadoutxwa: 0
            force: 3
            chassis: "Intuitive Controls"
            keyword: ["Jedi","Light Side"]
            upgrades: [
                "Patience"
                "Ancillary Ion Weapons (SoC)"
                "R4-P17 (SoC)"
            ]
        }
        {
            name: "Shaak Ti (SoC)"
            xwsaddon: "siegeofcoruscant"
            unique: true
            xws_name: "shaakti-siegeofcoruscant"
            id: 576
            xws_name: "shaakti-siegeofcoruscant"
            faction: "Galactic Republic"
            ship: "Eta-2 Actis"
            skill: 4
            points: 4
            pointsxwa: 10
            loadoutxwa: 0
            force: 2
            chassis: "Intuitive Controls"
            keyword: ["Jedi","Light Side"]
            upgrades: [
                "Marksmanship"
                "Brilliant Evasion"
                "Ancillary Ion Weapons (SoC)"
                "R4-P Astromech"
            ]
        }
        {
            name: '"Odd Ball" (SoC)'
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 577
            xws_name: "oddball-siegeofcoruscant"
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 5
            points: 5
            pointsxwa: 13
            loadoutxwa: 0
            chassis: "Born for This"
            ship_override:
                shields: 4
            upgrades: [
                "Selfless"
                "Veteran Tail Gunner"
                "R4-P Astromech"
            ]
        }
        {
            name: '"Wolffe" (SoC)'
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 578
            xws_name: "wolffe-siegeofcoruscant"
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 4
            charge: 1
            points: 4
            pointsxwa: 12
            loadoutxwa: 0
            chassis: "Born for This"
            upgrades: [
                "Wolfpack (SoC)"
                "Veteran Tail Gunner"
                "Q7 Astromech"
            ]
        }
        {
            name: '"Jag" (SoC)'
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 579
            xws_name: "jag-siegeofcoruscant"
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 3
            points: 4
            pointsxwa: 12
            loadoutxwa: 0
            chassis: "Born for This"
            upgrades: [
                "Veteran Tail Gunner"
                "R4-P Astromech"
                "Synchronized Console"
            ]
        }
        {
            name: '"Contrail" (SoC)'
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 580
            xws_name: "contrail-siegeofcoruscant"
            faction: "Galactic Republic"
            ship: "Nimbus-class V-wing"
            skill: 5
            points: 4
            pointsxwa: 10
            loadoutxwa: 0
            chassis: "Born for This"
            upgrades: [
                "Ion Limiter Override"
                "Precise Astromech (BoY)"
                "Ion Bombs"
                'Alpha-3B "Besh"'
            ]
        }
        {
            name: '"Klick" (SoC)'
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 581
            xws_name: "klick-siegeofcoruscant"
            faction: "Galactic Republic"
            ship: "Nimbus-class V-wing"
            skill: 4
            points: 4
            pointsxwa: 9
            loadoutxwa: 0
            charge: 1
            recurring: 1
            chassis: "Born for This"
            ship_override:
                shields: 3
            upgrades: [
                "R3 Astromech"
                "Precision Ion Engines"
                'Alpha-3E "Esk"'
            ]
        }
        {
            name: '"Kickback" (SoC)'
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 582
            xws_name: "kickback-siegeofcoruscant"
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 5
            points: 4
            pointsxwa: 9
            loadoutxwa: 0
            chassis: "Born for This"
            ship_override:
                hull: 6
            upgrades: [
                "Diamond-Boron Missiles"
                "Munitions Failsafe"
            ]
        }
        {
            name: '"Axe" (SoC)'
            xwsaddon: "siegeofcoruscant"
            unique: true
            id: 583
            xws_name: "axe-siegeofcoruscant"
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 3
            points: 3
            pointsxwa: 9
            loadoutxwa: 0
            chassis: "Born for This"
            ship_override:
                hull: 6
            upgrades: [
                "Deadeye Shot"
                "Barrage Rockets"
            ]
        }
        {
            name: "Count Dooku (SoC)"
            xwsaddon: "siegeofcoruscant"
            unique: true
            xws_name: "countdooku-siegeofcoruscant"
            id: 584
            xws_name: "countdooku-siegeofcoruscant"
            faction: "Separatist Alliance"
            ship: "Sith Infiltrator"
            skill: 5
            points: 6
            pointsxwa: 16
            loadoutxwa: 0
            force: 3
            keyword: ["Dark Side"]
            upgrades: [
                "Malice"
                "Roiling Anger (SoC)"
                "Scimitar"
            ]
        }
        {
            name: "DBS-32C (SoC)"
            xwsaddon: "siegeofcoruscant"
            unique: true
            xws_name: "dbs32c-siegeofcoruscant"
            id: 585
            xws_name: "dbs-32c-siegeofcoruscant"
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 3
            points: 3
            pointsxwa: 9
            loadoutxwa: 0
            charge: 2
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Barrel Roll"
                    "R-> Lock"
                    "R-Jam"
                ]
            upgrades: [
                "Plasma Torpedoes"
                "Contingency Protocol (SoC)"
                "Strut-Lock Override (SoC)"
            ]
        }
        {
            name: "DBS-404 (SoC)"
            xwsaddon: "siegeofcoruscant"
            unique: true
            xws_name: "dbs404-siegeofcoruscant"
            id: 586
            xws_name: "dbs-404-siegeofcoruscant"
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 4
            points: 3
            pointsxwa: 9
            loadoutxwa: 0
            upgrades: [
                "Adv. Proton Torpedoes"
                "Contingency Protocol (SoC)"
                "Strut-Lock Override (SoC)"
            ]
        }
        {
            name: "Baktoid Prototype (SoC)"
            xwsaddon: "siegeofcoruscant"
            xws_name: "baktoidprototype-siegeofcoruscant"
            id: 587
            xws_name: "baktoidprototype-siegeofcoruscant"
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 1
            max_per_squad: 2
            points: 3
            pointsxwa: 7
            loadoutxwa: 0
            upgrades: [
                "Homing Missiles"
                "Contingency Protocol (SoC)"
                "Strut-Lock Override (SoC)"
            ]
        }
        {
            name: "DIS-347 (SoC)"
            xwsaddon: "siegeofcoruscant"
            unique: true
            xws_name: "dis347-siegeofcoruscant"
            id: 588
            xws_name: "dis-347-siegeofcoruscant"
            faction: "Separatist Alliance"
            ship: "Droid Tri-fighter"
            skill: 3
            points: 3
            pointsxwa: 10
            loadoutxwa: 0
            upgrades: [
                "Marksmanship"
                "Afterburners"
                "Contingency Protocol (SoC)"
            ]
        }
        {
            name: "DIS-T81 (SoC)"
            xwsaddon: "siegeofcoruscant"
            unique: true
            xws_name: "dist81-siegeofcoruscant"
            id: 589
            xws_name: "dis-t81-siegeofcoruscant"
            faction: "Separatist Alliance"
            ship: "Droid Tri-fighter"
            skill: 4
            points: 4
            pointsxwa: 11
            loadoutxwa: 0
            upgrades: [
                "Outmaneuver"
                "Afterburners"
                "Contingency Protocol (SoC)"
            ]
        }
        {
            name: "Phlac-Arphocc Prototype (SoC)"
            xwsaddon: "siegeofcoruscant"
            xws_name: "phlacarphoccprototype-siegeofcoruscant"
            id: 590
            xws_name: "phlac-arphoccprototype-siegeofcoruscant"
            faction: "Separatist Alliance"
            ship: "Droid Tri-fighter"
            skill: 5
            points: 4
            pointsxwa: 10
            loadoutxwa: 0
            max_per_squad: 2
            upgrades: [
                "Afterburners"
                "Contingency Protocol (SoC)"
                "Evasion Sequence 7 (SoC)"
            ]
        }
        {
            name: "DFS-081 (SoC)"
            xwsaddon: "siegeofcoruscant"
            unique: true
            xws_name: "dfs081-siegeofcoruscant"
            id: 591
            xws_name: "dfs-081-siegeofcoruscant"
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 3
            charge: 2
            points: 2
            pointsxwa: 6
            loadoutxwa: 0
            upgrades: [
                "Discord Missiles"
                "Contingency Protocol (SoC)"
                "Strut-Lock Override (SoC)"
            ]
        }
        {
            name: "DFS-311 (SoC)"
            xwsaddon: "siegeofcoruscant"
            unique: true
            xws_name: "dfs311-siegeofcoruscant"
            id: 592
            xws_name: "dfs-311-siegeofcoruscant"
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            points: 3
            pointsxwa: 6
            loadoutxwa: 0
            upgrades: [
                "Discord Missiles"
                "Contingency Protocol (SoC)"
                "Strut-Lock Override (SoC)"
            ]
        }
        {
            name: "Haor Chall Prototype (SoC)"
            xwsaddon: "siegeofcoruscant"
            xws_name: "haorchallprototype-siegeofcoruscant"
            id: 593
            xws_name: "haorchallprototype-siegeofcoruscant"
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            max_per_squad: 2
            points: 2
            pointsxwa: 6
            loadoutxwa: 0
            upgrades: [
                "Ion Missiles"
                "Contingency Protocol (SoC)"
                "Strut-Lock Override (SoC)"
            ]
        }
        {
            name: "Corran Horn (X-Wing)"
            xws_name: "corranhorn"
            id: 594
            xws_name: "corranhorn"
            unique: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            points: 4
            loadout: 9
            pointsxwa: 14
            loadoutxwa: 12
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Configuration"
            ]
            slotsxwa: [
                "Torpedo"
                "Modification"
                "Sensor"
                "Astromech"
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Wes Janson"
            xws_name: "wesjanson"
            id: 595
            xws_name: "wesjanson"
            unique: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            charge: 1
            recurring: 1
            points: 5
            loadout: 15
            pointsxwa: 12
            loadoutxwa: 13
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Torpedo"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Tycho Celchu"
            xws_name: "tychocelchu"
            id: 596
            xws_name: "tychocelchu"
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 5
            points: 4
            loadout: 14
            pointsxwa: 11
            loadoutxwa: 15
            slots: [
                "Talent"
                "Talent"
                "Cannon"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Missile"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Keo Venzee"
            xws_name: "keovenzee"
            id: 597
            xws_name: "keovenzee"
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 3
            points: 3
            loadout: 7
            pointsxwa: 10
            loadoutxwa: 12
            force: 1
            forcerecurring: 0
            slots: [
                "Talent"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Missile"
                "Configuration"
                "Force"
            ]
        }
        {
            name: '"Pops" Krail'
            id: 598
            xws_name: "popskrail"
            xwsname : "popskrail"
            unique: true
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 3
            points: 4
            loadout: 16
            pointsxwa: 9
            loadoutxwa: 11
            slots: [
                "Talent"
                "Turret"
                "Torpedo"
                "Astromech"
                "Device"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Device"
                "Torpedo"
                "Turret"
            ]
        }
        {
            name: "Flight Leader Ubbel"
            xws_name: "flightleaderubbel"
            id: 599
            xws_name: "flightleaderubbel"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/rb Heavy"
            skill: 5
            points: 5
            loadout: 12
            pointsxwa: 12
            loadoutxwa: 13
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Gunner"
                "Modification"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Gunner"
                "Modification"
                "Configuration"
                "Talent"
            ]
        }
        {
            name: "Juno Eclipse"
            xws_name: "junoeclipse"
            id: 600
            xws_name: "junoeclipse"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 5
            points: 4
            loadout: 8
            pointsxwa: 11
            loadoutxwa: 11
            slots: [
                "Talent"
                "Tech"
                "Sensor"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Sensor"
                "Modification"
                "Talent"
                "Talent"
            ]
        }
        {
            name: "Second Sister"
            xws_name: "secondsister"
            id: 601
            xws_name: "secondsister"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            force: 2
            points: 5
            loadout: 14
            pointsxwa: 13
            loadoutxwa: 14
            keyword: ["Dark Side"]
            slots: [
                "Force"
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Configuration"
                "Force"
                "Sensor"
            ]
        }
        {
            name: "Magna Tolvan"
            xws_name: "magnatolvan"
            id: 602
            xws_name: "magnatolvan"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 3
            loadout: 10
            pointsxwa: 7
            loadoutxwa: 5
            slots: [
                "Talent"
                "Cannon"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Yrica Quell"
            xws_name: "yricaquell"
            id: 603
            xws_name: "yricaquell"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 3
            loadout: 9
            pointsxwa: 7
            loadoutxwa: 8
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Poe Dameron (YT-1300)"
            xws_name: "poedameron"
            id: 604
            xws_name: "poedameron"
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 6
            charge: 2
            recurring: 1
            points: 7
            loadout: 25
            pointsxwa: 17
            loadoutxwa: 20
            slots: [
                "Talent"
                "Talent"
                "Missile"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "Talent"
                "Talent"
                "Title"
            ]
        }
        {
            name: "Lando Calrissian (Resistance)"
            xws_name: "landocalrissian"
            id: 605
            xws_name: "landocalrissian"
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 5
            charge: 3
            recurring: 1
            points: 7
            loadout: 20
            pointsxwa: 14
            loadoutxwa: 20
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
                "Talent"
            ]
        }
        {
            name: "Venisa Doza"
            xws_name: "venisadoza"
            id: 606
            xws_name: "venisadoza"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 4
            loadout: 7
            pointsxwa: 13
            loadoutxwa: 15
            slots: [
                "Talent"
                "Tech"
                "Missile"
                "Missile"
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "Talent"
                "Missile"
                "HardpointShip"
            ]
        }
        {
            name: "Zay Versio"
            xws_name: "zayversio"
            id: 607
            xws_name: "zayversio"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 3
            points: 4
            loadout: 7
            pointsxwa: 11
            loadoutxwa: 10
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Tech"
                "Configuration"
                "Talent"
                "HardpointShip"
            ]
        }
        {
            name: "Taka Jamoreesa"
            xws_name: "takajamoreesa"
            id: 608
            xws_name: "takajamoreesa"
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 2
            points: 4
            loadout: 15
            pointsxwa: 8
            loadoutxwa: 6
            slots: [
                "Talent"
                "Tech"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Astromech"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Astromech"
                "Crew"
                "Crew"
                "Modification"
                "Tech"
                "Torpedo"
            ]
        }
        {
            name: "Hondo Ohnaka"
            xws_name: "hondoohnaka"
            id: 609
            xws_name: "hondoohnaka"
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
            skill: 1
            points: 7
            loadout: 18
            pointsxwa: 17
            loadoutxwa: 12
            slots: [
                "Cannon"
                "Cannon"
                "Missile"
                "Crew"
                "Device"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Cannon"
                "Crew"
                "Illicit"
                "Missile"
                "Modification"
                "Device"
                "Title"
            ]
        }
        {
            name: "Tor Phun"
            xws_name: "torphun"
            id: 610
            xws_name: "torphun"
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 3
            points: 4
            loadout: 11
            pointsxwa: 11
            loadoutxwa: 8
            keyword: ["Mandalorian"]
            slots: [
                "Talent"
                "Missile"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
                "Modification"
                "Torpedo"
            ]
        }
        {
            name: "Durge"
            xws_name: "durge"
            id: 611
            xws_name: "durge"
            unique: true
            faction: "Scum and Villainy"
            ship: "Rogue-class Starfighter"
            skill: 5
            points: 4
            loadout: 10
            pointsxwa: 11
            loadoutxwa: 13
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Talent"
                "Cannon"
                "Cannon"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Doctor Aphra"
            xws_name: "doctoraphra"
            id: 612
            xws_name: "doctoraphra"
            unique: true
            faction: "Scum and Villainy"
            ship: "YV-666 Light Freighter"
            skill: 3
            points: 6
            loadout: 22
            pointsxwa: 16
            loadoutxwa: 22
            charge: 3
            slots: [
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Illicit"
                "Modification"
                "Talent"
                "Gunner"
            ]
        }
        {
            name: "Lapin"
            xws_name: "lapin"
            id: 613
            xws_name: "lapin"
            unique: true
            faction: "Scum and Villainy"
            ship: "Modified TIE/ln Fighter"
            skill: 3
            points: 3
            loadout: 7
            pointsxwa: 8
            loadoutxwa: 9
            slots: [
                "Talent"
                "Cannon"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Volan Das"
            xws_name: "volandas"
            id: 614
            xws_name: "volandas"
            unique: true
            faction: "Separatist Alliance"
            ship: "Droid Tri-fighter"
            skill: 5
            points: 4
            loadout: 12
            pointsxwa: 10
            loadoutxwa: 7
            chassis: "Modified for Organics"
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Sensor"
                "Modification"
                "Modification"
                "Missile"
                "Cannon"
                "Illicit"
            ]
            ship_override:
                actions: [
                    "Focus"
                    "Evade"
                    "Lock"
                    "Barrel Roll"
                    "R-> Evade"
                    "Boost"
                    "R-> Focus"
                ]
        }
        {
            name: "Aurra Sing"
            xws_name: "aurrasing"
            id: 615
            xws_name: "aurrasing"
            unique: true
            faction: "Separatist Alliance"
            ship: "Firespray-class Patrol Craft"
            skill: 4
            force: 1
            points: 7
            loadout: 10
            pointsxwa: 17
            loadoutxwa: 10
            keyword: ["Dark Side","Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Device"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Cannon"
                "Crew"
                "Illicit"
                "Missile"
                "Modification"
                "Device"
                "Title"
                "Force"
            ]
        }
        {
            name: "Durge (Separatist)"
            xwsaddon: "separatistalliance"
            xws_name: "durge-separatistalliance"
            id: 616
            xws_name: "durge-separatistalliance"
            unique: true
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 5
            charge: 1
            points: 4
            loadout: 10
            pointsxwa: 12
            loadoutxwa: 13
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Cannon"
                "Illicit"
                "Modification"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Cannon"
                "Cannon"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "The Iron Assembler"
            xws_name: "theironassembler"
            id: 617
            xws_name: "theironassembler"
            unique: true
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            charge: 3
            points: 2
            loadout: 5
            pointsxwa: 7
            loadoutxwa: 10
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Modification"
                "Configuration"
                "Missile"
                "Modification"
            ]
        }
        {
            name: "Kelrodo-Ai Holdout"
            xws_name: "kelrodoaiholdout"
            id: 618
            xws_name: "kelrodo-aiholdout"
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            max_per_squad: 3
            points: 2
            loadout: 7
            pointsxwa: 6
            loadoutxwa: 10
            chassis: "Modified for Organics"
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Modification"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "Barrel Roll"
                    "R-> Focus"
                ]
        }
        {
            name: "Adi Gallia"
            xws_name: "adigallia"
            id: 619
            xws_name: "adigallia"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7 Aethersprite"
            skill: 5
            points: 5
            loadout: 12
            pointsxwa: 12
            loadoutxwa: 6
            force: 2
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: "Adi Gallia (Delta-7B)"
            xws_name: "adigallia"
            id: 620
            xws_name: "adigallia"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 5
            force: 2
            points: 7
            loadout: 18
            pointsxwa: 12
            loadoutxwa: 6
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Talent"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Configuration"
                "Modification"
                "Modification"
                "Astromech"
                "Force"
            ]
        }
        {
            name: '"Sicko"'
            id: 621
            xws_name: "sicko"
            unique: true
            faction: "Galactic Republic"
            ship: "LAAT/i Gunship"
            skill: 2
            charge: 2
            recurring: 1
            points: 5
            loadout: 12
            pointsxwa: 12
            loadoutxwa: 12
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Missile"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Modification"
                "Missile"
                "Missile"
            ]
            applies_condition: 'Sickening Maneuver'.canonicalize()
        }
        {
            name: "Kit Fisto"
            xws_name: "kitfisto"
            id: 622
            xws_name: "kitfisto"
            unique: true
            faction: "Galactic Republic"
            ship: "Eta-2 Actis"
            skill: 4
            force: 2
            points: 4
            loadout: 11
            pointsxwa: 10
            loadoutxwa: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Talent"
                "Cannon"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Force"
                "Astromech"
                "Cannon"
                "Modification"
                "Force"
            ]
        }
        {
            name: '"Slammer"'
            id: 623
            xws_name: "slammer"
            unique: true
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 1
            charge: 2
            recurring: 1
            points: 3
            loadout: 7
            pointsxwa: 7
            loadoutxwa: 7
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Missile"
                "Modification"
                "Modification"
            ]
        }
        {
            name: "Gavyn Sykes"
            xws_name: "gavynsykes"
            id: 624
            xws_name: "gavynsykes"
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 3
            points: 4
            loadout: 16
            pointsxwa: 9
            loadoutxwa: 11
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Astromech"
                "Modification"
                "Torpedo"
                "Sensor"
            ]
        }
        {
            name: "Lieutenant Galek"
            xws_name: "lieutenantgalek"
            id: 625
            xws_name: "lieutenantgalek"
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 5
            points: 3
            loadout: 7
            pointsxwa: 10
            loadoutxwa: 14
            slots: [
                "Talent"
                "Tech"
                "Tech"
                "Cannon"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Tech"
                "Modification"
                "Talent"
                "Tech"
            ]
        }
        {
            name: "Jul Jerjerrod"
            xws_name: "juljerjerrod"
            id: 626
            xws_name: "juljerjerrod"
            unique: true
            faction: "First Order"
            ship: "TIE/se Bomber"
            skill: 4
            charge: 3
            points: 4
            loadout: 13
            pointsxwa: 10
            loadoutxwa: 14
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Missile"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Modification"
                "Tech"
                "Device"
                "Device"
                "Missile"
                "Talent"
                "Torpedo"
            ]
        }
        {
            name: "DT-798"
            xws_name: "dt798"
            id: 627
            xws_name: "dt-798"
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 4
            points: 3
            loadout: 6
            pointsxwa: 9
            loadoutxwa: 9
            slots: [
                "Talent"
                "Tech"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Tech"
                "Modification"
                "Talent"
            ]
        }
        {
            name: "Lin Gaava"
            xws_name: "lingaava"
            id: 628
            xws_name: "lingaava"
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 3
            points: 3
            loadout: 9
            pointsxwa: 8
            loadoutxwa: 9
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Modification"
            ]
            slotsxwa: [
                "Sensor"
                "Tech"
                "Modification"
                "Talent"
            ]
            applies_condition: '''Primed For Speed'''.canonicalize()
        }
        {
            name: "Agent Tierny"
            xws_name: "agenttierny"
            id: 629
            xws_name: "agenttierny"
            unique: true
            faction: "First Order"
            ship: "Xi-class Light Shuttle"
            skill: 3
            points: 5
            loadout: 15
            pointsxwa: 12
            loadoutxwa: 18
            slots: [
                "Talent"
                "Talent"
                "Tech"
                "Crew"
                "Crew"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Tech"
                "Tech"
                "Crew"
                "Crew"
                "Modification"
                "Talent"
            ]
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "R-Coordinate"
                    "Jam"
                ]
            applies_condition: '''Broken Trust'''.canonicalize()
        }
        {
            name: "Darth Vader (SSP)"
            xwsaddon: "swz105"
            unique: true
            xws_name: "darthvader-swz105"
            id: 630
            xws_name: "darthvader-swz105"
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 6
            points: 6
            pointsxwa: 17
            loadoutxwa: 0
            force: 3
            keyword: ["Dark Side", "Sith"]
            ship_override:
                shields: 3
            upgrades: [
                "Hate"
                "Ion Missiles"
                "Afterburners"
            ]
        }
        {
            name: "Maarek Stele (SSP)"
            xwsaddon: "swz105"
            unique: true
            xws_name: "maarekstele-swz105"
            id: 631
            xws_name: "maarekstele-swz105"
            faction: "Galactic Empire"
            ship: "TIE Advanced x1"
            skill: 5
            points: 13
            pointsxwa: 13
            loadoutxwa: 0
            upgrades: [
                "Elusive"
                "Outmaneuver"
                "Afterburners"            ]
        }
        {
            name: "Captain Jonus (SSP)"
            xwsaddon: "swz105"
            unique: true
            xws_name: "captainjonus-swz105"
            id: 632
            xws_name: "captainjonus-swz105"
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 4
            points: 4
            pointsxwa: 10
            loadoutxwa: 0
            upgrades: [
                "Feedback Ping"
                "Plasma Torpedoes"
                "Proton Bombs"
            ]
        }
        {
            name: "Tomax Bren (SSP)"
            xwsaddon: "swz105"
            unique: true
            xws_name: "tomaxbren-swz105"
            id: 633
            xws_name: "tomaxbren-swz105"
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 5
            points: 5
            pointsxwa: 11
            loadoutxwa: 0
            upgrades: [
                "Elusive"
                "Barrage Rockets"
                "Proximity Mines"
            ]
        }
        {
            name: "Iden Versio (SSP)"
            xwsaddon: "swz105"
            unique: true
            xws_name: "idenversio-swz105"
            id: 634
            xws_name: "idenversio-swz105"
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 4
            points: 9
            pointsxwa: 9
            loadoutxwa: 0
            charge: 1
            upgrades: [
                "Disciplined"
                "Elusive"
            ]
        }
        {
            name: '"Night Beast" (SSP)'
            xwsaddon: "swz105"
            unique: true
            id: 635
            xws_name: "nightbeast-swz105"
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 2
            points: 7
            pointsxwa: 7
            loadoutxwa: 0
            upgrades: [
                "Disciplined"
                "Predator"
            ]
        }
        {
            name: "Valen Rudor (SSP)"
            xwsaddon: "swz105"
            unique: true
            xws_name: "valenrudor-swz105"
            id: 636
            xws_name: "valenrudor-swz105"
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 7
            pointsxwa: 7
            loadoutxwa: 0
            upgrades: [
                "Disciplined"
                "Precision Ion Engines"
            ]
        }
        {
            name: '"Dutch" Vander (SSP)'
            xwsaddon: "swz106"
            unique: true
            id: 637
            xws_name: "dutchvander-swz106"
            xwsname : "dutchvander-swz106"
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 9
            pointsxwa: 9
            loadoutxwa: 0
            upgrades: [
                "Ion Cannon Turret"
                "Proton Bombs"
            ]
        }
        {
            name: "Horton Salm (SSP)"
            xwsaddon: "swz106"
            unique: true
            xws_name: "hortonsalm-swz106"
            id: 638
            xws_name: "hortonsalm-swz106"
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 4
            points: 4
            pointsxwa: 9
            loadoutxwa: 0
            upgrades: [
                "Ion Cannon Turret"
                "Proximity Mines"
            ]
        }
        {
            name: "Arvel Crynyd (SSP)"
            xwsaddon: "swz106"
            unique: true
            xws_name: "arvelcrynyd-swz106"
            id: 639
            xws_name: "arvelcrynyd-swz106"
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 3
            points: 4
            pointsxwa: 9
            loadoutxwa: 0
            upgrades: [
                "Predator"
                "Afterburners"
            ]
        }
        {
            name: "Jake Farrell (SSP)"
            xwsaddon: "swz106"
            unique: true
            xws_name: "jakefarrell-swz106"
            id: 640
            xws_name: "jakefarrell-swz106"
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 4
            points: 5
            pointsxwa: 10
            loadoutxwa: 0
            upgrades: [
                "Elusive"
                "Outmaneuver"
                "Ion Missiles"
            ]
        }
        {
            name: "Jek Porkins (SSP)"
            xwsaddon: "swz106"
            unique: true
            xws_name: "jekporkins-swz106"
            id: 641
            xws_name: "jekporkins-swz106"
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 4
            points: 5
            pointsxwa: 13
            loadoutxwa: 0
            upgrades: [
                "Predator"
                "Proton Torpedoes"
                "R5-D8"
            ]
        }
        {
            name: "Luke Skywalker (SSP)"
            xwsaddon: "swz106"
            unique: true
            xws_name: "lukeskywalker-swz106"
            id: 642
            xws_name: "lukeskywalker-swz106"
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            force: 2
            points: 6
            pointsxwa: 16
            loadoutxwa: 0
            upgrades: [
                "Instinctive Aim"
                "Proton Torpedoes"
                "R2-D2"
            ]
        }
        {
            name: "Shara Bey (SSP)"
            xwsaddon: "swz106"
            unique: true
            xws_name: "sharabey-swz106"
            id: 643
            xws_name: "sharabey-swz106"
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 4
            points: 4
            pointsxwa: 9
            loadoutxwa: 0
            upgrades: [
                "Hopeful"
                "Concussion Missiles"
            ]
        }
        {
            name: '"Deathfire" (TBE)'
            xwsaddon: "swz98"
            unique: true
            id: 644
            xws_name: "deathfire-swz98"
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 2
            points: 3
            pointsxwa: 10
            loadoutxwa: 0
            charge: 2
            recurring: 1
            upgrades: [
                "Swift Approach (TBE)"
                "Conner Nets"
                "Proton Bombs"
            ]
        }
        {
            name: "Major Rhymer (TBE)"
            xwsaddon: "swz98"
            unique: true
            xws_name: "majorrhymer-swz98"
            id: 645
            xws_name: "majorrhymer-swz98"
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 4
            points: 4
            pointsxwa: 11
            loadoutxwa: 0
            upgrades: [
                "Adv. Proton Torpedoes"
                "Automated Loaders (TBE)"
                "Afterburners"
            ]
        }
        {
            name: "Captain Jonus (TBE)"
            xwsaddon: "swz98"
            unique: true
            xws_name: "captainjonus-swz98"
            id: 646
            xws_name: "captainjonus-swz98"
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 4
            points: 5
            pointsxwa: 11
            loadoutxwa: 0
            upgrades: [
                "Top Cover (TBE)"
                "Barrage Rockets"
                "Proton Bombs"
            ]
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "Barrel Roll"
                    "R-> Lock"
                    "Reload"
                ]
        }
        {
            name: "Tomax Bren (TBE)"
            xwsaddon: "swz98"
            unique: true
            xws_name: "tomaxbren-swz98"
            id: 647
            xws_name: "tomaxbren-swz98"
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 5
            points: 4
            pointsxwa: 12
            loadoutxwa: 0
            charge: 2
            recurring: 1
            upgrades: [
                "True Grit (TBE)"
                "Plasma Torpedoes"
                "Ion Bombs"
            ]
        }
        {
            name: "Dash Rendar (YLF)"
            xwsaddon: "swz103-rebelalliance"
            unique: true
            xws_name: "dashrendar-swz103-rebelalliance"
            id: 648
            xws_name: "dashrendar-swz103-rebelalliance"
            faction: "Rebel Alliance"
            ship: "YT-2400 Light Freighter"
            skill: 5
            points: 7
            loadout: 20
            pointsxwa: 19
            loadoutxwa: 20
            slots: [
                "Talent"
                "Missile"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Talent"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Missile"
                "Title"
            ]
        }
        {
            name: "Dash Rendar (YLF-SL)"
            xwsaddon: "swz103-sl-rebelalliance"
            unique: true
            xws_name: "dashrendar-swz103-sl-rebelalliance"
            id: 649
            xws_name: "dashrendar-swz103-sl-rebelalliance"
            faction: "Rebel Alliance"
            ship: "YT-2400 Light Freighter"
            skill: 5
            points: 6
            pointsxwa: 18
            loadoutxwa: 0
            upgrades: [
                "Mercenary (YLF)"
                "Seeker Missiles (YLF)"
                '"Leebo" (YLF)'
                "Outrider"
            ]
        }
        {
            name: "Dash Rendar (Scum)"
            xwsaddon: "swz103-sl-scumandvillainy"
            unique: true
            xws_name: "dashrendar-swz103-sl-scumandvillainy"
            id: 650
            xws_name: "dashrendar-swz103-sl-scumandvillainy"
            faction: "Scum and Villainy"
            ship: "YT-2400 Light Freighter"
            skill: 5
            points: 6
            pointsxwa: 18
            loadoutxwa: 0
            upgrades: [
                "Mercenary (YLF)"
                "Seeker Missiles (YLF)"
                '"Leebo" (YLF)'
                "Outrider"
            ]
        }
        {
            name: '"Leebo" (YLF)'
            xwsaddon: "swz103-rebelalliance"
            unique: true
            id: 651
            xws_name: "leebo-swz103-rebelalliance"
            xwsname: "leebo-swz103-rebelalliance"
            faction: "Rebel Alliance"
            ship: "YT-2400 Light Freighter"
            skill: 3
            points: 6
            loadout: 16
            pointsxwa: 17
            loadoutxwa: 10
            keyword: ["Droid"]
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Talent"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Missile"
                "Title"
            ]
        }
        {
            name: '"Leebo" (YLF-SL)'
            xwsaddon: "swz103-sl-rebelalliance"
            unique: true
            id: 652
            xws_name: "leebo-swz103-sl-rebelalliance"
            xwsname: "leebo-swz103-sl-rebelalliance"
            faction: "Rebel Alliance"
            ship: "YT-2400 Light Freighter"
            skill: 3
            points: 6
            pointsxwa: 16
            upgrades: [
                "Efficient Processing (YLF)"
                "Seeker Missiles (YLF)"
                "Outrider"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "R-> Rotate Arc"
                    "R-Barrel Roll"
                    "Rotate Arc"
                ]
        }
        {
            name: '"Leebo" (Scum)'
            xwsaddon: "swz103-sl-scumandvillainy"
            unique: true
            id: 653
            xws_name: "leebo-swz103-sl-scumandvillainy"
            faction: "Scum and Villainy"
            ship: "YT-2400 Light Freighter"
            skill: 3
            points: 16
            pointsxwa: 16
            upgrades: [
                "Efficient Processing (YLF)"
                "Seeker Missiles (YLF)"
                "Outrider"
            ]
            ship_override:
                actions: [
                    "Calculate"
                    "Lock"
                    "R-> Rotate Arc"
                    "R-Barrel Roll"
                    "Rotate Arc"
                ]
        }
        {
            name: "Arvel Crynyd (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            xws_name: "arvelcrynyd-battleoverendor"
            id: 654
            xws_name: "arvelcrynyd-battleoverendor"
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 3
            points: 4
            pointsxwa: 10
            chassis: "Vectored Cannons"
            upgrades: [
                "It's A Trap! (BoE)"
                "Heroic Sacrifice (BoE)"
                "Proton Rockets"
            ]
            ship_override:
                attackt: 2
                attack: 0
                shields: 3
            actions: [
                "Focus"
                "Evade"
                "Lock"
                "Barrel Roll"
                "R-> Focus"
                "Boost"
                "Slam"
            ]
        }
        {
            name: "Gemmer Sojan (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            xws_name: "gemmersojan-battleoverendor"
            id: 655
            xws_name: "gemmersojan-battleoverendor"
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 2
            points: 4
            pointsxwa: 9
            chassis: "Vectored Cannons"
            upgrades: [
                "It's A Trap! (BoE)"
                "Precision-Tuned Cannons (BoE)"
                "Chaff Particles (BoE)"
                "Target-Assist Algorithm (BoE)"
            ]
            ship_override:
                attackt: 2
                attack: 0
        }
        {
            name: "Tycho Celchu (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 656
            xws_name: "tychocelchu-battleoverendor"
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 5
            points: 4
            pointsxwa: 11
            chassis: "Vectored Cannons"
            ship_override:
                attackt: 2
                attack: 0
                shields: 3
                actions: [
                    "Focus"
                    "R-> Reload"
                    "Evade"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                    "R-> Evade"
                ]
            upgrades: [
                "It's A Trap! (BoE)"
                "Juke"
                "Proton Rockets"
                "Chaff Particles (BoE)"
            ]
        }
        {
            name: "Adon Fox (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            id: 657
            xws_name: "adonfox-battleoverendor"
            faction: "Rebel Alliance"
            ship: "A/SF-01 B-wing"
            skill: 1
            points: 5
            pointsxwa: 12
            charge: 2
            recurring: 1
            chassis: "Gyro-Cockpit"
            ship_override:
                actions: [
                    "Focus"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"
                    "R-> Lock"
                    "R-Reload"
                ]
            upgrades: [
                "It's A Trap! (BoE)"
                "Parting Gift (BoE)"
                "Proton Rockets"
                "Proton Bombs"
            ]
        }
        {
            name: "Braylen Stramm (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            xws_name: "braylenstramm-battleoverendor"
            id: 658
            xws_name: "braylenstramm-battleoverendor"
            faction: "Rebel Alliance"
            ship: "A/SF-01 B-wing"
            skill: 4
            points: 5
            pointsxwa: 13
            loadoutxwa: 0
            charge: 2
            recurring: 1
            chassis: "Gyro-Cockpit"
            ship_override:
                shields: 5
                actions: [
                    "Focus"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"
                    "R-> Lock"
                    "R-Reload"
                ]
            upgrades: [
                "It's A Trap! (BoE)"
                "Homing Missiles"
                "Proton Bombs"
                "Delayed Fuses"
            ]
        }
        {
            name: "Gina Moonsong (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            xws_name: "ginamoonsong-battleoverendor"
            id: 659
            xws_name: "ginamoonsong-battleoverendor"
            faction: "Rebel Alliance"
            ship: "A/SF-01 B-wing"
            skill: 5
            points: 5
            pointsxwa: 16
            loadoutxwa: 0
            charge: 2
            recurring: 1
            chassis: "Gyro-Cockpit"
            ship_override:
                shields: 5
                actions: [
                    "Focus"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"
                    "R-> Lock"
                    "R-Reload"
                ]
            upgrades: [
                "It's A Trap! (BoE)"
                "Juke"
                "Proton Torpedoes"
                "Ion Bombs"
            ]
        }
        {
            name: "Kendy Idele (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            xws_name: "kendyidele-battleoverendor"
            id: 660
            xws_name: "kendyidele-battleoverendor"
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 4
            points: 4
            pointsxwa: 10
            loadoutxwa: 0
            chassis: "Locked S-Foils"
            ship_override:
                actions: [
                    "Focus"
                    "R-> Boost"
                    "Lock"
                    "Barrel Roll"
                    "R-> Focus"
                    "Boost"
                ]
            upgrades: [
                "It's A Trap! (BoE)"
                "Ion Missiles"
                "Modified R4-P unit (BoE)"
                "Chaff Particles (BoE)"
            ]
        }
        {
            name: "Wedge Antilles (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            xws_name: "wedgeantilles-battleoverendor"
            id: 661
            xws_name: "wedgeantilles-battleoverendor"
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 6
            points: 5
            pointsxwa: 16
            loadoutxwa: 0
            chassis: "Locked S-Foils"
            ship_override:
                shields: 3
                actions: [
                    "Focus"
                    "R-> Boost"
                    "Lock"
                    "Barrel Roll"
                    "R-> Focus"
                    "Boost"
                ]
            upgrades: [
                "It's A Trap! (BoE)"
                "Predator"
                "Adv. Proton Torpedoes"
                "R2-A3 (BoE)"
            ]
        }
        {
            name: "Yendor (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            xws_name: "yendor-battleoverendor"
            id: 662
            xws_name: "yendor-battleoverendor"
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            points: 5
            pointsxwa: 12
            loadoutxwa: 0
            chassis: "Locked S-Foils"
            ship_override:
                actions: [
                    "Focus"
                    "R-> Boost"
                    "Lock"
                    "Barrel Roll"
                    "R-> Focus"
                    "Boost"
                ]
            upgrades: [
                "It's A Trap! (BoE)"
                "Plasma Torpedoes"
                "Stabilizing Astromech (BoE)"
            ]
        }
        {
            name: "Lando Calrissian (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            xws_name: "landocalrissian-battleoverendor"
            id: 663
            xws_name: "landocalrissian-battleoverendor"
            faction: "Rebel Alliance"
            ship: "Modified YT-1300 Light Freighter"
            skill: 5
            points: 7
            pointsxwa: 18
            loadoutxwa: 0
            charge: 2
            chassis: "High Stakes"
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "Evade"
                    "R-Boost"
                    "Rotate Arc"
                    "R-Coordinate"
                    "R-> Focus"
                ]
            upgrades: [
                "Ace In The Hole (BoE)"
                "It's A Trap! (BoE)"
                "Nien Nunb"
                "Airen Cracken (BoE)"
                "Millennium Falcon (BoE)"
            ]
        }
        {
            name: "Captain Yorr (BoE)"
            xwsaddon: "battleoverendor"
            xws_name: "captainyorr-battleoverendor"
            id: 664
            xws_name: "captainyorr-battleoverendor"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            skill: 4
            charge: 2
            points: 6
            pointsxwa: 17
            loadoutxwa: 0
            chassis: "Chiss Engineering"
            ship_override:
                actions: [
                    "Focus"
                    "Evade"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                ]
            upgrades: [
                "No Escape (BoE)"
                "Predator"
                "Ion Cannon"
                "Computer-Assisted Handling (BoE)"
            ]
        }
        {
            name: "Colonel Jendon (BoE)"
            xwsaddon: "battleoverendor"
            xws_name: "coloneljendon-battleoverendor"
            id: 665
            xws_name: "coloneljendon-battleoverendor"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            skill: 6
            points: 7
            pointsxwa: 19
            loadoutxwa: 0
            chassis: "Chiss Engineering"
            ship_override:
                actions: [
                    "Focus"
                    "Evade"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                ]
            upgrades: [
                "No Escape (BoE)"
                "Push The Limit (BoE)"
                "Proton Cannons"
                "Computer-Assisted Handling (BoE)"
            ]
        }
        {
            name: "Maus Monare (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            xws_name: "mausmonare-battleoverendor"
            id: 666
            xws_name: "mausmonare-battleoverendor"
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 3
            points: 5
            pointsxwa: 10
            loadoutxwa: 0
            chassis: "Sensitive Controls"
            upgrades: [
                "No Escape (BoE)"
                "Outmaneuver"
                "Fuel Injection Override (BoE)"
            ]
            ship_override:
                shields: 1
        }
        {
            name: "Sapphire 2 (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            xws_name: "sapphire2-battleoverendor"
            id: 667
            xws_name: "sapphire2-battleoverendor"
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 1
            points: 4
            pointsxwa: 10
            loadoutxwa: 0
            chassis: "Sensitive Controls"
            upgrades: [
                "No Escape (BoE)"
                "Reckless (BoE)"
                "Targeting Matrix (BoE)"
                "Primed Thrusters"
            ]
        }
        {
            name: "Soontir Fel (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            xws_name: "soontirfel-battleoverendor"
            id: 668
            xws_name: "soontirfel-battleoverendor"
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 6
            charge: 2
            points: 5
            pointsxwa: 13
            loadoutxwa: 0
            chassis: "Sensitive Controls"
            upgrades: [
                "Apex Predator (BoE)"
                "No Escape (BoE)"
                "Blank Signature (BoE)"
                "Feedback Emitter (BoE)"
            ]
        }
        {
            name: "Lieutenant Hebsly (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            xws_name: "lieutenanthebsly-battleoverendor"
            id: 669
            xws_name: "lieutenanthebsly-battleoverendor"
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 3
            pointsxwa: 8
            loadoutxwa: 0
            chassis: "Formed Up"
            ship_override:
                hull: 4
                actions: [
                    "Focus"
                    "Evade"
                    "Barrel Roll"
                    "R-> Evade"
                    "R-Boost"
                ]
            upgrades: [
                "Collected (BoE)"
                "Elusive"
                "No Escape (BoE)"
            ]
        }
        {
            name: "Major Mianda (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            xws_name: "majormianda-battleoverendor"
            id: 670
            xws_name: "majormianda-battleoverendor"
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 5
            points: 4
            pointsxwa: 10
            loadoutxwa: 0
            chassis: "Formed Up"
            ship_override:
                shields: 1
                actions: [
                    "Focus"
                    "Evade"
                    "Barrel Roll"
                    "R-> Evade"
                    "R-Coordinate"
                ]
            upgrades: [
                "Ruthless"
                "Swarm Tactics"
                "No Escape (BoE)"
            ]
        }
        {
            name: "Scythe 6 (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            xws_name: "scythe6-battleoverendor"
            id: 671
            xws_name: "scythe6-battleoverendor"
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 2
            points: 3
            pointsxwa: 9
            loadoutxwa: 0
            chassis: "Formed Up"
            ship_override:
                hull: 4
                actions: [
                    "Focus"
                    "Evade"
                    "Barrel Roll"
                    "R-> Evade"
                ]
            upgrades: [
                "No Escape (BoE)"
                "Predator"
                "Ion Maneuvering Jet (BoE)"
                "Targeting Matrix (BoE)"
            ]
        }
        {
            name: "Scimitar 1 (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            xws_name: "scimitar1-battleoverendor"
            id: 672
            xws_name: "scimitar1-battleoverendor"
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 3
            points: 4
            pointsxwa: 12
            loadoutxwa: 0
            charge: 2
            upgrades: [
                "Marksmanship"
                "No Escape (BoE)"
                "Proton Torpedoes"
                "Ion Bombs"
            ]
        }
        {
            name: "Scimitar 3 (BoE)"
            xwsaddon: "battleoverendor"
            unique: true
            xws_name: "scimitar3-battleoverendor"
            id: 673
            xws_name: "scimitar3-battleoverendor"
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 4
            points: 4
            pointsxwa: 10
            loadoutxwa: 0
            charge: 2
            upgrades: [
                "No Escape (BoE)"
                "Parting Gift (BoE)"
                "Proton Torpedoes"
                "Proton Bombs"
            ]
        }
        {
            name: "Lieutenant Karsabi (SSL)"
            xwsaddon: "ssl"
            unique: true
            xws_name: "lieutenantkarsabi-ssl"
            id: 674
            xws_name: "lieutenantkarsabi-ssl"
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            chassis: "Prioritized Weapons Systems"
            skill: 3
            points: 13
            pointsxwa: 13
            loadoutxwa: 0
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "Slam"
                    "R-> Lock"
                    "Slam"
                    "R-> Reload"
                    "Reload"
                ]
            upgrades: [
                "Proton Torpedoes"
                "Saturation Rockets (SL)"
                "Electronic Baffle"
            ]
        }
        {
            name: "Major Vynder (SSL)"
            xwsaddon: "ssl"
            unique: true
            xws_name: "majorvynder-ssl"
            id: 675
            xws_name: "majorvynder-ssl"
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            chassis: "Prioritized Weapons Systems"
            skill: 4
            points: 5
            pointsxwa: 14
            loadoutxwa: 0
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "Slam"
                    "R-> Lock"
                    "Slam"
                    "R-> Reload"
                    "Reload"
                ]
            upgrades: [
                "Long-Range Scanners (SL)"
                "Ion Cannon"
                "Heavy Plasma Missiles (SL)"
            ]
        }
        {
            name: '"Echo" (SSL)'
            xwsaddon: "ssl"
            unique: true
            id: 676
            xws_name: "echo-ssl"
            faction: "Galactic Empire"
            ship: "TIE/ph Phantom"
            skill: 4
            points: 5
            pointsxwa: 14
            loadoutxwa: 0
            charge: 1
            recurring: 1
            upgrades: [
                "Silent Hunter (SL)"
                "Stealth Gambit (SL)"
                "Manual Ailerons (SL)"
            ]
        }
        {
            name: '"Whisper" (SSL)'
            xwsaddon: "ssl"
            unique: true
            id: 677
            xws_name: "whisper-ssl"
            faction: "Galactic Empire"
            ship: "TIE/ph Phantom"
            skill: 5
            points: 15
            pointsxwa: 15
            loadoutxwa: 0
            charge: 2
            upgrades: [
                "Without A Trace (SL)"
                "Relay System (SL)"
                "Stygium Reserve (SL)"
            ]
        }
        {
            name: "Raymus Antilles"
            xwsaddon: "epicsl-rebelalliance"
            unique: true
            xws_name: "raymusantilles-epicsl-rebelalliance"
            id: 678
            xws_name: "raymusantilles-epicsl-rebelalliance"
            faction: "Rebel Alliance"
            ship: "CR90 Corellian Corvette"
            skill: 8
            engagement: 0
            points: 12
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Focus"
                    "Lock"
                    "R-Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Leia Organa (Epic)"
                "R2-D2 (Epic)"
                "C-3PO (Epic)"
                "Turbolaser Battery"
                "Tantive IV"
            ]
        }
        {
            name: "Raymus Antilles (Republic)"
            xwsaddon: "epicsl-galacticrepublic"
            unique: true
            xws_name: "raymusantilles-epicsl-galacticrepublic"
            id: 679
            xws_name: "raymusantilles-epicsl-galacticrepublic"
            faction: "Galactic Republic"
            ship: "CR90 Corellian Corvette"
            skill: 8
            engagement: 0
            points: 12
            pointsxwa: 12
            loadoutxwa: 0
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Focus"
                    "Lock"
                    "R-Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Born for This (Epic)"
                "Bail Organa (Epic)"
                "Secret Provisions (Epic)"
                "Turbolaser Battery"
                "Tantive IV (Republic)"
            ]
        }
        {
            name: "Leia Organa (CR90)"
            xwsaddon: "epicsl"
            unique: true
            xws_name: "leiaorgana-epicsl"
            id: 680
            xws_name: "leiaorgana-epicsl"
            faction: "Resistance"
            ship: "CR90 Corellian Corvette"
            skill: 8
            engagement: 0
            points: 12
            pointsxwa: 12
            loadoutxwa: 0
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Focus"
                    "Lock"
                    "R-Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Nien Nunb (Epic)"
                "Urcos Furdam (Epic)"
                "Tibanna Reserves"
                "Turbolaser Battery"
                "Tantive IV (Resistance)"
            ]
        }
        {
            name: "Iden Versio (Raider)"
            xwsaddon: "epicsl"
            unique: true
            xws_name: "idenversio-epicsl"
            id: 681
            xws_name: "idenversio-epicsl"
            faction: "Galactic Empire"
            ship: "Raider-class Corvette"
            skill: 8
            engagement: 0
            points: 13
            pointsxwa: 13
            loadoutxwa: 0
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Focus"
                    "Lock"
                    "Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Ruthless"
                "Fanatical (Epic)"
                "Inferno Squad (Epic)"
                "Twin Missile Launcher (Epic)"
                "Corvus (Epic)"
            ]
        }
        {
            name: "Gideon Hask (Raider)"
            xwsaddon: "epicsl"
            unique: true
            xws_name: "gideonhask-epicsl"
            id: 682
            xws_name: "gideonhask-epicsl"
            faction: "First Order"
            ship: "Raider-class Corvette"
            skill: 8
            engagement: 0
            points: 13
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Focus"
                    "Lock"
                    "Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Agent Terex (Epic)"
                "Protectorate Gleb (Epic)"
                "Jinata Security Forces (Epic)"
                "Twin Missile Launcher (Epic)"
                "Precursor (Epic)"
            ]
        }
        {
            name: "Aut-0"
            xwsaddon: "epicsl"
            unique: true
            xws_name: "aut0-epicsl"
            id: 683
            xws_name: "aut-0-epicsl"
            faction: "Separatist Alliance"
            ship: "Gozanti-class Cruiser"
            skill: 7
            engagement: 1
            points: 8
            pointsxwa: 8
            loadoutxwa: 0
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Coordinate"
                    "Lock"
                    "Coordinate"
                    "Jam"
                ]
            upgrades: [
                "TX-25 (Epic)"
                "Endless Hordes (Epic)"
                "Alpha Revue (Epic)"
            ]
        }
        {
            name: "Cerra Fellian"
            xwsaddon: "epicsl"
            unique: true
            xws_name: "cerrafellian-epicsl"
            id: 684
            xws_name: "cerrafellian-epicsl"
            faction: "First Order"
            ship: "Gozanti-class Cruiser"
            skill: 7
            engagement: 1
            points: 8
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Coordinate"
                    "Lock"
                    "Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Petty Officer Thanisson (Epic)"
                "Ion Cannon Battery"
                "Malefactor (Epic)"
            ]
        }
        {
            name: "Rik Virgilio"
            xwsaddon: "epicsl"
            unique: true
            xws_name: "rikvirgilio-epicsl"
            id: 685
            xws_name: "rikvirgilio-epicsl"
            faction: "Galactic Empire"
            ship: "Gozanti-class Cruiser"
            skill: 7
            engagement: 1
            points: 8
            pointsxwa: 8
            loadoutxwa: 0
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Coordinate"
                    "Lock"
                    "Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Thrawn (Epic)"
                "Heavy Laser Cannon Turret (Epic)"
                "Blood Crow (Epic)"
            ]
        }
        {
            name: "Wez Synat"
            xwsaddon: "epicsl"
            unique: true
            xws_name: "wezsynat-epicsl"
            id: 686
            xws_name: "wezsynat-epicsl"
            faction: "Galactic Republic"
            ship: "Gozanti-class Cruiser"
            skill: 7
            engagement: 1
            points: 8
            pointsxwa: 8
            loadoutxwa: 0
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Coordinate"
                    "Lock"
                    "Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Clone Commander Cody"
                "Point Defense Battery (Epic)"
                "Spectre of Nayr (Epic)"
            ]
        }
        {
            name: "Oraf Desyk"
            xwsaddon: "epicsl"
            unique: true
            xws_name: "orafdesyk-epicsl"
            id: 687
            xws_name: "orafdesyk-epicsl"
            faction: "Resistance"
            ship: "GR-75 Medium Transport"
            skill: 7
            engagement: 1
            points: 8
            pointsxwa: 8
            loadoutxwa: 0
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Coordinate"
                    "R-Lock"
                    "Coordinate"
                    "Jam"
                ]
            upgrades: [
                "GA-75 (Epic)"
                "Adaptive Shields"
                "Hosnian Lament (Epic)"
            ]
        }
        {
            name: "Trebor Zednem"
            xwsaddon: "epicsl"
            unique: true
            xws_name: "treborzednem-epicsl"
            id: 688
            xws_name: "treborzednem-epicsl"
            faction: "Rebel Alliance"
            ship: "GR-75 Medium Transport"
            skill: 7
            engagement: 1
            points: 8
            pointsxwa: 8
            loadoutxwa: 0
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Coordinate"
                    "R-Lock"
                    "Coordinate"
                    "Jam"
                ]
            upgrades: [
                "Toryn Farr"
                "Planetary Ion Bombardment (Epic)"
                "Bright Hope"
            ]
        }
        {
            name: "Cikatro Vizago"
            xwsaddon: "epicsl"
            unique: true
            xws_name: "cikatrovizago-epicsl"
            id: 689
            xws_name: "cikatrovizago-epicsl"
            faction: "Scum and Villainy"
            ship: "C-ROC Cruiser"
            skill: 7
            engagement: 1
            points: 8
            pointsxwa: 8
            loadoutxwa: 0
            ship_override:
                actions: [
                    "Focus"
                    "Reinforce"
                    "R-> Jam"
                    "Lock"
                    "R-Coordinate"
                    "Jam"
                    "Rotate Arc"
                ]
            upgrades: [
                "Azmorigan (Epic)"
                "Illegal Countermeasures (Epic)"
                "Modified Dorsal Turret (Epic)"
                "Broken Horn"
            ]
        }
        {
            name: "Asajj Ventress (Trident)"
            xwsaddon: "epicsl"
            unique: true
            xws_name: "asajjventress-epicsl"
            id: 690
            xws_name: "asajjventress-epicsl"
            faction: "Separatist Alliance"
            ship: "Trident-class Assault Ship"
            skill: 8
            engagement: 1
            points: 8
            pointsxwa: 8
            loadoutxwa: 0
            force: 1
            ship_override:
                actions: [
                    "Focus"
                    "R-Evade"
                    "Reinforce"
                    "Lock"
                    "R-Coordinate"
                ]
            upgrades: [
                "AQ-Series Battle Droids (Epic)"
                "Tractor Tentacles"
                "Drill Beak (Epic)"
                "Trident (Epic)"
            ]
        }
        {
            name: "Sorc Tormo"
            xwsaddon: "epicsl"
            unique: true
            xws_name: "sorctormo-epicsl"
            id: 691
            xws_name: "sorctormo-epicsl"
            faction: "Scum and Villainy"
            ship: "Trident-class Assault Ship"
            skill: 8
            engagement: 1
            points: 8
            pointsxwa: 8
            loadoutxwa: 0
            ship_override:
                actions: [
                    "Focus"
                    "R-Evade"
                    "Reinforce"
                    "Lock"
                    "R-Coordinate"
                ]
            upgrades: [
                "Caij Vanda (Epic)"
                "Tractor Tentacles"
                "Drill Beak (Epic)"
                "Nautolan's Revenge (Epic)"
            ]
        }
        {
            name: "Kylo Ren (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "kyloren-evacuationofdqar"
            id: 692
            xws_name: "kyloren-evacuationofdqar"
            faction: "First Order"
            ship: "TIE/vn Silencer"
            skill: 5
            points: 7
            pointsxwa: 18
            loadoutxwa: 0
            force: 3
            upgrades: [
                "Determination (EoD)"
                "Malice"
                "Proton Torpedoes"
            ]
        }
        {
            name: '"Scorch" (EoD)'
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 693
            xws_name: "scorch-evacuationofdqar"
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 4
            points: 4
            pointsxwa: 9
            loadoutxwa: 0
            chassis: "Merciless"
            upgrades: [
                "Determination (EoD)"
                "Fanatical"
                "Threat Sensors (EoD)"
            ]
        }
        {
            name: '"Longshot" (EoD)'
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 694
            xws_name: "longshot-evacuationofdqar"
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 3
            points: 3
            pointsxwa: 8
            loadoutxwa: 0
            chassis: "Merciless"
            upgrades: [
                "Determination (EoD)"
                "Fanatical"
                "Experimental Scanners (EoD)"
            ]
        }
        {
            name: '"Midnight" (EoD)'
            xwsaddon: "evacuationofdqar"
            unique: true
            id: 695
            xws_name: "midnight-evacuationofdqar"
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 6
            points: 4
            pointsxwa: 9
            loadoutxwa: 0
            chassis: "Merciless"
            upgrades: [
                "Determination (EoD)"
                "Targeting Synchronizer"
                "Advanced Warning Systems (EoD)"
            ]
        }
        {
            name: "Zeta 5 (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "zeta5-evacuationofdqar"
            id: 696
            xws_name: "zeta5-evacuationofdqar"
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 2
            points: 3
            pointsxwa: 8
            loadoutxwa: 0
            chassis: "Merciless"
            upgrades: [
                "Determination (EoD)"
                "Pattern Analyzer"
                "Targeting Matrix (BoE)"
            ]
        }
        {
            name: "Omega 2 (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "omega2-evacuationofdqar"
            id: 697
            xws_name: "omega2-evacuationofdqar"
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 3
            points: 3
            pointsxwa: 7
            loadoutxwa: 0
            chassis: "Merciless"
            ship_override:
                actions: [
                    "Focus"
                    "Evade"
                    "Lock"
                    "Barrel Roll"
                    "R-> Evade"
                ]
            upgrades: [
                "Determination (EoD)"
                "Targeting Relay (EoD)"
            ]
        }
        {
            name: "Lieutenant LeHuse (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "lieutenantlehuse-evacuationofdqar"
            id: 698
            xws_name: "lieutenantlehuse-evacuationofdqar"
            faction: "First Order"
            ship: "TIE/sf Fighter"
            skill: 5
            points: 4
            pointsxwa: 11
            loadoutxwa: 0
            chassis: "Heavy Weapon Turret (EoD)"
            ship_override:
                actions: [
                    "Focus"
                    "Evade"
                    "Lock"
                    "Barrel Roll"
                    "Reload"
                    "> Lock"
                ]
            upgrades: [
                "Determination (EoD)"
                "Concussion Missiles"
                "First Order Ordnance Tech (EoD)"
            ]
        }
        {
            name: "Theta 3 (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "theta3-evacuationofdqar"
            id: 699
            xws_name: "theta3-evacuationofdqar"
            faction: "First Order"
            ship: "TIE/sf Fighter"
            skill: 3
            points: 4
            pointsxwa: 11
            loadoutxwa: 0
            charge: 2
            chassis: "Heavy Weapon Turret (EoD)"
            ship_override:
                actions: [
                    "Focus"
                    "Evade"
                    "Lock"
                    "Barrel Roll"
                    "Reload"
                    "> Lock"
                ]
            upgrades: [
                "Seeker Missiles (YLF)"
                "Passive Sensors"
                "First Order Ordnance Tech (EoD)"
            ]
        }
        {
            name: "Theta 4 (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "theta4-evacuationofdqar"
            id: 700
            xws_name: "theta4-evacuationofdqar"
            faction: "First Order"
            ship: "TIE/sf Fighter"
            skill: 4
            points: 4
            pointsxwa: 11
            loadoutxwa: 0
            charge: 1
            recurring: 1
            ship_override:
                actions: [
                    "Focus"
                    "Evade"
                    "Lock"
                    "Barrel Roll"
                ]
                chassis: "Heavy Weapon Turret (EoD)"
            upgrades: [
                "Determination (EoD)"
                "Barrage Rockets"
                "Pattern Analyzer"
            ]
        }
        {
            name: "Petty Officer Thanisson (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "pettyofficerthanisson-evacuationofdqar"
            id: 701
            xws_name: "pettyofficerthanisson-evacuationofdqar"
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 1
            points: 6
            pointsxwa: 16
            loadoutxwa: 0
            charge: 1
            recurring: 1
            chassis: ""
            upgrades: [
                "General Hux (EoD)"
                "Advanced Sensors"
                "Interference Array (EoD)"
            ]
        }
        {
            name: "Poe Dameron (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "poedameron-evacuationofdqar"
            id: 702
            xws_name: "poedameron-evacuationofdqar"
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 6
            points: 6
            pointsxwa: 16
            loadoutxwa: 0
            charge: 1
            recurring: 1
            chassis: "Adaptive S-Foils"
            ship_override:
                actions: [
                    "Focus"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                    "Slam"
                ]
            upgrades: [
                "Heroic"
                "BB-8 (EoD)"
                "Primed Overdrive Thrusters (EoD)"
                "Black One (EoD)"
            ]
        }
        {
            name: "Jaycris Tubbs (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "jaycristubbs-evacuationofdqar"
            id: 703
            xws_name: "jaycristubbs-evacuationofdqar"
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 1
            points: 4
            pointsxwa: 10
            loadoutxwa: 0
            chassis: "Adaptive S-Foils"
            ship_override:
                actions: [
                    "Focus"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                    "R-> Focus"
                ]
            upgrades: [
                "For The Cause (EoD)"
                "R0 Astromech (EoD)"
            ]
        }
        {
            name: "Stomeroni Starck (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "stomeronistarck-evacuationofdqar"
            id: 704
            xws_name: "stomeronistarck-evacuationofdqar"
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 5
            pointsxwa: 12
            loadoutxwa: 0
            chassis: "Adaptive S-Foils"
            ship_override:
                actions: [
                    "Focus"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                    "R-> Focus"
                ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0]
                [ 2, 0, 0, 0, 2, 0, 0, 0]
                [ 1, 1, 1, 1, 1, 0, 0, 0]
                [ 2, 1, 1, 1, 2, 0, 3, 3]
                [ 0, 0, 1, 0, 0, 0, 0, 0]
                [ 0, 0, 1, 0, 0, 3, 0, 0]
            ]
            upgrades: [
                "For The Cause (EoD)"
                "Accelerated Sensor Array (EoD)"
                "R5-X3"
            ]
        }
        {
            name: "C'ai Threnalli (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "caithrenalli-evacuationofdqar"
            id: 705
            xws_name: "caithrenalli-evacuationofdqar"
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 4
            pointsxwa: 11
            loadoutxwa: 0
            chassis: "Adaptive S-Foils"
            ship_override:
                actions: [
                    "Focus"
                    "R-> Barrel Roll"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                    "R-> Focus"
                ]
            upgrades: [
                "For The Cause (EoD)"
                "Heroic"
                "BB Astromech"
                "Repulsorlift Engines (EoD)"
            ]
        }
        {
            name: "Ronith Blario (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "ronithblario-evacuationofdqar"
            id: 706
            xws_name: "ronithblario-evacuationofdqar"
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 2
            points: 3
            pointsxwa: 9
            loadoutxwa: 0
            upgrades: [
                "Escort Fighter (EoD)"
                "Heroic"
                "Starbird Slash"
            ]
        }
        {
            name: "Tallissan Lintra (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "tallissanlintra-evacuationofdqar"
            id: 707
            xws_name: "tallissanlintra-evacuationofdqar"
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 5
            points: 4
            pointsxwa: 11
            loadoutxwa: 0
            charge: 1
            recurring: 1
            ship_override:
                actions: [
                    "Focus"
                    "R-> Coordinate"
                    "Evade"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                ]
            upgrades: [
                "For The Cause (EoD)"
                "Heroic"
                "Push The Limit (BoE)"
                "XX-23 S-Thread Tracers"
            ]
        }
        {
            name: "Zizi Tlo (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "zizitlo-evacuationofdqar"
            id: 708
            xws_name: "zizitlo-evacuationofdqar"
            faction: "Resistance"
            ship: "RZ-2 A-wing"
            skill: 5
            points: 4
            pointsxwa: 11
            loadoutxwa: 0
            charge: 1
            recurring: 1
            upgrades: [
                "For The Cause (EoD)"
                "Heroic"
                "Precision Holo-Targeter (EoD)"
            ]
        }
        {
            name: "Pammich Nerro Goode (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "pammichnerrogoode-evacuationofdqar"
            id: 709
            xws_name: "pammichnerrogoode-evacuationofdqar"
            faction: "Resistance"
            ship: "Resistance Transport"
            skill: 3
            points: 4
            pointsxwa: 9
            loadoutxwa: 0
            chassis: "Leave No One Behind"
            upgrades: [
                "For The Cause (EoD)"
                "R0-GR (EoD)"
                "Black Squadron R4 (EoD)"
            ]
        }
        {
            name: "Finch Dallow (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "finchdallow-evacuationofdqar"
            id: 710
            xws_name: "finchdallow-evacuationofdqar"
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 4
            points: 6
            pointsxwa: 16
            loadoutxwa: 0
            chassis: "Modular Bombing Magazine"
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "Rotate Arc"
                    "Reload"
                    "R-> Reinforce"
                ]
            upgrades: [
                "Nix Jerd (EoD)"
                "Paige Tico (EoD)"
                "Proton Bombs"
                "Thermal Detonators"
            ]
        }
        {
            name: "Vennie (EoD)"
            xwsaddon: "evacuationofdqar"
            unique: true
            xws_name: "vennie-evacuationofdqar"
            id: 711
            xws_name: "vennie-evacuationofdqar"
            faction: "Resistance"
            ship: "MG-100 StarFortress"
            skill: 2
            points: 6
            pointsxwa: 16
            loadoutxwa: 0
            chassis: "Modular Bombing Magazine"
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "Rotate Arc"
                    "R-> Focus"
                    "Reload"
                ]
            upgrades: [
                "Perceptive Copilot"
                "Dedicated Gunners (EoD)"
                "Proton Bombs"
            ]
        }
        {
            name: "Boba Fett (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            xws_name: "bobafett-armedanddangerous"
            id: 712
            xws_name: "bobafett-armedanddangerous"
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
            skill: 5
            points: 7
            pointsxwa: 18
            loadoutxwa: 0
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "Boost"
                    "R-> Lock"
                ]
            upgrades: [
                "Homing Beacon (AaD)"
                "Fennec Shand (AaD)"
                "Seismic Charges"
                "Slave I (Separatist)"
            ]
        }
        {
            name: "The Mandalorian (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            xws_name: "themandalorian-armedanddangerous"
            id: 713
            xws_name: "themandalorian-armedanddangerous"
            faction: "Scum and Villainy"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 5
            points: 4
            pointsxwa: 11
            loadoutxwa: 0
            chassis: "Restored Speedster"
            force: 2
            forcerecurring: 0
            ship_override:
                actions: [
                    "Focus"
                    "Lock"
                    "Barrel Roll"
                    "Boost"
                    "Slam"
                    "R-> Lock"
                ]
            upgrades: [
                "Outmaneuver"
                "The Child (AaD)"
                "Kineso-Switch (AaD)"
                "Calibrated Laser Targeting"
            ]
        }
        {
            name: "Han Solo (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            xws_name: "hansolo-armedanddangerous"
            id: 714
            xws_name: "hansolo-armedanddangerous"
            faction: "Scum and Villainy"
            ship: "Customized YT-1300 Light Freighter"
            skill: 6
            points: 6
            pointsxwa: 17
            loadoutxwa: 0
            charge: 1
            chassis: "Coaxium Injectors"
            ship_override:
                shields: 5
                actions: [
                    "Focus"
                    "Lock"
                    "R-Boost"
                    "Rotate Arc"
                    "R-> Focus"
                ]
            upgrades: [
                "Chewbacca (AaD)"
                "L3-37 (AaD)"
                "Tobias Beckett (AaD)"
                "Lando's Millennium Falcon (AaD)"
            ]
        }
        {
            name: "Bo-Katan Kryze (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            xws_name: "bokatankryze-armedanddangerous"
            id: 715
            xws_name: "bo-katankryze-armedanddangerous"
            faction: "Scum and Villainy"
            ship: "Gauntlet Fighter"
            skill: 4
            points: 6
            pointsxwa: 16
            loadoutxwa: 0
            charge: 2
            chassis: "Winged Reversal"
            upgrades: [
                "Mandalorian Tactics (AaD)"
                "Nite Owl Sentries (AaD)"
                "Veteran Tail Gunner"
            ]
        }
        {
            name: "Dengar (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            xws_name: "dengar-armedanddangerous"
            id: 716
            xws_name: "dengar-armedanddangerous"
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 6
            points: 6
            pointsxwa: 15
            loadoutxwa: 0
            charge: 1
            recurring: 1
            upgrades: [
                "R2-G8 (AaD)"
                "Synchronized Handling (AaD)"
                "Starboard Thrusters (AaD)"
                "Punishing One"
            ]
        }
        {
            name: "Bossk (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            xws_name: "bossk-armedanddangerous"
            id: 717
            xws_name: "bossk-armedanddangerous"
            faction: "Scum and Villainy"
            ship: "YV-666 Light Freighter"
            skill: 4
            points: 6
            pointsxwa: 15
            loadoutxwa: 0
            chassis: "Imposing Behemoth"
            upgrades: [
                "Embo (AaD)"
                "Contraband Cybernetics"
                "Hound's Tooth (AaD)"
            ]
        }
        {
            name: "Cad Bane (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            xws_name: "cadbane-armedanddangerous"
            id: 718
            xws_name: "cadbane-armedanddangerous"
            faction: "Scum and Villainy"
            ship: "Rogue-class Starfighter"
            skill: 4
            points: 4
            pointsxwa: 10
            loadoutxwa: 0
            charge: 2
            recurring: 1
            ship_override:
                actions: [
                    "Focus"
                    "R-> Boost"
                    "Focus"
                    "R-> Barrel Roll"
                    "Evade"
                    "R-> Barrel Roll"
                    "Lock"
                    "R-Cloak"
                ]
            upgrades: [
                "Flechette Cannons (AaD)"
                "Todo 360 (AaD)"
                "Xanadu Blood (AaD)"
            ]
        }
        {
            name: "Fenn Rau (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            xws_name: "fennrau-armedanddangerous"
            id: 719
            xws_name: "fennrau-armedanddangerous"
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 6
            points: 6
            pointsxwa: 15
            loadoutxwa: 0
            ship_override:
                hull: 5
            upgrades: [
                "Fearless"
                "Adaptable Power Systems (AaD)"
                "Beskar Reinforced Plating"
            ]
        }
        {
            name: "Prince Xizor (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            xws_name: "princexizor-armedanddangerous"
            id: 720
            xws_name: "princexizor-armedanddangerous"
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 4
            points: 5
            pointsxwa: 13
            loadoutxwa: 0
            charge: 3
            chassis: "Adaptative Microthrusters"
            ship_override:
                shields: 2
            upgrades: [
                "Crime Lord (AaD)"
                "Mandalorian Optics"
                "Virago (AaD)"
            ]
        }
        {
            name: "Zuckuss (AaD)"
            xwsaddon: "armedanddangerous"
            unique: true
            xws_name: "zuckuss-armedanddangerous"
            id: 721
            xws_name: "zuckuss-armedanddangerous"
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 3
            points: 5
            pointsxwa: 13
            loadoutxwa: 0
            chassis: "Enduring Limitations"
            ship_override:
                shields: 5
                actions: [
                    "Focus"
                    "Lock"
                    "Barrel Roll"
                    "R-> Calculate"
                    "Jam"
                    "R-> Calculate"
                ]
            upgrades: [
                "Persistent Tracker (AaD)"
                "Tractor Beam"
                "4-LOM (AaD)"
                "Mist Hunter (AaD)"
            ]
        }
    ]

    upgradesById: [
        {
            name: '"Chopper" (Astromech)'
            id: 0
            slot: "Astromech"
            xws: "chopper"
            points: 2
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: '"Genius"'
            id: 1
            slot: "Astromech"
            points: 2
            pointsxwa: 0
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "R2 Astromech"
            id: 2
            slot: "Astromech"
            points: 6
            charge: 2
            pointsxwa: 8
        }
        {
            name: "R2-D2"
            id: 3
            unique: true
            slot: "Astromech"
            points: 8
            pointsxwa: 10
            charge: 3
            faction: "Rebel Alliance"
        }
        {
            name: "R3 Astromech"
            id: 4
            slot: "Astromech"
            points: 3
        }
        {
            name: "R4 Astromech"
            id: 5
            slot: "Astromech"
            points: 2
            restrictions: [
                ["Base", "Small"]
            ]
            modifier_func: (stats) ->
                if stats.maneuvers[1]?
                    for turn in [0 ... stats.maneuvers[1].length]
                        if turn > 4
                            continue
                        if stats.maneuvers[1][turn] > 1
                            stats.maneuvers[1][turn]--
                        if stats.maneuvers[2][turn] > 1
                            stats.maneuvers[2][turn]--
        }
        {
            name: "R5 Astromech"
            id: 6
            slot: "Astromech"
            points: 4
            pointsxwa: 7
            charge: 2
        }
        {
            name: "R5-D8"
            id: 7
            unique: true
            slot: "Astromech"
            points: 6
            pointsxwa: 9
            charge: 3
            faction: "Rebel Alliance"
        }
        {
            name: "R5-P8"
            id: 8
            slot: "Astromech"
            points: 4
            unique: true
            faction: "Scum and Villainy"
            charge: 3
        }
        {
            name: "R5-TK"
            id: 9
            slot: "Astromech"
            points: 0
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Heavy Laser Cannon"
            id: 10
            slot: "Cannon"
            points: 5
            attackbull: 4
            range: """2-3"""
        }
        {
            name: "Ion Cannon"
            id: 11
            slot: "Cannon"
            points: 6
            attack: 3
            range: """1-3"""
        }
        {
            name: "Jamming Beam"
            id: 12
            slot: "Cannon"
            points: 1
            attack: 3
            range: """1-2"""
        }
        {
            name: "Tractor Beam"
            id: 13
            slot: "Cannon"
            points: 6
            attack: 3
            range: """1-3"""
        }
        {
            name: "Admiral Sloane"
            id: 14
            slot: "Crew"
            points: 16
            pointsxwa: 25
            unique: true
            faction: "Galactic Empire"
        }
        {
            name: "Agent Kallus"
            id: 15
            slot: "Crew"
            points: 5
            unique: true
            faction: "Galactic Empire"
            applies_condition: 'Hunted'.canonicalize()
        }
        {
            name: "Boba Fett"
            id: 16
            slot: "Crew"
            points: 2
            pointsxwa: 7
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Baze Malbus"
            id: 17
            slot: "Crew"
            points: 5
            pointsxwa: 7
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "C-3PO"
            id: 18
            slot: "Crew"
            points: 7
            unique: true
            faction: "Rebel Alliance"
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Cassian Andor"
            id: 19
            slot: "Crew"
            points: 5
            pointsxwa: 7
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Cad Bane"
            id: 20
            slot: "Crew"
            points: 3
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Chewbacca"
            id: 21
            slot: "Crew"
            points: 3
            unique: true
            faction: "Rebel Alliance"
            charge: 2
            recurring: 1
        }
        {
            name: "Chewbacca (Scum)"
            id: 22
            slot: "Crew"
            points: 3
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: '"Chopper" (Crew)'
            id: 23
            slot: "Crew"
            points: 1
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Ciena Ree"
            id: 24
            slot: "Crew"
            points: 4
            unique: true
            faction: "Galactic Empire"
            restrictions: [
                ["Action", "Coordinate"]
            ]
        }
        {
            name: "Cikatro Vizago"
            id: 25
            slot: "Crew"
            points: 1
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Darth Vader"
            id: 26
            slot: "Crew"
            points: 12
            pointsxwa: 15
            force: 1
            unique: true
            faction: "Galactic Empire"
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Death Troopers"
            id: 27
            slot: "Crew"
            points: 8
            pointsxwa: 10
            unique: true
            faction: "Galactic Empire"
            restrictions: [
                ["Slot", "Crew"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Director Krennic"
            id: 28
            slot: "Crew"
            points: 4
            unique: true
            faction: "Galactic Empire"
            applies_condition: 'Optimized Prototype'.canonicalize()
            modifier_func: (stats) ->
                stats.actions.push 'Lock' if 'Lock' not in stats.actions
        }
        {
            name: "Emperor Palpatine"
            id: 29
            slot: "Crew"
            points: 12
            force: 1
            unique: true
            faction: "Galactic Empire"
            restrictions: [
                ["Slot", "Crew"]
            ]
            also_occupies_upgrades: [ "Crew" ]
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Freelance Slicer"
            id: 30
            slot: "Crew"
            points: 3
        }
        {
            name: "4-LOM"
            id: 31
            slot: "Crew"
            points: 8
            pointsxwa: 5
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: 'GNK "Gonk" Droid'
            id: 32
            slot: "Crew"
            points: 5
            charge: 1
        }
        {
            name: "Grand Inquisitor"
            id: 33
            slot: "Crew"
            points: 15
            pointsxwa: 12
            unique: true
            force: 1
            faction: "Galactic Empire"
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Grand Moff Tarkin"
            id: 34
            slot: "Crew"
            points: 4
            unique: true
            faction: "Galactic Empire"
            charge: 2
            recurring: 1
            restrictions: [
                ["Action", "Lock"]
            ]
        }
        {
            name: "Hera Syndulla"
            id: 35
            slot: "Crew"
            points: 4
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "IG-88D"
            id: 36
            slot: "Crew"
            points: 3
            unique: true
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions

        }
        {
            name: "Informant"
            id: 37
            slot: "Crew"
            points: 4
            pointsxwa: 6
            unique: true
            applies_condition: 'Listening Device'.canonicalize()
        }
        {
            name: "ISB Slicer"
            id: 38
            slot: "Crew"
            points: 1
            faction: "Galactic Empire"
        }
        {
            name: "Jabba the Hutt"
            id: 39
            slot: "Crew"
            points: 11
            unique: true
            faction: "Scum and Villainy"
            charge: 4
            restrictions: [
                ["Slot", "Crew"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Jyn Erso"
            id: 40
            slot: "Crew"
            points: 7
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Kanan Jarrus"
            id: 41
            slot: "Crew"
            points: 12
            force: 1
            unique: true
            faction: "Rebel Alliance"
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Ketsu Onyo"
            id: 42
            slot: "Crew"
            points: 4
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "L3-37"
            id: 43
            slot: "Crew"
            points: 4
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Lando Calrissian"
            id: 44
            slot: "Crew"
            points: 2
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Lando Calrissian (Scum)"
            id: 45
            slot: "Crew"
            points: 4
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Leia Organa"
            id: 46
            slot: "Crew"
            points: 7
            unique: true
            faction: "Rebel Alliance"
            charge: 3
            recurring: 1
        }
        {
            name: "Latts Razzi"
            id: 47
            slot: "Crew"
            points: 5
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Maul"
            id: 48
            slot: "Crew"
            variablepoints: "Faction"
            points: [10,12]
            pointsxwa: 12
            unique: true
            keyword: ["Dark Side"]
            faction: ["Scum and Villainy", "Rebel Alliance"]
            force: 1
            restrictions: [
                ["FactionOrUnique", "Ezra Bridger", "Scum and Villainy"]
            ]
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Minister Tua"
            id: 49
            slot: "Crew"
            points: 4
            unique: true
            faction: "Galactic Empire"
        }
        {
            name: "Moff Jerjerrod"
            id: 50
            slot: "Crew"
            points: 7
            unique: true
            faction: "Galactic Empire"
            charge: 2
            recurring: 1
            restrictions: [
                ["Action", "Coordinate"]
            ]
        }
        {
            name: "Magva Yarro"
            id: 51
            slot: "Crew"
            points: 5
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Nien Nunb"
            id: 52
            slot: "Crew"
            points: 5
            unique: true
            faction: "Rebel Alliance"
            modifier_func: (stats) ->
                if stats.maneuvers[1]?
                    for s in (stats.maneuvers)
                        if s[1] > 1
                            s[1]--
                        if s[3] > 1
                            s[3]--
        }
        {
            name: "Novice Technician"
            id: 53
            slot: "Crew"
            points: 2
        }
        {
            name: "Perceptive Copilot"
            id: 54
            slot: "Crew"
            points: 8
        }
        {
            name: "Qi'ra"
            id: 55
            slot: "Crew"
            points: 2
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "R2-D2 (Crew)"
            id: 56
            slot: "Crew"
            points: 8
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Sabine Wren"
            id: 57
            slot: "Crew"
            points: 3
            pointsxwa: 5
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Saw Gerrera"
            id: 58
            slot: "Crew"
            points: 9
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Seasoned Navigator"
            id: 59
            slot: "Crew"
            points: 7
        }
        {
            name: "Seventh Sister"
            id: 60
            slot: "Crew"
            points: 9
            force: 1
            unique: true
            faction: "Galactic Empire"
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Tactical Officer"
            id: 61
            slot: "Crew"
            points: 3
            restrictions: [
                ["Action", "R-Coordinate"]
            ]
            modifier_func: (stats) ->
                stats.actions.push 'Coordinate' if 'Coordinate' not in stats.actions
        }
        {
            name: "Tobias Beckett"
            id: 62
            slot: "Crew"
            points: 2
            pointsxwa: 8
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "0-0-0"
            id: 63
            slot: "Crew"
            points: 5
            unique: true
            faction: ["Scum and Villainy", "Galactic Empire"]
            restrictions: [
                ["FactionOrUnique", "Darth Vader", "Scum and Villainy"]
            ]
        }
        {
            name: "Unkar Plutt"
            id: 64
            slot: "Crew"
            points: 2
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: '"Zeb" Orrelios'
            id: 65
            slot: "Crew"
            points: 1
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Zuckuss"
            id: 66
            slot: "Crew"
            points: 6
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Bomblet Generator"
            id: 67
            slot: "Device"
            points: 2
            pointsxwa: 3
            charge: 2
            applies_condition: 'Bomblet'.canonicalize()
            restrictions: [
                ["Slot", "Device"]
            ]
            also_occupies_upgrades: [ "Device" ]
        }
        {
            name: "Conner Nets"
            id: 68
            slot: "Device"
            points: 5
            charge: 1
            applies_condition: 'Conner Net'.canonicalize()
        }
        {
            name: "Proton Bombs"
            id: 69
            slot: "Device"
            points: 5
            charge: 2
            applies_condition: 'Proton Bomb'.canonicalize()
        }
        {
            name: "Proximity Mines"
            id: 70
            slot: "Device"
            points: 10
            pointsxwa: 9
            charge: 2
            applies_condition: 'Proximity Mine'.canonicalize()
        }
        {
            name: "Seismic Charges"
            id: 71
            slot: "Device"
            points: 3
            charge: 2
            applies_condition: 'Seismic Charge'.canonicalize()
        }
        {
            name: "Heightened Perception"
            id: 72
            slot: "Force"
            points: 3
            pointsxwa: 5
        }
        {
            name: "Instinctive Aim"
            id: 73
            slot: "Force"
            points: 2
        }
        {
            name: "Supernatural Reflexes"
            id: 74
            slot: "Force"
            points: 24
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Sense"
            id: 75
            slot: "Force"
            points: 6
            pointsxwa: 10
        }
        {
            name: "Agile Gunner"
            id: 76
            slot: "Gunner"
            points: 1
            pointsxwa: 4
        }
        {
            name: "Bistan"
            id: 77
            slot: "Gunner"
            points: 8
            pointsxwa: 12
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Bossk"
            id: 78
            slot: "Gunner"
            points: 6
            pointsxwa: 4
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "BT-1"
            id: 79
            slot: "Gunner"
            points: 2
            unique: true
            faction: ["Scum and Villainy", "Galactic Empire"]
            restrictions: [
                ["FactionOrUnique", "Darth Vader", "Scum and Villainy"]
            ]
        }
        {
            name: "Dengar"
            id: 80
            slot: "Gunner"
            points: 6
            unique: true
            faction: "Scum and Villainy"
            recurring: 1
            charge: 1

        }
        {
            name: "Ezra Bridger"
            id: 81
            slot: "Gunner"
            points: 9
            force: 1
            unique: true
            faction: "Rebel Alliance"
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Fifth Brother"
            id: 82
            slot: "Gunner"
            points: 12
            force: 1
            unique: true
            faction: "Galactic Empire"
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Greedo"
            id: 83
            slot: "Gunner"
            points: 1
            unique: true
            faction: "Scum and Villainy"
            charge: 1
            recurring: 1
        }
        {
            name: "Han Solo"
            id: 84
            slot: "Gunner"
            points: 10
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Han Solo (Scum)"
            id: 85
            slot: "Gunner"
            points: 9
            pointsxwa: 7
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Hotshot Gunner"
            id: 86
            slot: "Gunner"
            points: 6
            pointsxwa: 5
        }
        {
            name: "Luke Skywalker"
            id: 87
            slot: "Gunner"
            points: 12
            force: 1
            unique: true
            faction: "Rebel Alliance"
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Skilled Bombardier"
            id: 88
            slot: "Gunner"
            points: 2
        }
        {
            name: "Veteran Tail Gunner"
            id: 89
            slot: "Gunner"
            points: 5
            pointsxwa: 6
            restrictions: [
                ["AttackArc", "Rear Arc"]
            ]
        }
        {
            name: "Veteran Turret Gunner"
            id: 90
            slot: "Gunner"
            points: 3
            pointsxwa: 6
            restrictions: [
                ["Action", "Rotate Arc"]
            ]
        }
        {
            name: "Cloaking Device"
            id: 91
            slot: "Illicit"
            points: 8
            unique: true
            charge: 2
            restrictions: [
                ["Base", "Small", "Medium"]
            ]
        }
        {
            name: "Contraband Cybernetics"
            id: 92
            slot: "Illicit"
            points: 3
            charge: 1
        }
        {
            name: "Deadman's Switch"
            id: 93
            slot: "Illicit"
            points: 2
        }
        {
            name: "Feedback Array"
            id: 94
            slot: "Illicit"
            points: 4
        }
        {
            name: "Inertial Dampeners"
            id: 95
            slot: "Illicit"
            points: 8
        }
        {
            name: "Rigged Cargo Chute"
            id: 96
            slot: "Illicit"
            points: 3
            charge: 1
            applies_condition: '''Loose Cargo'''.canonicalize()
            restrictions: [
                ["Base", "Medium", "Large"]
            ]
        }
        {
            name: "Barrage Rockets"
            id: 97
            slot: "Missile"
            points: 6
            pointsxwa: 8
            attack: 3
            range: """2-3"""
            rangebonus: true
            charge: 5
            restrictions: [
                ["Slot", "Missile"]
            ]
            also_occupies_upgrades: [ "Missile" ]
        }
        {
            name: "Cluster Missiles"
            id: 98
            slot: "Missile"
            points: 4
            attack: 3
            range: """1-2"""
            rangebonus: true
            charge: 4
            pointsxwa: 6
        }
        {
            name: "Concussion Missiles"
            id: 99
            slot: "Missile"
            points: 5
            pointsxwa: 7
            attack: 3
            range: """2-3"""
            rangebonus: true
            charge: 3
        }
        {
            name: "Homing Missiles"
            id: 100
            slot: "Missile"
            points: 5
            attack: 4
            range: """2-3"""
            rangebonus: true
            charge: 2
        }
        {
            name: "Ion Missiles"
            id: 101
            slot: "Missile"
            points: 4
            pointsxwa: 3
            attack: 3
            range: """2-3"""
            rangebonus: true
            charge: 3
        }
        {
            name: "Proton Rockets"
            id: 102
            slot: "Missile"
            points: 8
            pointsxwa: 6
            attackbull: 5
            range: """1-2"""
            rangebonus: true
            charge: 1
        }
        {
            name: "Ablative Plating"
            id: 103
            slot: "Modification"
            points: 4
            pointsxwa: 2
            charge: 2
            restrictions: [
                ["Base", "Medium", "Large"]
            ]
        }
        {
            name: "Advanced SLAM"
            id: 104
            slot: "Modification"
            points: 3
            restrictions: [
                ["Action", "Slam"]
            ]
        }
        {
            name: "Afterburners"
            id: 105
            slot: "Modification"
            points: 8
            charge: 2
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Electronic Baffle"
            id: 106
            slot: "Modification"
            points: 2
        }
        {
            name: "Engine Upgrade"
            id: 107
            slot: "Modification"
            points: 3
            restrictions: [
                ["Action", "R-Boost"]
            ]
            modifier_func: (stats) ->
                stats.actions.push 'Boost' if 'Boost' not in stats.actions
        }
        {
            name: "Munitions Failsafe"
            id: 108
            slot: "Modification"
            points: 1
        }
        {
            name: "Static Discharge Vanes"
            id: 109
            slot: "Modification"
            points: 12
        }
        {
            name: "Tactical Scrambler"
            id: 110
            slot: "Modification"
            points: 2
            restrictions: [
                ["Base", "Medium", "Large"]
            ]
        }
        {
            name: "Advanced Sensors"
            id: 111
            slot: "Sensor"
            points: 12
            pointsxwa: 8
        }
        {
            name: "Collision Detector"
            id: 112
            slot: "Sensor"
            points: 7
            charge: 2
        }
        {
            name: "Fire-Control System"
            id: 113
            slot: "Sensor"
            points: 2
        }
        {
            name: "Trajectory Simulator"
            id: 114
            slot: "Sensor"
            points: 8
            pointsxwa: 10
        }
        {
            name: "Composure"
            id: 115
            slot: "Talent"
            points: 1
            restrictions: [
                ["Action", "Focus"]
            ]
        }
        {
            name: "Crack Shot"
            id: 116
            slot: "Talent"
            points: 4
            pointsxwa: 5
            charge: 1
        }
        {
            name: "Daredevil"
            id: 117
            slot: "Talent"
            points: 5
            pointsxwa: 4
            restrictions: [
                ["Action", "W-Boost"]
                ["Base", "Small"]
            ]
        }
        {
            name: "Debris Gambit"
            id: 118
            slot: "Talent"
            points: 4
            pointsxwa: 3
            restrictions: [
                ["Base", "Small", "Medium"]
            ]
            modifier_func: (stats) ->
                stats.actions.push 'R-Evade' if 'R-Evade' not in stats.actions
        }
        {
            name: "Elusive"
            id: 119
            slot: "Talent"
            points: 4
            charge: 1
            restrictions: [
                ["Base", "Small", "Medium"]
            ]
        }
        {
            name: "Expert Handling"
            id: 120
            slot: "Talent"
            points: 2
            restrictions: [
                ["Action", "R-Barrel Roll"]
            ]
            modifier_func: (stats) ->
                stats.actions.push 'Barrel Roll' if 'Barrel Roll' not in stats.actions
        }
        {
            name: "Fearless"
            id: 121
            slot: "Talent"
            points: 3
            faction: "Scum and Villainy"
        }
        {
            name: "Intimidation"
            id: 122
            slot: "Talent"
            points: 3
            pointsxwa: 7
            restrictionsxwa: [
                ["isUnique", true]
                ["Base", "Small", "Medium"]
            ]
        }
        {
            name: "Juke"
            id: 123
            slot: "Talent"
            points: 7
            restrictions: [
                ["Base", "Small", "Medium"]
            ]
        }
        {
            name: "Lone Wolf"
            id: 124
            slot: "Talent"
            points: 3
            unique: true
            recurring: 1
            charge: 1
        }
        {
            name: "Marksmanship"
            id: 125
            slot: "Talent"
            points: 1
            pointsxwa: 2
        }
        {
            name: "Outmaneuver"
            id: 126
            slot: "Talent"
            points: 12
            pointsxwa: 9
        }
        {
            name: "Predator"
            id: 127
            slot: "Talent"
            points: 3
        }
        {
            name: "Ruthless"
            id: 128
            slot: "Talent"
            points: 1
            faction: "Galactic Empire"
        }
        {
            name: "Saturation Salvo"
            id: 129
            slot: "Talent"
            points: 2
            pointsxwa: 4
            restrictions: [
                ["Action", "Reload"]
            ]
        }
        {
            name: "Selfless"
            id: 130
            slot: "Talent"
            points: 4
            faction: "Rebel Alliance"
        }
        {
            name: "Squad Leader"
            id: 131
            slot: "Talent"
            points: 6
            pointsxwa: 4
            unique: true
            modifier_func: (stats) ->
                stats.actions.push 'R-Coordinate' if 'R-Coordinate' not in stats.actions
        }
        {
            name: "Swarm Tactics"
            id: 132
            slot: "Talent"
            points: 5
            pointsxwa: 7
        }
        {
            name: "Trick Shot"
            id: 133
            slot: "Talent"
            points: 4
        }
        {
            name: "Adv. Proton Torpedoes"
            id: 134
            slot: "Torpedo"
            points: 9
            attack: 5
            range: """1"""
            rangebonus: true
            charge: 1
        }
        {
            name: "Ion Torpedoes"
            id: 135
            slot: "Torpedo"
            points: 4
            pointsxwa: 5
            attack: 4
            range: """2-3"""
            rangebonus: true
            charge: 2
        }
        {
            name: "Proton Torpedoes"
            id: 136
            slot: "Torpedo"
            points: 12
            pointsxwa: 14
            attack: 4
            range: """2-3"""
            rangebonus: true
            charge: 2
        }
        {
            name: "Dorsal Turret"
            id: 137
            slot: "Turret"
            points: 2
            pointsxwa: 3
            attackt: 2
            range: """1-2"""
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
        }
        {
            name: "Ion Cannon Turret"
            id: 138
            slot: "Turret"
            points: 5
            pointsxwa: 6
            attackt: 3
            range: """1-2"""
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
        }
        {
            name: "Os-1 Arsenal Loadout"
            id: 139
            points: 0
            slot: "Configuration"
            ship: "Alpha-Class Star Wing"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Torpedo"
                }
                {
                    type: exportObj.Upgrade
                    slot: "Missile"
                }
            ]
        }
        {
            name: "Pivot Wing"
            id: 140
            points: 0
            slot: "Configuration"
            ship: "UT-60D U-wing"
        }
        {
            name: "Pivot Wing (Open)"
            id: 141
            points: 0
            skip: true
        }
        {
            name: "Servomotor S-Foils"
            id: 142
            points: 0
            slot: "Configuration"
            ship: "T-65 X-wing"
            modifier_func: (stats) ->
                stats.actions.push 'Boost'
                stats.actions.push '*Focus'
                stats.actions.push 'R-> Boost'
        }
        {
            name: "Blank"
            id: 143
            skip: true
        }
        {
            name: "Xg-1 Assault Configuration"
            id: 144
            points: 0
            slot: "Configuration"
            ship: "Alpha-Class Star Wing"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Cannon"
                }
            ]
        }
        {
            name: "L3-37's Programming (BoY)"
            id: 145
            standard: true
            unique: true
            slot: "Configuration"
        }
        {
            name: "Andrasta"
            id: 146
            slot: "Title"
            points: 0
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Device"
                }
            ]
            modifier_func: (stats) ->
                    stats.actions.push 'Reload' if 'Reload' not in stats.actions
        }
        {
            name: "Dauntless"
            id: 147
            slot: "Title"
            points: 0
            pointsxwa: 4
            unique: true
            faction: "Galactic Empire"
            ship: "VT-49 Decimator"
        }
        {
            name: "Ghost"
            id: 148
            slot: "Title"
            unique: true
            points: 0
            faction: "Rebel Alliance"
            ship: "VCX-100 Light Freighter"
        }
        {
            name: "Havoc"
            id: 149
            slot: "Title"
            points: 0
            unique: true
            faction: "Scum and Villainy"
            ship: "Scurrg H-6 Bomber"
            unequips_upgrades: [
                'Crew'
            ]
            also_occupies_upgrades: ['Crew']
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Sensor'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Astromech'
                }
            ]
        }
        {
            name: "Hound's Tooth"
            id: 150
            slot: "Title"
            points: 0
            pointsxwa: 6 
            unique: true
            faction: "Scum and Villainy"
            ship: "YV-666 Light Freighter"
        }
        {
            name: "IG-2000"
            id: 151
            slot: "Title"
            points: 0
            faction: "Scum and Villainy"
            ship: "Aggressor Assault Fighter"
        }
        {
            name: "Lando's Millennium Falcon"
            id: 152
            slot: "Title"
            points: 0
            unique: true
            faction: "Scum and Villainy"
            ship: "Customized YT-1300 Light Freighter"
        }
        {
            name: "Marauder"
            id: 153
            slot: "Title"
            points: 0
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Gunner"
                }
            ]
        }
        {
            name: "Millennium Falcon"
            id: 154
            slot: "Title"
            points: 0
            unique: true
            faction: "Rebel Alliance"
            ship: "Modified YT-1300 Light Freighter"
            modifier_func: (stats) ->
                stats.actions.push 'Evade' if 'Evade' not in stats.actions
        }
        {
            name: "Mist Hunter"
            id: 155
            slot: "Title"
            points: 0
            unique: true
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            modifier_func: (stats) ->
                stats.actions.push 'Barrel Roll' if 'Barrel Roll' not in stats.actions
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Cannon"
                }
            ]
        }
        {
            name: "Moldy Crow"
            id: 156
            slot: "Title"
            points: 0
            unique: true
            faction: ["Rebel Alliance", "Scum and Villainy"]
            ship: "HWK-290 Light Freighter"
            modifier_func: (stats) ->
                stats.attack = 3
        }
        {
            name: "Outrider"
            id: 157
            slot: "Title"
            points: 0
            unique: true
            faction: "Rebel Alliance"
            ship: "YT-2400 Light Freighter"
        }
        {
            id: 158
            skip: true
        }
        {
            name: "Punishing One"
            id: 159
            slot: "Title"
            points: 0
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            unequips_upgrades: [
                'Crew'
            ]
            also_occupies_upgrades: [
                'Crew'
            ]
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Astromech'
                }
            ]
        }
        {
            name: "Shadow Caster"
            id: 160
            slot: "Title"
            points: 0
            unique: true
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
        }
        {
            name: "Slave I"
            id: 161
            slot: "Title"
            points: 0
            pointsxwa: 10
            unique: true
            faction: "Scum and Villainy"
            ship: "Firespray-class Patrol Craft"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Torpedo"
                }
            ]
        }
        {
            name: "ST-321"
            id: 162
            slot: "Title"
            points: 0
            pointsxwa: 3
            unique: true
            faction: "Galactic Empire"
            ship: "Lambda-class T-4a Shuttle"
        }
        {
            name: "Virago"
            id: 163
            slot: "Title"
            points: 0
            pointsxwa: 8
            unique: true
            charge: 2
            ship: "StarViper-class Attack Platform"
            modifier_func: (stats) ->
                stats.shields += 1
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Modification"
                }
            ]
        }
        {
            name: "Hull Upgrade"
            id: 164
            slot: "Modification"
            points: 6
            pointsxwa: 9
            modifier_func: (stats) ->
                stats.hull += 1
        }
        {
            name: "Shield Upgrade"
            id: 165
            slot: "Modification"
            points: 8
            pointsxwa: 10
            modifier_func: (stats) ->
                stats.shields += 1
        }
        {
            name: "Stealth Device"
            id: 166
            slot: "Modification"
            points: 8
            charge: 1
            restrictionsxwa: [
                ["Base", "Medium", "Large"]
            ]
        }
        {
            name: "Phantom"
            id: 167
            slot: "Title"
            points: 0
            unique: true
            faction: "Rebel Alliance"
            ship: ["Attack Shuttle","Sheathipede-Class Shuttle"]
        }
        {
            id: 168
            skip: true
        }
        {
            id: 169
            skip: true
        }
        {
            id: 170
            skip: true
        }
        {
            name: "Black One"
            id: 171
            slot: "Title"
            unique: true
            charge: 1
            points: 0
            faction: "Resistance"
            ship: "T-70 X-wing"
            modifier_func: (stats) ->
                stats.actions.push 'Slam' if 'Slam' not in stats.actions
        }
        {
            name: "Heroic"
            id: 172
            slot: "Talent"
            points: 2
            faction: "Resistance"
        }
        {
            name: "Rose Tico"
            id: 173
            slot: "Crew"
            points: 9
            unique: true
            faction: "Resistance"
        }
        {
            name: "Finn"
            id: 174
            slot: "Gunner"
            points: 9
            unique: true
            faction: "Resistance"
        }
        {
            name: "Integrated S-Foils"
            id: 175
            slot: "Configuration"
            points: 0
            ship: "T-70 X-wing"
            modifier_func: (stats) ->
                stats.actions.push 'Barrel Roll'
                stats.actions.push '*Focus'
                stats.actions.push 'R-> Barrel Roll'
        }
        {
            name: "Integrated S-Foils (Open)"
            id: 176
            skip: true
        }
        {
            name: "Targeting Synchronizer"
            id: 177
            slot: "Tech"
            points: 3
            restrictions: [
                ["Action", "Lock"]
            ]
        }
        {
            name: "Primed Thrusters"
            id: 178
            slot: "Tech"
            points: 6
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Kylo Ren"
            id: 179
            slot: "Crew"
            points: 9
            force: 1
            faction: "First Order"
            unique: true
            applies_condition: '''I'll Show You the Dark Side'''.canonicalize()
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "General Hux"
            id: 180
            slot: "Crew"
            points: 3
            pointsxwa: 8
            unique: true
            faction: "First Order"
            restrictions: [
                ["Action", "Coordinate"]
            ]
        }
        {
            name: "Fanatical"
            id: 181
            slot: "Talent"
            points: 2
            faction: "First Order"
        }
        {
            name: "Special Forces Gunner"
            id: 182
            slot: "Gunner"
            points: 9
            faction: "First Order"
            ship: "TIE/sf Fighter"
        }
        {
            name: "Captain Phasma"
            id: 183
            slot: "Crew"
            unique: true
            points: 5
            faction: "First Order"
        }
        {
            name: "Supreme Leader Snoke"
            id: 184
            slot: "Crew"
            unique: true
            points: 10
            pointsxwa: 15
            force: 1
            faction: "First Order"
            restrictions: [
                ["Slot", "Crew"]
            ]
            also_occupies_upgrades: [ "Crew" ]
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Hyperspace Tracking Data"
            id: 185
            slot: "Tech"
            faction: "First Order"
            points: 2
            pointsxwa: 15
            restrictions: [
                ["Base", "Large"]
            ]
        }
        {
            name: "Advanced Optics"
            id: 186
            slot: "Tech"
            points: 5
        }
        {
            name: "Rey"
            id: 187
            slot: "Gunner"
            xwsaddon: "gunner"
            points: 10
            pointsxwa: 14
            unique: true
            force: 1
            faction: "Resistance"
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Chewbacca (Resistance)"
            id: 188
            slot: "Crew"
            xwsaddon: "crew-swz19"
            points: 4
            charge: 2
            unique: true
            faction: "Resistance"
        }
        {
            name: "Paige Tico"
            id: 189
            slot: "Gunner"
            points: 6
            unique: true
            faction: "Resistance"
        }
        {
            name: "R2-HA"
            id: 190
            slot: "Astromech"
            points: 3
            unique: true
            faction: "Resistance"
        }
        {
            name: "C-3PO (Resistance)"
            id: 191
            slot: "Crew"
            points: 7
            unique: true
            faction: "Resistance"
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
                stats.actions.push 'R-Coordinate' if 'R-Coordinate' not in stats.actions
        }
        {
            name: "Han Solo (Resistance)"
            id: 192
            slot: "Crew"
            points: 3
            unique: true
            faction: "Resistance"
            modifier_func: (stats) ->
                stats.actions.push 'R-Evade' if 'R-Evade' not in stats.actions
        }
        {
            name: "Rey's Millennium Falcon"
            id: 193
            slot: "Title"
            points: 0
            unique: true
            ship: "Scavenged YT-1300"
            faction: "Resistance"
        }
        {
            name: "Petty Officer Thanisson"
            id: 194
            slot: "Crew"
            points: 3
            pointsxwa: 5
            unique: true
            faction: "First Order"
        }
        {
            name: "BB-8"
            id: 195
            slot: "Astromech"
            points: 4
            pointsxwa: 5
            charge: 2
            unique: true
            faction: "Resistance"
        }
        {
            name: "BB Astromech"
            id: 196
            slot: "Astromech"
            points: 4
            charge: 2
            faction: "Resistance"
        }
        {
            name: "M9-G8"
            id: 197
            slot: "Astromech"
            points: 5
            pointsxwa: 7
            unique: true
            faction: "Resistance"
        }
        {
            name: "Ferrosphere Paint"
            id: 198
            slot: "Tech"
            points: 3
            pointsxwa: 4
            faction: "Resistance"
        }
        {
            name: "Brilliant Evasion"
            id: 199
            slot: "Force"
            points: 2
        }
        {
            name: "Calibrated Laser Targeting"
            id: 200
            slot: "Configuration"
            ship: "Delta-7 Aethersprite"
            points: 0
            restrictions: [
                ["Slot", "Modification"]
            ]
            also_occupies_upgrades: [ "Modification" ]
        }
        {
            name: "Delta-7B"
            id: 201
            slot: "Configuration"
            ship: "Delta-7 Aethersprite"
            points: 99
            modifier_func: (stats) ->
                stats.attack += 1
                stats.agility += -1
                stats.shields += 2
        }
        {
            name: "Biohexacrypt Codes"
            id: 202
            slot: "Tech"
            points: 1
            faction: "First Order"
            restrictions: [
                ["Action", "Lock"]
            ]
        }
        {
            name: "Predictive Shot"
            id: 203
            slot: "Force"
            points: 1
        }
        {
            name: "Hate"
            id: 204
            slot: "Force"
            points: 5
            restrictions: [
                ["Keyword", "Dark Side"]
            ]
        }
        {
            name: "R5-X3"
            id: 205
            unique: true
            slot: "Astromech"
            faction: "Resistance"
            charge: 2
            points: 5
        }
        {
            name: "Pattern Analyzer"
            id: 206
            slot: "Tech"
            points: 5
        }
        {
            name: "Impervium Plating"
            id: 207
            ship: "Belbullab-22 Starfighter"
            charge: 2
            slot: "Modification"
            points: 2
        }
        {
            name: "Grappling Struts"
            id: 208
            ship: "Vulture-class Droid Fighter"
            slot: "Configuration"
            points: 0
        }
        {
            name: "Energy-Shell Charges"
            id: 209
            faction: "Separatist Alliance"
            slot: "Missile"
            attack: 3
            range: """2-3"""
            rangebonus: true
            charge: 1
            points: 4
            pointsxwa: 2
            restrictions: [
                ["Action", "Calculate"]
            ]
            restrictionsxwa: [
                ["Action", "Calculate"]
                ["Slot", "Modification"]
            ]
            also_occupies_upgrades_xwa: [ "Modification" ]
        }
        {
            name: "Dedicated"
            id: 210
            faction: "Galactic Republic"
            slot: "Talent"
            points: 3
            pointsxwa: 5
            restrictions: [
                ["Keyword", "Clone"]
            ]
        }
        {
            name: "Synchronized Console"
            id: 211
            faction: "Galactic Republic"
            slot: "Modification"
            points: 1
            restrictions: [
                ["Action", "Lock"]
            ]
        }
        {
            name: "Battle Meditation"
            id: 212
            faction: "Galactic Republic"
            slot: "Force"
            points: 6
            modifier_func: (stats) ->
                stats.actions.push 'F-Coordinate' if 'F-Coordinate' not in stats.actions
        }
        {
            name: "R4-P Astromech"
            id: 213
            faction: "Galactic Republic"
            slot: "Astromech"
            charge: 2
            points: 2
            pointsxwa: 3
        }
        {
            name: "R4-P17"
            id: 214
            unique: true
            faction: "Galactic Republic"
            slot: "Astromech"
            charge: 2
            points: 4
        }
        {
            name: "Spare Parts Canisters"
            id: 215
            slot: "Modification"
            charge: 1
            points: 3
            applies_condition: '''Spare Parts'''.canonicalize()
            restrictions: [
                ["Equipped", "Astromech"]
            ]
        }
        {
            name: "Scimitar"
            id: 216
            unique: true
            ship: "Sith Infiltrator"
            slot: "Title"
            faction: "Separatist Alliance"
            points: 0
            modifier_func: (stats) ->
                stats.actions.push 'R-Cloak' if 'R-Cloak' not in stats.actions
                stats.actions.push 'Jam' if 'Jam' not in stats.actions
        }
        {
            name: "Chancellor Palpatine"
            id: 217
            unique: true
            slot: "Crew"
            faction: ["Galactic Republic", "Separatist Alliance"]
            force: 1
            points: 14
            pointsxwa: 11
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push 'F-Coordinate' if 'F-Coordinate' not in stats.actions
        }
        {
            name: "Count Dooku"
            id: 218
            unique: true
            slot: "Crew"
            force: 1
            faction: "Separatist Alliance"
            points: 12
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "General Grievous"
            id: 219
            unique: true
            slot: "Crew"
            charge: 1
            faction: "Separatist Alliance"
            points: 6
        }
        {
            name: "K2-B4"
            id: 220
            unique: true
            solitary: true
            slot: "Tactical Relay"
            faction: "Separatist Alliance"
            points: 4
        }
        {
            name: "DRK-1 Probe Droids"
            id: 221
            slot: "Device"
            unique: true
            faction: "Separatist Alliance"
            charge: 2
            points: 5
            applies_condition: '''DRK-1 Probe Droid'''.canonicalize()
        }
        {
            name: "Kraken"
            id: 222
            unique: true
            slot: "Tactical Relay"
            solitary: true
            faction: "Separatist Alliance"
            points: 8
            pointsxwa: 6
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "TV-94"
            id: 223
            unique: true
            solitary: true
            slot: "Tactical Relay"
            faction: "Separatist Alliance"
            points: 3
        }
        {
            name: "Discord Missiles"
            id: 224
            slot: "Missile"
            faction: "Separatist Alliance"
            charge: 1
            max_per_squad: 3
            points: 2
            pointsxwa: 4
            applies_condition: '''Buzz Droid Swarm'''.canonicalize()
        }
        {
            name: "Clone Commander Cody"
            id: 225
            unique: true
            slot: "Gunner"
            faction: "Galactic Republic"
            points: 4
        }
        {
            name: "R4-P44"
            id: 226
            unique: true
            faction: "Galactic Republic"
            slot: "Astromech"
            points: 2
        }
        {
            name: "Seventh Fleet Gunner"
            id: 227
            charge: 1
            slot: "Gunner"
            faction: "Galactic Republic"
            points: 13
            pointsxwa: 9
        }
        {
            name: "Treacherous"
            id: 228
            charge: 1
            slot: "Talent"
            faction: "Separatist Alliance"
            points: 3
            pointsxwa: 4
        }
        {
            name: "Soulless One"
            id: 229
            slot: "Title"
            unique: true
            ship: "Belbullab-22 Starfighter"
            faction: "Separatist Alliance"
            points: 0
            pointsxwa: 9
            modifier_func: (stats) ->
                stats.hull += 2
        }
        {
            name: "GA-97"
            id: 230
            slot: "Crew"
            points: 5
            charge: 5
            recurring: 1
            faction: "Resistance"
            unique: true
            applies_condition: '''It's The Resistance'''.canonicalize()
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Kaydel Connix"
            id: 231
            slot: "Crew"
            points: 8
            faction: "Resistance"
            unique: true
        }
        {
            name: "Autoblasters"
            id: 232
            slot: "Cannon"
            points: 7
            attack: 2
            range: """1-2"""
        }
        {
            name: "R2-C4"
            id: 233
            unique: true
            slot: "Astromech"
            points: 3
            faction: "Galactic Republic"
        }
        {
            name: "Plasma Torpedoes"
            id: 234
            slot: "Torpedo"
            points: 5
            pointsxwa: 7
            attack: 3
            range: """2-3"""
            rangebonus: true
            charge: 2
        }
        {
            name: "Electro-Proton Bomb"
            id: 235
            unique: true
            slot: "Device"
            points: 8
            charge: 1
            restrictions: [
                ["Action", "Reload"]
                ["Slot", "Modification"]
            ]
            also_occupies_upgrades: [ "Modification" ]
            applies_condition: 'Electro-Proton Bomb'.canonicalize()
        }
        {
            name: "Delayed Fuses"
            id: 236
            slot: "Modification"
            points: 1
        }
        {
            name: "Landing Struts"
            id: 237
            ship: "Hyena-class Droid Bomber"
            slot: "Configuration"
            points: 0
        }
        {
            name: "Diamond-Boron Missiles"
            id: 238
            unique: true
            slot: "Missile"
            points: 5
            attack: 3
            range: """2-3"""
            rangebonus: true
            charge: 3
            restrictions: [
                ["Slot", "Missile"]
            ]
            also_occupies_upgrades: [ "Missile" ]
        }
        {
            name: "TA-175"
            id: 239
            unique: true
            slot: "Tactical Relay"
            solitary: true
            faction: "Separatist Alliance"
            points: 6
        }
        {
            name: "Passive Sensors"
            id: 240
            slot: "Sensor"
            charge: 1
            recurring: 1
            points: 5
        }
        {
            name: "R2-A6"
            id: 241
            unique: true
            slot: "Astromech"
            faction: "Galactic Republic"
            points: 6
        }
        {
            name: "Amilyn Holdo"
            id: 242
            unique: true
            slot: "Crew"
            faction: "Resistance"
            points: 8
        }
        {
            name: "Larma D'Acy"
            id: 243
            unique: true
            slot: "Crew"
            faction: "Resistance"
            points: 4
        }
        {
            name: "Leia Organa (Resistance)"
            id: 244
            xwsaddon: "resistance"
            unique: true
            slot: "Crew"
            faction: "Resistance"
            force: 1
            points: 14
            pointsxwa: 10
            restrictions: [
                ["Slot", "Crew"]
            ]
            also_occupies_upgrades: [ "Crew" ]
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push 'F-Coordinate' if 'F-Coordinate' not in stats.actions
        }
        {
            name: "Korr Sella"
            id: 245
            unique: true
            slot: "Crew"
            faction: "Resistance"
            points: 6
        }
        {
            name: "PZ-4CO"
            id: 246
            unique: true
            slot: "Crew"
            faction: "Resistance"
            points: 5
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Angled Deflectors"
            id: 247
            slot: "Modification"
            points: 4
            pointsxwa: 1
            restrictions: [
                ["ShieldsGreaterThan", 0]
                ["Base", "Small", "Medium"]
            ]
            modifier_func: (stats) ->
                stats.shields -= 1
                stats.actions.push 'Reinforce' if 'Reinforce' not in stats.actions
        }
        {
            name: "Ensnare"
            id: 248
            slot: "Talent"
            points: 10
            ship: "Nantex-Class Starfighter"
        }
        {
            name: "Targeting Computer"
            id: 249
            slot: "Modification"
            points: 1
            modifier_func: (stats) ->
                stats.actions.push 'Lock' if 'Lock' not in stats.actions
        }
        {
            name: "Precognitive Reflexes"
            id: 250
            slot: "Force"
            points: 15
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Foresight"
            slot: "Force"
            points: 6
            id: 251
            attackbull: 2
            range: """1-3"""
            rangebonus: true
        }
        {
            name: "C1-10P"
            id: 252
            unique: true
            slot: "Astromech"
            charge: 2
            points: 8
            pointsxwa: 10
            faction: "Galactic Republic"
        }
        {
            name: "Ahsoka Tano"
            id: 253
            unique: true
            slot: "Gunner"
            points: 12
            faction: "Galactic Republic"
            force: 1
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "C-3PO (Republic)"
            id: 254
            unique: true
            slot: "Crew"
            xwsaddon: "republic"
            points: 6
            faction: "Galactic Republic"
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Gravitic Deflection"
            id: 255
            slot: "Talent"
            points: 4
            pointsxwa: 3
            ship: "Nantex-Class Starfighter"
        }
        {
            name: "Snap Shot"
            id: 256
            slot: "Talent"
            points: 9
            pointsxwa: 7
            attack: 2
            range: """2"""
            rangebonus: true
        }
        {
            name: "Agent of the Empire"
            id: 257
            unique: true
            faction: "Galactic Empire"
            slot: "Command"
            points: 4
            ship: ["TIE Advanced x1","TIE Advanced v1"]
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "First Order Elite"
            id: 258
            unique: true
            faction: "First Order"
            slot: "Command"
            ship: ["TIE/sf Fighter","TIE/vn Silencer"]
            points: 4
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Veteran Wing Leader"
            id: 259
            slot: "Command"
            points: 2
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Dreadnought Hunter"
            id: 260
            slot: "Command"
            points: 3
            max_per_squad: 2
            restrictions: [
                ["Base", "Small"]
                ["InitiativeGreaterThan", 3]
            ]
        }
        {
            name: "Admiral Ozzel"
            id: 261
            unique: true
            slot: "Command"
            points: 6
            faction: "Galactic Empire"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Azmorigan"
            id: 262
            unique: true
            slot: "Command"
            points: 4
            faction: "Scum and Villainy"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Captain Needa"
            id: 263
            unique: true
            faction: "Galactic Empire"
            slot: "Command"
            points: 8
            charge: 4
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Carlist Rieekan"
            id: 264
            unique: true
            faction: "Rebel Alliance"
            slot: "Command"
            points: 4
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Jan Dodonna"
            id: 265
            unique: true
            faction: "Rebel Alliance"
            slot: "Command"
            points: 3
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Raymus Antilles"
            id: 266
            unique: true
            slot: "Command"
            points: 8
            faction: "Rebel Alliance"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Stalwart Captain"
            id: 267
            unique: true
            slot: "Command"
            points: 6
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Strategic Commander"
            id: 268
            unique: true
            slot: "Command"
            charge: 3
            points: 6
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Ion Cannon Battery"
            id: 269
            slot: "Hardpoint"
            points: 5
            attackt: 4
            range: """2-4"""
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
        }
        {
            name: "Targeting Battery"
            id: 270
            slot: "Hardpoint"
            points: 10
            attackt: 3
            range: """2-5"""
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
        }
        {
            name: "Ordnance Tubes"
            id: 271
            slot: "Hardpoint"
            points: 1
        }
        {
            name: "Point-Defense Battery"
            id: 272
            slot: "Hardpoint"
            points: 9
            attackdt: 2
            range: """1-2"""
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
        }
        {
            name: "Turbolaser Battery"
            id: 273
            slot: "Hardpoint"
            points: 10
            attackt: 3
            range: """3-5"""
            restrictions: [
                ["EnergyGreatterThan", 4]
            ]
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
        }
        {
            name: "Toryn Farr"
            id: 274
            unique: true
            faction: "Rebel Alliance"
            slot: "Crew"
            points: 4
            restrictions: [
                ["Base", "Huge"]
            ]
            modifier_func: (stats) ->
                stats.actions.push '*Lock'
                stats.actions.push 'R-> Coordinate'
        }
        {
            name: "Bombardment Specialists"
            id: 275
            slot: "Team"
            points: 6
            modifier_func: (stats) ->
                stats.actions.push '*Lock'
                stats.actions.push '> Calculate'
        }
        {
            name: "Comms Team"
            id: 276
            slot: "Team"
            points: 7
            modifier_func: (stats) ->
                stats.actions.push '*Coordinate'
                stats.actions.push '> Calculate'
                stats.actions.push '*Jam'
                stats.actions.push '> Calculate'
        }
        {
            name: "Damage Control Team"
            id: 277
            slot: "Team"
            points: 8
            modifier_func: (stats) ->
                stats.actions.push '*Reinforce'
                stats.actions.push '> Calculate'
        }
        {
            name: "Gunnery Specialists"
            id: 278
            slot: "Team"
            points: 5
            modifier_func: (stats) ->
                stats.actions.push '*Rotate Arc'
                stats.actions.push '> Calculate'
        }
        {
            name: "IG-RM Droids"
            id: 279
            slot: "Team"
            faction: "Scum and Villainy"
            points: 2
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Ordnance Team"
            id: 280
            slot: "Team"
            points: 2
            modifier_func: (stats) ->
                stats.actions.push '*Reload'
                stats.actions.push '> Calculate'
        }
        {
            name: "Sensor Experts"
            id: 281
            slot: "Team"
            points: 6
            modifier_func: (stats) ->
                stats.actions.push '*Lock'
                stats.actions.push '> Calculate'
        }
        {
            name: "Adaptive Shields"
            id: 282
            slot: "Cargo"
            points: 5
        }
        {
            name: "Boosted Scanners"
            id: 283
            slot: "Cargo"
            points: 7
        }
        {
            name: "Selfless (BoY)"
            unique: true
            id: 284
            slot: "Talent"
            standard: true
        }
        {
            name: "Tibanna Reserves"
            id: 285
            slot: "Cargo"
            points: 3
            charge: 3
        }
        {
            name: "Optimized Power Core"
            id: 286
            slot: "Cargo"
            points: 6
        }
        {
            name: "Quick-Release Locks"
            id: 287
            slot: "Illicit"
            charge: 2
            points: 5
            restrictions: [
                ["Base", "Huge"]
            ]
        }
        {
            name: "Saboteur's Map"
            id: 288
            slot: "Illicit"
            points: 3
            unique: true
            restrictions: [
                ["Base", "Huge"]
            ]
        }
        {
            name: "Scanner Baffler"
            id: 289
            slot: "Illicit"
            points: 8
            restrictions: [
                ["Base", "Huge"]
            ]
        }
        {
            name: "Dodonna's Pride"
            id: 290
            slot: "Title"
            unique: true
            ship: "CR90 Corellian Corvette"
            faction: "Rebel Alliance"
            points: 4
            modifier_func: (stats) ->
                stats.shields -= 2
                stats.actions.push '*Evade'
                stats.actions.push 'R-> Coordinate'
                stats.actions.push '*Focus'
                stats.actions.push 'R-> Coordinate'
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Team'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Cargo'
                }
            ]
        }
        {
            name: "Jaina's Light"
            id: 291
            slot: "Title"
            unique: true
            ship: "CR90 Corellian Corvette"
            faction: "Rebel Alliance"
            points: 4
            modifier_func: (stats) ->
                stats.shields += 1
                stats.energy -= 1
        }
        {
            name: "Liberator"
            id: 292
            slot: "Title"
            unique: true
            ship: "CR90 Corellian Corvette"
            faction: "Rebel Alliance"
            points: 5
            modifier_func: (stats) ->
                stats.energy += 1
        }
        {
            name: "Tantive IV"
            id: 293
            slot: "Title"
            unique: true
            ship: "CR90 Corellian Corvette"
            faction: "Rebel Alliance"
            points: 5
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Crew'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Crew'
                }
            ]
        }
        {
            name: "Bright Hope"
            id: 294
            slot: "Title"
            unique: true
            ship: "GR-75 Medium Transport"
            faction: "Rebel Alliance"
            points: 5
        }
        {
            name: "Luminous"
            id: 295
            slot: "Title"
            unique: true
            ship: "GR-75 Medium Transport"
            faction: "Rebel Alliance"
            points: 12
            modifier_func: (stats) ->
                stats.shields -= 1
                stats.energy += 2
        }
        {
            name: "Quantum Storm"
            id: 296
            slot: "Title"
            unique: true
            ship: "GR-75 Medium Transport"
            faction: "Rebel Alliance"
            points: 3
            modifier_func: (stats) ->
                stats.energy += 1
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Team'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Cargo'
                }
            ]
        }
        {
            name: "Assailer"
            id: 297
            slot: "Title"
            unique: true
            ship: "Raider-class Corvette"
            faction: "Galactic Empire"
            points: 5
            modifier_func: (stats) ->
                stats.shields -= 2
                stats.hull += 2
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Gunner'
                }
            ]
        }
        {
            name: "Corvus"
            id: 298
            slot: "Title"
            unique: true
            ship: "Raider-class Corvette"
            faction: "Galactic Empire"
            points: 3
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Impetuous"
            id: 299
            slot: "Title"
            unique: true
            ship: "Raider-class Corvette"
            faction: "Galactic Empire"
            points: 4
            modifier_func: (stats) ->
                stats.shields -= 2
                stats.energy += 2
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Crew'
                }
            ]
        }
        {
            name: "Instigator"
            id: 300
            slot: "Title"
            unique: true
            ship: "Raider-class Corvette"
            faction: "Galactic Empire"
            points: 6
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Team'
                }
            ]
        }
        {
            name: "Blood Crow"
            id: 301
            slot: "Title"
            unique: true
            ship: "Gozanti-class Cruiser"
            faction: "Galactic Empire"
            points: 8
            modifier_func: (stats) ->
                stats.shields -= 1
                stats.energy += 2
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Gunner'
                }
            ]
        }
        {
            name: "Requiem"
            id: 302
            slot: "Title"
            unique: true
            ship: "Gozanti-class Cruiser"
            faction: "Galactic Empire"
            points: 7
        }
        {
            name: "Suppressor"
            id: 303
            slot: "Title"
            unique: true
            ship: "Gozanti-class Cruiser"
            faction: "Galactic Empire"
            points: 6
            modifier_func: (stats) ->
                stats.shields += 2
                stats.hull -= 2
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Sensor'
                }
            ]
        }
        {
            name: "Vector"
            id: 304
            slot: "Title"
            unique: true
            ship: "Gozanti-class Cruiser"
            faction: "Galactic Empire"
            points: 7
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Crew'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Cargo'
                }
            ]
        }
        {
            name: "Broken Horn"
            id: 305
            slot: "Title"
            unique: true
            ship: "C-ROC Cruiser"
            faction: "Scum and Villainy"
            points: 4
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Crew'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Illicit'
                }
            ]
        }
        {
            name: "Merchant One"
            id: 306
            slot: "Title"
            unique: true
            ship: "C-ROC Cruiser"
            faction: "Scum and Villainy"
            points: 8
            modifier_func: (stats) ->
                stats.actions.push 'R-Evade' if 'R-Evade' not in stats.actions
                stats.actions.push 'Coordinate' if 'Coordinate' not in stats.actions
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Turret'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Team'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Cargo'
                }
            ]
        }
        {
            name: "Insatiable Worrt"
            id: 307
            slot: "Title"
            unique: true
            ship: "C-ROC Cruiser"
            faction: "Scum and Villainy"
            points: 7
            modifier_func: (stats) ->
                stats.hull += 3
                stats.shields -= 1
                stats.energy -= 1
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Cargo'
                }
            ]
        }
        {
            name: "Corsair Refit"
            id: 308
            slot: "Configuration"
            ship: "C-ROC Cruiser"
            max_per_squad: 2
            points: 6
            modifier_func: (stats) ->
                stats.hull += 2
                stats.shields -= 2
                stats.energy += 1
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Cannon'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Turret'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Missile'
                }
            ]
        }
        {
            name: "Thunderstrike"
            id: 309
            slot: "Title"
            unique: true
            ship: "CR90 Corellian Corvette"
            faction: "Rebel Alliance"
            points: 4
            modifier_func: (stats) ->
                stats.hull += 3
                stats.shields -= 3
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Gunner'
                }
            ]
        }
        {
            name: "Coaxium Hyperfuel"
            id: 310
            slot: "Illicit"
            points: 4
            restrictions: [
                ["Action", "Slam"]
            ]
        }
        {
            name: "Mag-Pulse Warheads"
            id: 311
            slot: "Missile"
            points: 4
            pointsxwa: 7
            attack: 3
            range: """1-3"""
            rangebonus: true
            charge: 2
        }
        {
            name: "R1-J5"
            id: 312
            slot: "Astromech"
            faction: "Resistance"
            unique: true
            points: 5
            charge: 3
        }
        {
            name: "Stabilized S-Foils"
            id: 313
            slot: "Configuration"
            ship: "A/SF-01 B-wing"
            points: 0
            modifier_func: (stats) ->
                stats.actions.push '*Barrel Roll'
                stats.actions.push 'R-> Evade'
                stats.actions.push '*Barrel Roll'
                stats.actions.push 'R-> Lock'
                stats.actions.push 'R-Reload'
        }
        {
            name: "K-2SO"
            id: 314
            slot: "Crew"
            faction: "Rebel Alliance"
            unique: true
            points: 6
            pointsxwa: 8
            modifier_func: (stats) ->
                stats.actions.push 'Calculate'
                stats.actions.push 'Jam'
        }
        {
            name: "Kaz's Fireball"
            id: 315
            slot: "Title"
            ship: "Fireball"
            faction: "Resistance"
            unique: true
            points: 0
        }
        {
            name: "Cluster Mines"
            id: 316
            slot: "Device"
            charge: 1
            points: 7
            applies_condition: 'Cluster Mine'.canonicalize()
        }
        {
            name: "Ion Bombs"
            id: 317
            slot: "Device"
            points: 4
            charge: 2
            applies_condition: 'Ion Bomb'.canonicalize()
        }
        {
            name: "Deuterium Power Cells"
            id: 318
            slot: "Tech"
            points: 6
            pointsxwa: 8
            charge: 2
            faction: "First Order"
            restrictions: [
                ["Slot", "Modification"]
            ]
            also_occupies_upgrades: [ "Modification" ]
        }
        {
            name: "Proud Tradition"
            id: 319
            slot: "Talent"
            faction: "First Order"
            points: 2
        }
        {
            name: "Commander Pyre"
            id: 320
            slot: "Crew"
            unique: true
            faction: "First Order"
            points: 5
            pointsxwa: 10
        }
        {
            name: "Clone Captain Rex"
            id: 321
            slot: "Gunner"
            unique: true
            faction: "Galactic Republic"
            points: 2
        }
        {
            name: "Yoda"
            id: 322
            slot: "Crew"
            unique: true
            force: 2
            faction: "Galactic Republic"
            points: 12
            modifier_func: (stats) ->
                stats.force += 2
                stats.actions.push 'F-Coordinate' if 'F-Coordinate' not in stats.actions
        }
        {
            name: "Repulsorlift Stabilizers"
            id: 323
            slot: "Configuration"
            ship: "HMP Droid Gunship"
            faction: "Separatist Alliance"
            points: 0
        }
        {
            name: "Agent Terex"
            id: 324
            slot: "Crew"
            unique: true
            faction: "First Order"
            points: 7
        }
        {
            name: "Plo Koon"
            id: 325
            slot: "Crew"
            unique: true
            force: 1
            faction: "Galactic Republic"
            points: 9
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push 'F-Reinforce' if 'F-Reinforce' not in stats.actions
        }
        {
            name: "Multi-Missile Pods"
            id: 326
            slot: "Missile"
            points: 4
            attackf: 2
            range: """1-2"""
            rangebonus: true
            charge: 5
            restrictions: [
                ["Slot", "Missile"]
            ]
            also_occupies_upgrades: [ "Missile" ]
        }
        {
            name: "Kit Fisto"
            id: 327
            slot: "Crew"
            unique: true
            force: 1
            faction: "Galactic Republic"
            points: 8
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push 'F-Evade' if 'F-Evade' not in stats.actions
        }
        {
            name: "Aayla Secura"
            id: 328
            slot: "Crew"
            unique: true
            force: 1
            faction: "Galactic Republic"
            points: 12
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push '*Focus'
                stats.actions.push '> F-Coordinate'
        }
        {
            name: "Maneuver-Assist MGK-300"
            id: 329
            slot: "Configuration"
            ship: "TIE/rb Heavy"
            faction: "Galactic Empire"
            points: 0
            modifier_func: (stats) ->
                stats.actions.push 'Calculate'
                stats.actions.push '*Barrel Roll'
                stats.actions.push '*R-> Calculate'
                if stats.maneuvers[3]?
                    for turn in [1 ... 4]
                        if stats.maneuvers[3][turn] > 1
                            stats.maneuvers[3][turn]--
        }
        {
            name: "Ion Limiter Override"
            id: 330
            slot: "Talent"
            points: 2
            restrictions: [
                ["Keyword", "TIE"]
            ]
        }
        {
            name: "Marg Sabl Closure"
            id: 331
            slot: "Talent"
            points: 1
            restrictions: [
                ["Base", "Small", "Medium"]
            ]
        }
        {
            name: "XX-23 S-Thread Tracers"
            id: 332
            slot: "Missile"
            attack: 3
            range: """1-3"""
            rangebonus: true
            max_per_squad: 2
            charge: 2
            points: 4
        }
        {
            name: "Hondo Ohnaka"
            id: 333
            unique: true
            slot: "Crew"
            points: 8
        }
        {
            name: "Boba Fett (Separatist)"
            id: 334
            slot: "Gunner"
            unique: true
            points: 2
            pointsxwa: 4
            faction: ["Scum and Villainy", "Separatist Alliance"]
        }
        {
            name: "Jango Fett"
            id: 335
            slot: "Crew"
            unique: true
            faction: ["Scum and Villainy", "Separatist Alliance"]
            points: 3
        }
        {
            name: "Zam Wesell"
            id: 336
            slot: "Crew"
            unique: true
            charge: 2
            faction: ["Scum and Villainy", "Separatist Alliance"]
            points: 11
            pointsxwa: 9
            applies_condition: ['''You'd Better Mean Business'''.canonicalize(),'You Should Thank Me'.canonicalize()]
        }
        {
            name: 'Alpha-3B "Besh"'
            id: 337
            slot: "Configuration"
            ship: "Nimbus-class V-wing"
            points: 1
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Device'
                }
        ]
        }
        {
            name: "Precision Ion Engines"
            id: 338
            slot: "Modification"
            points: 2
            pointsxwa: 1
            charge: 2
            restrictions: [
                ["Keyword", "TIE"]
                ["AgilityEquals", 3]
            ]
        }
        {
            name: "Thermal Detonators"
            id: 339
            slot: "Device"
            charge: 4
            points: 5
            applies_condition: 'Thermal Detonator'.canonicalize()
        }
        {
            name: "R2-D2 (Republic)"
            id: 340
            points: 8
            charge: 2
            unique: true
            xwsaddon: "republic"
            faction: "Galactic Republic"
            slot: "Astromech"
        }
        {
            name: "Extreme Maneuvers"
            id: 341
            points: 8
            pointsxwa: 5
            slot: "Force"
            restrictions: [
                ["Action", "Boost"]
                ["Base", "Small"]
            ]
        }
        {
            name: "Patience"
            id: 342
            slot: "Force"
            points: 2
            restrictions: [
                ["Keyword", "Light Side"]
            ]
        }
        {
            name: "Deadeye Shot"
            id: 343
            slot: "Talent"
            points: 1
            restrictions: [
                ["Base", "Small", "Medium"]
            ]
        }
        {
            name: "Starbird Slash"
            id: 344
            slot: "Talent"
            points: 1
            restrictions: [
                ["Keyword", "A-wing"]
            ]
        }
        {
            name: "Overdrive Thruster"
            id: 345
            ship: "T-70 X-wing"
            unique: true
            slot: "Modification"
            points: 5
        }
        {
            name: '"Fives"'
            id: 346
            unique: true
            faction: "Galactic Republic"
            slot: "Crew"
            points: 3
        }
        {
            name: "Commander Malarus"
            id: 347
            unique: true
            faction: "First Order"
            slot: "Crew"
            points: 2
        }
        {
            name: "Automated Target Priority"
            id: 348
            slot: "Tech"
            points: 1
            restrictions: [
                ["InitiativeLessThan", 4]
            ]
        }
        {
            name: "Sensor Buoy Suite"
            id: 349
            faction: "First Order"
            unique: true
            slot: "Tech"
            points: 4
            restrictions: [
                ["Base", "Medium", "Large"]
            ]
            applies_condition: 'Sensor Buoy'.canonicalize()
        }
        {
            name: "Suppressive Gunner"
            id: 350
            slot: "Gunner"
            points: 7
        }
        {
            name: "Ghost Company"
            id: 351
            faction: "Galactic Republic"
            unique: true
            slot: "Crew"
            points: 5
            restrictions: [
                ["Action", "Rotate Arc"]
                ["Slot", "Gunner"]
            ]
            also_occupies_upgrades: [ "Gunner" ]
            modifier_func: (stats) ->
                stats.actions.push '*Rotate Arc'
                stats.actions.push 'R-> Focus'
        }
        {
            name: "Wolfpack"
            id: 352
            faction: "Galactic Republic"
            unique: true
            slot: "Crew"
            points: 4
            restrictions: [
                ["Slot", "Gunner"]
            ]
            also_occupies_upgrades: [ "Gunner" ]
        }
        {
            name: "Kalani"
            id: 353
            charge: 3
            unique: true
            recurring: 3
            slot: "Tactical Relay"
            solitary: true
            faction: "Separatist Alliance"
            points: 3
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Synced Laser Cannons"
            id: 354
            slot: "Cannon"
            points: 6
            attack: 3
            range: """2-3"""
            restrictions: [
                ["Slot", "Cannon"]
            ]
            also_occupies_upgrades: [ "Cannon" ]
        }
        {
            name: "Concussion Bombs"
            id: 355
            slot: "Device"
            charge: 3
            points: 4
            pointsxwa: 5
            applies_condition: 'Concussion Bomb'.canonicalize()
        }
        {
            name: "Target-Assist MGK-300"
            id: 356
            slot: "Configuration"
            ship: "TIE/rb Heavy"
            faction: "Galactic Empire"
            points: 0
            modifier_func: (stats) ->
                stats.actions.push 'Calculate'
                stats.actions.push '*Rotate Arc'
                stats.actions.push '> Calculate'
        }
        {
            name: "Backwards Tailslide"
            id: 357
            slot: "Talent"
            points: 2
            pointsxwa: 1
            restrictions: [
                ["Keyword", "X-wing"]
                ["Equipped", "Configuration"]
            ]
        }
        {
            name: "R2-D2 (Resistance)"
            id: 358
            slot: "Astromech"
            xwsaddon: "resistance"
            points: 6
            pointsxwa: 8
            unique: true
            charge: 4
            faction: "Resistance"
        }
        {
            name: "R6-D8"
            id: 359
            points: 4
            pointsxwa: 6
            unique: true
            slot: "Astromech"
            faction: "Resistance"
        }
        {
            name: "Underslung Blaster Cannon"
            id: 360
            points: 2
            slot: "Cannon"
            attackt: 2
            range: """1"""
            rangebonus: true
            faction: "Resistance"
            restrictions: [
                ["Keyword", "X-wing"]
            ]
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
        }
        {
            name: "Jedi Commander"
            id: 361
            points: 4
            ship: ["Eta-2 Actis","Delta-7 Aethersprite"]
            slot: "Command"
        }
        {
            name: "Syliure-31 Hyperdrive"
            id: 362
            points: 3
            slot: "Hyperdrive"
            ship: "Syliure-class Hyperspace Ring"
        }
        {
            name: 'Alpha-3E "Esk"'
            id: 363
            slot: "Configuration"
            ship: "Nimbus-class V-wing"
            points: 0
            charge: 2
            recurring: 1
        }
        {
            name: "R7-A7"
            id: 364
            points: 5
            unique: true
            charge: 3
            slot: "Astromech"
            faction: "Galactic Republic"
        }
        {
            name: "Q7 Astromech"
            id: 365
            points: 1
            slot: "Astromech"
            faction: "Galactic Republic"
        }
        {
            name: "Intercept Booster"
            id: 366
            points: 0
            slot: "Configuration"
            ship: "Droid Tri-fighter"
            faction: "Separatist Alliance"
            charge: 3
            recurring: -1
            modifier_func: (stats) ->
                stats.actions.push 'Slam'
                stats.actions.push 'R-> Lock'
        }
        {
            name: "Independent Calculations"
            id: 367
            points: 2
            standardized: true
            slot: "Modification"
            chassis: "Independent Calculations"
            restrictions: [
                ["Keyword", "Networked Calculations"]
            ]
        }
        {
            name: "Weapons Systems Officer"
            id: 368
            points: 5
            slot: "Gunner"
        }
        {
            name: "False Transponder Codes"
            id: 369
            points: 5
            charge: 1
            slot: "Illicit"
        }
        {
            name: "Slave I (Separatist)"
            xwsaddon: "swz82"
            id: 370
            points: 0
            slot: "Title"
            unique: true
            faction: ["Scum and Villainy", "Separatist Alliance"]
            ship: "Firespray-class Patrol Craft"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Gunner"
                }
            ]
        }
        {
            name: "Vectored Cannons (RZ-1)"
            id: 371
            xws: "vectoredcannonsrz1"
            points: 0
            slot: "Configuration"
            standardized: true
            chassis: "Vectored Cannons"
            ship: ["RZ-1 A-wing", "RZ-2 A-wing"]
            restrictions: [
                ["Keyword", "Vectored Thrusters"]
            ]
            modifier_func: (stats) ->
                stats.attackt = stats.attack
                stats.attack = 0 
        }
        {
            name: "B6 Blade Wing Prototype"
            id: 372
            points: 0
            unique: true
            slot: "Title"
            ship: "A/SF-01 B-wing"
            faction: "Rebel Alliance"
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Gunner"
                }
            ]
        }
        {
            name: "TIE Defender Elite"
            id: 373
            points: 0
            slot: "Configuration"
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            standardized: true
            chassis: "Advanced Fire Control"
            modifier_func: (stats) ->
                if stats.maneuvers[1]?
                    for s in (stats.maneuvers)
                        if s[0] > 1
                            s[0]--
                        if s[4] > 1
                            s[4]--
                        if s[5] < 3 and s[5] != 0
                            s[5]++
        }
        {
            name: "Sensitive Controls"
            id: 374
            points: 0
            slot: "Configuration"
            standardized: true
            chassis: "Sensitive Controls"
            ship: ["TIE/in Interceptor", "TIE/vn Silencer"]
            restrictions: [
                ["Keyword", "Autothrusters"]
            ]
        }
        {
            name: "Cutthroat"
            id: 375
            points: 2
            slot: "Talent"
            faction: "Scum and Villainy"
        }
        {
            name: "Tierfon Belly Run"
            id: 376
            points: 1
            slot: "Talent"
            restrictions: [
                ["Keyword", "Y-wing"]
            ]
        }
        {
            name: "B6 Blade Wing Prototype (Epic)"
            id: 377
            points: 4
            unique: true
            slot: "Command"
            ship: "A/SF-01 B-wing"
            faction: "Rebel Alliance"
            attack: 3
            range: """2-4"""
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Gunner"
                }
            ]
            also_occupies_upgrades: [ "Title" ]
        }
        {
            name: "Hopeful"
            id: 378
            points: 1
            slot: "Talent"
            faction: "Rebel Alliance"
        }
        {
            name: "Sabine Wren (Gunner)"
            id: 379
            points: 2
            unique: true
            slot: "Gunner"
            faction: "Rebel Alliance"
        }
        {
            name: "Phoenix Squadron"
            id: 380
            points: 4
            unique: true
            slot: "Command"
            faction: "Rebel Alliance"
            ship: "VCX-100 Light Freighter"
        }
        {
            name: "Disciplined"
            id: 381
            points: 2
            slot: "Talent"
            faction: "Galactic Empire"
        }
        {
            name: "Skystrike Academy Class"
            id: 382
            points: 3
            max_per_squad: 2
            slot: "Command"
            faction: "Galactic Empire"
            ship: ["TIE/ln Fighter", "TIE/in Interceptor"]
        }
        {
            name: "Shadow Wing"
            id: 383
            points: 4
            unique: true
            slot: "Command"
            faction: "Galactic Empire"
            ship: ["TIE/ln Fighter", "TIE/in Interceptor", "TIE/sa Bomber"]
        }
        {
            name: "In It For The Money"
            id: 384
            points: 1
            slot: "Command"
            faction: "Scum and Villainy"
            restrictions: [
                ["isUnique", true]
                ["Base", "Standard"]
            ]
        }
        {
            name: "Bounty"
            id: 385
            points: 1
            slot: "Command"
            faction: "Scum and Villainy"
            restrictions: [
                ["isUnique", true]
                ["Base", "Standard"]
            ]
        }
        {
            name: "Gamut Key"
            id: 386
            unique: true
            points: 8
            pointsxwa: 7
            slot: "Crew"
            charge: 2
            recurring: 1
            faction: "Scum and Villainy"
        }
        {
            name: "Interloper Turn"
            id: 387
            points: 1
            slot: "Talent"
            recurring: 1
            ship: "TIE/d Defender"
        }
        {
            name: "Protectorate Gleb"
            id: 388
            unique: true
            points: 6
            slot: "Crew"
            faction: ["Galactic Empire", "First Order", "Scum and Villainy"]
            modifier_func: (stats) ->
                stats.actions.push 'R-Coordinate' if 'R-Coordinate' not in stats.actions
        }
        {
            name: "R4-B11"
            id: 389
            points: 3
            unique: true
            slot: "Astromech"
            faction: "Scum and Villainy"
        }
        {
            name: "Asajj Ventress (Command)"
            id: 390
            unique: true
            slot: "Command"
            points: 8
            faction: ["Scum and Villainy", "Separatist Alliance"]
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Crew" ]
            force: 1
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push '*Focus'
                stats.actions.push 'F-> Coordinate'
        }
        {
            name: "General Grievous (Command)"
            id: 391
            unique: true
            slot: "Command"
            points: 5
            faction: "Separatist Alliance"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Hondo Ohnaka (Command)"
            id: 392
            unique: true
            slot: "Command"
            points: 7
            charge: 2
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Crew" ]
            modifier_func: (stats) ->
                stats.actions.push '*Coordinate'
                stats.actions.push 'R-> Jam'
        }
        {
            name: "Mar Tuuk"
            id: 393
            unique: true
            slot: "Command"
            points: 4
            faction: "Separatist Alliance"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Riff Tamson"
            id: 394
            unique: true
            slot: "Command"
            points: 6
            faction: "Separatist Alliance"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Zealous Captain"
            id: 395
            unique: true
            slot: "Command"
            points: 4
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Crew" ]
        }
        {
            name: "Tractor Tentacles"
            id: 396
            slot: "Hardpoint"
            points: 0
            attackb: 2
            range: """1-2"""
            rangebonus: true
            ship: "Trident-class Assault Ship"
            restrictions: [
                ["Base", "Huge"]
            ]
        }
        {
            name: "Drill Beak"
            id: 397
            slot: "Hardpoint"
            points: 4
            attackb: 3
            range: """0-1"""
            rangebonus: true
            ship: "Trident-class Assault Ship"
            restrictions: [
                ["Slot", "Cargo"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Cargo" ]
        }
        {
            name: "Enhanced Propulsion"
            id: 398
            slot: "Hardpoint"
            points: 6
            ship: "Trident-class Assault Ship"
            restrictions: [
                ["Slot", "Cargo"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Cargo" ]
        }
        {
            name: "Proton Cannon Battery"
            id: 399
            slot: "Hardpoint"
            points: 10
            attackbull: 4
            range: """2-5"""
            restrictions: [
                ["Slot", "Cargo"]
                ["Base", "Huge"]
            ]
            also_occupies_upgrades: [ "Cargo" ]
        }
        {
            name: "Droid Crew"
            id: 400
            slot: "Team"
            points: 5
            faction: "Separatist Alliance"
            modifier_func: (stats) ->
                stats.actions.push '*Calculate'
                stats.actions.push 'R-> Lock'
        }
        {
            name: "Tractor Technicians"
            id: 401
            slot: "Team"
            points: 2
        }
        {
            name: "Corsair Crew"
            id: 402
            slot: "Team"
            points: 5
            faction: "Scum and Villainy"
            restrictions: [
                ["Slot", "Gunner"]
            ]
            also_occupies_upgrades: [ "Gunner" ]
        }
        {
            name: "Grappler"
            id: 403
            unique: true
            slot: "Title"
            ship: "Trident-class Assault Ship"
            points: 3
            modifier_func: (stats) ->
                stats.hull += 2
                stats.shields -= 1
        }
        {
            name: "Nautolan's Revenge"
            id: 404
            unique: true
            slot: "Title"
            points: 2
            ship: "Trident-class Assault Ship"
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.hull -= 2
                stats.shields += 1
                stats.energy += 1
        }
        {
            name: "Neimoidian Grasp"
            id: 405
            unique: true
            slot: "Title"
            points: 5
            ship: "Trident-class Assault Ship"
            faction: "Separatist Alliance"
            modifier_func: (stats) ->
                stats.shields -= 2
        }
        {
            name: "Trident"
            id: 406
            unique: true
            slot: "Title"
            points: 4
            ship: "Trident-class Assault Ship"
            faction: "Separatist Alliance"
            modifier_func: (stats) ->
                stats.energy += 1
        }
        {
            name: "Tracking Torpedoes"
            id: 407
            slot: "Torpedo"
            points: 8
            attack: 4
            charge: 3
            applies_condition: '''Tracking Torpedoes'''.canonicalize()
            restrictions: [
                ["Base", "Huge"]
            ]
        }
        {
            name: "L4E-R5"
            id: 408
            unique: true
            slot: "Astromech"
            points: 3
            faction: "Resistance"
            restrictions: [
                ["Action", "Rotate Arc"]
            ]
            modifier_func: (stats) ->
                stats.actions.push '*Rotate Arc'
                stats.actions.push '> Calculate'
        }
        {
            name: "Wartime Loadout"
            id: 409
            slot: "Configuration"
            points: 2
            pointsxwa: 0
            ship: "BTA-NR2 Y-wing"
            standardized: true
            standardizedxwa: false
            chassis: "Devastating Barrage"
            restrictions: [
                ["Slot", "Modification"]
            ]
            also_occupies_upgrades: [ "Modification" ]
            modifier_func: (stats) ->
                stats.actions.push 'Lock'
                stats.actions.push 'Reload'
                stats.shields += 2
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: 'Torpedo'
                }
                {
                    type: exportObj.Upgrade
                    slot: 'Missile'
                }
            ]
        }
        {
            name: "Watchful Astromech"
            id: 410
            slot: "Astromech"
            points: 2
        }
        {
            name: "Overtuned Modulators"
            id: 411
            slot: "Illicit"
            points: 3
            charge: 1
        }
        {
            name: "DT-798"
            id: 412
            unique: true
            faction: "First Order"
            slot: "Gunner"
            points: 3
        }
        {
            name: "Enhanced Jamming Suite"
            id: 413
            slot: "Configuration"
            points: 0
            ship: "TIE/wi Whisper Modified Interceptor"
            restrictions: [
                ["Slot", "Tech"]
            ]
            also_occupies_upgrades: [ "Tech" ]
            modifier_func: (stats) ->
                stats.actions.push '*Focus'
                stats.actions.push '> Jam'
                stats.actions.push '*Barrel Roll'
                stats.actions.push '> Jam'
                stats.actions.push '*Boost'
                stats.actions.push '> Jam'
                stats.actions.push 'Jam'
        }
        {
            name: "First Order Ordnance Tech"
            id: 414
            faction: "First Order"
            slot: "Gunner"
            points: 3
            modifier_func: (stats) ->
                stats.actions.push '*Reload'
                stats.actions.push '> Lock'
        }
        {
            name: "Sensor Scramblers"
            id: 415
            ship: ["TIE/vn Silencer", "TIE/wi Whisper Modified Interceptor"]
            slot: "Tech"
            points: 1
        }
        {
            name: "Babu Frik"
            unique: true
            id: 416
            faction: ["Scum and Villainy", "Resistance"]
            slot: "Illicit"
            points: 5
            charge: 3
        }
        {
            name: "Compassion"
            id: 417
            points: 1
            slot: "Force"
            restrictions: [
                ["Keyword", "Light Side"]
            ]
        }
        {
            name: "Malice"
            id: 418
            points: 4
            slot: "Force"
            restrictions: [
                ["Keyword", "Dark Side"]
            ]
        }
        {
            name: "Shattering Shot"
            id: 419
            points: 3
            slot: "Force"
        }
        {
            name: "Electro-Chaff Missiles"
            id: 420
            points: 9
            pointsxwa: 11
            slot: "Missile"
            max_per_squad: 2
            charge: 1
            restrictions: [
                ["Slot", "Device"]
            ]
            also_occupies_upgrades: [ "Device" ]
            applies_condition: '''Electro-Chaff Cloud'''.canonicalize()
        }
        {
            name: "Feedback Ping"
            id: 421
            points: 1
            slot: "Talent"
            restrictions: [
                ["Keyword", "TIE"]
                ["Action", "Reload"]
            ]
        }
        {
            name: "Sabine Wren (Command)"
            id: 422
            points: 5
            slot: "Command"
            unique: true
            faction: "Rebel Alliance"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Standard"]
            ]
            also_occupies_upgrades: [ "Crew" ]
            modifier_func: (stats) ->
                stats.actions.push 'R-Coordinate' if 'R-Coordinate' not in stats.actions
            applies_condition: '''Trials of the Darksaber'''.canonicalize()
        }
        {
            name: "Clan Training"
            id: 423
            points: 1
            slot: "Talent"
            charge: 1
            restrictions: [
                ["Keyword", "Mandalorian"]
            ]
        }
        {
            name: "Ahsoka Tano (Crew)"
            id: 424
            points: 10
            force: 1
            slot: "Crew"
            unique: true
            faction: ["Galactic Republic", "Scum and Villainy"]
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Bo-Katan Kryze (Republic/Separatist)"
            xws: "bokatankryze"
            id: 425
            points: 6
            slot: "Crew"
            unique: true
            faction: ["Galactic Republic", "Separatist Alliance"]
        }
        {
            name: "Bo-Katan Kryze (Rebel/Scum)"
            xwsaddon: "rebel-scum"
            id: 426
            points: 4
            slot: "Crew"
            unique: true
            faction: ["Rebel Alliance", "Scum and Villainy"]
        }
        {
            name: "Captain Hark"
            id: 427
            points: 3
            charge: 2
            slot: "Crew"
            faction: "Galactic Empire"
            unique: true
        }
        {
            name: "Fenn Rau"
            id: 428
            points: 7
            slot: "Crew"
            unique: true
            faction: ["Rebel Alliance", "Scum and Villainy"]
        }
        {
            name: "Gar Saxon"
            id: 429
            points: 6
            slot: "Crew"
            faction: "Galactic Empire"
            unique: true
        }
        {
            name: "Korkie Kryze"
            id: 430
            points: 5
            slot: "Crew"
            faction: "Galactic Republic"
            unique: true
        }
        {
            name: "Obi-Wan Kenobi"
            id: 431
            points: 11
            force: 1
            slot: "Crew"
            unique: true
            faction: "Galactic Republic"
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Pre Vizsla"
            id: 432
            points: 9
            pointsxwa: 8
            slot: "Crew"
            faction: ["Scum and Villainy", "Separatist Alliance"]
            unique: true
            modifier_func: (stats) ->
                stats.actions.push 'Coordinate' if 'Coordinate' not in stats.actions
        }
        {
            name: "Prime Minister Almec"
            id: 433
            points: 7
            slot: "Crew"
            unique: true
            faction: ["Galactic Republic", "Scum and Villainy"]
        }
        {
            name: "Rook Kast"
            id: 434
            points: 8
            slot: "Crew"
            unique: true
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.actions.push 'R-Lock' if 'R-Lock' not in stats.actions
        }
        {
            name: "Satine Kryze"
            id: 435
            points: 10
            pointsxwa: 15
            charge: 2
            recurring: 1
            slot: "Crew"
            unique: true
            faction: "Galactic Republic"
        }
        {
            name: "Savage Opress"
            id: 436
            points: 10
            force: 1
            slot: "Crew"
            unique: true
            faction: ["Separatist Alliance", "Scum and Villainy"]
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Tal Merrik"
            id: 437
            points: 7
            slot: "Crew"
            unique: true
            faction: "Separatist Alliance"
            applies_condition: '''False Friend'''.canonicalize()
        }
        {
            name: "Tristan Wren"
            id: 438
            points: 2
            charge: 1
            recurring: 1
            slot: "Crew"
            unique: true
            faction: ["Rebel Alliance", "Galactic Empire", "Scum and Villainy"]
            restrictions: [
                ["FactionOrUnique", "Gar Saxon", "Rebel Alliance"]
            ]
        }
        {
            name: "Ursa Wren"
            id: 439
            points: 6
            slot: "Crew"
            pointsxwa: 8
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Maul (Mandalore)"
            id: 440
            points: 10
            slot: "Crew"
            unique: true
            force: 1
            faction: "Scum and Villainy"
            restrictions: [
                ["Slot", "Crew"]
            ]
            also_occupies_upgrades: [ "Crew" ]
            modifier_func: (stats) ->
                stats.force += 1
                stats.actions.push 'F-Coordinate' if 'F-Coordinate' not in stats.actions
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Illicit"
                }
            ]
        }
        {
            name: "Gar Saxon (Gunner)"
            id: 441
            points: 6
            slot: "Gunner"
            unique: true
            faction: "Scum and Villainy"
            restrictions: [
                ["Base", "Large", "Huge"]
            ]
        }
        {
            name: "Tiber Saxon"
            id: 442
            points: 6
            charge: 2
            recurring: 1
            slot: "Gunner"
            faction: "Galactic Empire"
            unique: true
        }
        {
            name: "Ursa Wren (Gunner)"
            id: 443
            points: 4
            slot: "Gunner"
            unique: true
            faction: ["Galactic Republic", "Separatist Alliance"]
        }
        {
            name: "Blazer Bomb"
            id: 444
            points: 5
            charge: 1
            slot: "Device"
            applies_condition: '''Blazer Bomb'''.canonicalize()
        }
        {
            name: "Beskar Reinforced Plating"
            id: 445
            points: 3
            slot: "Modification"
            charge: 2
            pointsxwa: 6
            restrictions: [
                ["Keyword", "Mandalorian"]
            ]
        }
        {
            name: "Mandalorian Optics"
            id: 446
            points: 3
            slot: "Modification"
            charge: 2
            restrictions: [
                ["Keyword", "Mandalorian"]
            ]
        }
        {
            name: "Gauntlet"
            id: 447
            points: 0
            slot: "Title"
            unique: true
            charge: 2
            faction: ["Galactic Republic", "Separatist Alliance"]
            ship: "Gauntlet Fighter"
            restrictions: [
                ["Slot", "Modification"]
            ]
            also_occupies_upgrades: [ "Modification" ]
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Crew"
                }
            ]
        }
        {
            name: "Nightbrother"
            id: 448
            points: 0
            slot: "Title"
            unique: true
            charge: 2
            faction: ["Rebel Alliance", "Scum and Villainy"]
            recurring: 1
            ship: "Gauntlet Fighter"
            restrictions: [
                ["Slot", "Modification"]
            ]
            also_occupies_upgrades: [ "Modification" ]
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Crew"
                }
            ]
        }
        {
            name: "Swivel Wing"
            id: 449
            points: 0
            slot: "Configuration"
            ship: "Gauntlet Fighter"
        }
        {
            name: "Clan Wren Commandos"
            id: 450
            points: 8
            slot: "Crew"
            unique: true
            charge: 2
            faction: "Rebel Alliance"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Non-Small"]
            ]
            also_occupies_upgrades: [ "Crew" ]
            applies_condition: '''Clan Wren Commandos'''.canonicalize()
        }
        {
            name: "Razor Crest"
            id: 451
            points: 0
            unique: true
            slot: "Title"
            ship: "ST-70 Assault Ship"
            modifier_func: (stats) ->
                stats.actions.push '*Evade'
                stats.actions.push 'R-> Barrel Roll'
        }
        {
            name: "The Mandalorian"
            id: 452
            points: 2
            unique: true
            slot: "Crew"
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.actions.push 'Reinforce'
        }
        {
            name: "The Child"
            id: 453
            points: 7
            unique: true
            slot: "Crew"
            force: 2
            forcerecurring: 0
            faction: ["Scum and Villainy", "Rebel Alliance", "Galactic Empire"]
            applies_condition: '''Merciless Pursuit'''.canonicalize()
            modifier_func: (stats) ->
                stats.force += 2
                stats.forcerecurring = 0
        }
        {
            name: "Tracking Fob"
            id: 454
            points: 3
            slot: "Illicit"
            max_per_squad: 3
            restrictions: [
                ["Keyword", "Bounty Hunter"]
            ]
            applies_condition: '''Marked for Elimination'''.canonicalize()
        }
        {
            name: "Notorious"
            id: 455
            points: 7
            pointsxwa: 6
            charge: 2
            recurring: 1
            slot: "Talent"
            unique: true
            restrictions: [
                ["Equipped", "Illicit"]
            ]
        }
        {
            name: "Enduring"
            id: 456
            points: 5
            pointsxwa: 4
            slot: "Talent"
        }
        {
            name: "IG-11"
            id: 457
            points: 6
            slot: "Crew"
            unique: true
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.actions.push 'Calculate'
        }
        {
            name: "Greef Karga"
            id: 458
            points: 6
            slot: "Crew"
            unique: true
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.actions.push 'R-Coordinate'
        }
        {
            name: "Kuiil"
            id: 459
            points: 4
            slot: "Crew"
            unique: true
            faction: "Scum and Villainy"
            restrictions: [
                ["Base", "Medium", "Large"]
            ]
        }
        {
            name: "Peli Motto"
            id: 460
            points: 3
            slot: "Crew"
            unique: true
            faction: "Scum and Villainy"
            restrictions: [
                ["Base", "Medium", "Large"]
            ]
        }
        {
            name: "Migs Mayfeld"
            id: 461
            points: 4
            slot: "Gunner"
            unique: true
            faction: ["Scum and Villainy","Galactic Empire"]
        }
        {
            name: "Burnout Thrusters"
            id: 462
            points: 6
            slot: "Modification"
            charge: 1
            faction: ["Scum and Villainy"]
            restrictions: [
                ["Base", "Small", "Medium"]
            ]
            modifier_func: (stats) ->
                stats.actions.push 'Slam' if 'Slam' not in stats.actions
        }
        {
            name: "Hotshot Tail Blaster"
            id: 463
            points: 2
            attackb: 2
            range: """0-1"""
            rangebonus: true
            charge: 2
            slot: "Illicit"
            restrictions: [
                ["Base", "Medium", "Large"]
            ]
        }
        {
            name: "Combat Boarding Tube"
            id: 464
            points: 0
            slot: "Command"
            ship: "Gauntlet Fighter"
            restrictions: [
                ["Slot", "Configuration"]
                ["Base", "Standard"]
            ]
            also_occupies_upgrades: [ "Configuration" ]
        }
        {
            name: "Drop-Seat Bay"
            id: 465
            points: 5
            pointsxwa: 0
            slot: "Modification"
            ship: "Gauntlet Fighter"
            unequips_upgrades: [
                'Device'
            ]
            also_occupies_upgrades: [
                'Device'
            ]
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Crew"
                }
                {
                    type: exportObj.Upgrade
                    slot: "Crew"
                }
            ]
        }
        {
            name: "Mandalorian Super Commandos"
            id: 466
            points: 8
            slot: "Crew"
            unique: true
            charge: 2
            faction: "Scum and Villainy"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Non-Small"]
            ]
            also_occupies_upgrades: [ "Crew" ]
            applies_condition: '''Mandalorian Super Commandos'''.canonicalize()
        }
        {
            name: "Imperial Super Commandos"
            id: 467
            points: 8
            slot: "Crew"
            unique: true
            charge: 2
            faction: "Galactic Empire"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Non-Small"]
            ]
            also_occupies_upgrades: [ "Crew" ]
            applies_condition: '''Imperial Super Commandos'''.canonicalize()
        }
        {
            name: "Nite Owl Commandos"
            id: 468
            points: 8
            slot: "Crew"
            unique: true
            charge: 2
            faction: "Galactic Republic"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Non-Small"]
            ]
            also_occupies_upgrades: [ "Crew" ]
            applies_condition: '''Nite Owl Commandos'''.canonicalize()
        }
        {
            name: "Death Watch Commandos"
            id: 469
            points: 8
            slot: "Crew"
            unique: true
            charge: 2
            faction: "Separatist Alliance"
            restrictions: [
                ["Slot", "Crew"]
                ["Base", "Non-Small"]
            ]
            also_occupies_upgrades: [ "Crew" ]
            applies_condition: '''Death Watch Commandos'''.canonicalize()
        }
        {
            name: "Proton Cannons"
            id: 470
            slot: "Cannon"
            points: 4
            pointsxwa: 5
            attackbull: 4
            range: """2-3"""
            charge: 2
            recurring: 1
            restrictions: [
                ["Slot", "Cannon"]
            ]
            also_occupies_upgrades: [ "Cannon" ]
        }
        {
            name: "Homing Torpedoes"
            id: 471
            slot: "Torpedo"
            points: 5
            pointsxwa: 4
            attack: 4
            range: """1-2"""
            rangebonus: true
            charge: 2
        }
        {
            name: "Xanadu Blood"
            id: 472
            slot: "Title"
            unique: true
            points: 0
            ship: ["Rogue-class Starfighter"]
            modifier_func: (stats) ->
                stats.actions.push 'R-Cloak' if 'R-Cloak' not in stats.actions
            confersAddons: [
                {
                    type: exportObj.Upgrade
                    slot: "Crew"
                }
                {
                    type: exportObj.Upgrade
                    slot: "Device"
                }
            ]
        }
        {
            name: "Fanatic (BoY)"
            id: 473
            slot: "Talent"
            standard: true
        }
        {
            name: "Chewbacca (BoY)"
            id: 474
            slot: "Crew"
            standard: true
            unique: true
        }
        {
            name: "Attack Speed (BoY)"
            id: 475
            slot: "Talent"
            standard: true
        }
        {
            name: "Unstable Sublight Engines (BoY)"
            id: 476
            slot: "Modification"
            standard: true
        }
        {
            name: "R2-D2 (BoY)"
            id: 477
            standard: true
            unique: true
            slot: "Astromech"
            charge: 2
        }
        {
            name: "Dorsal Turret (BoY)"
            id: 478
            standard: true
            slot: "Turret"
            attackt: 3
            range: """1-2"""
            modifier_func: (stats) ->
                stats.actions.push 'Rotate Arc' if 'Rotate Arc' not in stats.actions
        }
        {
            name: "R2-F2 (BoY)"
            id: 479
            standard: true
            unique: true
            slot: "Astromech"
            charge: 2
        }
        {
            name: "Precise Astromech (BoY)"
            id: 480
            standard: true
            slot: "Astromech"
            charge: 2
        }
        {
            name: "R2-A3 (BoY)"
            id: 481
            standard: true
            unique: true
            slot: "Astromech"
            charge: 2
        }
        {
            name: "Vengeful (BoY)"
            id: 482
            standard: true
            slot: "Talent"
        }
        {
            name: "R5-D8 (BoY)"
            id: 483
            standard: true
            unique: true
            slot: "Astromech"
            charge: 2
        }
        {
            name: "R5-K6 (BoY)"
            id: 484
            standard: true
            unique: true
            slot: "Astromech"
            charge: 2
        }
        {
            name: "Sensor Jammer (BoY)"
            id: 485
            standard: true
            slot: "Sensor"
        }
        {
            name: "Ancillary Ion Weapons (SoC)"
            id: 486
            standard: true
            slot: "Cannon"
            charge: 2
            recurring: 1
        }
        {
            name: "Roiling Anger (SoC)"
            id: 487
            standard: true
            slot: "Force"
        }
        {
            name: "Contingency Protocol (SoC)"
            id: 488
            standard: true
            slot: "Modification"
        }
        {
            name: "Strut-Lock Override (SoC)"
            id: 489
            standard: true
            charge: 2
            slot: "Configuration"
        }
        {
            name: "R4-P17 (SoC)"
            id: 490
            standard: true
            unique: true
            charge: 2
            slot: "Astromech"
        }
        {
            name: "Targeting Astromech (BoY)"
            id: 491
            standard: true
            slot: "Astromech"
        }
        {
            name: "Wolfpack (SoC)"
            id: 492
            unique: true
            standard: true
            slot: "Crew"
        }
        {
            name: "Evasion Sequence 7 (SoC)"
            id: 493
            standard: true
            slot: "Modification"
        }
        {
            name: "Swift Approach (TBE)"
            id: 494
            standard: true
            slot: "Talent"
        }
        {
            name: "Automated Loaders (TBE)"
            id: 495
            standard: true
            charge: 1
            slot: "Modification"
        }
        {
            name: "Top Cover (TBE)"
            id: 496
            standard: true
            slot: "Talent"
        }
        {
            name: "True Grit (TBE)"
            id: 497
            standard: true
            slot: "Talent"
        }
        {
            name: "Mercenary (YLF)"
            id: 498
            standard: true
            slot: "Talent"
        }
        {
            name: "Efficient Processing (YLF)"
            id: 499
            standard: true
            slot: "Talent"
        }
        {
            name: "Seeker Missiles (YLF)"
            id: 500
            standard: true
            slot: "Missile"
            attack: 3
            range: """2-3"""
            rangebonus: true
            charge: 4
            
        }
        {
            name: '"Leebo" (YLF)'
            id: 501
            standard: true
            slot: "Crew"
        }
        {
            name: "It's A Trap! (BoE)"
            id: 502
            standard: true
            slot: "Talent"
        }
        {
            name: "R2-A3 (BoE)"
            unique: true
            id: 503
            standard: true
            charge: 1
            slot: "Talent"
        }
        {
            name: "Ace In The Hole (BoE)"
            id: 504
            standard: true
            charge: 2
            slot: "Talent"
        }
        {
            name: "Airen Cracken (BoE)"
            id: 505
            unique: true
            standard: true
            slot: "Gunner"
        }
        {
            name: "Millennium Falcon (BoE)"
            id: 506
            unique: true
            standard: true
            slot: "Title"
        }
        {
            name: "Chaff Particles (BoE)"
            id: 507
            standard: true
            slot: "Modification"
        }
        {
            name: "No Escape (BoE)"
            id: 508
            standard: true
            slot: "Talent"
        }
        {
            name: "Reckless (BoE)"
            id: 509
            standard: true
            slot: "Talent"
        }
        {
            name: "Push The Limit (BoE)"
            id: 510
            standard: true
            slot: "Talent"
        }
        {
            name: "Computer-Assisted Handling (BoE)"
            id: 511
            standard: true
            charge: 1
            slot: "Modification"
        }
        {
            name: "Blank Signature (BoE)"
            id: 512
            standard: true
            charge: 1
            recurring: 1
            slot: "Sensor"
        }
        {
            name: "Feedback Emitter (BoE)"
            id: 513
            standard: true
            charge: 1
            slot: "Illicit"
        }
        {
            name: "Targeting Matrix (BoE)"
            id: 514
            standard: true
            slot: "Modification"
        }
        {
            name: "Apex Predator (BoE)"
            id: 515
            standard: true
            slot: "Talent"
        }
        {
            name: "Fuel Injection Override (BoE)"
            id: 516
            standard: true
            charge: 2
            slot: "Modification"
        }
        {
            name: "Target-Assist Algorithm (BoE)"
            id: 517
            standard: true
            slot: "Modification"
        }
        {
            name: "Precision-Tuned Cannons (BoE)"
            id: 518
            standard: true
            attack: 2
            range: """2-3"""
            slot: "Cannon"
        }
        {
            name: "Heroic Sacrifice (BoE)"
            id: 519
            standard: true
            slot: "Talent"
        }
        {
            name: "Parting Gift (BoE)"
            id: 520
            standard: true
            slot: "Talent"
        }
        {
            name: "Stabilizing Astromech (BoE)"
            id: 521
            standard: true
            slot: "Astromech"
            charge: 1
        }
        {
            name: "Modified R4-P unit (BoE)"
            id: 522
            standard: true
            slot: "Astromech"
            charge: 1
        }
        {
            name: "Ion Maneuvering Jet (BoE)"
            id: 523
            standard: true
            slot: "Modification"
            charge: 2
        }
        {
            name: "Collected (BoE)"
            id: 524
            standard: true
            slot: "Talent"
        }
        {
            name: "Without A Trace (SL)"
            id: 525
            standard: true
            slot: "Talent"
        }
        {
            name: "Relay System (SL)"
            id: 526
            standard: true
            slot: "Sensor"
        }
        {
            name: "Stygium Reserve (SL)"
            id: 527
            standard: true
            slot: "Modification"
            charge: 1
        }
        {
            name: "Silent Hunter (SL)"
            id: 528
            standard: true
            slot: "Talent"
        }
        {
            name: "Stealth Gambit (SL)"
            id: 529
            standard: true
            slot: "Talent"
        }
        {
            name: "Manual Ailerons (SL)"
            id: 530
            standard: true
            slot: "Modification"
            charge: 2
        }
        {
            name: "Saturation Rockets (SL)"
            id: 531
            unique: true
            standard: true
            slot: "Missile"
            charge: 4
            recurring: 1
            attackf: 3
            range: """1-2"""
            rangebonus: true
        }
        {
            name: "Long-Range Scanners (SL)"
            id: 532
            standard: true
            slot: "Sensor"
            charge: 2
        }
        {
            name: "Heavy Plasma Missiles (SL)"
            id: 533
            standard: true
            slot: "Missile"
            charge: 2
            attack: 3
            range: """1-3"""
            rangebonus: true
        }
        {
            name: "Leia Organa (Epic)"
            id: 534
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "R2-D2 (Epic)"
            id: 535
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "C-3PO (Epic)"
            id: 536
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Endless Hordes (Epic)"
            id: 537
            standard: true
            charge: 1
            recurring: 1
            slot: "Cargo"
        }
        {
            name: "Bail Organa (Epic)"
            id: 538
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Alpha Revue (Epic)"
            id: 539
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Secret Provisions (Epic)"
            id: 540
            standard: true
            slot: "Modification"
            charge: 3
        }
        {
            name: "Nien Nunb (Epic)"
            id: 541
            standard: true
            unique: true
            slot: "Command"
            charge: 1
            recurring: 1
        }
        {
            name: "Urcos Furdam (Epic)"
            id: 542
            standard: true
            unique: true
            slot: "Command"
        }
        {
            name: "Tantive IV (Resistance)"
            id: 543
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Twin Missile Launcher (Epic)"
            id: 544
            standard: true
            slot: "Missile"
            attackt: 3
            range: """2-3"""
        }
        {
            name: "Fanatical (Epic)"
            id: 545
            standard: true
            slot: "Talent"
        }
        {
            name: "Inferno Squad (Epic)"
            id: 546
            standard: true
            slot: "Crew"
        }
        {
            name: "Corvus (Epic)"
            id: 547
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Agent Terex (Epic)"
            id: 548
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Protectorate Gleb (Epic)"
            id: 549
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Jinata Security Forces (Epic)"
            id: 550
            standard: true
            slot: "Crew"
        }
        {
            name: "Precursor (Epic)"
            id: 551
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "TX-25 (Epic)"
            id: 552
            standard: true
            unique: true
            slot: "Tactical Relay"
        }
        {
            name: "Petty Officer Thanisson (Epic)"
            id: 553
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Malefactor (Epic)"
            id: 554
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Thrawn (Epic)"
            id: 555
            standard: true
            unique: true
            slot: "Crew"
            charge: 1
            recurring: 1
        }
        {
            name: "Heavy Laser Cannon Turret (Epic)"
            id: 556
            standard: true
            slot: "Hardpoint"
            attackt: 3
            range: """2-3"""
        }
        {
            name: "Blood Crow (Epic)"
            id: 557
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Spectre of Nayr (Epic)"
            id: 558
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "GA-75 (Epic)"
            id: 559
            standard: true
            unique: true
            slot: "Crew"
            charge: 2
            recurring: true
        }
        {
            name: "Hosnian Lament (Epic)"
            id: 560
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Planetary Ion Bombardment (Epic)"
            id: 561
            standard: true
            slot: "Hardpoint"
            attackf: 5
            range: """1-3"""
            rangebonus: true
        }
        {
            name: "Azmorigan (Epic)"
            id: 562
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Illegal Countermeasures (Epic)"
            id: 563
            standard: true
            slot: "Cargo"
        }
        {
            name: "Modified Dorsal Turret (Epic)"
            id: 564
            standard: true
            slot: "Hardpoint"
            attackt: 2
            range: """1-3"""
        }
        {
            name: "AQ-Series Battle Droids (Epic)"
            id: 565
            standard: true
            slot: "Crew"
        }
        {
            name: "Drill Beak (Epic)"
            id: 566
            standard: true
            slot: "Hardpoint"
            attackb: 3
            range: """0-1"""
            rangebonus: true
        }
        {
            name: "Trident (Epic)"
            id: 567
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Caij Vanda (Epic)"
            id: 568
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Nautolan's Revenge (Epic)"
            id: 569
            standard: true
            unique: true
            slot: "Title"
            charge: 1
            recurring: 1
        }
        {
            name: "Tantive IV (Republic)"
            id: 570
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Born for This (Epic)"
            id: 571
            standard: true
            slot: "Talent"
        }
        {
            name: "Point Defense Battery (Epic)"
            id: 572
            standard: true
            slot: "Hardpoint"
            attackdt: 2
            range: """1-2"""
        }
        {
            name: "Determination (EoD)"
            id: 573
            standard: true
            slot: "Talent"
        }
        {
            name: "Experimental Scanners (EoD)"
            id: 574
            standard: true
            slot: "Tech"
        }
        {
            name: "Advanced Warning Systems (EoD)"
            id: 575
            standard: true
            slot: "Modification"
        }
        {
            name: "Targeting Relay (EoD)"
            id: 576
            standard: true
            slot: "Tech"
            charge: 2
        }
        {
            name: "Interference Array (EoD)"
            id: 577
            standard: true
            slot: "Tech"
            charge: 2
        }
        {
            name: "BB-8 (EoD)"
            id: 578
            standard: true
            unique: true
            slot: "Astromech"
            charge: 2     
        }
        {
            name: "Primed Overdrive Thrusters (EoD)"
            id: 579
            standard: true
            unique: true
            slot: "Tech"
        }
        {
            name: "Black One (EoD)"
            id: 580
            standard: true
            unique: true
            slot: "Title"
            charge: 2
        }
        {
            name: "For The Cause (EoD)"
            id: 581
            standard: true
            slot: "Talent"
        }
        {
            name: "R0 Astromech (EoD)"
            id: 582
            standard: true
            slot: "Astromech"
        }
        {
            name: "Accelerated Sensor Array (EoD)"
            id: 583
            standard: true
            slot: "Tech"
        }
        {
            name: "Repulsorlift Engines (EoD)"
            id: 584
            standard: true
            slot: "Modification"
        }
        {
            name: "Escort Fighter (EoD)"
            id: 585
            standard: true
            slot: "Talent"
            charge: 1
            recurring: 1
        }
        {
            name: "Precision Holo-Targeter (EoD)"
            id: 586
            standard: true
            slot: "Tech"
        }
        {
            name: "R0-GR (EoD)"
            id: 587
            standard: true
            unique: true
            slot: "Tech"
        }
        {
            name: "Black Squadron R4 (EoD)"
            id: 588
            standard: true
            unique: true
            slot: "Tech"
            charge: 2
        }
        {
            name: "Nix Jerd (EoD)"
            id: 589
            standard: true
            unique: true
            slot: "Crew"
            charge: 2
        }
        {
            name: "Paige Tico (EoD)"
            id: 590
            standard: true
            unique: true
            slot: "Gunner"
            charge: 2
        }
        {
            name: "Dedicated Gunners (EoD)"
            id: 591
            standard: true
            slot: "Gunner"
        }
        {
            name: "Homing Beacon (AaD)"
            id: 592
            standard: true
            slot: "Sensor"
            charge: 2
        }
        {
            name: "Fennec Shand (AaD)"
            id: 593
            standard: true
            unique: true
            slot: "Gunner"
        }
        {
            name: "The Child (AaD)"
            id: 594
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Kineso-Switch (AaD)"
            id: 595
            standard: true
            slot: "Illicit"
            charge: 2
        }
        {
            name: "L3-37 (AaD)"
            id: 596
            standard: true
            unique: true
            slot: "Crew"
            charge: 1
        }
        {
            name: "Tobias Beckett (AaD)"
            id: 597
            standard: true
            unique: true
            slot: "Gunner"
        }
        {
            name: "Lando's Millennium Falcon (AaD)"
            id: 598
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Mandalorian Tactics (AaD)"
            id: 599
            standard: true
            slot: "Talent"
        }
        {
            name: "Nite Owl Sentries (AaD)"
            id: 600
            standard: true
            unique: true
            slot: "Crew"
            charge: 3
            recurring: 1
        }
        {
            name: "R2-G8 (AaD)"
            id: 601
            standard: true
            slot: "Astromech"
            unique: true
            charge: 2
            recurring: 1
        }
        {
            name: "Synchronized Handling (AaD)"
            id: 602
            standard: true
            slot: "Tech"
            charge: 1
        }
        {
            name: "Starboard Thrusters (AaD)"
            id: 603
            standard: true
            slot: "Modification"
            charge: 2
        }
        {
            name: "Embo (AaD)"
            id: 604
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Flechette Cannons (AaD)"
            id: 605
            standard: true
            slot: "Cannon"
            attack: 3
            range: """2-3"""
        }
        {
            name: "Todo 360 (AaD)"
            id: 606
            standard: true
            unique: true
            slot: "Crew"
            charge: 2
        }
        {
            name: "Xanadu Blood (AaD)"
            id: 607
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Adaptable Power Systems (AaD)"
            id: 608
            standard: true
            slot: "Modification"
            charge: 2
        }
        {
            name: "Crime Lord (AaD)"
            id: 609
            standard: true
            unique: true
            slot: "Talent"
            charge: 2
            recurring: 1
        }
        {
            name: "Virago (AaD)"
            id: 610
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Persistent Tracker (AaD)"
            id: 611
            standard: true
            slot: "Talent"
            charge: 3
            recurring: 1
        }
        {
            name: "4-LOM (AaD)"
            id: 612
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Mist Hunter (AaD)"
            id: 613
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "First Order Ordnance Tech (EoD)"
            id: 614
            standard: true
            slot: "Gunner"
        }
        {
            name: "Threat Sensors (EoD)"
            id: 615
            standard: true
            slot: "Tech"
        }
        {
            name: "General Hux (EoD)"
            id: 616
            standard: true
            unique: true
            slot: "Crew"
        }
        {
            name: "Hound's Tooth (AaD)"
            id: 617
            standard: true
            unique: true
            slot: "Title"
        }
        {
            name: "Chewbacca (AaD)"
            id: 618
            standard: true
            unique: true
            slot: "Crew"
            charge: 2
            recurring: 1
        }
    ]


    conditionsById: [
        {
            name: '''Zero Condition'''
            id: 0
        }
        {
            name: 'Suppressive Fire'
            id: 1
            unique: true
        }
        {
            name: 'Hunted'
            id: 2
            unique: true
        }
        {
            name: 'Listening Device'
            id: 3
            unique: true
        }
        {
            name: 'Optimized Prototype'
            id: 4
            unique: true
        }
        {
            name: '''I'll Show You the Dark Side'''
            id: 5
            unique: true
        }
        {
            name: 'Proton Bomb'
            id: 6
        }
        {
            name: 'Seismic Charge'
            id: 7
        }
        {
            name: 'Bomblet'
            id: 8
        }
        {
            name: 'Loose Cargo'
            id: 9
        }
        {
            name: 'Conner Net'
            id: 10
        }
        {
            name: 'Proximity Mine'
            id: 11
        }
        {
            name: 'Rattled'
            id: 12
            unique: true
        }
        {
            name: 'DRK-1 Probe Droid'
            id: 13
        }
        {
            name: 'Buzz Droid Swarm'
            id: 14
        }
        {
            name: '''It's the Resistance'''
            id: 15
        }
        {
            name: 'Electro-Proton Bomb'
            id: 16
        }
        {
            name: 'Decoyed'
            id: 17
            unique: true
        }
        {
            name: 'Compromising Intel'
            id: 18
            unique: true
        }
        {
            name: 'Cluster Mine'
            id: 19
        }
        {
            name: 'Ion Bomb'
            id: 20
        }
        {
            name: 'Concussion Bomb'
            id: 21
        }
        {
            name: 'Thermal Detonator'
            id: 22
        }
        {
            name: 'Sensor Buoy'
            id: 23
        }
        {
            name: 'Fearful Prey'
            id: 24
            unique: true
        }
        {
            name: 'You Should Thank Me'
            id: 25
        }
        {
            name: '''You'd Better Mean Business'''
            id: 26
        }
        {
            name: '''Spare Parts'''
            id: 27
        }
        {
            name: '''Electro-Chaff Cloud'''
            id: 28
        }
        {
            name: '''Tracking Torpedoes'''
            id: 29
        }
        {
            name: '''False Friend'''
            id: 30
            unique: true
        }
        {
            name: '''Trials of the Darksaber'''
            id: 31
            unique: true
        }
        {
            name: '''Blazer Bomb'''
            id: 32
        }
        {
            name: '''Merciless Pursuit'''
            id: 33
        }
        {
            name: '''Marked for Elimination'''
            id: 34
            unique: true
        }
        {
            name: '''Clan Wren Commandos'''
            id: 35
        }
        {
            name: '''Nite Owl Commandos'''
            id: 36
        }
        {
            name: '''Death Watch Commandos'''
            id: 37
        }
        {
            name: '''Imperial Super Commandos'''
            id: 38
        }
        {
            name: '''Mandalorian Super Commandos'''
            id: 39
        }
        {
            name: '''Guarded'''
            id: 40
        }
        {
            name: '''Sickening Maneuver'''
            id: 41
        }
        {
            name: '''Primed For Speed'''
            id: 42
        }
        {
            name: '''Broken Trust'''
            id: 43
        }
    ]

    chassisById: [
        {
            name: "Hope"
            id: 0
        }
        {
            name: "Autothrusters"
            id: 1
        }
        {
            name: "Microthrusters"
            id: 2
        }
        {
            name: "Sensor Blindspot"
            id: 3
        }
        {
            name: "Stygium Array"
            id: 4
        }
        {
            name: "Experimental Scanners"
            id: 5
        }
        {
            name: "Full Throttle"
            id: 6
        }
        {
            name: "Nimble Bomber"
            id: 7
        }
        {
            name: "Weapon Hardpoint"
            id: 8
        }
        {
            name: "Advanced Targeting Computer"
            id: 9
        }
        {
            name: "Vectored Thrusters"
            id: 10
        }
        {
            name: "Advanced Fire Control"
            id: 11
        }
        {
            name: "Sensitive Controls"
            id: 12
        }
        {
            name: "Spacetug Tractor Array"
            id: 13
        }
        {
            name: "Concordia Faceoff"
            id: 14
        }
        {
            name: "Locked and Loaded"
            id: 15
        }
        {
            name: "Tail Gun"
            id: 16
        }
        {
            name: "Advanced Droid Brain"
            id: 17
        }     
        {
            name: "Vectored Cannons"
            id: 18
        }
        {
            name: "Networked Calculations"
            id: 19
        }
        {
            name: "Independent Calculations"
            id: 20
        }
        {
            name: "Linked Battery"
            id: 21
        }
        {
            name: "Heavy Weapon Turret"
            id: 22
        }
        {
            name: "Refined Gyrostabilizers"
            id: 23
        }
        {
            name: "Rigged Energy Cells"
            id: 24
        }
        {
            name: "Co-Pilot"
            id: 25
        }
        {
            name: "Controlled Ailerons"
            id: 26
        }
        {
            name: "Comms Shuttle"
            id: 27
        }
        {
            name: "Dead to Rights"
            id: 28
        }
        {
            name: "Pursuit Craft"
            id: 29
        }
        {
            name: "Adaptive Ailerons"
            id: 30
        }
        {
            name: "Fire Convergence"
            id: 31
        }
        {
            name: "Networked Aim"
            id: 32
        }
        {
            name: "Fine-Tuned Thrusters"
            id: 33
        }
        {
            name: "Explosion with Wings"
            id: 34
        }
        {
            name: "Plated Hull"
            id: 35
        }
        {
            name: "Pinpoint Tractor Array"
            id: 36
        }
        {
            name: "Fine-Tuned Controls"
            id: 37
        }
        {
            name: "Notched Stabilizers"
            id: 38
        }
        {
            name: "Rotating Cannons"
            id: 39
        }
        {
            name: "Twin Ion Engines"
            id: 40
        }
        {
            name: "Versatile Frame"
            id: 41
        }
        {
            name: "Pursuit Thrusters"
            id: 42
        }
        {
            name: "Devastating Barrage"
            id: 43
        }
        {
            name: "Intuitive Interface"
            id: 44
        }
        {
            name: "Intuitive Controls"
            id: 45
        }
        {
            name: "Born for This"
            id: 46
        }
        {
            name: "Modified for Organics"
            id: 47
            modifier_func: (stats) ->
                if stats.maneuvers[2]?
                    for turn in [0 ... 5]
                        if (turn == 1 or turn == 3)
                            if stats.maneuvers[2][turn] > 1
                                stats.maneuvers[2][turn]--
                            if stats.maneuvers[3][turn] > 1
                                stats.maneuvers[3][turn]--
                        if (turn == 0 or turn == 4) and stats.maneuvers[3][turn] < 3
                            stats.maneuvers[3][turn]++
        }
        {
            name: "Solo"
            id: 48
        }
        {
            name: "Sensor Blackout"
            id: 49
        }
        {
            name: "Locked S-Foils"
            id: 50
        }
        {
            name: "High Stakes"
            id: 51
        }
        {
            name: "Chiss Engineering"
            id: 52
        }
        {
            name: "Gyro-Cockpit"
            id: 53
        }
        {
            name: "Formed Up"
            id: 54
        }
        {
            name: "Prioritized Weapons Systems"
            id: 55
        }
        {
            name: "Broadside Batteries"
            id: 56
        }
        {
            name: "Concentrated Batteries"
            id: 57
        }
        {
            name: "Docking Clamps"
            id: 58
        }
        {
            name: "Resupply Craft"
            id: 59
        }
        {
            name: "Overdrive Burners"
            id: 60
        }
        {
            name: "Tractor Grasp"
            id: 61
        }
        {
            name: "Merciless"
            id: 62
        }
        {
            name: "Heavy Weapon Turret (EoD)"
            id: 63
        }
        {
            name: "Enduring Limitations"
            id: 64
        }
        {
            name: "Adaptive S-Foils"
            id: 65
        }
        {
            name: "Leave No One Behind"
            id: 66
        }
        {
            name: "Modular Bombing Magazine"
            id: 67
        }
        {
            name: "Restored Speedster"
            id: 68
        }
        {
            name: "Coaxium Injectors"
            id: 69
        }
        {
            name: "Winged Reversal"
            id: 70
        }
        {
            name: "Imposing Behemoth"
            id: 71
        }
        {
            name: "Adaptative Microthrusters"
            id: 72
        }

    ]

    damageById: [
        {
            name: "Panicked Pilot"
            quantity: 2
            type: "Pilot"
            id: 0
        }
        {
            name: "Blinded Pilot"
            quantity: 2
            type: "Pilot"
            id: 1
        }
        {
            name: "Wounded Pilot"
            quantity: 2
            type: "Pilot"
            id: 2
        }
        {
            name: "Stunned Pilot"
            quantity: 2
            type: "Pilot"
            id: 3
        }
        {
            name: "Console Fire"
            quantity: 2
            type: "Ship"
            id: 4
        }
        {
            name: "Damaged Engine"
            quantity: 2
            type: "Ship"
            id: 5
        }
        {
            name: "Weapons Failure"
            quantity: 2
            type: "Ship"
            id: 6
        }
        {
            name: "Hull Breach"
            quantity: 2
            type: "Ship"
            id: 7
        }
        {
            name: "Structural Damage"
            quantity: 2
            type: "Ship"
            id: 8
        }
        {
            name: "Damaged Sensor Array"
            quantity: 2
            type: "Ship"
            id: 9
        }
        {
            name: "Loose Stabilizer"
            quantity: 2
            type: "Ship"
            id: 10
        }
        {
            name: "Disabled Power Regulator"
            quantity: 2
            type: "Ship"
            id: 11
        }
        {
            name: "Fuel Leak"
            quantity: 4
            type: "Ship"
            id: 12
        }
        {
            name: "Direct Hit!"
            quantity: 5
            type: "Ship"
            id: 13
        }
    ]

exportObj.setupCommonCardData = (basic_cards) ->
    # assert that each ID is the index into BLAHById (should keep this, in general)
    for pilot_data, i in basic_cards.pilotsById
        if pilot_data.id != i
            throw new Error("ID mismatch: pilot at index #{i} has ID #{pilot_data.id}")
    for upgrade_data, i in basic_cards.upgradesById
        if upgrade_data.id != i
            throw new Error("ID mismatch: upgrade at index #{i} has ID #{upgrade_data.id}")
    for condition_data, i in basic_cards.conditionsById
        if condition_data.id != i
            throw new Error("ID mismatch: condition at index #{i} has ID #{condition_data.id}")
    for chassis_data, i in basic_cards.chassisById
        if chassis_data.id != i
            throw new Error("ID mismatch: chassis at index #{i} has ID #{chassis_data.id}")
    for damage_data, i in basic_cards.damageById
        if damage_data.id != i
            throw new Error("ID mismatch: damage card at index #{i} has ID #{damage_data.id}")


    exportObj.pilots = {}
    # Assuming a given pilot is unique by name...
    for pilot_data in basic_cards.pilotsById
        unless pilot_data.skip?
            pilot_data.sources = []
            name_parse = pilot_data.name.split("(")
            pilot_data.canonical_name = name_parse[0].canonicalize() unless pilot_data.canonical_name?

            # XWS rework
            pilot_data.xws = if pilot_data.xws? then pilot_data.xws else (if pilot_data.xwsaddon? then (pilot_data.canonical_name + "-" + pilot_data.xwsaddon) else (pilot_data.canonical_name + (if name_parse[1]? then ("-" + pilot_data.ship.canonicalize()) else "")))

            exportObj.pilots[pilot_data.name] = pilot_data
    # pilot_name is the English version here as it's the common index into
    # basic card info

    exportObj.upgrades = {}
    for upgrade_data in basic_cards.upgradesById
        unless upgrade_data.skip?
            upgrade_data.sources = []
            name_parse = upgrade_data.name.split("(")
            upgrade_data.canonical_name = name_parse[0].canonicalize() unless upgrade_data.canonical_name?

            # XWS rework
            upgrade_data.xws = if upgrade_data.xws? then upgrade_data.xws else (if upgrade_data.xwsaddon? then (upgrade_data.canonical_name + "-" + upgrade_data.xwsaddon) else (upgrade_data.canonical_name + (if name_parse[1]? then ("-" + upgrade_data.slot.canonicalize()) else "")))


            exportObj.upgrades[upgrade_data.name] = upgrade_data

    exportObj.conditions = {}
    for condition_data in basic_cards.conditionsById
        unless condition_data.skip?
            condition_data.canonical_name = condition_data.name.canonicalize() unless condition_data.canonical_name?
            exportObj.conditions[condition_data.name] = condition_data

    exportObj.chassis = {}
    for chassis_data in basic_cards.chassisById
        unless chassis_data.skip?
            chassis_data.canonical_name = chassis_data.name.canonicalize() unless chassis_data.canonical_name?
            exportObj.chassis[chassis_data.name] = chassis_data

    exportObj.damage = {}
    for damage_data in basic_cards.damageById
        unless damage_data.skip?
            damage_data.canonical_name = damage_data.name.canonicalize() unless damage_data.canonical_name?
            exportObj.damage[damage_data.name] = damage_data
        damage_data.sources = []

    exportObj.obstacles = {}
    # we just want to include obstacles in the manifest like we already do for other stuff. No information other than sources will be used

    for ship_name, ship_data of basic_cards.ships
        ship_data.canonical_name ?= ship_data.name.canonicalize()
        ship_data.sources = []

    # Set sources from manifest
    for expansion, cards of exportObj.manifestByExpansion
        # console.log(exportObj.manifestByExpansion)
        for card in cards
            continue if card.skipForSource # heavy scyk special case :(
            try
                switch card.type
                    when 'pilot'
                        exportObj.pilots[card.name].sources.push expansion
                    when 'upgrade'
                        exportObj.upgrades[card.name].sources.push expansion
                    when 'ship'
                        exportObj.ships[card.name].sources.push expansion
                    when 'damage'
                        exportObj.damage[card.name].sources.push expansion
                    when 'obstacle'
                        if card.name not of exportObj.obstacles
                            exportObj.obstacles[card.name] = {sources: []}
                        exportObj.obstacles[card.name].sources.push expansion
                    else
                        throw new Error("Unexpected card type #{card.type} for card #{card.name} of #{expansion}")
            catch e
                console.log(e)
                console.error "Error adding card #{card.name} (#{card.type}) from #{expansion}"


    for name, card of exportObj.pilots
        card.sources = card.sources.sort()
    for name, card of exportObj.upgrades
        card.sources = card.sources.sort()

    exportObj.expansions = {}

    exportObj.pilotsById = {}
    for pilot_name, pilot of exportObj.pilots
        exportObj.fixIcons pilot
        exportObj.pilotsById[pilot.id] = pilot
        for source in pilot.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.pilotsById).length != Object.keys(exportObj.pilots).length
        throw new Error("At least one pilot shares an ID with another")

    exportObj.pilotsByFactionCanonicalName = {}
    exportObj.pilotsByKeyword = {}
    # uniqueness can't be enforced just be canonical name, but by the base part
    exportObj.pilotsByUniqueName = {}
    for pilot_name, pilot of exportObj.pilots
        ((exportObj.pilotsByFactionCanonicalName[pilot.faction] ?= {})[pilot.canonical_name] ?= []).push pilot
        ((exportObj.pilotsByKeyword[pilot.keyword] ?= {})[pilot.canonical_name] ?= []).push pilot
        (exportObj.pilotsByUniqueName[pilot.canonical_name.getXWSBaseName()] ?= []).push pilot

    exportObj.pilotsByFactionXWS = {}
    for pilot_name, pilot of exportObj.pilots
        ((exportObj.pilotsByFactionXWS[pilot.faction] ?= {})[pilot.xws] ?= []).push pilot


    exportObj.upgradesById = {}
    for upgrade_name, upgrade of exportObj.upgrades
        exportObj.fixIcons upgrade
        exportObj.upgradesById[upgrade.id] = upgrade
        for source in upgrade.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.upgradesById).length != Object.keys(exportObj.upgrades).length
        throw new Error("At least one upgrade shares an ID with another")

    exportObj.upgradesBySlotCanonicalName = {}
    exportObj.upgradesBySlotXWSName = {}
    exportObj.upgradesBySlotUniqueName = {}
    exportObj.upgradesByUniqueName = {}
    for upgrade_name, upgrade of exportObj.upgrades
        (exportObj.upgradesBySlotCanonicalName[upgrade.slot] ?= {})[upgrade.canonical_name] = upgrade
        (exportObj.upgradesBySlotXWSName[upgrade.slot] ?= {})[upgrade.xws] = upgrade
        (exportObj.upgradesBySlotUniqueName[upgrade.slot] ?= {})[upgrade.canonical_name.getXWSBaseName()] = upgrade
        (exportObj.upgradesByUniqueName[upgrade.canonical_name.getXWSBaseName()] ?= []).push upgrade

    exportObj.conditionsById = {}
    for condition_name, condition of exportObj.conditions
        exportObj.fixIcons condition
        exportObj.conditionsById[condition.id] = condition
    if Object.keys(exportObj.conditionsById).length != Object.keys(exportObj.conditions).length
        throw new Error("At least one condition shares an ID with another")

    exportObj.chassisById = {}
    for chassis_name, chassis of exportObj.chassis
        exportObj.fixIcons chassis
        exportObj.chassisById[chassis.id] = chassis
    if Object.keys(exportObj.chassisById).length != Object.keys(exportObj.chassis).length
        throw new Error("At least one chassis shares an ID with another")

    exportObj.conditionsByCanonicalName = {}
    for condition_name, condition of exportObj.conditions
        (exportObj.conditionsByCanonicalName ?= {})[condition.canonical_name] = condition

    exportObj.chassisByCanonicalName = {}
    for chassis_name, chassis of exportObj.chassis
        (exportObj.chassisByCanonicalName ?= {})[chassis.canonical_name] = chassis


    exportObj.expansions = Object.keys(exportObj.expansions).sort()

exportObj.setupTranslationCardData = (pilot_translations, upgrade_translations, condition_translations, chassis_translations, damage_translations={}) ->
    for upgrade_name, translations of upgrade_translations
        exportObj.fixIcons translations
        for field, translation of translations
            try
                exportObj.upgrades[upgrade_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for upgrade #{upgrade_name}. Please report this Issue. "
                throw e

    for condition_name, translations of condition_translations
        exportObj.fixIcons translations
        for field, translation of translations
            try
                exportObj.conditions[condition_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for condition #{condition_name}. Please report this Issue. "
                throw e

    for chassis_name, translations of chassis_translations
        exportObj.fixIcons translations
        for field, translation of translations
            try
                exportObj.chassis[chassis_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for chassis #{chassis_name}. Please report this Issue. "
                throw e


    for damage_name, translations of damage_translations
        exportObj.fixIcons translations
        for field, translation of translations
            try
                exportObj.damage[damage_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for damage card #{damage_name}. Please report this Issue. "
                throw e


    for pilot_name, translations of pilot_translations
        exportObj.fixIcons translations
        for field, translation of translations
            try
                exportObj.pilots[pilot_name][field] = translation
            catch e
                console.error "Cannot find translation for attribute #{field} for pilot #{pilot_name}. Please report this Issue. "
                throw e

exportObj.fixIcons = (data) ->
    if data.text?
        data.text = data.text
            .replace(/%BULLSEYEARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bullseyearc" title="Bullseye Arc"></i>')
            .replace(/%SINGLETURRETARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-singleturretarc" title="Single Turret Arc"></i>')
            .replace(/%DOUBLETURRETARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-doubleturretarc" title="Double Turret Arc"></i>')
            .replace(/%FRONTARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-frontarc" title="Front Arc"></i>')
            .replace(/%REARARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reararc" title="Rear Arc"></i>')
            .replace(/%LEFTARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-leftarc" title="Left Arc"></i>')
            .replace(/%RIGHTARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-rightarc" title="Right Arc"></i>')
            .replace(/%ROTATEARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-rotatearc" title="Rotate Arc"></i>')
            .replace(/%FULLFRONTARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-fullfrontarc" title="Full Front Arc"></i>')
            .replace(/%FULLREARARC%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-fullreararc" title="Full Rear Arc"></i>')
            .replace(/%DEVICE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-device" title="Device"></i>')
            .replace(/%MODIFICATION%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-modification" title="Modification"></i>')
            .replace(/%RELOAD%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reload" title="Reload"></i>')
            .replace(/%FORCE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-forcecharge" title="Force"></i>')
            .replace(/%CHARGE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-charge" title="Charge"></i>')
            .replace(/%ENERGY%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-energy" title="Energy"></i>')
            .replace(/%CALCULATE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-calculate" title="Calculate"></i>')
            .replace(/%BANKLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bankleft" title="Bank Left"></i>')
            .replace(/%BANKRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bankright" title="Bank Right"></i>')
            .replace(/%BARRELROLL%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-barrelroll" title="Barrel Roll"></i>')
            .replace(/%BOOST%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-boost" title="Boost"></i>')
            .replace(/%CANNON%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cannon" title="Cannon"></i>')
            .replace(/%CARGO%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cargo" title="Cargo"></i>')
            .replace(/%CLOAK%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cloak" title="Cloak"></i>')
            .replace(/%F-COORDINATE%/g, '<i class="xwing-miniatures-font force xwing-miniatures-font-coordinate" title="Force Coordinate"></i>')
            .replace(/%COORDINATE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-coordinate" title="Coordinate"></i>')
            .replace(/%CRIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-crit" title="Crit"></i>')
            .replace(/%ASTROMECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-astromech" title="Astromech"></i>')
            .replace(/%GUNNER%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-gunner" title="Gunner"></i>')
            .replace(/%CREW%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-crew" title="Crew"></i>')
            .replace(/%TACTICALRELAY%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-tacticalrelay" title="Tactical Relay"></i>')
            .replace(/%HARDPOINT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-hardpoint" title="Hardpoint"></i>')
            .replace(/%EVADE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-evade" title="Evade"></i>')
            .replace(/%FOCUS%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-focus" title="Focus"></i>')
            .replace(/%HIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-hit" title="Hit"></i>')
            .replace(/%ILLICIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-illicit" title="Illicit"></i>')
            .replace(/%JAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-jam" title="Jam"></i>')
            .replace(/%MISSILE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-missile" title="Missile"></i>')
            .replace(/%F-REINFORCE%/g, '<i class="xwing-miniatures-font force xwing-miniatures-font-reinforce" title="Force Reinforce"></i>')
            .replace(/%REINFORCE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reinforce" title="Reinforce"></i>')
            .replace(/%REVERSESTRAIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reversestraight" title="Reverse Straight"></i>')
            .replace(/%REVERSEBANKLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reversebankleft" title="Reverse Bank Left"></i>')
            .replace(/%REVERSEBANKRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reversebankright" title="Reverse Bank Right"></i>')
            .replace(/%SHIELD%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-shield" title="Shield"></i>')
            .replace(/%SLAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-slam" title="Slam"></i>')
            .replace(/%SLOOPLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sloopleft" title="Segnors Loop Left"></i>')
            .replace(/%SLOOPRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sloopright" title="Segnors Loop Right"></i>')
            .replace(/%STRAIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-straight" title="Straight"></i>')
            .replace(/%STOP%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-stop" title="Stop"></i>')
            .replace(/%SENSOR%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sensor" title="Sensor"></i>')
            .replace(/%LOCK%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-lock" title="Lock"></i>')
            .replace(/%TORPEDO%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-torpedo" title="Torpedo"></i>')
            .replace(/%TROLLLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-trollleft" title="Tallon Roll Left"></i>')
            .replace(/%TROLLRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-trollright" title="Tallon Roll Right"></i>')
            .replace(/%TURNLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turnleft" title="Turn Left"></i>')
            .replace(/%TURNRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turnright" title="Turn Right"></i>')
            .replace(/%TURRET%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turret" title="Turret"></i>')
            .replace(/%KTURN%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-kturn" title="Koiogran Turn"></i>')
            .replace(/%TALENT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-talent" title="Talent"></i>')
            .replace(/%TITLE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-title" title="Title"></i>')
            .replace(/%TEAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-team" title="Team"></i>')
            .replace(/%TECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-tech" title="Tech"></i>')
            .replace(/%FORCEPOWER%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-forcepower" title="Force"></i>')
            .replace(/%RANGEBONUS%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-rangebonusindicator" title="Range Bonus Negated"></i>')
            .replace(/%CONFIGURATION%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-config" title="Configuration"></i>')
            .replace(/%AGILITY%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-agility" title="Agility"></i>')
            .replace(/%HULL%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-hull" title="Hull"></i>')
            .replace(/%STRAIN%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-token-strain" title="Strain Token"></i>')
            .replace(/%DEPLETE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-token-deplete" title="Deplete Token"></i>')
            .replace(/%TRACTOR%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-token-tractor" title="Tractor Token"></i>')
            .replace(/%ION%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-token-ion" title="Ion Token"></i>')
            .replace(/%STRESS%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-token-stress" title="Stress Token"></i>')
            .replace(/%RECURRING%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-recurring" title="Recurring"></i>')
            .replace(/%NEGATIVERECURRING%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-negativerecurring" title="Negative Recurring"></i>')
            .replace(/%MISSIONPOINT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-point" title="Mission Point"></i>')
            .replace(/%FUSE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-fuse" title="Fuse"></i>')
            .replace(/%LINEBREAK%/g, '<br /><br />')

exportObj.canonicalizeShipNames = (card_data) ->
    for ship_name, ship_data of card_data.ships
        ship_data.canonical_name ?= ship_data.name.canonicalize()

exportObj.renameShip = (name, new_name) ->
    exportObj.ships[name].display_name = new_name

exportObj.randomizer = (faction_name, points) ->
    shiplistmaster = exportObj.basicCardData #export ship database
    listcount = 0 #start count at 0
    #for shiplistmaster in shiplistmaster.pilotsbyid.faction == faction_name loop grab pilots by faction
        #if Math.random() >= 0.9
        #append.shiplistmaster.pilotsbyid.xws ? shiplistmaster.pilotsbyid.canonical_name ? shiplistmaster.pilotsbyid.name.canonicalize())

exportObj.standardShipInclusions = [
    {name: 'T-65 X-wing', faction: 'Rebel Alliance'}
    {name: 'Modified YT-1300 Light Freighter', faction: 'Rebel Alliance'}
    {name: 'A/SF-01 B-wing', faction: 'Rebel Alliance'}
    {name: 'RZ-1 A-wing', faction: 'Rebel Alliance'}
    {name: 'BTL-A4 Y-wing', faction: 'Rebel Alliance'}
    {name: 'VCX-100 Light Freighter', faction: 'Rebel Alliance'}
    {name: 'Sheathipede-Class Shuttle', faction: 'Rebel Alliance'}
    {name: 'ARC-170 Starfighter', faction: 'Rebel Alliance'}
    {name: 'Fang Fighter', faction: 'Rebel Alliance'}
    {name: 'TIE/ln Fighter', faction: 'Rebel Alliance'}
    {name: 'HWK-290 Light Freighter', faction: 'Rebel Alliance'}
    {name: 'UT-60D U-wing', faction: 'Rebel Alliance'}
    {name: 'Z-95-AF4 Headhunter', faction: 'Rebel Alliance'}
    {name: 'Gauntlet Fighter', faction: 'Rebel Alliance'}
    {name: 'YT-2400 Light Freighter', faction: 'Rebel Alliance'}

    {name: 'TIE Advanced x1', faction: 'Galactic Empire'}
    {name: 'TIE Advanced v1', faction: 'Galactic Empire'}
    {name: 'TIE/ln Fighter', faction: 'Galactic Empire'}
    {name: 'TIE/sa Bomber', faction: 'Galactic Empire'}
    {name: 'TIE/in Interceptor', faction: 'Galactic Empire'}
    {name: 'TIE Reaper', faction: 'Galactic Empire'}
    {name: 'TIE/d Defender', faction: 'Galactic Empire'}
    {name: 'TIE/sk Striker', faction: 'Galactic Empire'}
    {name: 'TIE/rb Heavy', faction: 'Galactic Empire'}
    {name: 'TIE/ph Phantom', faction: 'Galactic Empire'}
    {name: 'Alpha-Class Star Wing', faction: 'Galactic Empire'}
    {name: 'VT-49 Decimator', faction: 'Galactic Empire'}
    {name: 'Gauntlet Fighter', faction: 'Galactic Empire'}

    {name: 'Firespray-class Patrol Craft', faction: 'Scum and Villainy'}
    {name: 'BTL-A4 Y-wing', faction: 'Scum and Villainy'}
    {name: 'Modified TIE/ln Fighter', faction: 'Scum and Villainy'}
    {name: 'Fang Fighter', faction: 'Scum and Villainy'}
    {name: 'JumpMaster 5000', faction: 'Scum and Villainy'}
    {name: 'M3-A Interceptor', faction: 'Scum and Villainy'}
    {name: 'Customized YT-1300 Light Freighter', faction: 'Scum and Villainy'}
    {name: 'Escape Craft', faction: 'Scum and Villainy'}
    {name: 'YV-666 Light Freighter', faction: 'Scum and Villainy'}
    {name: 'Z-95-AF4 Headhunter', faction: 'Scum and Villainy'}
    {name: 'HWK-290 Light Freighter', faction: 'Scum and Villainy'}
    {name: 'ST-70 Assault Ship', faction: 'Scum and Villainy'}
    {name: 'Rogue-class Starfighter', faction: 'Scum and Villainy'}
    {name: 'Gauntlet Fighter', faction: 'Scum and Villainy'}
    {name: 'YT-2400 Light Freighter', faction: 'Scum and Villainy'}

    {name: 'Fireball', faction: 'Resistance'}
    {name: 'T-70 X-wing', faction: 'Resistance'}
    {name: 'RZ-2 A-wing', faction: 'Resistance'}
    {name: 'BTA-NR2 Y-wing', faction: 'Resistance'}
    {name: 'Resistance Transport', faction: 'Resistance'}
    {name: 'Resistance Transport Pod', faction: 'Resistance'}
    {name: 'Scavenged YT-1300', faction: 'Resistance'}

    {name: 'TIE/ba Interceptor', faction: 'First Order'}
    {name: 'TIE/fo Fighter', faction: 'First Order'}
    {name: 'TIE/vn Silencer', faction: 'First Order'}
    {name: 'TIE/sf Fighter', faction: 'First Order'}
    {name: 'TIE/se Bomber', faction: 'First Order'}
    {name: 'TIE/wi Whisper Modified Interceptor', faction: 'First Order'}
    {name: 'Xi-class Light Shuttle', faction: 'First Order'}

    {name: 'Delta-7 Aethersprite', faction: 'Galactic Republic'}
    {name: 'Delta-7b Aethersprite', faction: 'Galactic Republic'}
    {name: 'ARC-170 Starfighter', faction: 'Galactic Republic'}
    {name: 'Naboo Royal N-1 Starfighter', faction: 'Galactic Republic'}
    {name: 'BTL-B Y-wing', faction: 'Galactic Republic'}
    {name: 'V-19 Torrent Starfighter', faction: 'Galactic Republic'}
    {name: 'Eta-2 Actis', faction: 'Galactic Republic'}
    {name: 'Nimbus-class V-wing', faction: 'Galactic Republic'}
    {name: 'LAAT/i Gunship', faction: 'Galactic Republic'}
    {name: 'Gauntlet Fighter', faction: 'Galactic Republic'}
    {name: 'Clone Z-95 Headhunter', faction: 'Galactic Republic'}

    {name: 'Vulture-class Droid Fighter', faction: 'Separatist Alliance'}
    {name: 'Hyena-class Droid Bomber', faction: 'Separatist Alliance'}
    {name: 'Droid Tri-fighter', faction: 'Separatist Alliance'}
    {name: 'Firespray-class Patrol Craft', faction: 'Separatist Alliance'}
    {name: 'Sith Infiltrator', faction: 'Separatist Alliance'}
    {name: 'Nantex-Class Starfighter', faction: 'Separatist Alliance'}
    {name: 'HMP Droid Gunship', faction: 'Separatist Alliance'}
    {name: 'Belbullab-22 Starfighter', faction: 'Separatist Alliance'}
    {name: 'Gauntlet Fighter', faction: 'Separatist Alliance'}
    {name: 'Rogue-class Starfighter', faction: 'Separatist Alliance'}
]

# Used to exclude pilots from included ships
exportObj.standardPilotExclusions = [

    # Rebel Alliance
    'Hera Syndulla (VCX-100)'
    '"Leebo"'
    'Dash Rendar'
    'Wild Space Fringer'

    # Galactic Empire
    'Ved Foslo'

    # Scum and Villainy

    # Resistance
    'Han Solo (Resistance)'
    'Vi Moradi'

    # FO

    # Galactic Republic
    'Saesee Tiin'
    'Saesee Tiin (Delta-7b)'

    # Separatist Alliance
    'Phlac-Arphocc Prototype'

]

# Upgrades in that are not in standard
exportObj.standardUpgradeExclusions = [
    # Rebel Alliance
    'Cassian Andor'
    'Sabine Wren'

    # Galactic Empire
    'Admiral Sloane'

    # Scum and Villainy
    'Boba Fett'
    'Tobias Beckett'
    'Slave I'

    # Resistance
    'Kaydel Connix'

    # FO
    'Supreme Leader Snoke'
    'Commander Pyre'

    # Galactic Republic
    'R2-A6'
  
    # Separatist Alliance
    'Tal Merrik'

    # Generic
    'Advanced Sensors'
    'Autoblasters'
    'Delta-7B'
    'Hull Upgrade'
    'Inertial Dampeners'
    'Informant'
    'Interloper Turn'
    'Intimidation'
    'Precognitive Reflexes'
    'R2 Astromech'
    'R5 Astromech'
    'Seasoned Navigator'
    'Sense'
    'Supernatural Reflexes'
    'Static Discharge Vanes'
    'Stealth Device'
    'Composure'
    'Trajectory Simulator'

    # Epic
    'Strategic Commander'
    'In It For The Money'
    'Bounty'
]

exportObj.epicExclusionsList = [
    'CR90 Corellian Corvette'
    'Raider-class Corvette'
    'GR-75 Medium Transport'
    'Gozanti-class Cruiser'
    'C-ROC Cruiser'
    'Syliure-class Hyperspace Ring'
    'Trident-class Assault Ship'
]


exportObj.epicExclusions = (data) ->
    if data.ship? and (data.ship in exportObj.epicExclusionsList)
        return false
    else if data.slot? and (data.slot == "Command")
        return false
    else if data.name? and (data.name in exportObj.epicExclusionsList)
        return false
    else
        return true

# Ships/Pilots excluded unless in the included list (with further excluded pilots list for included ships, i.e u-wing)
# while upgrades assumed included unless on the excluded list
exportObj.standardCheck = (data, faction='', shipCheck=false, onlyBanList=false) ->
    if (shipCheck)
        if (data.name in exportObj.standardPilotExclusions)
            return false
        if (data.name.search("(EoD)") > 0 or data.name.search("(AaD)") > 0) # temporary fix for non amg content
            return false
        if onlyBanList == false
            for ship in exportObj.standardShipInclusions
                if (ship.faction == faction && (data.name == ship.name || data.ship == ship.name || (Array.isArray(data.ship) and ship.name in data.ship)))
                    return true
            return false
        else
            return true
    else
        return data.name not in exportObj.standardUpgradeExclusions

exportObj.standardCheckBrowser = (data, faction='', type) ->
    # check ship/pilot first
    if type == 'Pilot'
        check = false
        for ship in exportObj.standardShipInclusions
            if (data.faction == ship.faction && (data.ship == ship.name))
                check = true
        if check == false
            return false
        return data.name not in exportObj.standardPilotExclusions
    else if type == 'Ship'
        for ship in exportObj.standardShipInclusions
            # checks against name for ship itself or ship name/faction for pilot inclusions
            if (ship.faction == faction && (data.name == ship.name || data.ship == ship.name || (Array.isArray(data.ship) and ship.name in data.ship)))
                return true
        return false
    else
        return data.name not in exportObj.standardUpgradeExclusions

String::ParseParameter = (name) ->
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]")
    regexS = "[\\?&]" + name + "=([^&#]*)"
    regex = new RegExp(regexS)
    results = regex.exec(this)
    if results == null
        return ""
    else
        return decodeURIComponent(results[1].replace(/\+/g, " "))

String::serialtoxws = ->
    xws =
        description: ""
        faction: this.ParseParameter('f').canonicalize()
        name: this.ParseParameter('sn')
        pilots: []
        points: 20
        vendor:
            yasb:
                builder: 'YASB - X-Wing 2.5'
                builder_url: "https://yasb.app"
                link: "https://yasb.app/#{this}" 
        version: '09/06/2024'
        ruleset: 'AMG'

    if this.ParseParameter('obs')
        xws.obstacles = this.ParseParameter('obs').split(",")

    serialized = this.ParseParameter('d')
    re = if "Z" in serialized then /^v(\d+)Z(.*)/ else /^v(\d+)!(.*)/
    matches = re.exec serialized
    if matches?
        # Parsing extra data in case we need it later
        version = parseInt matches[1]
        ship_splitter = 'Y'
        [g, p, s] = matches[2].split('Z')
        [ game_type_abbrev, desired_points, serialized_ships ] = [g, parseInt(p), s]

        switch game_type_abbrev
            when 's'
                gamemode = 'extended'
            when 'h'
                gamemode = 'standard'
            when 'e'
                gamemode = 'epic'
            when 'b'
                gamemode = 'xwa'
            when 'q'
                return "error: game mode not supported"

        if !serialized_ships? # something went wrong, we can't load that serialization
            return "error: serialization read failed"

        #independantly setting up basic card data for xws output
        card_data = exportObj.basicCardData()

        if gamemode == 'xwa'
            xws.version = 'R1'
            xws.ruleset = 'XWA'

        card_pilots = {}
        for pilot_data in card_data.pilotsById
            unless pilot_data.skip?
                name_parse = pilot_data.name.split("(")
                pilot_data.canonical_name = name_parse[0].canonicalize() unless pilot_data.canonical_name?

                pilot_data.xws = if pilot_data.xws? then pilot_data.xws else (if pilot_data.xwsaddon? then (pilot_data.canonical_name + "-" + pilot_data.xwsaddon) else (pilot_data.canonical_name + (if name_parse[1]? then ("-" + pilot_data.ship.canonicalize()) else "")))
                card_pilots[pilot_data.id] = pilot_data

        cards_upgrades = {}
        for upgrade_data in card_data.upgradesById
            unless upgrade_data.skip?
                name_parse = upgrade_data.name.split("(")
                upgrade_data.canonical_name = name_parse[0].canonicalize() unless upgrade_data.canonical_name?

                upgrade_data.xws = if upgrade_data.xws? then upgrade_data.xws else (if upgrade_data.xwsaddon? then (upgrade_data.canonical_name + "-" + upgrade_data.xwsaddon) else (upgrade_data.canonical_name + (if name_parse[1]? then ("-" + upgrade_data.slot.canonicalize()) else "")))
                cards_upgrades[upgrade_data.id] = upgrade_data

        if serialized_ships.length?
            # Ship loop
            for serialized_ship in serialized_ships.split(ship_splitter)
                pilot_splitter = 'X'
                upgrade_splitter = 'W'
                
                if (gamemode == 'xwa' and pilot_data.pointsxwa?) then points = pilot_data.pointsxwa else points = pilot_data.points
                # if (gamemode == 'xwa' and pilot_data.loadoutxwa) then loadout = pilot_data.loadoutxwa else points = points = pilot_data.loadout

                [ pilot_id, upgrade_ids ] = serialized_ship.split pilot_splitter
                # pilot_data is the pilot info
                pilot_data = card_pilots[parseInt(pilot_id)]
                if pilot_data
                    pilot_xws =
                        id: (pilot_data.xws ? pilot_data.canonical_name)
                        name: (pilot_data.xws ? pilot_data.canonical_name)
                        points: points
                        ship: pilot_data.ship.canonicalize()
                        upgrades: []

                    if not pilot_data.upgrades?
                        upgrade_ids = upgrade_ids.split upgrade_splitter

                        upgrade_obj = {}

                        for i in [upgrade_ids.length - 1 ... -1]
                            upgrade_id = upgrade_ids[i]
                            # upgrade_data is the pilot info
                            upgrade_data = cards_upgrades[parseInt(upgrade_id)]
                            if upgrade_data
                                switch upgrade_data.slot
                                    when 'Force'
                                        slot = 'force-power'
                                    when 'Tactical Relay'
                                        slot = 'tactical-relay'
                                    else
                                        slot = upgrade_data.slot.canonicalize()
                                
                                (upgrade_obj[slot] ?= []).push (upgrade_data.xws ? upgrade_data.canonical_name)

                        pilot_xws.upgrades = upgrade_obj
                
                    xws.pilots.push pilot_xws

    else
        return "error: could not read URL"

    return JSON.stringify(xws)
