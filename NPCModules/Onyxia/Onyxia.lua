local ThreatLib = LibStub and LibStub("ThreatClassic-1.0", true)
if not ThreatLib then return end

local ONYXIA_ID = 6109
local ONYXIA_FIREBALL_SPELL = 18392


ThreatLib:GetModule("NPCCore"):RegisterModule(
    ONYXIA_ID, 
    function(Onyxia)
        function Onyxia:Init()
            self:RegisterCombatant(ONYXIA_ID, true)
            self:RegisterSpellHandler("SPELL_DAMAGE", self.Fireball, ONYXIA_FIREBALL_SPELL, ONYXIA_FIREBALL_SPELL)
        end

        function Onyxia:Fireball()
            self:WipeRaidThreatOnMob(ONYXIA_ID)
        end
    end
)