local ThreatLib = LibStub and LibStub("ThreatClassic-1.0", true)
if not ThreatLib then return end

local RAGNAROS_ID = 11502
local WRATH_OF_RAGNAROS_ID = 20566

ThreatLib:GetModule("NPCCore"):RegisterModule(RAGNAROS_ID, function(Ragnaros)
	function Ragnaros:Init()
		self:RegisterCombatant(RAGNAROS_ID, true)
		self:RegisterSpellHandler("SPELL_CAST_SUCCESS", self.WrathOfRagnaros, WRATH_OF_RAGNAROS_ID)
	end

	function Ragnaros:WrathOfRagnaros()
		self:WipeRaidThreatOnMob(RAGNAROS_ID)
	end
end)
