-- Rewrite
TOOL.Category = "C_GM13B_GUI_DEV"
TOOL.Name = "#tool.spawn_dolls.name"
TOOL.Command = nil
TOOL.ConfigName = ""
TOOL.ClientConVar[ "type" ] = "1"

TOOL.Information = {
	{ name = "left" }--,
--	{ name = "right" },
--	{ name = "reload" }
}

if CLIENT then
	language.Add("tool.spawn_dolls.name", "Spawn Dolls")
	language.Add("tool.spawn_dolls.desc", "Work In Progress!")
	language.Add("tool.spawn_dolls.left", "left")
--    language.Add("tool.spawn_dolls.right", "right")
--	language.Add("tool.spawn_dolls.type", "Type")

	Doll_Type = CreateClientConVar("doll_type", "1", false, true, "Sets the type of doll to use by the tool.", 1, 7)
end

function TOOL:Reload(trace)
end

local function spawn_doll01(pos)
	if SERVER then
		local Types_tbl = {
			["0"] = {
				["Model"] = "models/props_c17/doll01.mdl",
				["Finalpos"] = "2284.38, 3557.02, -120.69"
			}
		}
		local Type = Types_tbl[tostring(Doll_Type)]
			local Type_Model = Type["Model"]
			local  Type_FinalPos = Type["Finalpos"]
		local pos2 = Vector(math.Round(pos.x, 2), math.Round(pos.y, 2), math.Round(pos.z, 2))
		local convertedProp = ents.Create("prop_physics")
		convertedProp:SetName("converted_prop_gm13_" .. Type_Model)
		convertedProp:SetNWBool("ritualprop", true)
		convertedProp:SetModel(Type_Model)
		convertedProp:SetPos(pos2 + Vector(0,0,10))
		convertedProp:SetAngles(Angle(0,0,0))
		convertedProp.gm13_final_pos = Vector(Type_FinalPos)
		convertedProp:Spawn()
		convertedProp:PhysicsInit(SOLID_VPHYSICS)
		convertedProp:SetMoveType(MOVETYPE_VPHYSICS)
		convertedProp:SetSolid(SOLID_VPHYSICS)
		local physObj = convertedProp:GetPhysicsObject()
		if IsValid(physObj) then
			physObj:Wake()
		end
		GM13.Ent:SetInvulnerable(convertedProp, true)
		GM13.Ent:BlockToolgun(convertedProp, true)
		GM13.Ent:BlockContextMenu(convertedProp, true)
	end
end

function TOOL:LeftClick(trace)
	spawn_doll01(trace.HitPos)
	return true
end

function TOOL.BuildCPanel(CPanel)
	CPanel:AddControl("label", {
		text = "A tool made by TheEndBoss_101 for debuging the 'thing'",
	})
	CPanel:NumSlider("DollType", "doll_type", 1, 7, 0)
	CPanel:AddControl("label", {
		text = "1 = Doll 01",
	})
	CPanel:AddControl("label", {
		text = "2 = Doll 02",
	})
	CPanel:AddControl("label", {
		text = "3 = Doll 03",
	})
	CPanel:AddControl("label", {
		text = "4 = Doll 04",
	})
	CPanel:AddControl("label", {
		text = "5 = Doll 05",
	})
	CPanel:AddControl("label", {
		text = "6 = Skull",
	})
	CPanel:AddControl("label", {
		text = "7 = Companion Doll",
	})
end