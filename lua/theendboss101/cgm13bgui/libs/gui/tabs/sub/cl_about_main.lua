function C_GM13B_GUI_Panel:Fill_About_SubTab_Main(About_SubTab_Main)
  -- Setup
  local About_SubTab_Main_List = vgui.Create("DScrollPanel", About_SubTab_Main)
  About_SubTab_Main_List:Dock(FILL)

  --wtrmark

    local WtrmrkTB = {
    ["1"] = {
      ["Name"] = "ARC",
      ["Size"] = "65, 85",
      ["Image"] = "theendboss101/cgm13bgui/arc",
      ["Sound"] = "theendboss101/cgm13bgui/arc"
    },
      ["2"] = {
      ["Name"] = "blackfigure",
      ["Size"] = "",
      ["Image"] = "theendboss101/cgm13bgui/blackfigure",
      ["Sound"] = "theendboss101/cgm13bgui/dialup.wav"
    },
      ["3"] = {
      ["Name"] = "coneoff",
      ["Size"] = "",
      ["Image"] = "theendboss101/cgm13bgui/coneoff",
      ["Sound"] = ""
    },
      ["4"] = {
      ["Name"] = "coneon",
      ["Size"] = "",
      ["Image"] = "theendboss101/cgm13bgui/coneon",
      ["Sound"] = ""
    },
      ["5"] = {
      ["Name"] = "conered",
      ["Size"] = "",
      ["Image"] = "theendboss101/cgm13bgui/conered",
      ["Sound"] = ""
    },
      ["6"] = {
      ["Name"] = "mingebag",
      ["Size"] = "",
      ["Image"] = "theendboss101/cgm13bgui/mingebag",
      ["Sound"] = "tetheendboss101b/cgm13bgui/lemon_rant.wav"
    },
      ["7"] = {
      ["Name"] = "semper",
      ["Size"] = "",
      ["Image"] = "theendboss101/cgm13bgui/semper",
      ["Sound"] = ""
    },
      ["8"] = {
      ["Name"] = "semper_hat",
      ["Size"] = "",
      ["Image"] = "theendboss101/cgm13bgui/semper_hat",
      ["Sound"] = ""
    }
  }

    local wtrmrk = vgui.Create("DImageButton", About_SubTab_Main) --mobenixcitizen2007 sugested this.
  wtrmrk:SetSize(60, 85)
  --wtrmrk:SetPos(570, 440)
  --wtrmrk:SetPos(60, 85)
  local wtrmrkMth = tostring(math.random(1, 8))
  print(wtrmrkMth)
  local wtrmrkSel = WtrmrkTB["1"]
  print(wtrmrkSel)
  wtrmrk:SetImage(wtrmrkSel["Image"])
  print(wtrmrkSel["Image"])
  wtrmrk:SetSize(wtrmrkSel["Size"])
  print(wtrmrkSel["Size"])
  wtrmrk.DoClick = function()
	  surface.PlaySound(wtrmrkSel["Sound"])
    wtrmrk:Remove()
  end

  -- Desc
  local About_SubTab_Main_Label = vgui.Create("DLabel")
  About_SubTab_Main_Label:SetText(" The information tab")
  About_SubTab_Main_Label:SizeToContents()
  About_SubTab_Main_Label:Dock(TOP)
  About_SubTab_Main_Label:DockMargin(0, 0, 0, 5)
  About_SubTab_Main_List:AddItem(About_SubTab_Main_Label)

  local About_SubTab_Main_Label = vgui.Create("DLabel")
  About_SubTab_Main_Label:SetText(" TheEndBoss_101's GM13B Derma GUI \n Ver: 3.5 \n By: TheEndBoss_101 (TEB) \n For: gm_construct_13 beta \n Last Edited: 4/1/2022")
  About_SubTab_Main_Label:SizeToContents()
  About_SubTab_Main_Label:Dock(TOP)
  About_SubTab_Main_Label:DockMargin(0, 0, 0, 5)
  About_SubTab_Main_List:AddItem(About_SubTab_Main_Label)
 end