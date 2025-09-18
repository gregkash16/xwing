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
                "Illicit"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Blue Squadron Escort"
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
                "Torpedo"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Red Squadron Veteran"
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
                "Talent"
                "Astromech"
                "Torpedo"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Jek Porkins"
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
                "Talent"
                "Astromech"
                "Torpedo"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Luke Skywalker"
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
                "Force"
                "Force"
                "Astromech"
                "Torpedo"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Wedge Antilles"
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
                "Talent"
                "Astromech"
                "Torpedo"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Garven Dreis (X-Wing)"
            id: 6
            xws_name: "garvendreis-t65xwing"
            unique: true
            xwsship: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 4
            points: 5
            loadout: 16
            pointsxwa: 11
            loadoutxwa: 9
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
                "Torpedo"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Biggs Darklighter"
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
                "Torpedo"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Edrio Two Tubes"
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
                "Illicit"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Thane Kyrell"
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
                "Talent"
                "Astromech"
                "Torpedo"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Leevan Tenza"
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
                "Talent"
                "Astromech"
                "Illicit"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "whoops"
            id: 11
            xws_name: "whoops"
            skip: true
        }

        {
            name: "Kullbee Sperado"
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
                "Talent"
                "Astromech"
                "Illicit"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Sabine Wren (TIE Fighter)"
            id: 13
            xws_name: "sabinewren-tielnfighter"
            unique: true
            xwsship: true
            faction: "Rebel Alliance"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 2
            loadout: 0
            pointsxwa: 8
            loadoutxwa: 13
            keyword: ["Spectre", "Mandalorian"]
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
            name: "Ezra Bridger (TIE Fighter)"
            id: 14
            xws_name: "ezrabridger-tielnfighter"
            unique: true
            faction: "Rebel Alliance"
            ship: "TIE/ln Fighter"
            skill: 3
            force: 1
            points: 3
            loadout: 6
            pointsxwa: 9
            loadoutxwa: 15
            keyword: ["Light Side","Spectre"]
            slots: [
                "Force"
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Modification"
                "Modification"
            ]
        }

        {
            name: '"Zeb" Orrelios (TIE Fighter)'
            id: 15
            xws_name: "zeborrelios-tielnfighter"
            xwsname: "zeborrelios-tielnfighter"
            unique: true
            faction: "Rebel Alliance"
            ship: "TIE/ln Fighter"
            skill: 2
            points: 3
            loadout: 8
            pointsxwa: 6
            loadoutxwa: 5
            keyword: ["Spectre"]
            slots: [
                "Crew"
                "Modification"
            ]
            slotsxwa: [
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Captain Rex"
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
            ]
            applies_condition: 'Suppressive Fire'.canonicalize()
        }

        {
            name: "Miranda Doni"
            id: 17
            xws_name: "mirandadoni"
            unique: true
            faction: "Rebel Alliance"
            ship: "BTL-S8 K-wing"
            skill: 4
            points: 5
            loadout: 14
            pointsxwa: 12
            loadoutxwa: 13
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
                "Talent"
                "Crew"
                "Gunner"
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Device"
                "Modification"
            ]
        }

        {
            name: "Esege Tuketu"
            id: 18
            xws_name: "esegetuketu"
            unique: true
            faction: "Rebel Alliance"
            ship: "BTL-S8 K-wing"
            skill: 3
            points: 5
            loadout: 16
            pointsxwa: 12
            loadoutxwa: 11
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
                "Crew"
                "Gunner"
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Device"
                "Modification"
            ]
        }

        {
            name: "empty"
            id: 19
            xws_name: "empty"
            skip: true
        }

        {
            name: "Warden Squadron Pilot"
            id: 20
            xws_name: "wardensquadronpilot"
            faction: "Rebel Alliance"
            ship: "BTL-S8 K-wing"
            skill: 2
            points: 5
            loadout: 7
            pointsxwa: 11
            loadoutxwa: 12
            slots: [
                "Torpedo"
                "Missile"
                "Gunner"
                "Device"
                "Device"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Device"
                "Modification"
            ]
        }

        {
            name: "Corran Horn"
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
                "Talent"
                "Talent"
                "Astromech"
                "Sensor"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Gavin Darklighter"
            id: 22
            xws_name: "gavindarklighter"
            unique: true
            faction: "Rebel Alliance"
            ship: "E-wing"
            skill: 4
            points: 5
            loadout: 18
            pointsxwa: 15
            loadoutxwa: 18
            slots: [
                "Talent"
                "Tech"
                "Sensor"
                "Torpedo"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Astromech"
                "Sensor"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Rogue Squadron Escort"
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
                "Talent"
                "Astromech"
                "Sensor"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Knave Squadron Escort"
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
                "Astromech"
                "Sensor"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Norra Wexley (Y-Wing)"
            id: 25
            xws_name: "norrawexley-btla4ywing"
            unique: true
            faction: "Rebel Alliance"
            ship: "BTL-A4 Y-wing"
            skill: 5
            points: 5
            loadout: 18
            pointsxwa: 12
            loadoutxwa: 20
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
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Horton Salm"
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
                "Talent"
                "Astromech"
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
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
                "Talent"
                "Astromech"
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Evaan Verlaine"
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
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Gold Squadron Veteran"
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
                "Talent"
                "Astromech"
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Gray Squadron Bomber"
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
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Bodhi Rook"
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
                "Talent"
                "Crew"
                "Crew"
                "Sensor"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Heff Tobber"
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
                "Talent"
                "Crew"
                "Crew"
                "Sensor"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Magva Yarro"
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
                "Talent"
                "Crew"
                "Crew"
                "Sensor"
                "Illicit"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Saw Gerrera"
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
                "Talent"
                "Crew"
                "Crew"
                "Sensor"
                "Illicit"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Benthic Two Tubes"
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
                "Talent"
                "Crew"
                "Crew"
                "Sensor"
                "Illicit"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Blue Squadron Scout"
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
                "Talent"
                "Crew"
                "Crew"
                "Sensor"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Partisan Renegade"
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
                "Illicit"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Dash Rendar"
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
                "Missile"
                "Modification"
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
                "Missile"
                "Modification"
            ]
            chassis: "Sensor Blindspot"
            ship_override:
                attackdt: 4
        }

        {
            name: "Wild Space Fringer"
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
                "Missile"
                "Modification"
            ]
            chassis: "Sensor Blindspot"
            ship_override:
                attackdt: 4
        }

        {
            name: "Han Solo"
            id: 42
            xws_name: "hansolo-modifiedyt1300lightfreighter"
            unique: true
            xwsaddon: "modifiedyt1300lightfreighter"
            faction: "Rebel Alliance"
            ship: "Modified YT-1300 Light Freighter"
            skill: 6
            points: 7
            loadout: 15
            pointsxwa: 20
            loadoutxwa: 21
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
                "Talent"
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Illicit"
                "Missile"
                "Modification"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Lando Calrissian"
            id: 43
            xws_name: "landocalrissian-modifiedyt1300lightfreighter"
            unique: true
            xwsaddon: "modifiedyt1300lightfreighter"
            faction: "Rebel Alliance"
            ship: "Modified YT-1300 Light Freighter"
            skill: 5
            points: 7
            loadout: 21
            pointsxwa: 19
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
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Illicit"
                "Missile"
                "Modification"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Chewbacca"
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
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Illicit"
                "Missile"
                "Modification"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Outer Rim Smuggler"
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
                "Missile"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Jan Ors"
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
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Roark Garnet"
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
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Kyle Katarn"
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
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Rebel Scout"
            id: 49
            xws_name: "rebelscout"
            faction: "Rebel Alliance"
            ship: "HWK-290 Light Freighter"
            skill: 2
            points: 4
            loadout: 6
            pointsxwa: 7
            loadoutxwa: 5
            slots: [
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Crew"
                "Device"
                "Device"
                "Modification"
            ]
        }

        {
            name: "Jake Farrell"
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
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Arvel Crynyd"
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
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Green Squadron Pilot"
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
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Phoenix Squadron Pilot"
            id: 53
            xws_name: "phoenixsquadronpilot"
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 1
            points: 4
            loadout: 3
            pointsxwa: 7
            loadoutxwa: 1
            slots: [
                "Talent"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Airen Cracken"
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
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Lieutenant Blount"
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
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Tala Squadron Pilot"
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
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Bandit Squadron Pilot"
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
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Wullffwarro"
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
                "Talent"
                "Crew"
                "Modification"
            ]
        }

        {
            name: "Lowhhrick"
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
            id: 61
            xws_name: "herasyndulla-vcx100lightfreighter"
            unique: true
            faction: "Rebel Alliance"
            ship: "VCX-100 Light Freighter"
            skill: 5
            points: 7
            loadout: 20
            pointsxwa: 18
            loadoutxwa: 19
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
                "Talent"
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Sensor"
                "Torpedo"
                "Modification"
                "Title"
                "Turret"
            ]
        }

        {
            name: "Kanan Jarrus"
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
                "Force"
                "Crew"
                "Crew"
                "Gunner"
                "Sensor"
                "Torpedo"
                "Modification"
                "Title"
                "Turret"
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
                "Gunner"
                "Sensor"
                "Torpedo"
                "Modification"
                "Title"
                "Turret"
            ]
        }

        {
            name: "Lothal Rebel"
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
                "Gunner"
                "Sensor"
                "Torpedo"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Hera Syndulla"
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
                "Talent"
                "Talent"
                "Crew"
                "Modification"
                "Title"
                "Turret"
            ]
        }

        {
            name: "Sabine Wren"
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
                "Talent"
                "Crew"
                "Modification"
                "Title"
                "Turret"
            ]
        }

        {
            name: "Ezra Bridger"
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
                "Force"
                "Crew"
                "Modification"
                "Title"
                "Turret"
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
                "Title"
                "Turret"
            ]
        }

        {
            name: "Fenn Rau (Sheathipede)"
            id: 69
            xws_name: "fennrau-sheathipedeclassshuttle"
            unique: true
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 6
            points: 5
            loadout: 10
            pointsxwa: 10
            loadoutxwa: 10
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
                "Astromech"
                "Crew"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Ezra Bridger (Sheathipede)"
            id: 70
            xws_name: "ezrabridger-sheathipedeclassshuttle"
            unique: true
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 3
            force: 1
            points: 4
            loadout: 6
            pointsxwa: 9
            loadoutxwa: 9
            keyword: ["Light Side","Spectre"]
            slots: [
                "Force"
                "Crew"
                "Astromech"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Force"
                "Astromech"
                "Crew"
                "Modification"
                "Title"
            ]
        }

        {
            name: '"Zeb" Orrelios (Sheathipede)'
            id: 71
            xws_name: "zeborrelios-sheathipedeclassshuttle"
            xwsname: "zeborrelios-sheathipedeclassshuttle"
            unique: true
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 2
            points: 3
            loadout: 3
            pointsxwa: 7
            loadoutxwa: 4
            keyword: ["Spectre"]
            slots: [
                "Talent"
                "Crew"
                "Astromech"
                "Modification"
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
            name: "AP-5"
            id: 72
            xws_name: "ap5"
            unique: true
            faction: "Rebel Alliance"
            ship: "Sheathipede-Class Shuttle"
            skill: 1
            points: 3
            loadout: 5
            pointsxwa: 8
            loadoutxwa: 6
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
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Ten Numb"
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
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Blade Squadron Veteran"
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
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Blue Squadron Pilot"
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
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Norra Wexley"
            id: 77
            xws_name: "norrawexley"
            unique: true
            faction: "Rebel Alliance"
            ship: "ARC-170 Starfighter"
            skill: 5
            points: 5
            loadout: 8
            pointsxwa: 13
            loadoutxwa: 16
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
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Shara Bey"
            id: 78
            xws_name: "sharabey"
            unique: true
            faction: "Rebel Alliance"
            ship: "ARC-170 Starfighter"
            skill: 4
            points: 4
            loadout: 8
            pointsxwa: 12
            loadoutxwa: 17
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
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Garven Dreis"
            id: 79
            xws_name: "garvendreis"
            unique: true
            faction: "Rebel Alliance"
            ship: "ARC-170 Starfighter"
            skill: 4
            points: 4
            loadout: 7
            pointsxwa: 12
            loadoutxwa: 15
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
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Ibtisam"
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
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "IG-88A"
            id: 81
            xws_name: "ig88a"
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
                "Sensor"
                "Illicit"
                "Cannon"
                "Cannon"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "IG-88B"
            id: 82
            xws_name: "ig88b"
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
                "Sensor"
                "Illicit"
                "Cannon"
                "Cannon"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "IG-88C"
            id: 83
            xws_name: "ig88c"
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
                "Sensor"
                "Illicit"
                "Cannon"
                "Cannon"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "IG-88D"
            id: 84
            xws_name: "ig88d"
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
                "Sensor"
                "Illicit"
                "Cannon"
                "Cannon"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Kavil"
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
                "Talent"
                "Astromech"
                "Illicit"
                "Missile"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Drea Renthal"
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
                "Talent"
                "Astromech"
                "Illicit"
                "Missile"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Hired Gun"
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
                "Illicit"
                "Missile"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Crymorah Goon"
            id: 88
            xws_name: "crymorahgoon"
            faction: "Scum and Villainy"
            ship: "BTL-A4 Y-wing"
            skill: 1
            points: 4
            loadout: 4
            pointsxwa: 7
            loadoutxwa: 5
            slots: [
                "Turret"
                "Missile"
                "Device"
                "Illicit"
            ]
            slotsxwa: [
                "Astromech"
                "Illicit"
                "Missile"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Han Solo (Scum)"
            id: 89
            xws_name: "hansolo"
            unique: true
            faction: "Scum and Villainy"
            ship: "Customized YT-1300 Light Freighter"
            xws: "hansolo"
            skill: 6
            points: 5
            loadout: 10
            pointsxwa: 14
            loadoutxwa: 16
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
                "Talent"
                "Talent"
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
            name: "Lando Calrissian (Scum)"
            id: 90
            xws_name: "landocalrissian"
            unique: true
            xws: "landocalrissian"
            faction: "Scum and Villainy"
            ship: "Customized YT-1300 Light Freighter"
            skill: 4
            points: 5
            loadout: 10
            pointsxwa: 13
            loadoutxwa: 16
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
                "Talent"
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
            name: "L3-37"
            id: 91
            xws_name: "l337"
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
            id: 92
            xws_name: "freightercaptain"
            faction: "Scum and Villainy"
            ship: "Customized YT-1300 Light Freighter"
            max_per_squad: 1
            skill: 1
            points: 5
            loadout: 6
            pointsxwa: 11
            loadoutxwa: 9
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
            id: 93
            xws_name: "landocalrissian-escapecraft"
            unique: true
            faction: "Scum and Villainy"
            ship: "Escape Craft"
            skill: 4
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
                "Talent"
                "Crew"
                "Illicit"
                "Modification"
            ]
        }

        {
            name: "Outer Rim Pioneer"
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
            id: 95
            xws_name: "l337-escapecraft"
            unique: true
            faction: "Scum and Villainy"
            ship: "Escape Craft"
            skill: 2
            points: 3
            loadout: 4
            pointsxwa: 7
            loadoutxwa: 10
            keyword: ["Droid"]
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
            name: "Autopilot Drone"
            id: 96
            slotsxwa: [

            ]
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
            id: 97
            xws_name: "fennrau"
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 6
            points: 6
            loadout: 12
            pointsxwa: 13
            loadoutxwa: 5
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
                "Talent"
                "Torpedo"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Old Teroch"
            id: 98
            xws_name: "oldteroch"
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 5
            points: 5
            loadout: 10
            pointsxwa: 12
            loadoutxwa: 8
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
                "Torpedo"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Kad Solus"
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
                "Torpedo"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Joy Rekkoff"
            id: 100
            xws_name: "joyrekkoff"
            unique: true
            faction: "Scum and Villainy"
            ship: "Fang Fighter"
            skill: 4
            points: 4
            loadout: 7
            pointsxwa: 11
            loadoutxwa: 8
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
                "Torpedo"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Skull Squadron Pilot"
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
                "Torpedo"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Zealous Recruit"
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
                "Torpedo"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Boba Fett"
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
                "Talent"
                "Crew"
                "Illicit"
                "Cannon"
                "Missile"
                "Device"
                "Modification"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Emon Azzameen"
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
                "Talent"
                "Crew"
                "Illicit"
                "Cannon"
                "Missile"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Kath Scarlet"
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
                "Talent"
                "Crew"
                "Illicit"
                "Cannon"
                "Missile"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Koshka Frost"
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
                "Talent"
                "Crew"
                "Illicit"
                "Cannon"
                "Missile"
                "Device"
                "Modification"
            ]
        }

        {
            name: "Krassis Trelix"
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
                "Talent"
                "Crew"
                "Illicit"
                "Cannon"
                "Missile"
                "Device"
                "Modification"
            ]
        }

        {
            name: "Bounty Hunter"
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
                "Crew"
                "Illicit"
                "Cannon"
                "Missile"
                "Device"
                "Modification"
            ]
        }

        {
            name: "4-LOM"
            id: 109
            xws_name: "4lom"
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
                "Talent"
                "Crew"
                "Sensor"
                "Illicit"
                "Missile"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Zuckuss"
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
                "Talent"
                "Crew"
                "Sensor"
                "Illicit"
                "Missile"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Gand Findsman"
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
                "Sensor"
                "Illicit"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Palob Godalhi"
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
                "Talent"
                "Crew"
                "Illicit"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Dace Bonearm"
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
                "Talent"
                "Crew"
                "Illicit"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Torkil Mux"
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
                "Device"
                "Modification"
            ]
        }

        {
            name: "Dengar"
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
                "Talent"
                "Crew"
                "Gunner"
                "Illicit"
                "Cannon"
                "Torpedo"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Tel Trevura"
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
                "Talent"
                "Crew"
                "Gunner"
                "Illicit"
                "Cannon"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Manaroo"
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
                "Talent"
                "Crew"
                "Gunner"
                "Illicit"
                "Cannon"
                "Torpedo"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Contracted Scout"
            id: 118
            xws_name: "contractedscout"
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            max_per_squad: 2
            skill: 2
            points: 5
            loadout: 4
            pointsxwa: 10
            loadoutxwa: 8
            slots: [
                "Torpedo"
                "Cannon"
                "Illicit"
            ]
            slotsxwa: [
                "Crew"
                "Gunner"
                "Illicit"
                "Cannon"
                "Modification"
            ]
        }

        {
            name: "Talonbane Cobra"
            id: 119
            xws_name: "talonbanecobra"
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 5
            points: 5
            loadout: 12
            pointsxwa: 12
            loadoutxwa: 13
            slots: [
                "Talent"
                "Missile"
                "Illicit"
                "Illicit"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Illicit"
                "Illicit"
                "Missile"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Graz"
            id: 120
            xws_name: "graz"
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 4
            points: 4
            loadout: 8
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
                "Talent"
                "Illicit"
                "Illicit"
                "Missile"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Viktor Hel"
            id: 121
            xws_name: "viktorhel"
            unique: true
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 4
            points: 4
            loadout: 10
            pointsxwa: 10
            loadoutxwa: 8
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
                "Talent"
                "Illicit"
                "Illicit"
                "Missile"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Captain Jostero"
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
                "Missile"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Black Sun Ace"
            id: 123
            xws_name: "blacksunace"
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 3
            points: 4
            loadout: 3
            pointsxwa: 10
            loadoutxwa: 9
            slots: [
                "Talent"
            ]
            slotsxwa: [
                "Talent"
                "Illicit"
                "Illicit"
                "Missile"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Cartel Marauder"
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
                "Missile"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Asajj Ventress"
            id: 125
            xws_name: "asajjventress"
            unique: true
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 4
            points: 8
            loadout: 20
            pointsxwa: 16
            loadoutxwa: 16
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
                "Force"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
            ]
        }

        {
            name: "Ketsu Onyo"
            id: 126
            xws_name: "ketsuonyo"
            unique: true
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 5
            points: 7
            loadout: 15
            pointsxwa: 16
            loadoutxwa: 15
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
                "Talent"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Sabine Wren (Scum)"
            id: 127
            xws_name: "sabinewren-lancerclasspursuitcraft"
            unique: true
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 3
            points: 6
            loadout: 9
            pointsxwa: 15
            loadoutxwa: 16
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
                "Talent"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Shadowport Hunter"
            id: 128
            xws_name: "shadowporthunter"
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
            skill: 2
            points: 6
            loadout: 6
            pointsxwa: 14
            loadoutxwa: 14
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
                "Talent"
                "Astromech"
                "Illicit"
                "Torpedo"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Dalan Oberos"
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
                "Talent"
                "Astromech"
                "Illicit"
                "Torpedo"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Cartel Executioner"
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
                "Torpedo"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Serissu"
            id: 132
            xws_name: "serissu"
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 5
            points: 4
            loadout: 12
            pointsxwa: 10
            loadoutxwa: 11
            slots: [
                "Talent"
                "Talent"
                "Cannon"
                "Modification"
                "Modification"
                "HardpointShip"
            ]
            slotsxwa: [
                "Talent"
                "HardpointShip"
                "Modification"
            ]
        }

        {
            name: "Genesis Red"
            id: 133
            xws_name: "genesisred"
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 4
            points: 4
            loadout: 14
            pointsxwa: 10
            loadoutxwa: 14
            slots: [
                "Talent"
                "Illicit"
                "Modification"
                "HardpointShip"
            ]
            slotsxwa: [
                "Talent"
                "Illicit"
                "HardpointShip"
                "Modification"
            ]
        }

        {
            name: "Laetin A'shera"
            id: 134
            xws_name: "laetinashera"
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 3
            points: 3
            loadout: 9
            pointsxwa: 9
            loadoutxwa: 12
            slots: [
                "Talent"
                "Modification"
                "HardpointShip"
            ]
            slotsxwa: [
                "Talent"
                "Illicit"
                "HardpointShip"
                "Modification"
            ]
        }

        {
            name: "Quinn Jast"
            id: 135
            xws_name: "quinnjast"
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 3
            points: 3
            loadout: 12
            pointsxwa: 9
            loadoutxwa: 13
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Cannon"
                "Modification"
                "HardpointShip"
            ]
            slotsxwa: [
                "Talent"
                "Illicit"
                "HardpointShip"
                "Modification"
            ]
        }

        {
            name: "Tansarii Point Veteran"
            id: 136
            xws_name: "tansariipointveteran"
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 3
            points: 3
            loadout: 3
            pointsxwa: 8
            loadoutxwa: 10
            slots: [
                "Modification"
                "HardpointShip"
            ]
            slotsxwa: [
                "Talent"
                "Illicit"
                "HardpointShip"
                "Modification"
            ]
        }

        {
            name: "Inaldra"
            id: 137
            xws_name: "inaldra"
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 2
            points: 3
            loadout: 11
            pointsxwa: 8
            loadoutxwa: 10
            slots: [
                "Modification"
                "HardpointShip"
            ]
            slotsxwa: [
                "Illicit"
                "HardpointShip"
                "Modification"
            ]
        }

        {
            name: "Sunny Bounder"
            id: 138
            xws_name: "sunnybounder"
            unique: true
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            skill: 1
            points: 3
            loadout: 8
            pointsxwa: 8
            loadoutxwa: 12
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
            id: 139
            xws_name: "cartelspacer"
            faction: "Scum and Villainy"
            ship: "M3-A Interceptor"
            max_per_squad: 3
            skill: 1
            points: 3
            loadout: 4
            pointsxwa: 6
            loadoutxwa: 0
            slots: [
                "Modification"
                "HardpointShip"
            ]
            slotsxwa: [
                "Illicit"
                "HardpointShip"
                "Modification"
            ]
        }

        {
            name: "Constable Zuvio"
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
                "Talent"
                "Crew"
                "Illicit"
                "Device"
                "Modification"
            ]
        }

        {
            name: "Sarco Plank"
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
                "Illicit"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Unkar Plutt"
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
                "Talent"
                "Crew"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Title"
                "Turret"
            ]
        }

        {
            name: "Sol Sixxa"
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
                "Talent"
                "Crew"
                "Gunner"
                "Illicit"
                "Device"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Lok Revenant"
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
                "Device"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Guri"
            id: 147
            xws_name: "guri"
            unique: true
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 5
            points: 7
            loadout: 20
            pointsxwa: 13
            loadoutxwa: 11
            keyword: ["Droid"]
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Talent"
                "Sensor"
                "Illicit"
                "Torpedo"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Prince Xizor"
            id: 148
            xws_name: "princexizor"
            unique: true
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 4
            points: 5
            loadout: 7
            pointsxwa: 12
            loadoutxwa: 12
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Modification"
                "Title"
            ]
            slotsxwa: [
                "Talent"
                "Sensor"
                "Illicit"
                "Torpedo"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Dalan Oberos (StarViper)"
            id: 149
            xws_name: "dalanoberos-starviperclassattackplatform"
            unique: true
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 4
            points: 5
            loadout: 10
            pointsxwa: 10
            loadoutxwa: 6
            keyword: ["Bounty Hunter"]
            slots: [
                "Talent"
                "Tech"
                "Torpedo"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Sensor"
                "Illicit"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Black Sun Assassin"
            id: 150
            xws_name: "blacksunassassin"
            faction: "Scum and Villainy"
            ship: "StarViper-class Attack Platform"
            skill: 3
            points: 5
            loadout: 6
            pointsxwa: 11
            loadoutxwa: 9
            slots: [
                "Tech"
            ]
            slotsxwa: [
                "Talent"
                "Sensor"
                "Illicit"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Black Sun Enforcer"
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
                "Sensor"
                "Illicit"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Moralo Eval"
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
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
            ]
        }

        {
            name: "Bossk"
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
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Cannon"
                "Missile"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Latts Razzi"
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
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Cannon"
                "Missile"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Trandoshan Slaver"
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
                "Gunner"
                "Illicit"
                "Modification"
            ]
        }

        {
            name: "N'dru Suhlak"
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
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Kaa'to Leeachos"
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
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Black Sun Soldier"
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
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Binayre Pirate"
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
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Nashtah Pup"
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
            id: 161
            xws_name: "majorvynder"
            unique: true
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 4
            points: 5
            loadout: 16
            pointsxwa: 11
            loadoutxwa: 16
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Lieutenant Karsabi"
            id: 162
            xws_name: "lieutenantkarsabi"
            unique: true
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 3
            points: 5
            loadout: 14
            pointsxwa: 10
            loadoutxwa: 14
            slots: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Rho Squadron Pilot"
            id: 163
            xws_name: "rhosquadronpilot"
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 3
            points: 5
            loadout: 9
            pointsxwa: 11
            loadoutxwa: 17
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Nu Squadron Pilot"
            id: 164
            xws_name: "nusquadronpilot"
            faction: "Galactic Empire"
            ship: "Alpha-Class Star Wing"
            skill: 2
            points: 5
            loadout: 7
            pointsxwa: 9
            loadoutxwa: 8
            slots: [
                "Sensor"
                "Cannon"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Sensor"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Captain Kagi"
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
                "Talent"
                "Crew"
                "Crew"
                "Sensor"
                "Cannon"
                "Modification"
            ]
        }

        {
            name: "Lieutenant Sai"
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
                "Sensor"
                "Cannon"
                "Modification"
            ]
        }

        {
            name: "Colonel Jendon"
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
                "Talent"
                "Crew"
                "Crew"
                "Sensor"
                "Cannon"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Omicron Group Pilot"
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
                "Sensor"
                "Cannon"
                "Modification"
            ]
        }

        {
            name: "Grand Inquisitor"
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
                "Force"
                "Force"
                "Sensor"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Seventh Sister"
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
                "Force"
                "Sensor"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Inquisitor"
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
                "Force"
                "Sensor"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Baron of the Empire"
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
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Darth Vader"
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
                "Force"
                "Force"
                "Sensor"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Maarek Stele"
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
                "Talent"
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Ved Foslo"
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
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Zertik Strom"
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
                "Sensor"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Storm Squadron Ace"
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
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Tempest Squadron Pilot"
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
                "Sensor"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Soontir Fel"
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
                "Talent"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Turr Phennir"
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
                "Talent"
                "Crew"
                "Crew"
                "Modification"
            ]
        }

        {
            name: "Captain Feroph"
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
            id: 187
            xws_name: "lieutenantkestal"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ag Aggressor"
            skill: 4
            points: 5
            loadout: 19
            pointsxwa: 9
            loadoutxwa: 15
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
                "Talent"
                "Gunner"
                "Sensor"
                "Missile"
                "Missile"
                "Modification"
                "Turret"
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
            pointsxwa: 9
            loadoutxwa: 17
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
                "Sensor"
                "Missile"
                "Missile"
                "Modification"
                "Turret"
            ]
        }
        {
            name: "Onyx Squadron Scout"
            id: 189
            xws_name: "onyxsquadronscout"
            faction: "Galactic Empire"
            ship: "TIE/ag Aggressor"
            skill: 3
            points: 4
            loadout: 12
            pointsxwa: 8
            loadoutxwa: 10
            slots: [
                "Talent"
                "Turret"
                "Missile"
                "Gunner"
            ]
            slotsxwa: [
                "Talent"
                "Gunner"
                "Sensor"
                "Missile"
                "Missile"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Sienar Specialist"
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
                "Sensor"
                "Missile"
                "Missile"
                "Modification"
                "Turret"
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
                "Talent"
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Device"
                "Modification"
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
                "Talent"
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Device"
                "Modification"
            ]
        }

        {
            name: "Cutlass Squadron Pilot"
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
                "Sensor"
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Device"
                "Modification"
            ]
        }

        {
            name: "Colonel Vessery"
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
                "Sensor"
                "Cannon"
                "Cannon"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Countess Ryad"
            id: 195
            xws_name: "countessryad"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            skill: 4
            points: 7
            loadout: 12
            pointsxwa: 16
            loadoutxwa: 9
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
                "Sensor"
                "Cannon"
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Rexler Brath"
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
                "Sensor"
                "Cannon"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Onyx Squadron Ace"
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
                "Sensor"
                "Cannon"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Delta Squadron Pilot"
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
                "Sensor"
                "Cannon"
                "Missile"
                "Modification"
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
            pointsxwa: 14
            loadoutxwa: 15
            slots: [
                "Talent"
                "Sensor"
                "Gunner"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Gunner"
                "Sensor"
                "Modification"
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
            pointsxwa: 13
            loadoutxwa: 15
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Gunner"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Gunner"
                "Sensor"
                "Modification"
            ]
        }

        {
            name: "Sigma Squadron Ace"
            id: 201
            xws_name: "sigmasquadronace"
            faction: "Galactic Empire"
            ship: "TIE/ph Phantom"
            skill: 4
            points: 6
            loadout: 9
            pointsxwa: 12
            loadoutxwa: 11
            slots: [
                "Talent"
                "Sensor"
                "Gunner"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Gunner"
                "Sensor"
                "Modification"
            ]
        }

        {
            name: "Imdaar Test Pilot"
            id: 202
            xws_name: "imdaartestpilot"
            faction: "Galactic Empire"
            ship: "TIE/ph Phantom"
            skill: 3
            points: 5
            loadout: 6
            pointsxwa: 11
            loadoutxwa: 10
            slots: [
                "Sensor"
                "Gunner"
                "Modification"
            ]
            slotsxwa: [
                "Gunner"
                "Sensor"
                "Modification"
            ]
        }

        {
            name: "Captain Jonus"
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
                "Talent"
                "Torpedo"
                "Missile"
                "Device"
                "Device"
                "Modification"
            ]
        }

        {
            name: "Major Rhymer"
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
                "Talent"
                "Torpedo"
                "Missile"
                "Device"
                "Device"
                "Modification"
            ]
        }

        {
            name: "Tomax Bren"
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
                "Talent"
                "Torpedo"
                "Missile"
                "Device"
                "Device"
                "Modification"
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
            id: 207
            xws_name: "gammasquadronace"
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 3
            points: 4
            loadout: 8
            pointsxwa: 10
            loadoutxwa: 16
            slots: [
                "Torpedo"
                "Gunner"
                "Device"
                "Device"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Torpedo"
                "Missile"
                "Device"
                "Device"
                "Modification"
            ]
        }

        {
            name: "Scimitar Squadron Pilot"
            id: 208
            xws_name: "scimitarsquadronpilot"
            faction: "Galactic Empire"
            ship: "TIE/sa Bomber"
            skill: 2
            points: 4
            loadout: 6
            pointsxwa: 8
            loadoutxwa: 8
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
                "Talent"
                "Gunner"
                "Device"
                "Modification"
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
                "Talent"
                "Gunner"
                "Device"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Black Squadron Scout"
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
                "Talent"
                "Gunner"
                "Device"
                "Modification"
            ]
        }

        {
            name: "Planetary Sentinel"
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
                "Device"
                "Modification"
            ]
        }

        {
            name: "Rear Admiral Chiraneau"
            id: 214
            xws_name: "rearadmiralchiraneau"
            unique: true
            faction: "Galactic Empire"
            ship: "VT-49 Decimator"
            skill: 5
            points: 7
            loadout: 20
            pointsxwa: 19
            loadoutxwa: 27
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
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Torpedo"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Captain Oicunn"
            id: 215
            xws_name: "captainoicunn"
            unique: true
            faction: "Galactic Empire"
            ship: "VT-49 Decimator"
            skill: 3
            points: 7
            loadout: 19
            pointsxwa: 17
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
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Torpedo"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Patrol Leader"
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
                "Device"
                "Modification"
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
                "Talent"
                "Modification"
            ]
        }

        {
            name: "Iden Versio"
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
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Modification"
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
                "Talent"
                "Modification"
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
                "Talent"
                "Modification"
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
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Gideon Hask"
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
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Seyn Marana"
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
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Valen Rudor"
            id: 225
            xws_name: "valenrudor"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 3
            loadout: 5
            pointsxwa: 8
            loadoutxwa: 11
            slots: [
                "Talent"
                "Talent"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
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
                "Talent"
                "Modification"
            ]
        }

        {
            name: "Obsidian Squadron Pilot"
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
                "Device"
                "Modification"
            ]
        }

        {
            name: "Poe Dameron"
            id: 231
            xws_name: "poedameron"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 6
            points: 7
            loadout: 25
            pointsxwa: 18
            loadoutxwa: 24
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
                "Talent"
                "Talent"
                "Astromech"
                "HardpointShip"
                "Modification"
                "Configuration"
                "Title"
                "Tech"
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
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Modification"
                "Tech"
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
                "Talent"
                "Sensor"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Kylo Ren"
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
                "Force"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
                "Tech"
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
                "Talent"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Lieutenant Dormitz"
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
                "Crew"
                "Crew"
                "Crew"
                "Sensor"
                "Cannon"
                "Modification"
                "Tech"
                "Tech"
            ]
        }

        {
            name: "L'ulo L'ampar"
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
                "Talent"
                "Talent"
                "Missile"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Tallissan Lintra"
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
                "Talent"
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "blanks"
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
                "Talent"
                "Gunner"
                "Sensor"
                "Missile"
                "Modification"
                "Modification"
                "Tech"
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
                "Talent"
                "Talent"
                "Gunner"
                "Sensor"
                "Missile"
                "Modification"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Rey"
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
                "Force"
                "Force"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Illicit"
                "Illicit"
                "Missile"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Han Solo (Resistance)"
            id: 245
            xws_name: "hansolo-scavengedyt1300"
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 6
            points: 6
            loadout: 15
            pointsxwa: 18
            loadoutxwa: 23
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
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Illicit"
                "Illicit"
                "Missile"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Chewbacca (Resistance)"
            id: 246
            xws_name: "chewbacca-scavengedyt1300"
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 4
            points: 6
            loadout: 18
            pointsxwa: 17
            loadoutxwa: 18
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
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Illicit"
                "Illicit"
                "Missile"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Captain Seevor"
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
                "Talent"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Mining Guild Surveyor"
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
                "Talent"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Finch Dallow"
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
                "Talent"
                "Crew"
                "Gunner"
                "Gunner"
                "Sensor"
                "Device"
                "Device"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Major Stridan"
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
                "Talent"
                "Crew"
                "Crew"
                "Crew"
                "Sensor"
                "Cannon"
                "Modification"
                "Tech"
                "Tech"
            ]
        }

        {
            name: "Kare Kun"
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
                "Talent"
                "Astromech"
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Joph Seastriker"
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
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Lieutenant Bastian"
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
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Jaycris Tubbs"
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
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Black Squadron Ace (T-70)"
            id: 256
            xws_name: "blacksquadronace-t70xwing"
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 5
            loadout: 10
            pointsxwa: 13
            loadoutxwa: 17
            slots: [
                "Talent"
                "Tech"
                "Astromech"
                "Modification"
                "Configuration"
                "HardpointShip"
            ]
            slotsxwa: [
                "Talent"
                "Astromech"
                "Torpedo"
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Red Squadron Expert"
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
                "Talent"
                "Astromech"
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Blue Squadron Rookie"
            id: 258
            xws_name: "bluesquadronrookie"
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 1
            points: 5
            loadout: 4
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
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Zeta Squadron Survivor"
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
                "Gunner"
                "Sensor"
                "Missile"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Cobalt Squadron Bomber"
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
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "TN-3465"
            id: 261
            xws_name: "tn3465"
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
                "Modification"
                "Tech"
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
                "Talent"
                "Sensor"
                "Modification"
                "Modification"
                "Tech"
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
                "Modification"
                "Tech"
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
                "Talent"
                "Sensor"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Lieutenant Rivas"
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
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Commander Malarus"
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
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Omega Squadron Ace"
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
                "Talent"
                "Sensor"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Zeta Squadron Pilot"
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
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Epsilon Squadron Cadet"
            id: 269
            xws_name: "epsilonsquadroncadet"
            faction: "First Order"
            ship: "TIE/fo Fighter"
            max_per_squad: 4
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
                "Talent"
                "Missile"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Zari Bangel"
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
                "Talent"
                "Talent"
                "Missile"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Darth Maul"
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
            loadoutxwa: 20
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
                "Force"
                "Force"
                "Crew"
                "Crew"
                "Sensor"
                "Torpedo"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Anakin Skywalker"
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
            loadoutxwa: 12
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
                "Force"
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Luminara Unduli"
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
                "Force"
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Barriss Offee"
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
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Ahsoka Tano"
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
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Jedi Knight"
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
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Obi-Wan Kenobi"
            id: 278
            xws_name: "obiwankenobi"
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
                "Force"
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Trade Federation Drone"
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
                "Missile"
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
                "Talent"
                "Astromech"
                "Gunner"
                "Gunner"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Petty Officer Thanisson"
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
                "Crew"
                "Crew"
                "Crew"
                "Sensor"
                "Cannon"
                "Modification"
                "Tech"
                "Tech"
            ]
        }

        {
            name: "Captain Cardinal"
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
                "Talent"
                "Crew"
                "Crew"
                "Crew"
                "Sensor"
                "Cannon"
                "Modification"
                "Tech"
                "Tech"
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
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
                "Tech"
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
                "Talent"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Omega Squadron Expert"
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
                "Talent"
                "Gunner"
                "Sensor"
                "Missile"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Sienar-Jaemus Engineer"
            id: 286
            xws_name: "sienarjaemusengineer"
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
                "Torpedo"
                "Missile"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "First Order Test Pilot"
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
                "Talent"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Starkiller Base Pilot"
            id: 288
            xws_name: "starkillerbasepilot"
            faction: "First Order"
            ship: "Upsilon-Class Command Shuttle"
            skill: 2
            points: 7
            loadout: 8
            pointsxwa: 15
            loadoutxwa: 10
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
                "Crew"
                "Crew"
                "Crew"
                "Sensor"
                "Cannon"
                "Modification"
                "Tech"
                "Tech"
            ]
        }

        {
            name: "Lieutenant Tavson"
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
                "Crew"
                "Crew"
                "Crew"
                "Sensor"
                "Cannon"
                "Modification"
                "Tech"
                "Tech"
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
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Cat"
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
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Ben Teene"
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
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Tech"
            ]
            applies_condition: 'Rattled'.canonicalize()
        }

        {
            name: "Edon Kappehl"
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
                "Crew"
                "Gunner"
                "Gunner"
                "Sensor"
                "Device"
                "Device"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Vennie"
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
                "Crew"
                "Gunner"
                "Gunner"
                "Device"
                "Device"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Resistance Sympathizer"
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
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Temmin Wexley"
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
                "Talent"
                "Astromech"
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Nien Nunb"
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
                "Talent"
                "Astromech"
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
                "Tech"
            ]
        }

        {
            name: "Ello Asty"
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
                "Talent"
                "Astromech"
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Green Squadron Expert"
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
                "Talent"
                "Talent"
                "Missile"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Blue Squadron Recruit"
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
                "Talent"
                "Missile"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Foreman Proach"
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
                "Talent"
                "Illicit"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Overseer Yushyn"
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
                "Illicit"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Mining Guild Sentry"
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
                "Talent"
                "Modification"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Wat Tambor"
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
                "Talent"
                "Modification"
                "Modification"
                "Tactical Relay"
            ]
        }

        {
            name: "Feethan Ottraw Autopilot"
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
            id: 309
            xws_name: "precisehunter"
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 3
            points: 3
            loadout: 8
            pointsxwa: 6
            loadoutxwa: 5
            max_per_squad: 3
            keyword: ["Droid"]
            slots: [
                "Cannon"
                "Configuration"
                "Modification"
            ]
            slotsxwa: [
                "Cannon"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Haor Chall Prototype"
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
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "DFS-081"
            id: 311
            xws_name: "dfs081"
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
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Plo Koon"
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
                "Force"
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Saesee Tiin"
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
                "Force"
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Mace Windu"
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
            loadoutxwa: 10
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
                "Force"
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
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
                "Talent"
                "Missile"
                "Modification"
                "Modification"
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
                "Talent"
                "Missile"
                "Modification"
                "Modification"
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
            loadoutxwa: 12
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Missile"
                "Modification"
                "Modification"
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
            pointsxwa: 7
            loadoutxwa: 7
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Missile"
                "Modification"
                "Modification"
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
            id: 320
            xws_name: "bluesquadronprotector"
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 3
            points: 4
            loadout: 4
            pointsxwa: 8
            loadoutxwa: 10
            keyword: ["Clone"]
            slots: [
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Missile"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Gold Squadron Trooper"
            id: 321
            xws_name: "goldsquadrontrooper"
            faction: "Galactic Republic"
            ship: "V-19 Torrent Starfighter"
            skill: 2
            points: 4
            loadout: 6
            pointsxwa: 6
            loadoutxwa: 2
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
            id: 322
            xws_name: "anakinskywalker-nabooroyaln1starfighter"
            unique: true
            faction: "Galactic Republic"
            ship: "Naboo Royal N-1 Starfighter"
            skill: 4
            force: 1
            points: 5
            loadout: 20
            pointsxwa: 9
            loadoutxwa: 6
            keyword: ["Light Side"]
            slots: [
                "Talent"
                "Sensor"
                "Torpedo"
                "Astromech"
            ]
            slotsxwa: [
                "Force"
                "Talent"
                "Astromech"
                "Sensor"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Bravo Flight Officer"
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
                "Sensor"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Techno Union Bomber"
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
                "Torpedo"
                "Device"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Bombardment Drone"
            id: 325
            xws_name: "bombardmentdrone"
            faction: "Separatist Alliance"
            ship: "Hyena-class Droid Bomber"
            skill: 3
            max_per_squad: 3
            keyword: ["Droid"]
            points: 3
            loadout: 8
            pointsxwa: 9
            loadoutxwa: 9
            slots: [
                "Device"
                "Device"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Device"
                "Device"
                "Modification"
            ]
        }

        {
            name: "DBS-404"
            id: 326
            xws_name: "dbs404"
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
                "Torpedo"
                "Device"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Separatist Bomber"
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
                "Missile"
                "Device"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "DBS-32C"
            id: 328
            xws_name: "dbs32c"
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
                "Sensor"
                "Missile"
                "Device"
                "Modification"
                "Configuration"
                "Tactical Relay"
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
                "Missile"
                "Missile"
                "Device"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Naboo Handmaiden"
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
                "Sensor"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Dineé Ellberger"
            id: 331
            xws_name: "dineeellberger"
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
                "Sensor"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Padmé Amidala"
            id: 332
            xws_name: "padmeamidala"
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
                "Sensor"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Ric Olié"
            id: 333
            xws_name: "ricolie"
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
                "Talent"
                "Astromech"
                "Sensor"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Count Dooku"
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
            loadoutxwa: 10
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
                "Force"
                "Force"
                "Crew"
                "Crew"
                "Sensor"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "0-66"
            id: 335
            xws_name: "066"
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
                "Torpedo"
                "Device"
                "Modification"
                "Title"
                "Tactical Relay"
            ]
        }

        {
            name: "Dark Courier"
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
                "Device"
                "Modification"
            ]
        }

        {
            name: "DFS-311"
            id: 337
            xws_name: "dfs311"
            faction: "Separatist Alliance"
            ship: "Vulture-class Droid Fighter"
            skill: 1
            points: 3
            loadout: 10
            pointsxwa: 6
            loadoutxwa: 6
            unique: true
            keyword: ["Droid"]
            slots: [
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: '"Odd Ball" (ARC-170)'
            id: 338
            xws_name: "oddball-arc170starfighter"
            unique: true
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 5
            points: 4
            loadout: 7
            pointsxwa: 12
            loadoutxwa: 12
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
                "Talent"
                "Astromech"
                "Gunner"
                "Gunner"
                "Torpedo"
                "Modification"
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
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Squad Seven Veteran"
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
                "Talent"
                "Astromech"
                "Gunner"
                "Gunner"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "104th Battalion Pilot"
            id: 341
            xws_name: "104thbattalionpilot"
            faction: "Galactic Republic"
            ship: "ARC-170 Starfighter"
            skill: 2
            points: 5
            loadout: 8
            pointsxwa: 10
            loadoutxwa: 3
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
                "Torpedo"
                "Modification"
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
                "Talent"
                "Astromech"
                "Gunner"
                "Gunner"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Separatist Drone"
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
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Skakoan Ace"
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
                "Talent"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Rose Tico"
            id: 345
            xws_name: "rosetico"
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport Pod"
            skill: 3
            points: 3
            loadout: 9
            pointsxwa: 8
            loadoutxwa: 14
            slots: [
                "Talent"
                "Tech"
                "Crew"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Crew"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Logistics Division Pilot"
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
                "Astromech"
                "Crew"
                "Crew"
                "Cannon"
                "Torpedo"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Pammich Nerro Goode"
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
                "Cannon"
                "Cannon"
                "Torpedo"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Vi Moradi"
            id: 348
            xws_name: "vimoradi"
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport Pod"
            skill: 1
            points: 3
            loadout: 6
            pointsxwa: 6
            loadoutxwa: 5
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
            id: 349
            xws_name: "bb8"
            unique: true
            faction: "Resistance"
            ship: "Resistance Transport Pod"
            skill: 3
            points: 2
            loadout: 4
            pointsxwa: 7
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
                "Talent"
                "Crew"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Cova Nell"
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
                "Talent"
                "Astromech"
                "Crew"
                "Crew"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Nodin Chavdri"
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
                "Cannon"
                "Torpedo"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Stalgasin Hive Guard"
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
                "Talent"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Sun Fac"
            unique: true
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
                "Talent"
                "Talent"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Berwer Kret"
            unique: true
            id: 358
            xws_name: "berwerkret"
            faction: "Separatist Alliance"
            ship: "Nantex-Class Starfighter"
            skill: 5
            points: 4
            loadout: 7
            pointsxwa: 9
            loadoutxwa: 9
            slots: [
                "Talent"
                "Talent"
            ]
            slotsxwa: [
                "Talent"
                "Talent"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Anakin Skywalker (Y-Wing)"
            unique: true
            id: 359
            xws_name: "anakinskywalker-btlbywing"
            faction: "Galactic Republic"
            ship: "BTL-B Y-wing"
            skill: 6
            force: 3
            points: 6
            loadout: 20
            pointsxwa: 13   
            loadoutxwa: 16
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
                "Force"
                "Astromech"
                "Gunner"
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Shadow Squadron Veteran"
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
                "Talent"
                "Astromech"
                "Gunner"
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Red Squadron Bomber"
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
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "R2-D2"
            id: 362
            xws_name: "r2d2"
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
                "Crew"
                "Gunner"
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
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
                "Torpedo"
                "Device"
                "Modification"
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
                "Torpedo"
                "Device"
                "Modification"
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
                "Talent"
                "Astromech"
                "Gunner"
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: '"Odd Ball" (Y-Wing)'
            id: 366
            xws_name: "oddball-btlbywing"
            unique: true
            faction: "Galactic Republic"
            ship: "BTL-B Y-wing"
            skill: 5
            points: 4
            loadout: 18
            pointsxwa: 11
            loadoutxwa: 19
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
                "Talent"
                "Astromech"
                "Gunner"
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Republic Judiciary"
            id: 367
            xws_name: "republicjudiciary"
            faction: "Galactic Republic"
            ship: "CR90 Corellian Corvette"
            skill: 8
            engagement: 0
            points: 14
            loadout: 40
            pointsxwa: 36
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
                "Crew"
                "Crew"
                "Gunner"
                "HardpointShip"
                "HardpointShip"
                "Cargo"
                "Command"
                "Team"
                "Team"
            ]
        }

        {
            name: "Alderaanian Guard"
            id: 368
            xws_name: "alderaanianguard"
            faction: "Rebel Alliance"
            ship: "CR90 Corellian Corvette"
            skill: 8
            engagement: 0
            points: 14
            loadout: 40
            pointsxwa: 36
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
                "Crew"
                "Crew"
                "Gunner"
                "HardpointShip"
                "HardpointShip"
                "Title"
                "Cargo"
                "Command"
                "Team"
                "Team"
            ]
        }

        {
            name: "Outer Rim Patrol"
            id: 369
            xws_name: "outerrimpatrol"
            faction: "Galactic Empire"
            ship: "Raider-class Corvette"
            skill: 8
            engagement: 0
            points: 15
            loadout: 50
            pointsxwa: 39
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
                "Crew"
                "Crew"
                "Torpedo"
                "Missile"
                "HardpointShip"
                "HardpointShip"
                "Title"
                "Cargo"
                "Command"
                "Team"
                "Team"
            ]
        }

        {
            name: "First Order Collaborators"
            id: 370
            xws_name: "firstordercollaborators"
            faction: "First Order"
            ship: "Raider-class Corvette"
            skill: 8
            engagement: 0
            points: 15
            loadout: 50
            pointsxwa: 39
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
                "Crew"
                "Crew"
                "Torpedo"
                "Missile"
                "HardpointShip"
                "HardpointShip"
                "Cargo"
                "Command"
                "Team"
                "Team"
            ]
        }

        {
            name: "Echo Base Evacuees"
            id: 371
            xws_name: "echobaseevacuees"
            faction: "Rebel Alliance"
            ship: "GR-75 Medium Transport"
            skill: 7
            engagement: 1
            points: 10
            loadout: 25
            pointsxwa: 23
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
                "Crew"
                "Crew"
                "HardpointShip"
                "Title"
                "Cargo"
                "Cargo"
                "Command"
                "Team"
                "Turret"
            ]
        }

        {
            name: "New Republic Volunteers"
            id: 372
            xws_name: "newrepublicvolunteers"
            faction: "Resistance"
            ship: "GR-75 Medium Transport"
            skill: 7
            engagement: 1
            points: 10
            loadout: 25
            pointsxwa: 23
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
                "Crew"
                "Crew"
                "HardpointShip"
                "Cargo"
                "Cargo"
                "Command"
                "Team"
                "Turret"
            ]
        }

        {
            name: "Outer Rim Garrison"
            id: 373
            xws_name: "outerrimgarrison"
            faction: "Galactic Empire"
            ship: "Gozanti-class Cruiser"
            skill: 7
            engagement: 1
            points: 11
            loadout: 40
            pointsxwa: 26
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
                "Crew"
                "Crew"
                "Gunner"
                "HardpointShip"
                "Title"
                "Cargo"
                "Cargo"
                "Command"
                "Team"
            ]
        }

        {
            name: "First Order Sympathizers"
            id: 374
            xws_name: "firstordersympathizers"
            faction: "First Order"
            ship: "Gozanti-class Cruiser"
            skill: 7
            engagement: 1
            points: 11
            loadout: 40
            pointsxwa: 26
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
                "Crew"
                "Crew"
                "Gunner"
                "HardpointShip"
                "Cargo"
                "Cargo"
                "Command"
                "Team"
            ]
        }

        {
            name: "Separatist Privateers"
            id: 375
            xws_name: "separatistprivateers"
            faction: "Separatist Alliance"
            ship: "C-ROC Cruiser"
            skill: 7
            engagement: 1
            points: 10
            loadout: 30
            pointsxwa: 24
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
                "Crew"
                "Crew"
                "HardpointShip"
                "Device"
                "Configuration"
                "Cargo"
                "Command"
                "Tactical Relay"
                "Team"
            ]
        }

        {
            name: "Syndicate Smugglers"
            id: 376
            xws_name: "syndicatesmugglers"
            faction: "Scum and Villainy"
            ship: "C-ROC Cruiser"
            skill: 7
            engagement: 1
            points: 10
            loadout: 30
            pointsxwa: 24
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
                "Crew"
                "Crew"
                "Illicit"
                "HardpointShip"
                "Device"
                "Configuration"
                "Title"
                "Cargo"
                "Command"
                "Team"
            ]
        }

        {
            name: "Jarek Yeager"
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
                "Talent"
                "Astromech"
                "Illicit"
                "Missile"
                "Modification"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Kazuda Xiono"
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
                "Talent"
                "Astromech"
                "Illicit"
                "Missile"
                "Modification"
                "Modification"
                "Title"
            ]
        }

        {
            name: "R1-J5"
            id: 379
            xws_name: "r1j5"
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
                "Crew"
                "Illicit"
                "Missile"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Colossus Station Mechanic"
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
                "Astromech"
                "Illicit"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Major Vonreg"
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
                "Talent"
                "Talent"
                "Missile"
                "Modification"
                "Modification"
                "Tech"
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
                "Talent"
                "Talent"
                "Missile"
                "Modification"
                "Modification"
                "Tech"
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
                "Talent"
                "Missile"
                "Modification"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "First Order Provocateur"
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
                "Talent"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Captain Phasma"
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
                "Talent"
                "Gunner"
                "Sensor"
                "Missile"
                "Modification"
                "Tech"
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
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Zizi Tlo"
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
                "Talent"
                "Talent"
                "Missile"
                "Modification"
                "Tech"
                "Tech"
            ]
        }

        {
            name: "Ronith Blario"
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
                "Talent"
                "Missile"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Paige Tico"
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
                "Talent"
                "Crew"
                "Gunner"
                "Gunner"
                "Sensor"
                "Device"
                "Device"
                "Modification"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "K-2SO"
            id: 390
            xws_name: "k2so"
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
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Alexsandr Kallus"
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
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Sensor"
                "Torpedo"
                "Modification"
                "Title"
                "Turret"
            ]
        }

        {
            name: "Leia Organa"
            id: 393
            xws_name: "leiaorgana"
            faction: "Rebel Alliance"
            unique: true
            skill: 5
            ship: "Modified YT-1300 Light Freighter"
            keyword: ["Light Side"]
            points: 7
            loadout: 24
            pointsxwa: 18
            loadoutxwa: 16
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
                "Force"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Illicit"
                "Missile"
                "Modification"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Fifth Brother"
            id: 394
            xws_name: "fifthbrother"
            faction: "Galactic Empire"
            unique: true
            skill: 4
            keyword: ["Dark Side"]
            ship: "TIE Advanced v1"
            points: 4
            loadout: 7
            pointsxwa: 12
            loadoutxwa: 12
            force: 2
            slots: [
                "Force"
                "Talent"
                "Sensor"
                "Missile"
            ]
            slotsxwa: [
                "Force"
                "Sensor"
                "Missile"
                "Modification"
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
                "Device"
                "Modification"
            ]
        }

        {
            name: "Morna Kee"
            id: 396
            xws_name: "mornakee"
            faction: "Galactic Empire"
            unique: true
            skill: 4
            ship: "VT-49 Decimator"
            points: 7
            loadout: 22
            pointsxwa: 17
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
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Torpedo"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Lieutenant LeHuse"
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
                "Talent"
                "Gunner"
                "Sensor"
                "Missile"
                "Modification"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Bossk (Z-95 Headhunter)"
            id: 398
            xws_name: "bossk-z95af4headhunter"
            faction: "Scum and Villainy"
            unique: true
            skill: 4
            ship: "Z-95-AF4 Headhunter"
            points: 2
            loadout: 3
            pointsxwa: 8
            loadoutxwa: 11
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
                "Talent"
                "Illicit"
                "Missile"
                "Modification"
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
            loadoutxwa: 7
            keyword: ["Droid"]
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
            name: "Nom Lumb"
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
                "Crew"
                "Gunner"
                "Illicit"
                "Cannon"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "First Order Courier"
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
                "Crew"
                "Crew"
                "Modification"
                "Tech"
                "Tech"
            ]
        }

        {
            name: "Agent Terex"
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
                "Crew"
                "Crew"
                "Illicit"
                "Illicit"
                "Illicit"
                "Modification"
                "Tech"
                "Tech"
            ]
        }

        {
            name: "Gideon Hask (Xi Shuttle)"
            id: 403
            xws_name: "gideonhask-xiclasslightshuttle"
            faction: "First Order"
            unique: true
            skill: 4
            ship: "Xi-class Light Shuttle"
            points: 4
            loadout: 15
            pointsxwa: 9
            loadoutxwa: 8
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
                "Crew"
                "Crew"
                "Modification"
                "Tech"
                "Tech"
            ]
        }

        {
            name: "Commander Malarus (Xi Shuttle)"
            id: 404
            xws_name: "commandermalarus-xiclasslightshuttle"
            faction: "First Order"
            unique: true
            skill: 5
            ship: "Xi-class Light Shuttle"
            points: 4
            loadout: 15
            pointsxwa: 10
            loadoutxwa: 10
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
                "Talent"
                "Crew"
                "Crew"
                "Modification"
                "Tech"
                "Tech"
            ]
        }

        {
            name: "Baktoid Drone"
            id: 405
            xws_name: "baktoiddrone"
            faction: "Separatist Alliance"
            skill: 1
            ship: "HMP Droid Gunship"
            points: 4
            loadout: 8
            pointsxwa: 10
            loadoutxwa: 13
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
                "Device"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "TransGalMeg Control Link"
            id: 406
            xws_name: "transgalmegcontrollink"
            faction: "Galactic Republic"
            skill: "*"
            ship: "Syliure-class Hyperspace Ring"
            points: 2
            pointsxwa: 1
            loadoutxwa: 5
            slots: [
                "Hyperdrive"
            ]
            slotsxwa: [
                "Hyperdrive"
            ]
        }

        {
            name: "Separatist Predator"
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
                "Device"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Geonosian Prototype"
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
                "Cannon"
                "Cannon"
                "Device"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "DGS-047"
            id: 409
            xws_name: "dgs047"
            faction: "Separatist Alliance"
            skill: 1
            unique: true
            ship: "HMP Droid Gunship"
            points: 3
            loadout: 8
            pointsxwa: 9
            loadoutxwa: 8
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
                "Device"
                "Modification"
                "Configuration"
                "Tactical Relay"
            ]
        }

        {
            name: "DGS-286"
            id: 410
            xws_name: "dgs286"
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
                "Torpedo"
                "Missile"
                "Missile"
                "Device"
                "Modification"
                "Configuration"
                "Tactical Relay"
            ]
        }

        {
            name: "Onderon Oppressor"
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
                "Device"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "212th Battalion Pilot"
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
                "Torpedo"
                "Missile"
                "Modification"
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
                "Torpedo"
                "Missile"
                "Modification"
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
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Torpedo"
                "Missile"
                "Modification"
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
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Torpedo"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Carida Academy Cadet"
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
                "Gunner"
                "Cannon"
                "Cannon"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Onyx Squadron Sentry"
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
                "Talent"
                "Gunner"
                "Cannon"
                "Cannon"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Lyttan Dree"
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
                "Gunner"
                "Cannon"
                "Cannon"
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
                "Talent"
                "Gunner"
                "Cannon"
                "Cannon"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Fearsome Predator"
            id: 420
            xws_name: "fearsomepredator"
            faction: "Separatist Alliance"
            max_per_squad: 3
            skill: 3
            ship: "Droid Tri-fighter"
            points: 3
            loadout: 3
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
                "Cannon"
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
            applies_condition: '''Fearful Prey'''.canonicalize()
        }

        {
            name: "DIS-347"
            id: 421
            xws_name: "dis347"
            faction: "Separatist Alliance"
            skill: 3
            unique: true
            ship: "Droid Tri-fighter"
            points: 3
            loadout: 4
            pointsxwa: 9
            loadoutxwa: 8
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
                "Cannon"
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "DIS-T81"
            id: 422
            xws_name: "dist81"
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
                "Cannon"
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Phlac-Arphocc Prototype"
            id: 423
            xws_name: "phlacarphoccprototype"
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
                "Cannon"
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Colicoid Interceptor"
            id: 424
            xws_name: "colicoidinterceptor"
            faction: "Separatist Alliance"
            skill: 1
            ship: "Droid Tri-fighter"
            points: 3
            loadout: 4
            pointsxwa: 8
            loadoutxwa: 5
            slots: [
                "Talent"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Sensor"
                "Cannon"
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Separatist Interceptor"
            id: 425
            xws_name: "separatistinterceptor"
            faction: "Separatist Alliance"
            skill: 3
            ship: "Droid Tri-fighter"
            points: 3
            loadout: 3
            pointsxwa: 9
            loadoutxwa: 8
            slots: [
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Separatist Racketeer"
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
                "Crew"
                "Illicit"
                "Cannon"
                "Missile"
                "Device"
                "Modification"
            ]
        }

        {
            name: "Boba Fett (Separatist)"
            id: 427
            xws_name: "bobafett-firesprayclasspatrolcraft"
            faction: "Separatist Alliance"
            unique: true
            skill: 3
            ship: "Firespray-class Patrol Craft"
            points: 7
            loadout: 16
            pointsxwa: 16
            loadoutxwa: 9
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
                "Crew"
                "Illicit"
                "Cannon"
                "Missile"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Zam Wesell"
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
                "Talent"
                "Crew"
                "Illicit"
                "Cannon"
                "Missile"
                "Device"
                "Modification"
                "Title"
            ]
            applies_condition: ['''You'd Better Mean Business'''.canonicalize(),'You Should Thank Me'.canonicalize()]
        }

        {
            name: "Jango Fett"
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
                "Talent"
                "Crew"
                "Illicit"
                "Cannon"
                "Missile"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Loyalist Volunteer"
            id: 430
            xws_name: "loyalistvolunteer"
            faction: "Galactic Republic"
            skill: 2
            ship: "Nimbus-class V-wing"
            points: 3
            loadout: 4
            pointsxwa: 7
            loadoutxwa: 3
            slots: [
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Shadow Squadron Escort"
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
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Wilhuff Tarkin"
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
                "Modification"
                "Configuration"
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
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
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
                "Talent"
                "Astromech"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: '"Odd Ball" (V-wing)'
            id: 435
            xws_name: "oddball-nimbusclassvwing"
            faction: "Galactic Republic"
            skill: 5
            unique: true
            ship: "Nimbus-class V-wing"
            points: 3
            loadout: 9
            pointsxwa: 9
            loadoutxwa: 9
            keyword: ["Clone"]
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
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Jedi General"
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
                "Force"
                "Talent"
                "Astromech"
                "Cannon"
                "Modification"
            ]
        }

        {
            name: "Yoda"
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
                "Force"
                "Force"
                "Talent"
                "Astromech"
                "Cannon"
                "Modification"
            ]
        }

        {
            name: "Shaak Ti"
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
                "Force"
                "Force"
                "Talent"
                "Astromech"
                "Cannon"
                "Modification"
            ]
        }

        {
            name: "Aayla Secura"
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
                "Force"
                "Force"
                "Talent"
                "Astromech"
                "Cannon"
                "Modification"
            ]
        }

        {
            name: "Obi-Wan Kenobi (Eta-2)"
            id: 440
            xws_name: "obiwankenobi-eta2actis"
            faction: "Galactic Republic"
            skill: 5
            unique: true
            ship: "Eta-2 Actis"
            force: 3
            points: 5
            loadout: 15
            pointsxwa: 12
            loadoutxwa: 12
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
                "Force"
                "Talent"
                "Astromech"
                "Cannon"
                "Modification"
            ]
        }

        {
            name: "Anakin Skywalker (Eta-2)"
            id: 441
            xws_name: "anakinskywalker-eta2actis"
            faction: "Galactic Republic"
            skill: 6
            unique: true
            force: 3
            ship: "Eta-2 Actis"
            points: 5
            loadout: 15
            pointsxwa: 12
            loadoutxwa: 10
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
                "Force"
                "Talent"
                "Astromech"
                "Cannon"
                "Modification"
            ]
        }

        {
            name: "Poe Dameron (HoH)"
            xwsaddon: 'swz68'
            id: 442
            xws_name: "poedameron-swz68"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 6
            points: 6
            loadout: 19
            pointsxwa: 14
            loadoutxwa: 11
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
                "Talent"
                "Talent"
                "Astromech"
                "Sensor"
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Temmin Wexley (HoH)"
            xwsaddon: 'swz68'
            id: 443
            xws_name: "temminwexley-swz68"
            unique: true
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 5
            loadout: 13
            pointsxwa: 11
            loadoutxwa: 5
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
                "Talent"
                "Astromech"
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Merl Cobben"
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
                "Talent"
                "Missile"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Suralinda Javos"
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
                "Talent"
                "Missile"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Wrobie Tyce"
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
                "Talent"
                "Missile"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Seftin Vanik"
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
                "Talent"
                "Talent"
                "Missile"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Nimi Chireen"
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
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "C'ai Threnalli"
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
                "Talent"
                "Astromech"
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Hera Syndulla (B-Wing)"
            id: 450
            xws_name: "herasyndulla-asf01bwing"
            unique: true
            faction: "Rebel Alliance"
            keyword: ["Spectre"]
            ship: "A/SF-01 B-wing"
            skill: 6
            points: 5
            loadout: 14
            pointsxwa: 15
            loadoutxwa: 21
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
                "Talent"
                "Talent"
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
                "Title"
            ]
        }

        {
            name: "Hera Syndulla (A-Wing)"
            id: 451
            xws_name: "herasyndulla-rz1awing"
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            keyword: ["Spectre"]
            skill: 6
            points: 4
            loadout: 5
            pointsxwa: 12
            loadoutxwa: 15
            slots: [
                "Talent"
                "Talent"
                "Sensor"
                "Missile"
                "Configuration"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Wedge Antilles (A-Wing)"
            id: 452
            xws_name: "wedgeantilles-rz1awing"
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 4
            points: 3
            loadout: 5
            pointsxwa: 11
            loadoutxwa: 16
            slots: [
                "Talent"
                "Talent"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Sabine Wren (A-Wing)"
            id: 453
            xws_name: "sabinewren-rz1awing"
            unique: true
            faction: "Rebel Alliance"
            keyword: ["Mandalorian"]
            ship: "RZ-1 A-wing"
            skill: 3
            points: 3
            loadout: 7
            pointsxwa: 8
            loadoutxwa: 4
            slots: [
                "Talent"
                "Modification"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Vult Skerris"
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
                "Talent"
                "Sensor"
                "Cannon"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Ciena Ree"
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
            id: 456
            xws_name: "gideonhask-tieininterceptor"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 4
            loadout: 7
            pointsxwa: 11
            loadoutxwa: 10
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
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Kanan Jarrus (HWK-290)"
            id: 457
            xws_name: "kananjarrus-hwk290lightfreighter"
            unique: true
            faction: "Scum and Villainy"
            keyword: ["Light Side", "Jedi"]
            ship: "HWK-290 Light Freighter"
            skill: 3
            force: 1
            points: 4
            loadout: 6
            pointsxwa: 9
            loadoutxwa: 5
            slots: [
                "Force"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Crew"
                "Illicit"
                "Device"
                "Modification"
            ]
        }

        {
            name: "Leema Kai"
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
                "Talent"
                "Astromech"
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Arliz Hadrassian"
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
                "Talent"
                "Astromech"
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Padric"
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
                "Talent"
                "Astromech"
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Derek Klivian"
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
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Shara Bey (A-Wing)"
            id: 462
            xws_name: "sharabey-rz1awing"
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 4
            points: 4
            loadout: 7
            pointsxwa: 9
            loadoutxwa: 10
            slots: [
                "Talent"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Ahsoka Tano (A-Wing)"
            id: 463
            xws_name: "ahsokatano-rz1awing"
            unique: true
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            keyword: ["Light Side"]
            skill: 5
            force: 3
            points: 4
            loadout: 7
            pointsxwa: 12
            loadoutxwa: 12
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
                "Force"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Netrem Pollard"
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
                "Sensor"
                "Cannon"
                "Cannon"
                "Torpedo"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Commandant Goran"
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
                "Talent"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Lieutenant Lorrir"
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
            id: 468
            xws_name: "vultskerris-tieininterceptor"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 5
            charge: 1
            recurring: -1
            points: 4
            loadout: 9
            pointsxwa: 10
            loadoutxwa: 8
            slots: [
                "Talent"
                "Modification"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Talent"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Darth Vader (TIE Defender)"
            id: 469
            xws_name: "darthvader-tieddefender"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/d Defender"
            keyword: ["Dark Side", "Sith"]
            skill: 6
            force: 3
            points: 9
            loadout: 10
            pointsxwa: 21
            loadoutxwa: 14
            slots: [
                "Force"
                "Tech"
                "Cannon"
                "Missile"
                "Configuration"
            ]
            slotsxwa: [
                "Force"
                "Force"
                "Cannon"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Captain Dobbs"
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
                "Sensor"
                "Cannon"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Jinata Security Officer"
            id: 471
            xws_name: "jinatasecurityofficer"
            faction: "Scum and Villainy"
            ship: "BTL-A4 Y-wing"
            skill: 2
            points: 4
            loadout: 5
            pointsxwa: 8
            loadoutxwa: 8
            slots: [
                "Turret"
                "Torpedo"
                "Missile"
                "Device"
            ]
            slotsxwa: [
                "Astromech"
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Amaxine Warrior"
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
                "Talent"
                "Astromech"
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Gamut Key"
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
                "Talent"
                "Crew"
                "Illicit"
                "Device"
                "Modification"
            ]
        }

        {
            name: "Tápusk"
            xws: "tapusk"
            id: 474
            xws_name: "tapusk"
            unique: true
            faction: "Scum and Villainy"
            ship: "HWK-290 Light Freighter"
            skill: 5
            charge: 2
            recurring: 1
            points: 4
            loadout: 10
            pointsxwa: 8
            loadoutxwa: 6
            slots: [
                "Talent"
                "Crew"
                "Device"
                "Illicit"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Crew"
                "Illicit"
                "Device"
                "Modification"
            ]
        }

        {
            name: "Colicoid Destroyer"
            id: 475
            xws_name: "colicoiddestroyer"
            faction: "Separatist Alliance"
            ship: "Trident-class Assault Ship"
            skill: 8
            engagement: 0
            points: 11
            loadout: 45
            pointsxwa: 26
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
                "Crew"
                "Crew"
                "Gunner"
                "Torpedo"
                "HardpointShip"
                "HardpointShip"
                "Title"
                "Cargo"
                "Command"
                "Team"
            ]
        }

        {
            name: "Lawless Pirates"
            id: 476
            xws_name: "lawlesspirates"
            faction: "Scum and Villainy"
            ship: "Trident-class Assault Ship"
            skill: 8
            engagement: 0
            points: 11
            loadout: 45
            pointsxwa: 26
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
                "Crew"
                "Crew"
                "Gunner"
                "Torpedo"
                "HardpointShip"
                "HardpointShip"
                "Title"
                "Cargo"
                "Command"
                "Team"
            ]
        }

        {
            name: "Zorii Bliss"
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
                "Talent"
                "Astromech"
                "Illicit"
                "Device"
                "Modification"
                "Modification"
                "Tech"
                "Turret"
            ]
        }

        {
            name: "Teza Nasz"
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
                "Talent"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Tech"
                "Turret"
            ]
        }

        {
            name: "Wilsa Teshlo"
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
                "Talent"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Tech"
                "Turret"
            ]
        }

        {
            name: "Shasa Zaro"
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
                "Talent"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Tech"
                "Turret"
            ]
        }

        {
            name: "Lega Fossang"
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
                "Device"
                "Modification"
                "Modification"
                "Tech"
                "Turret"
            ]
        }

        {
            name: "Aftab Ackbar"
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
                "Device"
                "Modification"
                "Modification"
                "Tech"
                "Turret"
            ]
        }

        {
            name: "Corus Kapellim"
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
                "Illicit"
                "Device"
                "Modification"
                "Modification"
                "Tech"
                "Turret"
            ]
        }

        {
            name: "C'ai Threnalli (Y-Wing)"
            id: 484
            xws_name: "caithrenalli-btanr2ywing"
            unique: true
            faction: "Resistance"
            ship: "BTA-NR2 Y-wing"
            skill: 2
            points: 4
            loadout: 10
            pointsxwa: 7
            loadoutxwa: 8
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
                "Talent"
                "Astromech"
                "Device"
                "Modification"
                "Modification"
                "Tech"
                "Turret"
            ]
        }

        {
            name: "New Republic Patrol"
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
                "Device"
                "Modification"
                "Modification"
                "Tech"
                "Turret"
            ]
        }

        {
            name: "Kijimi Spice Runner"
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
                "Illicit"
                "Device"
                "Modification"
                "Modification"
                "Tech"
                "Turret"
            ]
        }

        {
            name: "Kylo Ren (TIE Whisper)"
            id: 487
            xws_name: "kyloren-tiewiwhispermodifiedinterceptor"
            unique: true
            faction: "First Order"
            ship: "TIE/wi Whisper Modified Interceptor"
            keyword: ["Dark Side", "Light Side"]
            skill: 5
            force: 3
            points: 5
            loadout: 14
            pointsxwa: 15
            loadoutxwa: 15
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
                "Force"
                "Force"
                "Missile"
                "Modification"
                "Configuration"
                "Tech"
                "Tech"
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
                "Talent"
                "Gunner"
                "Cannon"
                "Modification"
                "Configuration"
                "Tech"
                "Tech"
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
                "Talent"
                "Gunner"
                "Missile"
                "Modification"
                "Configuration"
                "Tech"
                "Tech"
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
                "Talent"
                "Gunner"
                "Missile"
                "Modification"
                "Configuration"
                "Tech"
                "Tech"
            ]
        }

        {
            name: "709th Legion Ace"
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
                "Talent"
                "Gunner"
                "Missile"
                "Modification"
                "Configuration"
                "Tech"
                "Tech"
            ]
        }

        {
            name: "Red Fury Zealot"
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
                "Missile"
                "Modification"
                "Tech"
                "Tech"
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
                "Talent"
                "Gunner"
                "Torpedo"
                "Missile"
                "Device"
                "Device"
                "Modification"
                "Tech"
            ]
        }

        {
            name: '"Scorch" (TIE/Se Bomber)'
            id: 494
            xws_name: "scorch-tiesebomber"
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
                "Talent"
                "Gunner"
                "Missile"
                "Device"
                "Device"
                "Modification"
                "Tech"
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
                "Talent"
                "Gunner"
                "Missile"
                "Device"
                "Device"
                "Modification"
                "Tech"
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
                "Missile"
                "Device"
                "Device"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "First Order Cadet"
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
                "Torpedo"
                "Missile"
                "Device"
                "Device"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Sienar-Jaemus Test Pilot"
            id: 498
            xws_name: "sienarjaemustestpilot"
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
                "Missile"
                "Device"
                "Device"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Bodica Venj"
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
                "Talent"
                "Torpedo"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Dirk Ullodin"
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
                "Torpedo"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Fenn Rau (Rebel Fang)"
            id: 501
            xws_name: "fennrau-fangfighter"
            faction: "Rebel Alliance"
            xwsaddon: "fangfighter"
            unique: true
            ship: "Fang Fighter"
            skill: 6
            points: 5
            loadout: 9
            pointsxwa: 13
            loadoutxwa: 10
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
                "Talent"
                "Torpedo"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Clan Wren Volunteer"
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
                "Torpedo"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Moff Gideon"
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
                "Talent"
                "Illicit"
                "Modification"
            ]
        }

        {
            name: "ISB Jingoist"
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
                "Illicit"
                "Modification"
            ]
        }

        {
            name: "Mandalorian Royal Guard"
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
                "Torpedo"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Bo-Katan Kryze"
            id: 506
            slotsxwa: [
                "Talent"
                "Crew"
                "Gunner"
                "Illicit"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
                "Title"
            ]
            loadoutxwa: 20
            pointsxwa: 16
            xws_name: "bokatankryze"
            skip: true
        }

        {
            name: "Pre Vizsla"
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
                "Talent"
                "Crew"
                "Gunner"
                "Illicit"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Death Watch Warrior"
            id: 508
            xws_name: "deathwatchwarrior"
            faction: "Separatist Alliance"
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
                "Device"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Bo-Katan Kryze"
            id: 509
            xws_name: "bokatankryze-separatistalliance"
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
                "Talent"
                "Crew"
                "Gunner"
                "Illicit"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
                "Title"
            ]
        }

        {
            name: "Bo-Katan Kryze (Republic)"
            xws: "bokatankryze"
            id: 510
            xws_name: "bokatankryze-gauntletfighter"
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
        }

        {
            name: "Nite Owl Liberator"
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
                "Device"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Maul"
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
                "Force"
                "Force"
                "Crew"
                "Gunner"
                "Illicit"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
                "Title"
            ]
        }

        {
            name: "Shadow Collective Operator"
            id: 513
            xws_name: "shadowcollectiveoperator"
            faction: "Scum and Villainy"
            ship: "Gauntlet Fighter"
            skill: 1
            points: 7
            loadout: 10
            pointsxwa: 15
            loadoutxwa: 20
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
                "Device"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Rook Kast"
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
                "Talent"
                "Crew"
                "Gunner"
                "Illicit"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Captain Hark"
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
                "Talent"
                "Crew"
                "Gunner"
                "Illicit"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Imperial Super Commando"
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
                "Device"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Gar Saxon"
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
                "Talent"
                "Crew"
                "Gunner"
                "Illicit"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Mandalorian Resistance Pilot"
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
                "Talent"
                "Crew"
                "Gunner"
                "Illicit"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
                "Title"
            ]
        }

        {
            name: '"Chopper" (Gauntlet Fighter)'
            id: 519
            xws_name: "chopper-gauntletfighter"
            xwsname: "chopper-gauntletfighter"
            faction: "Rebel Alliance"
            ship: "Gauntlet Fighter"
            skill: 2
            points: 6
            loadout: 10
            pointsxwa: 16
            loadoutxwa: 18
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
                "Gunner"
                "Illicit"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
                "Title"
            ]
        }

        {
            name: "Ezra Bridger (Gauntlet Fighter)"
            id: 520
            xws_name: "ezrabridger-gauntletfighter"
            faction: "Rebel Alliance"
            ship: "Gauntlet Fighter"
            skill: 3
            force: 1
            points: 6
            loadout: 12
            pointsxwa: 16
            loadoutxwa: 15
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
                "Force"
                "Force"
                "Crew"
                "Gunner"
                "Illicit"
                "Device"
                "Modification"
                "Modification"
                "Configuration"
                "Title"
            ]
        }

        {
            name: "Q9-0"
            id: 521
            xws_name: "q90"
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
                "Talent"
                "Crew"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
        }

        {
            name: "The Mandalorian"
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
                "Talent"
                "Crew"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Guild Bounty Hunter"
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
                "Talent"
                "Crew"
                "Crew"
                "Illicit"
                "Illicit"
                "Modification"
            ]
        }

        {
            name: "Outer Rim Enforcer"
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
            id: 525
            xws_name: "plokoon-delta7baethersprite"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 5
            force: 2
            points: 7
            loadout: 19
            pointsxwa: 14
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
                "Force"
                "Astromech"
                "Modification"
            ]
        }

        {
            name: "Saesee Tiin (Delta-7b)"
            id: 526
            xws_name: "saeseetiin-delta7baethersprite"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 2
            points: 6
            loadout: 9
            pointsxwa: 13
            loadoutxwa: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
            ]
        }

        {
            name: "Mace Windu (Delta-7b)"
            id: 527
            xws_name: "macewindu-delta7baethersprite"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 3
            points: 5
            loadout: 7
            pointsxwa: 13
            loadoutxwa: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
            ]
        }

        {
            name: "Anakin Skywalker (Delta-7b)"
            id: 528
            xws_name: "anakinskywalker-delta7baethersprite"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 6
            force: 3
            points: 7
            loadout: 15
            pointsxwa: 16
            loadoutxwa: 12
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
                "Force"
                "Astromech"
                "Modification"
            ]
        }

        {
            name: "Luminara Unduli (Delta-7b)"
            id: 529
            xws_name: "luminaraunduli-delta7baethersprite"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 2
            points: 6
            loadout: 7
            pointsxwa: 13
            loadoutxwa: 8
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
            ]
        }

        {
            name: "Barriss Offee (Delta-7b)"
            id: 530
            xws_name: "barrissoffee-delta7baethersprite"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 4
            force: 1
            points: 5
            loadout: 10
            pointsxwa: 12
            loadoutxwa: 9
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Astromech"
                "Modification"
            ]
        }

        {
            name: "Ahsoka Tano (Delta-7b)"
            id: 531
            xws_name: "ahsokatano-delta7baethersprite"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 3
            force: 2
            points: 5
            loadout: 10
            pointsxwa: 13
            loadoutxwa: 10
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Astromech"
                "Modification"
            ]
        }

        {
            name: "Jedi Knight (Delta-7b)"
            id: 532
            xws_name: "jediknight-delta7baethersprite"
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 3
            force: 1
            points: 6
            loadout: 8
            pointsxwa: 11
            loadoutxwa: 4
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Astromech"
                "Modification"
            ]
        }

        {
            name: "Obi-Wan Kenobi (Delta-7b)"
            id: 533
            xws_name: "obiwankenobi-delta7baethersprite"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 5
            force: 3
            points: 7
            loadout: 15
            pointsxwa: 15
            loadoutxwa: 11
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
                "Force"
                "Astromech"
                "Modification"
            ]
        }

        {
            name: "Cad Bane"
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
                "Talent"
                "Illicit"
                "Cannon"
                "Cannon"
                "Missile"
                "Modification"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Viktor Hel (Rogue)"
            id: 535
            xws_name: "viktorhel-rogueclassstarfighter"
            unique: true
            faction: "Scum and Villainy"
            ship: "Rogue-class Starfighter"
            skill: 4
            points: 4
            loadout: 11
            pointsxwa: 10
            loadoutxwa: 11
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
                "Talent"
                "Illicit"
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Nom Lumb (Rogue)"
            id: 536
            xws_name: "nomlumb-rogueclassstarfighter"
            unique: true
            faction: "Scum and Villainy"
            ship: "Rogue-class Starfighter"
            skill: 1
            points: 4
            loadout: 11
            pointsxwa: 10
            loadoutxwa: 12
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
                "Illicit"
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Outer Rim Hunter"
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
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Cad Bane (Separatist)"
            xwsaddon: "separatistalliance"
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
                "Talent"
                "Illicit"
                "Cannon"
                "Cannon"
                "Missile"
                "Modification"
                "Modification"
                "Title"
            ]
        }

        {
            name: "IG-101"
            id: 539
            xws_name: "ig101"
            unique: true
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 4
            points: 4
            loadout: 11
            pointsxwa: 9
            loadoutxwa: 10
            chassis: "Networked Calculations"
            keyword: ["Droid"]
            slots: [
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "IG-102"
            id: 540
            xws_name: "ig102"
            unique: true
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 4
            points: 4
            loadout: 11
            pointsxwa: 9
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
                "Talent"
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "IG-111"
            id: 541
            xws_name: "ig111"
            unique: true
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 1
            points: 4
            loadout: 12
            pointsxwa: 10
            loadoutxwa: 11
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
            id: 542
            xws_name: "magnaguardprotector"
            max_per_squad: 2
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 4
            points: 4
            loadout: 10
            pointsxwa: 10
            loadoutxwa: 10
            chassis: "Networked Calculations"
            keyword: ["Droid"]
            slots: [
                "Cannon"
                "Cannon"
                "Missile"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
            applies_condition: 'Guarded'.canonicalize()
        }

        {
            name: "MagnaGuard Executioner"
            id: 543
            xws_name: "magnaguardexecutioner"
            faction: "Separatist Alliance"
            ship: "Rogue-class Starfighter"
            skill: 3
            points: 4
            loadout: 6
            pointsxwa: 9
            loadoutxwa: 11
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
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
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
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
        }

        {
            name: '"Hawk" (Z-95)'
            id: 546
            xws_name: "hawk-clonez95headhunter"
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 4
            points: 3
            loadout: 8
            pointsxwa: 8
            loadoutxwa: 10
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "Modification"
                "VersatileShip"
            ]
            slotsxwa: [
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
        }

        {
            name: '"Warthog" (Z-95)'
            id: 547
            xws_name: "warthog-clonez95headhunter"
            unique: true
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 3
            points: 3
            loadout: 10
            pointsxwa: 9
            loadoutxwa: 17
            keyword: ["Clone"]
            slots: [
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
            slotsxwa: [
                "Talent"
                "Sensor"
                "Modification"
                "VersatileShip"
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
                "Sensor"
                "Modification"
                "VersatileShip"
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
                "Sensor"
                "Modification"
                "VersatileShip"
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
                "Sensor"
                "Modification"
                "VersatileShip"
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
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
        }

        {
            name: "Reaper Squadron Scout"
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
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
        }

        {
            name: "7th Sky Corps Pilot"
            id: 553
            xws_name: "7thskycorpspilot"
            faction: "Galactic Republic"
            ship: "Clone Z-95 Headhunter"
            skill: 2
            points: 3
            loadout: 3
            pointsxwa: 7
            loadoutxwa: 8
            keyword: ["Clone"]
            slots: [
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
            slotsxwa: [
                "Sensor"
                "Modification"
                "VersatileShip"
            ]
        }

        {
            name: "Garven Dreis (BoY)"
            xwsaddon: "battleofyavin"
            unique: true
            id: 554
            slotsxwa: [

            ]
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
            id: 555
            slotsxwa: [

            ]
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
            id: 556
            slotsxwa: [

            ]
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
            id: 557
            slotsxwa: [

            ]
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
            id: 558
            slotsxwa: [

            ]
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
            id: 559
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            id: 561
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            id: 563
            slotsxwa: [

            ]
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
            id: 564
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            id: 569
            slotsxwa: [

            ]
            xws_name: "idenversio-battleofyavin"
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 4
            points: 5
            pointsxwa: 11
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
            id: 570
            slotsxwa: [

            ]
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
            id: 571
            slotsxwa: [

            ]
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
            id: 572
            slotsxwa: [

            ]
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
            id: 573
            slotsxwa: [

            ]
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
            id: 574
            slotsxwa: [

            ]
            xws_name: "anakinskywalker-siegeofcoruscant"
            faction: "Galactic Republic"
            ship: "Eta-2 Actis"
            skill: 6
            points: 4
            pointsxwa: 12
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
            id: 575
            slotsxwa: [

            ]
            xws_name: "obiwankenobi-siegeofcoruscant"
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
            id: 576
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            id: 584
            slotsxwa: [

            ]
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
            id: 585
            slotsxwa: [

            ]
            xws_name: "dbs32c-siegeofcoruscant"
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
            id: 586
            slotsxwa: [

            ]
            xws_name: "dbs404-siegeofcoruscant"
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
            id: 587
            slotsxwa: [

            ]
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
            id: 588
            slotsxwa: [

            ]
            xws_name: "dis347-siegeofcoruscant"
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
            id: 589
            slotsxwa: [

            ]
            xws_name: "dist81-siegeofcoruscant"
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
            id: 590
            slotsxwa: [

            ]
            xws_name: "phlacarphoccprototype-siegeofcoruscant"
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
            id: 591
            slotsxwa: [

            ]
            xws_name: "dfs081-siegeofcoruscant"
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
            id: 592
            slotsxwa: [

            ]
            xws_name: "dfs311-siegeofcoruscant"
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
            id: 593
            slotsxwa: [

            ]
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
            id: 594
            xws_name: "corranhorn-t65xwing"
            unique: true
            faction: "Rebel Alliance"
            ship: "T-65 X-wing"
            skill: 5
            points: 4
            loadout: 9
            pointsxwa: 12
            loadoutxwa: 13
            slots: [
                "Talent"
                "Missile"
                "Astromech"
                "Configuration"
            ]
            slotsxwa: [
                "Talent"
                "Astromech"
                "Torpedo"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Wes Janson"
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
                "Talent"
                "Astromech"
                "Torpedo"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Tycho Celchu"
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
                "Talent"
                "Missile"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Keo Venzee"
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
                "Force"
                "Missile"
                "Modification"
                "Configuration"
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
                "Torpedo"
                "Device"
                "Modification"
                "Turret"
            ]
        }

        {
            name: "Flight Leader Ubbel"
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
                "Talent"
                "Gunner"
                "Cannon"
                "Cannon"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Juno Eclipse"
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
                "Talent"
                "Talent"
                "Sensor"
                "Missile"
                "Modification"
            ]
        }

        {
            name: "Second Sister"
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
                "Force"
                "Sensor"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Magna Tolvan"
            id: 602
            xws_name: "magnatolvan"
            unique: true
            faction: "Galactic Empire"
            ship: "TIE/ln Fighter"
            skill: 3
            points: 3
            loadout: 10
            pointsxwa: 8
            loadoutxwa: 9
            slots: [
                "Talent"
                "Cannon"
                "Modification"
            ]
            slotsxwa: [
                "Talent"
                "Modification"
            ]
        }

        {
            name: "Yrica Quell"
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
                "Talent"
                "Modification"
            ]
        }

        {
            name: "Poe Dameron (YT-1300)"
            id: 604
            xws_name: "poedameron-scavengedyt1300"
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 6
            charge: 2
            recurring: 1
            points: 7
            loadout: 25
            pointsxwa: 19
            loadoutxwa: 24
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
                "Talent"
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Illicit"
                "Illicit"
                "Missile"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Lando Calrissian (Resistance)"
            id: 605
            xws_name: "landocalrissian-scavengedyt1300"
            unique: true
            faction: "Resistance"
            ship: "Scavenged YT-1300"
            skill: 5
            charge: 3
            recurring: 1
            points: 7
            loadout: 20
            pointsxwa: 18
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
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Gunner"
                "Illicit"
                "Illicit"
                "Missile"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Venisa Doza"
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
                "Talent"
                "Astromech"
                "Missile"
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Zay Versio"
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
                "Talent"
                "Astromech"
                "HardpointShip"
                "Modification"
                "Configuration"
                "Tech"
            ]
        }

        {
            name: "Taka Jamoreesa"
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
                "Torpedo"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Hondo Ohnaka"
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
                "Crew"
                "Illicit"
                "Cannon"
                "Missile"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Tor Phun"
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
                "Torpedo"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Durge"
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
                "Talent"
                "Illicit"
                "Illicit"
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Doctor Aphra"
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
                "Talent"
                "Crew"
                "Crew"
                "Gunner"
                "Illicit"
                "Modification"
            ]
        }

        {
            name: "Lapin"
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
                "Talent"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "Volan Das"
            id: 614
            xws_name: "volandas"
            unique: true
            faction: "Separatist Alliance"
            ship: "Droid Tri-fighter"
            skill: 5
            points: 4
            loadout: 12
            pointsxwa: 10
            loadoutxwa: 9
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
                "Illicit"
                "Cannon"
                "Missile"
                "Modification"
                "Modification"
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
                "Force"
                "Crew"
                "Illicit"
                "Cannon"
                "Missile"
                "Device"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Durge (Separatist)"
            xwsaddon: "separatistalliance"
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
                "Talent"
                "Illicit"
                "Illicit"
                "Cannon"
                "Cannon"
                "Modification"
                "Modification"
            ]
        }

        {
            name: "The Iron Assembler"
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
                "Missile"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Kelrodo-Ai Holdout"
            id: 618
            xws_name: "kelrodoaiholdout"
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
                "Force"
                "Astromech"
                "Modification"
                "Modification"
                "Configuration"
            ]
        }

        {
            name: "Adi Gallia (Delta-7B)"
            id: 620
            xws_name: "adigallia-delta7baethersprite"
            unique: true
            faction: "Galactic Republic"
            ship: "Delta-7b Aethersprite"
            skill: 5
            force: 2
            points: 7
            loadout: 18
            pointsxwa: 14
            loadoutxwa: 7
            keyword: ["Jedi","Light Side"]
            slots: [
                "Force"
                "Talent"
                "Astromech"
                "Modification"
            ]
            slotsxwa: [
                "Force"
                "Force"
                "Astromech"
                "Modification"
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
                "Torpedo"
                "Missile"
                "Modification"
            ]
            applies_condition: 'Sickening Maneuver'.canonicalize()
        }

        {
            name: "Kit Fisto"
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
                "Force"
                "Force"
                "Talent"
                "Astromech"
                "Cannon"
                "Modification"
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
                "Sensor"
                "Torpedo"
                "Modification"
            ]
        }

        {
            name: "Lieutenant Galek"
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
                "Talent"
                "Sensor"
                "Modification"
                "Tech"
                "Tech"
            ]
        }

        {
            name: "Jul Jerjerrod"
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
                "Talent"
                "Gunner"
                "Torpedo"
                "Missile"
                "Device"
                "Device"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "DT-798"
            id: 627
            xws_name: "dt798"
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
                "Talent"
                "Sensor"
                "Modification"
                "Tech"
            ]
        }

        {
            name: "Lin Gaava"
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
                "Talent"
                "Sensor"
                "Modification"
                "Tech"
            ]
            applies_condition: '''Primed For Speed'''.canonicalize()
        }

        {
            name: "Agent Tierny"
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
                "Talent"
                "Crew"
                "Crew"
                "Modification"
                "Tech"
                "Tech"
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
            id: 630
            slotsxwa: [

            ]
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
            id: 631
            slotsxwa: [

            ]
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
            id: 632
            slotsxwa: [

            ]
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
            id: 633
            slotsxwa: [

            ]
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
            id: 634
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            id: 636
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            id: 638
            slotsxwa: [

            ]
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
            id: 639
            slotsxwa: [

            ]
            xws_name: "arvelcrynyd-swz106"
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 3
            points: 4
            pointsxwa: 8
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
            id: 640
            slotsxwa: [

            ]
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
            id: 641
            slotsxwa: [

            ]
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
            id: 642
            slotsxwa: [

            ]
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
            id: 643
            slotsxwa: [

            ]
            xws_name: "sharabey-swz106"
            faction: "Rebel Alliance"
            ship: "RZ-1 A-wing"
            skill: 4
            points: 4
            pointsxwa: 8
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
            slotsxwa: [

            ]
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
            id: 645
            slotsxwa: [

            ]
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
            id: 646
            slotsxwa: [

            ]
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
            id: 647
            slotsxwa: [

            ]
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
                "Missile"
                "Modification"
                "Title"
            ]
        }

        {
            name: "Dash Rendar (YLF-SL)"
            xwsaddon: "swz103-sl-rebelalliance"
            unique: true
            id: 649
            slotsxwa: [

            ]
            xws_name: "dashrendar-swz103-sl-rebelalliance"
            faction: "Rebel Alliance"
            ship: "YT-2400 Light Freighter"
            skill: 5
            points: 6
            pointsxwa: 17
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
            id: 650
            slotsxwa: [

            ]
            xws_name: "dashrendar-swz103-sl-scumandvillainy"
            faction: "Scum and Villainy"
            ship: "YT-2400 Light Freighter"
            skill: 5
            points: 6
            pointsxwa: 17
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
                "Missile"
                "Modification"
                "Title"
            ]
        }

        {
            name: '"Leebo" (YLF-SL)'
            xwsaddon: "swz103-sl-rebelalliance"
            unique: true
            id: 652
            slotsxwa: [

            ]
            loadoutxwa: 0
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
            slotsxwa: [

            ]
            loadoutxwa: 0
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
            id: 654
            slotsxwa: [

            ]
            loadoutxwa: 0
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
            id: 655
            slotsxwa: [

            ]
            loadoutxwa: 0
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
            slotsxwa: [

            ]
            loadoutxwa: 0
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
            slotsxwa: [

            ]
            loadoutxwa: 0
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
            id: 658
            slotsxwa: [

            ]
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
            id: 659
            slotsxwa: [

            ]
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
            id: 660
            slotsxwa: [

            ]
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
            id: 661
            slotsxwa: [

            ]
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
            id: 662
            slotsxwa: [

            ]
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
            id: 663
            slotsxwa: [

            ]
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
            id: 664
            slotsxwa: [

            ]
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
            id: 665
            slotsxwa: [

            ]
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
            id: 666
            slotsxwa: [

            ]
            xws_name: "mausmonare-battleoverendor"
            faction: "Galactic Empire"
            ship: "TIE/in Interceptor"
            skill: 3
            points: 5
            pointsxwa: 11
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
            id: 667
            slotsxwa: [

            ]
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
            id: 668
            slotsxwa: [

            ]
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
            id: 669
            slotsxwa: [

            ]
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
            id: 670
            slotsxwa: [

            ]
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
            id: 671
            slotsxwa: [

            ]
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
            id: 672
            slotsxwa: [

            ]
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
            id: 673
            slotsxwa: [

            ]
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
            id: 674
            slotsxwa: [

            ]
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
            id: 675
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            pointsxwa: 8
            xwsaddon: "epicsl-rebelalliance"
            unique: true
            id: 678
            xws_name: "raymusantilles"
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
            id: 679
            xws_name: "raymusantilles-epicslgalacticrepublic"
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
            id: 680
            slotsxwa: [

            ]
            xws_name: "leiaorgana-epicsl"
            faction: "Resistance"
            ship: "CR90 Corellian Corvette"
            skill: 8
            engagement: 0
            points: 12
            pointsxwa: 32
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
            id: 681
            slotsxwa: [

            ]
            xws_name: "idenversio-epicsl"
            faction: "Galactic Empire"
            ship: "Raider-class Corvette"
            skill: 8
            engagement: 0
            points: 13
            pointsxwa: 33
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
            id: 683
            xws_name: "aut0"
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
            id: 684
            xws_name: "cerrafellian"
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
            id: 685
            xws_name: "rikvirgilio"
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
            id: 686
            xws_name: "wezsynat"
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
            id: 687
            xws_name: "orafdesyk"
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
            id: 688
            xws_name: "treborzednem"
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
            id: 689
            xws_name: "cikatrovizago"
            faction: "Scum and Villainy"
            ship: "C-ROC Cruiser"
            skill: 7
            engagement: 1
            points: 8
            pointsxwa: 1
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
            id: 690
            slotsxwa: [

            ]
            xws_name: "asajjventress-epicsl"
            faction: "Separatist Alliance"
            ship: "Trident-class Assault Ship"
            skill: 8
            engagement: 1
            points: 8
            pointsxwa: 19
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
            id: 691
            xws_name: "sorctormo"
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
            id: 692
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            slotsxwa: [

            ]
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
            id: 696
            slotsxwa: [

            ]
            xws_name: "zeta5-evacuationofdqar"
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 2
            points: 3
            pointsxwa: 9
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
            id: 697
            slotsxwa: [

            ]
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
            id: 698
            slotsxwa: [

            ]
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
            id: 699
            slotsxwa: [

            ]
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
            id: 700
            slotsxwa: [

            ]
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
            id: 701
            slotsxwa: [

            ]
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
            id: 702
            slotsxwa: [

            ]
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
            id: 703
            slotsxwa: [

            ]
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
            id: 704
            slotsxwa: [

            ]
            xws_name: "stomeronistarck-evacuationofdqar"
            faction: "Resistance"
            ship: "T-70 X-wing"
            skill: 4
            points: 5
            pointsxwa: 13
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
            id: 705
            slotsxwa: [

            ]
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
            id: 706
            slotsxwa: [

            ]
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
            id: 707
            slotsxwa: [

            ]
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
            id: 708
            slotsxwa: [

            ]
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
            id: 709
            slotsxwa: [

            ]
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
            id: 710
            slotsxwa: [

            ]
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
            id: 711
            slotsxwa: [

            ]
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
            id: 712
            slotsxwa: [

            ]
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
            id: 713
            slotsxwa: [

            ]
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
            id: 714
            slotsxwa: [

            ]
            xws_name: "hansolo-armedanddangerous"
            faction: "Scum and Villainy"
            ship: "Customized YT-1300 Light Freighter"
            skill: 6
            points: 6
            pointsxwa: 16
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
            id: 715
            slotsxwa: [

            ]
            xws_name: "bokatankryze-armedanddangerous"
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
            id: 716
            slotsxwa: [

            ]
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
            id: 717
            slotsxwa: [

            ]
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
            id: 718
            slotsxwa: [

            ]
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
            id: 719
            slotsxwa: [

            ]
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
            id: 720
            slotsxwa: [

            ]
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
            id: 721
            slotsxwa: [

            ]
            xws_name: "zuckuss-armedanddangerous"
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 3
            points: 5
            pointsxwa: 12
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
            pointsxwa: 3
            id: 0
            slot: "Astromech"
            xws: "chopper"
            xws_name: "chopper-astromech"
            points: 2
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: '"Genius"'
            id: 1
            xws_name: "genius"
            slot: "Astromech"
            points: 2
            pointsxwa: 0
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "R2 Astromech"
            id: 2
            xws_name: "r2astromech"
            slot: "Astromech"
            points: 6
            charge: 2
            pointsxwa: 7
        }
        {
            name: "R2-D2"
            id: 3
            xws_name: "r2d2-astromech-rebel"
            unique: true
            slot: "Astromech"
            points: 8
            pointsxwa: 8
            charge: 3
            faction: "Rebel Alliance"
        }
        {
            name: "R3 Astromech"
            pointsxwa: 3
            id: 4
            xws_name: "r3astromech"
            slot: "Astromech"
            points: 3
        }
        {
            name: "R4 Astromech"
            pointsxwa: 2
            id: 5
            xws_name: "r4astromech"
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
            xws_name: "r5astromech"
            slot: "Astromech"
            points: 4
            pointsxwa: 6
            charge: 2
        }
        {
            name: "R5-D8"
            id: 7
            xws_name: "r5d8"
            unique: true
            slot: "Astromech"
            points: 6
            pointsxwa: 7
            charge: 3
            faction: "Rebel Alliance"
        }
        {
            name: "R5-P8"
            pointsxwa: 4
            id: 8
            xws_name: "r5p8"
            slot: "Astromech"
            points: 4
            unique: true
            faction: "Scum and Villainy"
            charge: 3
        }
        {
            name: "R5-TK"
            pointsxwa: 0
            id: 9
            xws_name: "r5tk"
            slot: "Astromech"
            points: 0
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Heavy Laser Cannon"
            pointsxwa: 5
            id: 10
            xws_name: "heavylasercannon"
            slot: "Cannon"
            points: 5
            attackbull: 4
            range: """2-3"""
        }
        {
            name: "Ion Cannon"
            pointsxwa: 6
            id: 11
            xws_name: "ioncannon"
            slot: "Cannon"
            points: 6
            attack: 3
            range: """1-3"""
        }
        {
            name: "Jamming Beam"
            pointsxwa: 1
            id: 12
            xws_name: "jammingbeam"
            slot: "Cannon"
            points: 1
            attack: 3
            range: """1-2"""
        }
        {
            name: "Tractor Beam"
            pointsxwa: 4
            id: 13
            xws_name: "tractorbeam"
            slot: "Cannon"
            points: 6
            attack: 3
            range: """1-3"""
        }
        {
            name: "Admiral Sloane"
            id: 14
            xws_name: "admiralsloane"
            slot: "Crew"
            points: 16
            pointsxwa: 50
            unique: true
            faction: "Galactic Empire"
        }
        {
            name: "Agent Kallus"
            pointsxwa: 5
            id: 15
            xws_name: "agentkallus-crew"
            slot: "Crew"
            points: 5
            unique: true
            faction: "Galactic Empire"
            applies_condition: 'Hunted'.canonicalize()
        }
        {
            name: "Boba Fett"
            id: 16
            xws_name: "bobafett-crew"
            slot: "Crew"
            points: 2
            pointsxwa: 7
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Baze Malbus"
            id: 17
            xws_name: "bazemalbus"
            slot: "Crew"
            points: 5
            pointsxwa: 7
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "C-3PO"
            pointsxwa: 7
            id: 18
            xws_name: "c3po"
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
            xws_name: "cassianandor-crew"
            slot: "Crew"
            points: 5
            pointsxwa: 7
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Cad Bane"
            pointsxwa: 3
            id: 20
            xws_name: "cadbane-crew"
            slot: "Crew"
            points: 3
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Chewbacca"
            pointsxwa: 3
            id: 21
            xws_name: "chewbacca-crew-rebel"
            slot: "Crew"
            points: 3
            unique: true
            faction: "Rebel Alliance"
            charge: 2
            recurring: 1
        }
        {
            name: "Chewbacca (Scum)"
            pointsxwa: 2
            id: 22
            xws_name: "chewbacca-crew"
            slot: "Crew"
            points: 3
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: '"Chopper" (Crew)'
            pointsxwa: 2
            id: 23
            xws_name: "chopper-crew"
            slot: "Crew"
            points: 1
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Ciena Ree"
            pointsxwa: 2
            id: 24
            xws_name: "cienaree-crew"
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
            pointsxwa: 1
            id: 25
            xws_name: "cikatrovizago"
            slot: "Crew"
            points: 1
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Darth Vader"
            id: 26
            xws_name: "darthvader-crew-empire"
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
            xws_name: "deathtroopers"
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
            pointsxwa: 3
            id: 28
            xws_name: "directorkrennic"
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
            pointsxwa: 12
            id: 29
            xws_name: "emperorpalpatine"
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
            pointsxwa: 3
            id: 30
            xws_name: "freelanceslicer"
            slot: "Crew"
            points: 3
        }
        {
            name: "4-LOM"
            id: 31
            xws_name: "4lom-crew"
            slot: "Crew"
            points: 8
            pointsxwa: 5
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: 'GNK "Gonk" Droid'
            pointsxwa: 3
            id: 32
            xws_name: "gnkgonkdroid"
            slot: "Crew"
            points: 5
            charge: 1
        }
        {
            name: "Grand Inquisitor"
            id: 33
            xws_name: "grandinquisitor-crew"
            slot: "Crew"
            points: 15
            pointsxwa: 10
            unique: true
            force: 1
            faction: "Galactic Empire"
            modifier_func: (stats) ->
                stats.force += 1
        }
        {
            name: "Grand Moff Tarkin"
            pointsxwa: 3
            id: 34
            xws_name: "grandmofftarkin"
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
            pointsxwa: 3
            id: 35
            xws_name: "herasyndulla-crew"
            slot: "Crew"
            points: 4
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "IG-88D"
            pointsxwa: 3
            id: 36
            xws_name: "ig88d-crew"
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
            xws_name: "informant"
            slot: "Crew"
            points: 4
            pointsxwa: 6
            unique: true
            applies_condition: 'Listening Device'.canonicalize()
        }
        {
            name: "ISB Slicer"
            pointsxwa: 1
            id: 38
            xws_name: "isbslicer"
            slot: "Crew"
            points: 1
            faction: "Galactic Empire"
        }
        {
            name: "Jabba the Hutt"
            pointsxwa: 10
            id: 39
            xws_name: "jabbathehutt"
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
            pointsxwa: 6
            id: 40
            xws_name: "jynerso"
            slot: "Crew"
            points: 7
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Kanan Jarrus"
            pointsxwa: 10
            id: 41
            xws_name: "kananjarrus-crew"
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
            pointsxwa: 3
            id: 42
            xws_name: "ketsuonyo-crew"
            slot: "Crew"
            points: 4
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "L3-37"
            pointsxwa: 5
            id: 43
            xws_name: "l337-crew"
            slot: "Crew"
            points: 4
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Lando Calrissian"
            pointsxwa: 2
            id: 44
            xws_name: "landocalrissian-crew-rebel"
            slot: "Crew"
            points: 2
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Lando Calrissian (Scum)"
            pointsxwa: 6
            id: 45
            xws_name: "landocalrissian-crew"
            slot: "Crew"
            points: 4
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Leia Organa"
            pointsxwa: 7
            id: 46
            xws_name: "leiaorgana-crew-rebel"
            slot: "Crew"
            points: 7
            unique: true
            faction: "Rebel Alliance"
            charge: 3
            recurring: 1
        }
        {
            name: "Latts Razzi"
            pointsxwa: 4
            id: 47
            xws_name: "lattsrazzi-crew"
            slot: "Crew"
            points: 5
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Maul"
            id: 48
            xws_name: "maul-crew-scum"
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
            pointsxwa: 4
            id: 49
            xws_name: "ministertua"
            slot: "Crew"
            points: 4
            unique: true
            faction: "Galactic Empire"
        }
        {
            name: "Moff Jerjerrod"
            pointsxwa: 5
            id: 50
            xws_name: "moffjerjerrod"
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
            pointsxwa: 5
            id: 51
            xws_name: "magvayarro-crew"
            slot: "Crew"
            points: 5
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Nien Nunb"
            pointsxwa: 4
            id: 52
            xws_name: "niennunb-crew"
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
            pointsxwa: 2
            id: 53
            xws_name: "novicetechnician"
            slot: "Crew"
            points: 2
        }
        {
            name: "Perceptive Copilot"
            pointsxwa: 8
            id: 54
            xws_name: "perceptivecopilot"
            slot: "Crew"
            points: 8
        }
        {
            name: "Qi'ra"
            pointsxwa: 2
            id: 55
            xws_name: "qira"
            slot: "Crew"
            points: 2
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "R2-D2 (Crew)"
            pointsxwa: 6
            id: 56
            xws_name: "r2d2-crew"
            slot: "Crew"
            points: 8
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Sabine Wren"
            id: 57
            xws_name: "sabinewren-crew"
            slot: "Crew"
            points: 3
            pointsxwa: 6
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Saw Gerrera"
            pointsxwa: 9
            id: 58
            xws_name: "sawgerrera-crew"
            slot: "Crew"
            points: 9
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Seasoned Navigator"
            pointsxwa: 7
            id: 59
            xws_name: "seasonednavigator"
            slot: "Crew"
            points: 7
        }
        {
            name: "Seventh Sister"
            pointsxwa: 9
            id: 60
            xws_name: "seventhsister-crew"
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
            pointsxwa: 3
            id: 61
            xws_name: "tacticalofficer"
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
            xws_name: "tobiasbeckett"
            slot: "Crew"
            points: 2
            pointsxwa: 8
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "0-0-0"
            pointsxwa: 4
            id: 63
            xws_name: "000"
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
            pointsxwa: 1
            id: 64
            xws_name: "unkarplutt-crew"
            slot: "Crew"
            points: 2
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: '"Zeb" Orrelios'
            pointsxwa: 1
            id: 65
            xws_name: "zeborrelios-crew"
            slot: "Crew"
            points: 1
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Zuckuss"
            pointsxwa: 5
            id: 66
            xws_name: "zuckuss-crew"
            slot: "Crew"
            points: 6
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Bomblet Generator"
            id: 67
            xws_name: "bombletgenerator"
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
            pointsxwa: 5
            id: 68
            xws_name: "connernets"
            slot: "Device"
            points: 5
            charge: 1
            applies_condition: 'Conner Net'.canonicalize()
        }
        {
            name: "Proton Bombs"
            pointsxwa: 5
            id: 69
            xws_name: "protonbombs"
            slot: "Device"
            points: 5
            charge: 2
            applies_condition: 'Proton Bomb'.canonicalize()
        }
        {
            name: "Proximity Mines"
            id: 70
            xws_name: "proximitymines"
            slot: "Device"
            max_per_squad: 3
            points: 10
            pointsxwa: 9
            charge: 2
            applies_condition: 'Proximity Mine'.canonicalize()
        }
        {
            name: "Seismic Charges"
            pointsxwa: 3
            id: 71
            xws_name: "seismiccharges"
            slot: "Device"
            points: 3
            charge: 2
            applies_condition: 'Seismic Charge'.canonicalize()
        }
        {
            name: "Heightened Perception"
            id: 72
            xws_name: "heightenedperception"
            slot: "Force"
            points: 3
            pointsxwa: 5
        }
        {
            name: "Instinctive Aim"
            pointsxwa: 2
            id: 73
            xws_name: "instinctiveaim"
            slot: "Force"
            points: 2
        }
        {
            name: "Supernatural Reflexes"
            pointsxwa: 50
            id: 74
            xws_name: "supernaturalreflexes"
            slot: "Force"
            points: 24
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Sense"
            id: 75
            xws_name: "sense"
            slot: "Force"
            isUnique: true
            points: 6
            pointsxwa: 7
        }
        {
            name: "Agile Gunner"
            id: 76
            xws_name: "agilegunner"
            slot: "Gunner"
            points: 1
            pointsxwa: 4
        }
        {
            name: "Bistan"
            id: 77
            xws_name: "bistan"
            slot: "Gunner"
            points: 8
            pointsxwa: 15
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Bossk"
            id: 78
            xws_name: "bossk-gunner"
            slot: "Gunner"
            points: 6
            pointsxwa: 4
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "BT-1"
            pointsxwa: 1
            id: 79
            xws_name: "bt1"
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
            pointsxwa: 6
            id: 80
            xws_name: "dengar-gunner"
            slot: "Gunner"
            points: 6
            unique: true
            faction: "Scum and Villainy"
            recurring: 1
            charge: 1

        }
        {
            name: "Ezra Bridger"
            pointsxwa: 9
            id: 81
            xws_name: "ezrabridger-gunner"
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
            pointsxwa: 12
            id: 82
            xws_name: "fifthbrother-gunner"
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
            pointsxwa: 2
            id: 83
            xws_name: "greedo"
            slot: "Gunner"
            points: 1
            unique: true
            faction: "Scum and Villainy"
            charge: 1
            recurring: 1
        }
        {
            name: "Han Solo"
            pointsxwa: 10
            id: 84
            xws_name: "hansolo-gunner-rebel"
            slot: "Gunner"
            points: 10
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Han Solo (Scum)"
            id: 85
            xws_name: "hansolo-gunner"
            slot: "Gunner"
            points: 9
            pointsxwa: 7
            unique: true
            faction: "Scum and Villainy"
        }
        {
            name: "Hotshot Gunner"
            id: 86
            xws_name: "hotshotgunner"
            slot: "Gunner"
            max_per_squad: 2
            points: 6
            pointsxwa: 7
        }
        {
            name: "Luke Skywalker"
            pointsxwa: 12
            id: 87
            xws_name: "lukeskywalker-gunner"
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
            pointsxwa: 2
            id: 88
            xws_name: "skilledbombardier"
            slot: "Gunner"
            points: 2
        }
        {
            name: "Veteran Tail Gunner"
            id: 89
            xws_name: "veterantailgunner"
            slot: "Gunner"
            points: 5
            pointsxwa: 5
            restrictions: [
                ["AttackArc", "Rear Arc"]
            ]
        }
        {
            name: "Veteran Turret Gunner"
            id: 90
            xws_name: "veteranturretgunner"
            slot: "Gunner"
            max_per_squad: 3
            points: 3
            pointsxwa: 6
            restrictions: [
                ["Action", "Rotate Arc"]
            ]
        }
        {
            name: "Cloaking Device"
            pointsxwa: 8
            id: 91
            xws_name: "cloakingdevice"
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
            pointsxwa: 4
            id: 92
            xws_name: "contrabandcybernetics"
            slot: "Illicit"
            points: 3
            charge: 1
        }
        {
            name: "Deadman's Switch"
            pointsxwa: 2
            id: 93
            xws_name: "deadmansswitch"
            slot: "Illicit"
            points: 2
        }
        {
            name: "Feedback Array"
            pointsxwa: 4
            id: 94
            xws_name: "feedbackarray"
            slot: "Illicit"
            points: 4
        }
        {
            name: "Inertial Dampeners"
            pointsxwa: 8
            id: 95
            xws_name: "inertialdampeners"
            slot: "Illicit"
            points: 8
        }
        {
            name: "Rigged Cargo Chute"
            pointsxwa: 2
            id: 96
            xws_name: "riggedcargochute"
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
            xws_name: "barragerockets"
            slot: "Missile"
            max_per_squad: 2
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
            xws_name: "clustermissiles"
            slot: "Missile"
            points: 4
            attack: 3
            range: """1-2"""
            rangebonus: true
            charge: 4
            pointsxwa: 5
        }
        {
            name: "Concussion Missiles"
            id: 99
            xws_name: "concussionmissiles"
            slot: "Missile"
            points: 5
            pointsxwa: 6
            attack: 3
            range: """2-3"""
            rangebonus: true
            charge: 3
        }
        {
            name: "Homing Missiles"
            pointsxwa: 4
            id: 100
            xws_name: "homingmissiles"
            slot: "Missile"
            max_per_squad: 2
            points: 5
            attack: 4
            range: """2-3"""
            rangebonus: true
            charge: 2
        }
        {
            name: "Ion Missiles"
            id: 101
            xws_name: "ionmissiles"
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
            xws_name: "protonrockets"
            slot: "Missile"
            max_per_squad: 3
            points: 8
            pointsxwa: 7
            attackbull: 5
            range: """1-2"""
            rangebonus: true
            charge: 1
        }
        {
            name: "Ablative Plating"
            id: 103
            xws_name: "ablativeplating"
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
            pointsxwa: 3
            id: 104
            xws_name: "advancedslam"
            slot: "Modification"
            points: 3
            restrictions: [
                ["Action", "Slam"]
            ]
        }
        {
            name: "Afterburners"
            pointsxwa: 8
            id: 105
            xws_name: "afterburners"
            slot: "Modification"
            points: 8
            charge: 2
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Electronic Baffle"
            pointsxwa: 2
            id: 106
            xws_name: "electronicbaffle"
            slot: "Modification"
            points: 2
        }
        {
            name: "Engine Upgrade"
            pointsxwa: 3
            id: 107
            xws_name: "engineupgrade"
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
            pointsxwa: 1
            id: 108
            xws_name: "munitionsfailsafe"
            slot: "Modification"
            points: 1
        }
        {
            name: "Static Discharge Vanes"
            pointsxwa: 12
            id: 109
            xws_name: "staticdischargevanes"
            slot: "Modification"
            points: 12
        }
        {
            name: "Tactical Scrambler"
            pointsxwa: 2
            id: 110
            xws_name: "tacticalscrambler"
            slot: "Modification"
            points: 2
            restrictions: [
                ["Base", "Medium", "Large"]
            ]
        }
        {
            name: "Advanced Sensors"
            id: 111
            xws_name: "advancedsensors"
            slot: "Sensor"
            points: 12
            pointsxwa: 8
        }
        {
            name: "Collision Detector"
            pointsxwa: 7
            id: 112
            xws_name: "collisiondetector"
            slot: "Sensor"
            points: 7
            charge: 2
        }
        {
            name: "Fire-Control System"
            pointsxwa: 2
            id: 113
            xws_name: "firecontrolsystem"
            slot: "Sensor"
            points: 2
        }
        {
            name: "Trajectory Simulator"
            id: 114
            xws_name: "trajectorysimulator"
            max_per_squad: 2
            slot: "Sensor"
            points: 8
            pointsxwa: 10
        }
        {
            name: "Composure"
            pointsxwa: 1
            id: 115
            xws_name: "composure"
            slot: "Talent"
            points: 1
            restrictions: [
                ["Action", "Focus"]
            ]
        }
        {
            name: "Crack Shot"
            id: 116
            xws_name: "crackshot"
            slot: "Talent"
            points: 4
            pointsxwa: 5
            charge: 1
        }
        {
            name: "Daredevil"
            id: 117
            xws_name: "daredevil"
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
            xws_name: "debrisgambit"
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
            pointsxwa: 4
            id: 119
            xws_name: "elusive"
            slot: "Talent"
            points: 4
            charge: 1
            restrictions: [
                ["Base", "Small", "Medium"]
            ]
        }
        {
            name: "Expert Handling"
            pointsxwa: 2
            id: 120
            xws_name: "experthandling"
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
            pointsxwa: 3
            id: 121
            xws_name: "fearless"
            slot: "Talent"
            points: 3
            faction: "Scum and Villainy"
        }
        {
            name: "Intimidation"
            id: 122
            xws_name: "intimidation"
            slot: "Talent"
            points: 3
            pointsxwa: 7
            isUnique: true
            restrictionsxwa: [
                ["isUnique", true]
                ["Base", "Small", "Medium"]
            ]
        }
        {
            name: "Juke"
            pointsxwa: 7
            id: 123
            xwa_name: "juke"
            slot: "Talent"
            max_per_squad: 2
            points: 7
            restrictions: [
                ["Base", "Small", "Medium"]
            ]
        }
        {
            name: "Lone Wolf"
            pointsxwa: 3
            id: 124
            xws_name: "lonewolf"
            slot: "Talent"
            points: 3
            unique: true
            recurring: 1
            charge: 1
        }
        {
            name: "Marksmanship"
            id: 125
            xws_name: "marksmanship"
            slot: "Talent"
            points: 1
            pointsxwa: 2
        }
        {
            name: "Outmaneuver"
            id: 126
            xws_name: "outmaneuver"
            slot: "Talent"
            points: 12
            pointsxwa: 9
        }
        {
            name: "Predator"
            pointsxwa: 3
            id: 127
            xws_name: "predator"
            slot: "Talent"
            points: 3
        }
        {
            name: "Ruthless"
            pointsxwa: 2
            id: 128
            xws_name: "ruthless"
            slot: "Talent"
            points: 1
            faction: "Galactic Empire"
        }
        {
            name: "Saturation Salvo"
            id: 129
            xws_name: "saturationsalvo"
            slot: "Talent"
            points: 2
            pointsxwa: 6
            restrictions: [
                ["Action", "Reload"]
            ]
        }
        {
            name: "Selfless"
            pointsxwa: 3
            id: 130
            xws_name: "selfless"
            slot: "Talent"
            points: 4
            faction: "Rebel Alliance"
        }
        {
            name: "Squad Leader"
            id: 131
            xws_name: "squadleader"
            slot: "Talent"
            points: 6
            pointsxwa: 5
            unique: true
            modifier_func: (stats) ->
                stats.actions.push 'R-Coordinate' if 'R-Coordinate' not in stats.actions
        }
        {
            name: "Swarm Tactics"
            id: 132
            xws_name: "swarmtactics"
            slot: "Talent"
            max_per_squad: 3
            points: 5
            pointsxwa: 7
        }
        {
            name: "Trick Shot"
            pointsxwa: 5
            id: 133
            xws_name: "trickshot"
            slot: "Talent"
            points: 4
        }
        {
            name: "Adv. Proton Torpedoes"
            pointsxwa: 7
            id: 134
            xws_name: "advprotontorpedoes"
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
            xws_name: "iontorpedoes"
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
            xws_name: "protontorpedoes"
            slot: "Torpedo"
            max_per_squad: 3
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
            xws_name: "dorsalturret"
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
            xws_name: "ioncannonturret"
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
            pointsxwa: 0
            id: 139
            xws_name: "os1arsenalloadout"
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
            pointsxwa: 0
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
            pointsxwa: 0
            id: 146
            xws_name: "andrasta"
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
            xws_name: "dauntless"
            slot: "Title"
            points: 0
            pointsxwa: 4
            unique: true
            faction: "Galactic Empire"
            ship: "VT-49 Decimator"
        }
        {
            name: "Ghost"
            pointsxwa: 0
            id: 148
            xws_name: "ghost"
            slot: "Title"
            unique: true
            points: 0
            faction: "Rebel Alliance"
            ship: "VCX-100 Light Freighter"
        }
        {
            name: "Havoc"
            pointsxwa: 0
            id: 149
            xws_name: "havoc"
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
            xws_name: "houndstooth"
            slot: "Title"
            points: 0
            pointsxwa: 6 
            unique: true
            faction: "Scum and Villainy"
            ship: "YV-666 Light Freighter"
        }
        {
            name: "IG-2000"
            pointsxwa: 0
            id: 151
            xws_name: "ig2000"
            slot: "Title"
            points: 0
            faction: "Scum and Villainy"
            ship: "Aggressor Assault Fighter"
        }
        {
            name: "Lando's Millennium Falcon"
            pointsxwa: 0
            id: 152
            xws_name: "landosmillenniumfalcon"
            slot: "Title"
            points: 0
            unique: true
            faction: "Scum and Villainy"
            ship: "Customized YT-1300 Light Freighter"
        }
        {
            name: "Marauder"
            pointsxwa: 0
            id: 153
            xws_name: "marauder"
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
            pointsxwa: 0
            id: 154
            xws_name: "millenniumfalcon"
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
            pointsxwa: 0
            id: 155
            xws_name: "misthunter"
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
            pointsxwa: 0
            id: 156
            xws_name: "moldycrow"
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
            pointsxwa: 0
            id: 157
            xws_name: "outrider"
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
            pointsxwa: 0
            id: 159
            xws_name: "punishingone"
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
            pointsxwa: 0
            id: 160
            xws_name: "shadowcaster"
            slot: "Title"
            points: 0
            unique: true
            faction: "Scum and Villainy"
            ship: "Lancer-Class Pursuit Craft"
        }
        {
            name: "Slave I"
            id: 161
            xws_name: "slavei"
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
            xws_name: "st321"
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
            xws_name: "virago"
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
            xws_name: "hullupgrade"
            slot: "Modification"
            points: 6
            pointsxwa: 9
            modifier_func: (stats) ->
                stats.hull += 1
        }
        {
            name: "Shield Upgrade"
            id: 165
            xws_name: "shieldupgrade"
            slot: "Modification"
            points: 8
            pointsxwa: 10
            modifier_func: (stats) ->
                stats.shields += 1
        }
        {
            name: "Stealth Device"
            pointsxwa: 8
            id: 166
            xws_name: "stealthdevice"
            slot: "Modification"
            points: 8
            charge: 1
            restrictionsxwa: [
                ["Base", "Medium", "Large"]
            ]
        }
        {
            name: "Phantom"
            pointsxwa: 0
            id: 167
            xws_name: "phantom"
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
            pointsxwa: 0
            id: 171
            xws_name: "blackone"
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
            pointsxwa: 2
            id: 172
            xws_name: "heroic"
            slot: "Talent"
            points: 2
            faction: "Resistance"
        }
        {
            name: "Rose Tico"
            pointsxwa: 9
            id: 173
            xws_name: "rosetico-crew"
            slot: "Crew"
            points: 9
            unique: true
            faction: "Resistance"
        }
        {
            name: "Finn"
            pointsxwa: 9
            id: 174
            xws_name: "finn-gunner"
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
            pointsxwa: 3
            id: 177
            xws_name: "targetingsynchronizer"
            slot: "Tech"
            points: 3
            restrictions: [
                ["Action", "Lock"]
            ]
        }
        {
            name: "Primed Thrusters"
            pointsxwa: 5
            id: 178
            xws_name: "primedthrusters"
            slot: "Tech"
            points: 6
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Kylo Ren"
            pointsxwa: 7
            id: 179
            xws_name: "kyloren-crew"
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
            xws_name: "generalhux"
            slot: "Crew"
            points: 3
            pointsxwa: 6
            unique: true
            faction: "First Order"
            restrictions: [
                ["Action", "Coordinate"]
            ]
        }
        {
            name: "Fanatical"
            pointsxwa: 2
            id: 181
            xws_name: "fanatical"
            slot: "Talent"
            points: 2
            faction: "First Order"
        }
        {
            name: "Special Forces Gunner"
            pointsxwa: 9
            id: 182
            xws_name: "specialforcesgunner"
            slot: "Gunner"
            points: 9
            faction: "First Order"
            ship: "TIE/sf Fighter"
        }
        {
            name: "Captain Phasma"
            pointsxwa: 5
            id: 183
            xws_name: "captainphasma-crew"
            slot: "Crew"
            unique: true
            points: 5
            faction: "First Order"
        }
        {
            name: "Supreme Leader Snoke"
            id: 184
            xws_name: "supremeleadersnoke"
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
            xws_name: "hyperspacetrackingdata"
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
            pointsxwa: 5
            id: 186
            xws_name: "advancedoptics"
            slot: "Tech"
            points: 5
        }
        {
            name: "Rey"
            id: 187
            xws_name: "rey-gunner"
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
            pointsxwa: 4
            id: 188
            xws_name: "chewbacca-crew-swz19"
            slot: "Crew"
            xwsaddon: "crew-swz19"
            points: 4
            charge: 2
            unique: true
            faction: "Resistance"
        }
        {
            name: "Paige Tico"
            pointsxwa: 6
            id: 189
            xws_name: "paigetico-gunner"
            slot: "Gunner"
            points: 6
            unique: true
            faction: "Resistance"
        }
        {
            name: "R2-HA"
            pointsxwa: 2
            id: 190
            xws_name: "r2ha"
            slot: "Astromech"
            points: 3
            unique: true
            faction: "Resistance"
        }
        {
            name: "C-3PO (Resistance)"
            pointsxwa: 7
            id: 191
            xws_name: "c3po-crew"
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
            pointsxwa: 3
            id: 192
            xws_name: "hansolo-crew"
            slot: "Crew"
            points: 3
            unique: true
            faction: "Resistance"
            modifier_func: (stats) ->
                stats.actions.push 'R-Evade' if 'R-Evade' not in stats.actions
        }
        {
            name: "Rey's Millennium Falcon"
            pointsxwa: 0
            id: 193
            xws_name: "reysmillenniumfalcon"
            slot: "Title"
            points: 0
            unique: true
            ship: "Scavenged YT-1300"
            faction: "Resistance"
        }
        {
            name: "Petty Officer Thanisson"
            id: 194
            xws_name: "pettyofficerthanisson-crew"
            slot: "Crew"
            points: 3
            pointsxwa: 4
            unique: true
            faction: "First Order"
        }
        {
            name: "BB-8"
            id: 195
            xws_name: "bb8-astromech"
            slot: "Astromech"
            points: 4
            pointsxwa: 5
            charge: 2
            unique: true
            faction: "Resistance"
        }
        {
            name: "BB Astromech"
            pointsxwa: 3
            id: 196
            xws_name: "bbastromech"
            slot: "Astromech"
            points: 4
            charge: 2
            faction: "Resistance"
        }
        {
            name: "M9-G8"
            id: 197
            xws_name: "m9g8"
            slot: "Astromech"
            points: 5
            pointsxwa: 7
            unique: true
            faction: "Resistance"
        }
        {
            name: "Ferrosphere Paint"
            id: 198
            xws_name: "ferrospherepaint"
            slot: "Tech"
            points: 3
            pointsxwa: 4
            faction: "Resistance"
        }
        {
            name: "Brilliant Evasion"
            pointsxwa: 2
            id: 199
            xws_name: "brilliantevasion"
            slot: "Force"
            points: 2
        }
        {
            name: "Calibrated Laser Targeting"
            pointsxwa: 0
            id: 200
            xws_name: "calibratedlasertargeting"
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
            pointsxwa: 1
            id: 202
            xws_name: "biohexacryptcodes"
            slot: "Tech"
            points: 1
            faction: "First Order"
            restrictions: [
                ["Action", "Lock"]
            ]
        }
        {
            name: "Predictive Shot"
            pointsxwa: 1
            id: 203
            xws_name: "predictiveshot"
            slot: "Force"
            points: 1
        }
        {
            name: "Hate"
            pointsxwa: 4
            id: 204
            xws_name: "hate"
            slot: "Force"
            points: 5
            restrictions: [
                ["Keyword", "Dark Side"]
            ]
        }
        {
            name: "R5-X3"
            pointsxwa: 4
            id: 205
            xws_name: "r5x3"
            unique: true
            slot: "Astromech"
            faction: "Resistance"
            charge: 2
            points: 5
        }
        {
            name: "Pattern Analyzer"
            pointsxwa: 5
            id: 206
            xws_name: "patternanalyzer"
            slot: "Tech"
            points: 5
        }
        {
            name: "Impervium Plating"
            pointsxwa: 2
            id: 207
            xws_name: "imperviumplating"
            ship: "Belbullab-22 Starfighter"
            charge: 2
            slot: "Modification"
            points: 2
        }
        {
            name: "Grappling Struts"
            pointsxwa: 0
            id: 208
            xws_name: "grapplingstruts"
            ship: "Vulture-class Droid Fighter"
            slot: "Configuration"
            points: 0
        }
        {
            name: "Energy-Shell Charges"
            id: 209
            xws_name: "energyshellcharges"
            faction: "Separatist Alliance"
            slot: "Missile"
            attack: 3
            range: """2-3"""
            rangebonus: true
            charge: 1
            points: 4
            pointsxwa: 3
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
            xws_name: "dedicated"
            faction: "Galactic Republic"
            slot: "Talent"
            points: 3
            pointsxwa: 2
            restrictions: [
                ["Keyword", "Clone"]
            ]
        }
        {
            name: "Synchronized Console"
            pointsxwa: 2
            id: 211
            xws_name: "synchronizedconsole"
            faction: "Galactic Republic"
            slot: "Modification"
            points: 2
            restrictions: [
                ["Action", "Lock"]
            ]
        }
        {
            name: "Battle Meditation"
            pointsxwa: 6
            id: 212
            xws_name: "battlemeditation"
            faction: "Galactic Republic"
            slot: "Force"
            points: 6
            modifier_func: (stats) ->
                stats.actions.push 'F-Coordinate' if 'F-Coordinate' not in stats.actions
        }
        {
            name: "R4-P Astromech"
            id: 213
            xws_name: "r4pastromech"
            faction: "Galactic Republic"
            slot: "Astromech"
            charge: 2
            points: 2
            pointsxwa: 3
        }
        {
            name: "R4-P17"
            pointsxwa: 4
            id: 214
            xws_name: "r4p17"
            unique: true
            faction: "Galactic Republic"
            slot: "Astromech"
            charge: 2
            points: 4
        }
        {
            name: "Spare Parts Canisters"
            pointsxwa: 3
            id: 215
            xws_name: "sparepartscanisters"
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
            pointsxwa: 0
            id: 216
            xws_name: "scimitar"
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
            xws_name: "chancellorpalpatine"
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
            pointsxwa: 12
            id: 218
            xws_name: "countdooku-crew"
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
            pointsxwa: 5
            id: 219
            xws_name: "generalgrievous-crew"
            unique: true
            slot: "Crew"
            charge: 1
            faction: "Separatist Alliance"
            points: 6
        }
        {
            name: "K2-B4"
            pointsxwa: 4
            id: 220
            xws_name: "k2b4"
            unique: true
            solitary: true
            slot: "Tactical Relay"
            faction: "Separatist Alliance"
            points: 4
        }
        {
            name: "DRK-1 Probe Droids"
            pointsxwa: 2
            id: 221
            xws_name: "drk1probedroids"
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
            xws_name: "kraken"
            unique: true
            slot: "Tactical Relay"
            solitary: true
            faction: "Separatist Alliance"
            points: 8
            pointsxwa: 7
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "TV-94"
            pointsxwa: 3
            id: 223
            xws_name: "tv94"
            unique: true
            solitary: true
            slot: "Tactical Relay"
            faction: "Separatist Alliance"
            points: 3
        }
        {
            name: "Discord Missiles"
            id: 224
            xws_name: "discordmissiles"
            slot: "Missile"
            faction: "Separatist Alliance"
            charge: 1
            max_per_squad: 3
            points: 2
            pointsxwa: 2
            applies_condition: '''Buzz Droid Swarm'''.canonicalize()
        }
        {
            name: "Clone Commander Cody"
            pointsxwa: 4
            id: 225
            xws_name: "clonecommandercody"
            unique: true
            slot: "Gunner"
            faction: "Galactic Republic"
            points: 4
        }
        {
            name: "R4-P44"
            pointsxwa: 2
            id: 226
            xws_name: "r4p44"
            unique: true
            faction: "Galactic Republic"
            slot: "Astromech"
            points: 2
        }
        {
            name: "Seventh Fleet Gunner"
            id: 227
            xws_name: "seventhfleetgunner"
            charge: 1
            slot: "Gunner"
            faction: "Galactic Republic"
            points: 13
            pointsxwa: 9
        }
        {
            name: "Treacherous"
            id: 228
            xws_name: "treacherous"
            charge: 1
            slot: "Talent"
            faction: "Separatist Alliance"
            points: 3
            pointsxwa: 4
        }
        {
            name: "Soulless One"
            id: 229
            xws_name: "soullessone"
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
            pointsxwa: 5
            id: 230
            xws_name: "ga97"
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
            pointsxwa: 8
            id: 231
            xws_name: "kaydelconnix"
            slot: "Crew"
            points: 8
            faction: "Resistance"
            unique: true
        }
        {
            name: "Autoblasters"
            pointsxwa: 7
            id: 232
            xws_name: "autoblasters"
            max_per_squad: 3
            slot: "Cannon"
            points: 7
            attack: 2
            range: """1-2"""
        }
        {
            name: "R2-C4"
            pointsxwa: 3
            id: 233
            xws_name: "r2c4"
            unique: true
            slot: "Astromech"
            points: 3
            faction: "Galactic Republic"
        }
        {
            name: "Plasma Torpedoes"
            id: 234
            xws_name: "plasmatorpedoes"
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
            pointsxwa: 8
            id: 235
            xws_name: "electroprotonbomb"
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
            pointsxwa: 1
            id: 236
            xws_name: "delayedfuses"
            slot: "Modification"
            points: 1
        }
        {
            name: "Landing Struts"
            pointsxwa: 0
            id: 237
            xws_name: "landingstruts"
            ship: "Hyena-class Droid Bomber"
            slot: "Configuration"
            points: 0
        }
        {
            name: "Diamond-Boron Missiles"
            pointsxwa: 5
            id: 238
            xws_name: "diamondboronmissiles"
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
            pointsxwa: 5
            id: 239
            xws_name: "ta175"
            unique: true
            slot: "Tactical Relay"
            solitary: true
            faction: "Separatist Alliance"
            points: 5
        }
        {
            name: "Passive Sensors"
            pointsxwa: 5
            id: 240
            xws_name: "passivesensors"
            slot: "Sensor"
            charge: 1
            recurring: 1
            points: 5
        }
        {
            name: "R2-A6"
            pointsxwa: 5
            id: 241
            xws_name: "r2a6"
            unique: true
            slot: "Astromech"
            faction: "Galactic Republic"
            points: 6
        }
        {
            name: "Amilyn Holdo"
            pointsxwa: 8
            id: 242
            xws_name: "amilynholdo"
            unique: true
            slot: "Crew"
            faction: "Resistance"
            points: 8
        }
        {
            name: "Larma D'Acy"
            pointsxwa: 2
            id: 243
            xws_name: "larmadacy"
            unique: true
            slot: "Crew"
            faction: "Resistance"
            points: 4
        }
        {
            name: "Leia Organa (Resistance)"
            id: 244
            xws_name: "leiaorgana-resistance"
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
            pointsxwa: 6
            id: 245
            xws_name: "korrsella"
            unique: true
            slot: "Crew"
            faction: "Resistance"
            points: 6
        }
        {
            name: "PZ-4CO"
            pointsxwa: 4
            id: 246
            xws_name: "pz4co"
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
            xws_name: "angleddeflectors"
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
            pointsxwa: 10
            id: 248
            xws_name: "ensnare"
            slot: "Talent"
            max_per_squad: 2
            points: 10
            ship: "Nantex-Class Starfighter"
        }
        {
            name: "Targeting Computer"
            pointsxwa: 1
            id: 249
            xws_name: "targetingcomputer"
            slot: "Modification"
            points: 1
            modifier_func: (stats) ->
                stats.actions.push 'Lock' if 'Lock' not in stats.actions
        }
        {
            name: "Precognitive Reflexes"
            pointsxwa: 8
            id: 250
            xws_name: "precognitivereflexes"
            slot: "Force"
            points: 15
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Foresight"
            pointsxwa: 6
            slot: "Force"
            points: 6
            id: 251
            xws_name: "foresight"
            attackbull: 2
            range: """1-3"""
            rangebonus: true
        }
        {
            name: "C1-10P"
            id: 252
            xws_name: "c110p"
            unique: true
            slot: "Astromech"
            charge: 2
            points: 8
            pointsxwa: 10
            faction: "Galactic Republic"
        }
        {
            name: "Ahsoka Tano"
            pointsxwa: 11
            id: 253
            xws_name: "ahsokatano-gunner"
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
            pointsxwa: 6
            id: 254
            xws_name: "c3po-republic"
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
            xws_name: "graviticdeflection"
            slot: "Talent"
            points: 4
            pointsxwa: 3
            ship: "Nantex-Class Starfighter"
        }
        {
            name: "Snap Shot"
            id: 256
            xws_name: "snapshot"
            slot: "Talent"
            points: 9
            pointsxwa: 7
            attack: 2
            range: """2"""
            rangebonus: true
        }
        {
            name: "Agent of the Empire"
            pointsxwa: 4
            id: 257
            xws_name: "agentoftheempire"
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
            pointsxwa: 4
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
            pointsxwa: 2
            id: 259
            slot: "Command"
            points: 2
            restrictions: [
                ["Base", "Small"]
            ]
        }
        {
            name: "Dreadnought Hunter"
            pointsxwa: 3
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
            pointsxwa: 6
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
            pointsxwa: 4
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
            pointsxwa: 8
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
            pointsxwa: 4
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
            pointsxwa: 3
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
            pointsxwa: 8
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
            pointsxwa: 6
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
            pointsxwa: 6
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
            pointsxwa: 5
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
            pointsxwa: 5
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
            pointsxwa: 1
            id: 271
            slot: "Hardpoint"
            points: 1
        }
        {
            name: "Point-Defense Battery"
            pointsxwa: 9
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
            pointsxwa: 10
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
            pointsxwa: 4
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
            pointsxwa: 6
            id: 275
            slot: "Team"
            points: 6
            modifier_func: (stats) ->
                stats.actions.push '*Lock'
                stats.actions.push '> Calculate'
        }
        {
            name: "Comms Team"
            pointsxwa: 7
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
            pointsxwa: 3
            id: 277
            slot: "Team"
            points: 8
            modifier_func: (stats) ->
                stats.actions.push '*Reinforce'
                stats.actions.push '> Calculate'
        }
        {
            name: "Gunnery Specialists"
            pointsxwa: 5
            id: 278
            slot: "Team"
            points: 5
            modifier_func: (stats) ->
                stats.actions.push '*Rotate Arc'
                stats.actions.push '> Calculate'
        }
        {
            name: "IG-RM Droids"
            pointsxwa: 2
            id: 279
            slot: "Team"
            faction: "Scum and Villainy"
            points: 2
            modifier_func: (stats) ->
                stats.actions.push 'Calculate' if 'Calculate' not in stats.actions
        }
        {
            name: "Ordnance Team"
            pointsxwa: 2
            id: 280
            slot: "Team"
            points: 2
            modifier_func: (stats) ->
                stats.actions.push '*Reload'
                stats.actions.push '> Calculate'
        }
        {
            name: "Sensor Experts"
            pointsxwa: 6
            id: 281
            slot: "Team"
            points: 6
            modifier_func: (stats) ->
                stats.actions.push '*Lock'
                stats.actions.push '> Calculate'
        }
        {
            name: "Adaptive Shields"
            pointsxwa: 5
            id: 282
            slot: "Cargo"
            points: 5
        }
        {
            name: "Boosted Scanners"
            pointsxwa: 7
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
            pointsxwa: 3
            id: 285
            slot: "Cargo"
            points: 3
            charge: 3
        }
        {
            name: "Optimized Power Core"
            pointsxwa: 6
            id: 286
            slot: "Cargo"
            points: 6
        }
        {
            name: "Quick-Release Locks"
            pointsxwa: 5
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
            pointsxwa: 8
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
            pointsxwa: 5
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
            pointsxwa: 5
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
            pointsxwa: 5
            id: 294
            slot: "Title"
            unique: true
            ship: "GR-75 Medium Transport"
            faction: "Rebel Alliance"
            points: 5
        }
        {
            name: "Luminous"
            pointsxwa: 12
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
            pointsxwa: 3
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
            pointsxwa: 5
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
            pointsxwa: 3
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
            pointsxwa: 4
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
            pointsxwa: 6
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
            pointsxwa: 8
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
            pointsxwa: 7
            id: 302
            slot: "Title"
            unique: true
            ship: "Gozanti-class Cruiser"
            faction: "Galactic Empire"
            points: 7
        }
        {
            name: "Suppressor"
            pointsxwa: 6
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
            pointsxwa: 7
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
            pointsxwa: 4
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
            pointsxwa: 8
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
            pointsxwa: 7
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
            pointsxwa: 6
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
            pointsxwa: 4
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
            pointsxwa: 2
            id: 310
            xws_name: "coaxiumhyperfuel"
            slot: "Illicit"
            points: 4
            restrictions: [
                ["Action", "Slam"]
            ]
        }
        {
            name: "Mag-Pulse Warheads"
            id: 311
            xws_name: "magpulsewarheads"
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
            pointsxwa: 5
            id: 312
            xws_name: "r1j5-astromech"
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
            xws_name: "k2so-crew"
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
            pointsxwa: 0
            id: 315
            xws_name: "kazsfireball"
            slot: "Title"
            ship: "Fireball"
            faction: "Resistance"
            unique: true
            points: 0
        }
        {
            name: "Cluster Mines"
            pointsxwa: 6
            id: 316
            xws_name: "clustermines"
            slot: "Device"
            charge: 1
            points: 7
            applies_condition: 'Cluster Mine'.canonicalize()
        }
        {
            name: "Ion Bombs"
            pointsxwa: 4
            id: 317
            xws_name: "ionbombs"
            slot: "Device"
            points: 4
            charge: 2
            applies_condition: 'Ion Bomb'.canonicalize()
        }
        {
            name: "Deuterium Power Cells"
            id: 318
            xws_name: "deuteriumpowercells"
            slot: "Tech"
            points: 6
            pointsxwa: 7
            charge: 2
            faction: "First Order"
            restrictions: [
                ["Slot", "Modification"]
            ]
            also_occupies_upgrades: [ "Modification" ]
        }
        {
            name: "Proud Tradition"
            pointsxwa: 2
            id: 319
            xws_name: "proudtradition"
            slot: "Talent"
            faction: "First Order"
            points: 2
        }
        {
            name: "Commander Pyre"
            id: 320
            xws_name: "commanderpyre"
            slot: "Crew"
            unique: true
            faction: "First Order"
            points: 5
            pointsxwa: 10
        }
        {
            name: "Clone Captain Rex"
            pointsxwa: 1
            id: 321
            xws_name: "clonecaptainrex"
            slot: "Gunner"
            unique: true
            faction: "Galactic Republic"
            points: 2
        }
        {
            name: "Yoda"
            pointsxwa: 12
            id: 322
            xws_name: "yoda-crew"
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
            pointsxwa: 0
            id: 323
            xws_name: "repulsorliftstabilizers"
            slot: "Configuration"
            ship: "HMP Droid Gunship"
            faction: "Separatist Alliance"
            points: 0
        }
        {
            name: "Agent Terex"
            pointsxwa: 7
            id: 324
            xws_name: "agentterex-crew"
            slot: "Crew"
            unique: true
            faction: "First Order"
            points: 7
        }
        {
            name: "Plo Koon"
            pointsxwa: 9
            id: 325
            xws_name: "plokoon-crew"
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
            pointsxwa: 3
            id: 326
            xws_name: "multimissilepods"
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
            pointsxwa: 8
            id: 327
            xws_name: "kitfisto-crew"
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
            pointsxwa: 12
            id: 328
            xws_name: "aaylasecura-crew"
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
            pointsxwa: 0
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
            pointsxwa: 2
            id: 330
            xws_name: "ionlimiteroverride"
            slot: "Talent"
            points: 2
            restrictions: [
                ["Keyword", "TIE"]
            ]
        }
        {
            name: "Marg Sabl Closure"
            pointsxwa: 1
            id: 331
            xws_name: "margsablclosure"
            slot: "Talent"
            points: 1
            restrictions: [
                ["Base", "Small", "Medium"]
            ]
        }
        {
            name: "XX-23 S-Thread Tracers"
            pointsxwa: 4
            id: 332
            xws_name: "xx23sthreadtracers"
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
            pointsxwa: 7
            id: 333
            xws_name: "hondoohnaka-crew"
            unique: true
            slot: "Crew"
            points: 8
        }
        {
            name: "Boba Fett (Separatist)"
            id: 334
            xws_name: "bobafett-gunner"
            slot: "Gunner"
            unique: true
            points: 2
            pointsxwa: 4
            faction: ["Scum and Villainy", "Separatist Alliance"]
        }
        {
            name: "Jango Fett"
            pointsxwa: 3
            id: 335
            xws_name: "jangofett-crew"
            slot: "Crew"
            unique: true
            faction: ["Scum and Villainy", "Separatist Alliance"]
            points: 3
        }
        {
            name: "Zam Wesell"
            id: 336
            slot: "Crew"
            xws_name: "zamwesell-crew"
            unique: true
            charge: 2
            faction: ["Scum and Villainy", "Separatist Alliance"]
            points: 11
            pointsxwa: 9
            applies_condition: ['''You'd Better Mean Business'''.canonicalize(),'You Should Thank Me'.canonicalize()]
        }
        {
            name: 'Alpha-3B "Besh"'
            pointsxwa: 1
            id: 337
            xws_name: "alpha3bbesh"
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
            xws_name: "precisionionengines"
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
            pointsxwa: 6
            id: 339
            xws_name: "thermaldetonators"
            slot: "Device"
            charge: 4
            points: 5
            applies_condition: 'Thermal Detonator'.canonicalize()
        }
        {
            name: "R2-D2 (Republic)"
            pointsxwa: 8
            id: 340
            xws_name: "r2d2-republic"
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
            xws_name: "extrememaneuvers"
            points: 8
            pointsxwa: 3
            slot: "Force"
            restrictions: [
                ["Action", "Boost"]
                ["Base", "Small"]
            ]
        }
        {
            name: "Patience"
            pointsxwa: 2
            id: 342
            xws_name: "patience"
            slot: "Force"
            points: 2
            restrictions: [
                ["Keyword", "Light Side"]
            ]
        }
        {
            name: "Deadeye Shot"
            pointsxwa: 1
            id: 343
            xws_name: "deadeyeshot"
            slot: "Talent"
            points: 1
            restrictions: [
                ["Base", "Small", "Medium"]
            ]
        }
        {
            name: "Starbird Slash"
            pointsxwa: 1
            id: 344
            xws_name: "starbirdslash"
            slot: "Talent"
            points: 1
            restrictions: [
                ["Keyword", "A-wing"]
            ]
        }
        {
            name: "Overdrive Thruster"
            pointsxwa: 5
            id: 345
            xws_name: "overdrivethruster"
            ship: "T-70 X-wing"
            unique: true
            slot: "Modification"
            points: 5
        }
        {
            name: '"Fives"'
            pointsxwa: 3
            id: 346
            xws_name: "fives"
            unique: true
            faction: "Galactic Republic"
            slot: "Crew"
            points: 3
        }
        {
            name: "Commander Malarus"
            pointsxwa: 2
            id: 347
            xws_name: "commandermalarus-crew"
            unique: true
            faction: "First Order"
            slot: "Crew"
            points: 2
        }
        {
            name: "Automated Target Priority"
            pointsxwa: 1
            id: 348
            xws_name: "automatedtargetpriority"
            slot: "Tech"
            points: 1
            restrictions: [
                ["InitiativeLessThan", 4]
            ]
        }
        {
            name: "Sensor Buoy Suite"
            pointsxwa: 4
            id: 349
            xws_name: "sensorbuoysuite"
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
            pointsxwa: 6
            id: 350
            xws_name: "suppressivegunner"
            max_per_squad: 2
            slot: "Gunner"
            points: 7
        }
        {
            name: "Ghost Company"
            pointsxwa: 5
            id: 351
            xws_name: "ghostcompany"
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
            pointsxwa: 4
            id: 352
            xws_name: "wolfpack"
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
            pointsxwa: 3
            id: 353
            xws_name: "kalani"
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
            pointsxwa: 8
            id: 354
            xws_name: "syncedlasercannons"
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
            xws_name: "concussionbombs"
            slot: "Device"
            charge: 3
            points: 4
            pointsxwa: 5
            applies_condition: 'Concussion Bomb'.canonicalize()
        }
        {
            name: "Target-Assist MGK-300"
            pointsxwa: 0
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
            xws_name: "backwardstailslide"
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
            xws_name: "r2d2-resistance"
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
            xws_name: "r6d8"
            points: 4
            pointsxwa: 5
            unique: true
            slot: "Astromech"
            faction: "Resistance"
        }
        {
            name: "Underslung Blaster Cannon"
            pointsxwa: 2
            xws_name: "underslungblastercannon"
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
            pointsxwa: 4
            id: 361
            xws_name: "jedicommander"
            points: 4
            ship: ["Eta-2 Actis","Delta-7 Aethersprite"]
            slot: "Command"
        }
        {
            name: "Syliure-31 Hyperdrive"
            id: 362
            xws_name: "syliure31hyperdrive"
            points: 3
            slot: "Hyperdrive"
            ship: "Syliure-class Hyperspace Ring"
        }
        {
            name: 'Alpha-3E "Esk"'
            pointsxwa: 0
            id: 363
            xws_name: "alpha3eesk"
            slot: "Configuration"
            ship: "Nimbus-class V-wing"
            points: 0
            charge: 2
            recurring: 1
        }
        {
            name: "R7-A7"
            pointsxwa: 5
            id: 364
            xws_name: "r7a7"
            points: 5
            unique: true
            charge: 3
            slot: "Astromech"
            faction: "Galactic Republic"
        }
        {
            name: "Q7 Astromech"
            pointsxwa: 1
            id: 365
            xws_name: "q7astromech"
            points: 1
            slot: "Astromech"
            faction: "Galactic Republic"
        }
        {
            name: "Intercept Booster"
            pointsxwa: 0
            id: 366
            xws_name: "interceptbooster"
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
            pointsxwa: 1
            id: 367
            xws_name: "independentcalculations"
            points: 1
            standardized: true
            slot: "Modification"
            chassis: "Independent Calculations"
            restrictions: [
                ["Keyword", "Networked Calculations"]
            ]
        }
        {
            name: "Weapons Systems Officer"
            pointsxwa: 5
            id: 368
            xws_name: "weaponssystemsofficer"
            points: 5
            slot: "Gunner"
        }
        {
            name: "False Transponder Codes"
            pointsxwa: 5
            id: 369
            xws_name: "falsetranspondercodes"
            max_per_squad: 3
            points: 5
            charge: 1
            slot: "Illicit"
        }
        {
            name: "Slave I (Separatist)"
            pointsxwa: 0
            xwsaddon: "swz82"
            id: 370
            xws_name: "slavei-swz82"
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
            pointsxwa: 0
            id: 371
            xws: "vectoredcannonsrz1"
            xws_name: "vectoredcannonsrz1"
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
            pointsxwa: 0
            id: 372
            xws_name: "b6bladewiingprototype"
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
            pointsxwa: 0
            id: 373
            xws_name: "tiedefenderelite"
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
            pointsxwa: 0
            id: 374
            xws_name: "sensitivecontrols"
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
            pointsxwa: 2
            id: 375
            xws_name: "cutthroat"
            points: 2
            slot: "Talent"
            faction: "Scum and Villainy"
        }
        {
            name: "Tierfon Belly Run"
            pointsxwa: 1
            id: 376
            xws_name: "tierfonbellyrun"
            points: 1
            slot: "Talent"
            restrictions: [
                ["Keyword", "Y-wing"]
            ]
        }
        {
            name: "B6 Blade Wing Prototype (Epic)"
            pointsxwa: 4
            id: 377
            xws_name: "b6bladewingprototype-command"
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
            pointsxwa: 1
            id: 378
            xws_name: "hopeful"
            points: 1
            slot: "Talent"
            faction: "Rebel Alliance"
        }
        {
            name: "Sabine Wren (Gunner)"
            pointsxwa: 1
            id: 379
            xws_name: "sabinewren-gunner"
            points: 2
            unique: true
            slot: "Gunner"
            faction: "Rebel Alliance"
        }
        {
            name: "Phoenix Squadron"
            pointsxwa: 4
            id: 380
            points: 4
            unique: true
            slot: "Command"
            faction: "Rebel Alliance"
            ship: "VCX-100 Light Freighter"
        }
        {
            name: "Disciplined"
            pointsxwa: 2
            id: 381
            xws_name: "disciplined"
            points: 2
            slot: "Talent"
            faction: "Galactic Empire"
        }
        {
            name: "Skystrike Academy Class"
            pointsxwa: 3
            id: 382
            points: 3
            max_per_squad: 2
            slot: "Command"
            faction: "Galactic Empire"
            ship: ["TIE/ln Fighter", "TIE/in Interceptor"]
        }
        {
            name: "Shadow Wing"
            pointsxwa: 4
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
            pointsxwa: 1
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
            xws_name: "gamutkey-crew"
            unique: true
            points: 8
            pointsxwa: 5
            slot: "Crew"
            charge: 2
            recurring: 1
            faction: "Scum and Villainy"
        }
        {
            name: "Interloper Turn"
            pointsxwa: 1
            id: 387
            xws_name: "interloperturn"
            points: 1
            slot: "Talent"
            recurring: 1
            ship: "TIE/d Defender"
        }
        {
            name: "Protectorate Gleb"
            pointsxwa: 7
            id: 388
            xws_name: "protectorategleb"
            unique: true
            points: 6
            slot: "Crew"
            faction: ["Galactic Empire", "First Order", "Scum and Villainy"]
            modifier_func: (stats) ->
                stats.actions.push 'R-Coordinate' if 'R-Coordinate' not in stats.actions
        }
        {
            name: "R4-B11"
            pointsxwa: 3
            id: 389
            xws_name: "r4b11"
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
            pointsxwa: 4
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
            pointsxwa: 6
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
            pointsxwa: 4
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
            pointsxwa: 0
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
            pointsxwa: 4
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
            pointsxwa: 6
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
            pointsxwa: 10
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
            pointsxwa: 5
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
            pointsxwa: 2
            id: 401
            slot: "Team"
            points: 2
        }
        {
            name: "Corsair Crew"
            pointsxwa: 5
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
            pointsxwa: 3
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
            pointsxwa: 5
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
            pointsxwa: 4
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
            pointsxwa: 8
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
            pointsxwa: 4
            id: 408
            xws_name: "l4er5"
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
            pointsxwa: 2
            id: 410
            xws_name: "watchfulastromech"
            slot: "Astromech"
            points: 2
        }
        {
            name: "Overtuned Modulators"
            pointsxwa: 3
            id: 411
            xws_name: "overtunedmodulators"
            slot: "Illicit"
            points: 3
            charge: 1
        }
        {
            name: "DT-798"
            pointsxwa: 3
            id: 412
            xws_name: "dt798-gunner"
            unique: true
            faction: "First Order"
            slot: "Gunner"
            points: 3
        }
        {
            name: "Enhanced Jamming Suite"
            pointsxwa: 0
            id: 413
            xws_name: "enhancedjammingsuite"
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
            pointsxwa: 2
            id: 414
            xws_name: "firstorderordnancetech"
            faction: "First Order"
            slot: "Gunner"
            points: 3
            modifier_func: (stats) ->
                stats.actions.push '*Reload'
                stats.actions.push '> Lock'
        }
        {
            name: "Sensor Scramblers"
            pointsxwa: 1
            id: 415
            xws_name: "sensorscramblers"
            ship: ["TIE/vn Silencer", "TIE/wi Whisper Modified Interceptor"]
            slot: "Tech"
            points: 1
        }
        {
            name: "Babu Frik"
            pointsxwa: 5
            unique: true
            id: 416
            xws_name: "babufrik"
            faction: ["Scum and Villainy", "Resistance"]
            slot: "Illicit"
            points: 5
            charge: 3
        }
        {
            name: "Compassion"
            pointsxwa: 1
            id: 417
            xws_name: "compassion"
            points: 1
            slot: "Force"
            restrictions: [
                ["Keyword", "Light Side"]
            ]
        }
        {
            name: "Malice"
            pointsxwa: 5
            id: 418
            xws_name: "malice"
            points: 4
            slot: "Force"
            restrictions: [
                ["Keyword", "Dark Side"]
            ]
        }
        {
            name: "Shattering Shot"
            pointsxwa: 3
            id: 419
            xws_name: "shatteringshot"
            points: 3
            slot: "Force"
        }
        {
            name: "Electro-Chaff Missiles"
            id: 420
            xws_name: "electrochaffmissiles"
            points: 9
            pointsxwa: 10
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
            pointsxwa: 1
            id: 421
            xws_name: "feedbackping"
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
            pointsxwa: 1
            id: 423
            xws_name: "clantraining"
            points: 1
            slot: "Talent"
            charge: 1
            restrictions: [
                ["Keyword", "Mandalorian"]
            ]
        }
        {
            name: "Ahsoka Tano (Crew)"
            pointsxwa: 10
            id: 424
            xws_name: "ahsokatano-crew"
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
            pointsxwa: 6
            xws: "bokatankryze"
            id: 425
            xws_name: "bokatankryze-crew"
            points: 6
            slot: "Crew"
            unique: true
            faction: ["Galactic Republic", "Separatist Alliance"]
        }
        {
            name: "Bo-Katan Kryze (Rebel/Scum)"
            pointsxwa: 4
            xwsaddon: "rebel-scum"
            id: 426
            xws_name: "bokatankryze-rebel-scum"
            points: 4
            slot: "Crew"
            unique: true
            faction: ["Rebel Alliance", "Scum and Villainy"]
        }
        {
            name: "Captain Hark"
            pointsxwa: 3
            id: 427
            xws_name: "captainhark-crew"
            points: 3
            charge: 2
            slot: "Crew"
            faction: "Galactic Empire"
            unique: true
        }
        {
            name: "Fenn Rau"
            pointsxwa: 7
            id: 428
            xws_name: "fennrau-crew"
            points: 7
            slot: "Crew"
            unique: true
            faction: ["Rebel Alliance", "Scum and Villainy"]
        }
        {
            name: "Gar Saxon"
            pointsxwa: 5
            id: 429
            xws_name: "garsaxon-crew"
            points: 6
            slot: "Crew"
            faction: "Galactic Empire"
            unique: true
        }
        {
            name: "Korkie Kryze"
            pointsxwa: 5
            id: 430
            xws_name: "korkiekryze"
            points: 5
            slot: "Crew"
            faction: "Galactic Republic"
            unique: true
        }
        {
            name: "Obi-Wan Kenobi"
            pointsxwa: 11
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
            xws_name: "previzsla-crew"
            points: 9
            pointsxwa: 7
            slot: "Crew"
            faction: ["Scum and Villainy", "Separatist Alliance"]
            unique: true
            modifier_func: (stats) ->
                stats.actions.push 'Coordinate' if 'Coordinate' not in stats.actions
        }
        {
            name: "Prime Minister Almec"
            pointsxwa: 7
            id: 433
            xws_name: "primeministeralmec"
            points: 7
            slot: "Crew"
            unique: true
            faction: ["Galactic Republic", "Scum and Villainy"]
        }
        {
            name: "Rook Kast"
            pointsxwa: 8
            id: 434
            xws_name: "rookkast-crew"
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
            xws_name: "satinekryze"
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
            pointsxwa: 10
            id: 436
            xws_name: "savageopress"
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
            pointsxwa: 7
            id: 437
            xws_name: "talmerrik"
            points: 7
            slot: "Crew"
            unique: true
            faction: "Separatist Alliance"
            applies_condition: '''False Friend'''.canonicalize()
        }
        {
            name: "Tristan Wren"
            pointsxwa: 1
            id: 438
            xws_name: "tristanwren"
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
            xws_name: "ursawren"
            points: 6
            slot: "Crew"
            pointsxwa: 7
            unique: true
            faction: "Rebel Alliance"
        }
        {
            name: "Maul (Mandalore)"
            pointsxwa: 10
            id: 440
            xws_name: "maul-crew"
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
            pointsxwa: 6
            id: 441
            xws_name: "garsaxon-gunner"
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
            pointsxwa: 6
            id: 442
            xws_name: "tibersaxon"
            points: 6
            charge: 2
            recurring: 1
            slot: "Gunner"
            faction: "Galactic Empire"
            unique: true
        }
        {
            name: "Ursa Wren (Gunner)"
            pointsxwa: 3
            id: 443
            xws_name: "ursawren-gunner"
            points: 4
            slot: "Gunner"
            unique: true
            faction: ["Galactic Republic", "Separatist Alliance"]
        }
        {
            name: "Blazer Bomb"
            pointsxwa: 4
            id: 444
            xws_name: "blazerbomb"
            points: 5
            charge: 1
            slot: "Device"
            applies_condition: '''Blazer Bomb'''.canonicalize()
        }
        {
            name: "Beskar Reinforced Plating"
            id: 445
            xws_name: "beskarreinforcedplating"
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
            pointsxwa: 3
            id: 446
            xws_name: "mandalorianoptics"
            points: 3
            slot: "Modification"
            charge: 2
            restrictions: [
                ["Keyword", "Mandalorian"]
            ]
        }
        {
            name: "Gauntlet"
            pointsxwa: 0
            id: 447
            xws_name: "gauntlet"
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
            pointsxwa: 0
            id: 448
            xws_name: "nightbrother"
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
            pointsxwa: 8
            id: 450
            xws_name: "clanwrencommandos"
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
            pointsxwa: 0
            id: 451
            xws_name: "razorcrest"
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
            pointsxwa: 3
            id: 452
            xws_name: "themandalorian-crew"
            points: 2
            unique: true
            slot: "Crew"
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.actions.push 'Reinforce'
        }
        {
            name: "The Child"
            pointsxwa: 7
            id: 453
            xws_name: "thechild"
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
            pointsxwa: 3
            id: 454
            xws_name: "trackingfob"
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
            xws_name: "notorious"
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
            xws_name: "enduring"
            points: 5
            pointsxwa: 3
            slot: "Talent"
        }
        {
            name: "IG-11"
            pointsxwa: 4
            id: 457
            xws_name: "ig11"
            points: 6
            slot: "Crew"
            unique: true
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.actions.push 'Calculate'
        }
        {
            name: "Greef Karga"
            pointsxwa: 5
            id: 458
            xws_name: "greefkarga"
            points: 6
            slot: "Crew"
            unique: true
            faction: "Scum and Villainy"
            modifier_func: (stats) ->
                stats.actions.push 'R-Coordinate'
        }
        {
            name: "Kuiil"
            pointsxwa: 4
            id: 459
            xws_name: "kuiil"
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
            pointsxwa: 2
            id: 460
            xws_name: "pelimotto"
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
            pointsxwa: 3
            id: 461
            xws_name: "migsmayfeld"
            points: 4
            slot: "Gunner"
            unique: true
            faction: ["Scum and Villainy","Galactic Empire"]
        }
        {
            name: "Burnout Thrusters"
            pointsxwa: 5
            id: 462
            points: 6
            xws_name: "burnoutthrusters"
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
            pointsxwa: 1
            id: 463
            xws_name: "hotshottailblaster"
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
            pointsxwa: 0
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
            xws_name: "dropseatbay"
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
            pointsxwa: 8
            id: 466
            xws_name: "mandaloriansupercommandos"
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
            pointsxwa: 8
            id: 467
            xws_name: "imperialsupercommandos"
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
            pointsxwa: 8
            id: 468
            xws_name: "niteowlcommandos"
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
            pointsxwa: 8
            id: 469
            xws_name: "deathwatchcommandos"
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
            xws_name: "protoncannons"
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
            xws_name: "homingtorpedoes"
            max_per_squad: 2
            points: 5
            pointsxwa: 4
            attack: 4
            range: """1-2"""
            rangebonus: true
            charge: 2
        }
        {
            name: "Xanadu Blood"
            pointsxwa: 0
            id: 472
            xws_name: "xanadublood"
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
