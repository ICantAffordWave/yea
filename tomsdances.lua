-- tom's dance pack i guess (son)

local modules = {} -- table to contain all modules
-- function called to create the module
-- this allows for local variables
table.insert(modules, function() -- put into modules table
	local m = {} -- module object

	-- can be "MOVESET" or "DANCE"
	m.ModuleType = "DANCE"
	-- name of module
	m.Name = "da ting goes"
	-- description of module
	-- internal name, used for movesets and dances to interact with each other
	m.Description = "fart 5000inator\nanimation taken from @attalkiseer on YT\nthe music on YT is the ting goes jenny sparks remix"
	-- best usage example of this is Immortality Lord + ragdoll
	-- this can be omitted
	m.InternalName = "c_datinggoes"

	-- table of assets to download, either in "filename" or "filename@url_to_source"
	m.Assets = {"datinggoes.mp3@https://github.com/ICantAffordWave/yea/raw/refs/heads/main/datinggoesyes.mp3", "datinggoes.anim@https://github.com/ICantAffordWave/yea/raw/refs/heads/main/datinggoes.anim"}
	local boi = nil
	local who = nil
	-- functions below should NOT yield

	-- configuration GUI function, recommended to use these:
	-- Util_CreateText(parent, text, fontsize, alignment)
	-- Util_CreateButton(parent, text, fontsize)
	-- Util_CreateSwitch(parent, text, is_on)
	-- Util_CreateTextbox(parent, text, placeholdertext, fontsize)
	-- Util_CreateSlider(parent, text, value, min, max, step)
	-- Util_CreateDropdown(parent, text, items, itemindex)
	-- Util_CreateCanvas(parent)
	-- Util_CreateScrollCanvas(parent, height)
	-- Util_CreateSeparator(parent)
	m.Config = function(parent: GuiBase2d)
		Util_CreateText(parent, "no settings here", 14, Enum.TextXAlignment.Center)
	end

	-- function called to load from save table
	-- this function can be omitted
	m.LoadConfig = function(save: any)
	end

	-- function called to save from load table
	-- this function can be omitted
	m.SaveConfig = function()
		return {} -- AND KEEP YOUR TABLES SERIALIZABLE
	end

	-- called upon initialization
	m.Init = function(figure: Model)
		-- access upvalues, initialize animator
		SetOverrideDanceMusic(AssetGetContentId("datinggoes.mp3"), "the ting goes jenny sparks remix", 1, NumberRange.new(0, 24))
		who        = os.clock()
		boi        = AnimLib.Animator.new()
		boi.rig    = figure
		boi.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("datinggoes.anim"))
		boi.looped = true
		boi.speed  = 1
	end

	-- called upon update loop
	m.Update = function(dt: number, figure: Model)
		local setmebro = os.clock()
		boi:Step(setmebro - who)
	end

	-- called upon destruction
	-- this is not called when figure is refreshed so reference ur created and modified instances
	m.Destroy = function(figure: Model?)
		-- destroy created instances, dereference animator

		boi = nil
	end
	return m -- function returns the module
end)
table.insert(modules, function() -- put into modules table
	local m = {} -- module object

	-- can be "MOVESET" or "DANCE"
	m.ModuleType = "DANCE"
	-- name of module
	m.Name = "idk bro"
	-- description of module
	-- internal name, used for movesets and dances to interact with each other
	m.Description = "some dance that i made poorly\nby tom btw\nholy moly trick firework gd reference"
	-- best usage example of this is Immortality Lord + ragdoll
	-- this can be omitted
	m.InternalName = "c_idkbro"

	-- table of assets to download, either in "filename" or "filename@url_to_source"
	m.Assets = {"whatisthis.mp3@https://github.com/ICantAffordWave/yea/raw/refs/heads/main/whatisthis.mp3", "whatisthis.anim@https://github.com/ICantAffordWave/yea/raw/refs/heads/main/whatisthis.anim"}
	local boi = nil
	local who = nil
	-- functions below should NOT yield

	-- configuration GUI function, recommended to use these:
	-- Util_CreateText(parent, text, fontsize, alignment)
	-- Util_CreateButton(parent, text, fontsize)
	-- Util_CreateSwitch(parent, text, is_on)
	-- Util_CreateTextbox(parent, text, placeholdertext, fontsize)
	-- Util_CreateSlider(parent, text, value, min, max, step)
	-- Util_CreateDropdown(parent, text, items, itemindex)
	-- Util_CreateCanvas(parent)
	-- Util_CreateScrollCanvas(parent, height)
	-- Util_CreateSeparator(parent)
	m.Config = function(parent: GuiBase2d)
		Util_CreateText(parent, " ", 14, Enum.TextXAlignment.Center)
	end

	-- function called to load from save table
	-- this function can be omitted
	m.LoadConfig = function(save: any)
	end

	-- function called to save from load table
	-- this function can be omitted
	m.SaveConfig = function()
		return {} -- AND KEEP YOUR TABLES SERIALIZABLE
	end

	-- called upon initialization
	m.Init = function(figure: Model)
		SetOverrideDanceMusic(AssetGetContentId("whatisthis.mp3"), "NK - Classical VIP", 1, NumberRange.new(0, 189))
		who        = os.clock()
		boi        = AnimLib.Animator.new()
		boi.rig    = figure
		boi.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("whatisthis.anim"))
		boi.looped = true
		boi.speed  = 1
	end

	-- called upon update loop
	m.Update = function(dt: number, figure: Model)
		boi:Step(os.clock() - who)
	end

	-- called upon destruction
	-- this is not called when figure is refreshed so reference ur created and modified instances
	m.Destroy = function(figure: Model?)
		-- destroy created instances, dereference animator
		boi = nil
	end
	return m -- function returns the module
end)
table.insert(modules, function() -- put into modules table
	local m = {} -- module object

	-- can be "MOVESET" or "DANCE"
	m.ModuleType = "DANCE"
	-- name of module
	m.Name = "teto - tetoris"
	-- description of module
	-- internal name, used for movesets and dances to interact with each other
	m.Description = "teto spinnnnn\nnot by me, neither the animation by me\n"
	-- best usage example of this is Immortality Lord + ragdoll
	-- this can be omitted
	m.InternalName = "c_tetoris"

	-- table of assets to download, either in "filename" or "filename@url_to_source"
	m.Assets = {"t_tetoris.mp3@https://github.com/ICantAffordWave/yea/raw/refs/heads/main/tetoris.mp3", "t_tetoris.anim@https://github.com/ICantAffordWave/yea/raw/refs/heads/main/tetoris.anim"}
	local boi = nil
	local who = nil
	local micinstance = nil
	local effectsinstances = {}
	m.Mic = true
	-- functions below should NOT yield

	-- configuration GUI function, recommended to use these:
	-- Util_CreateText(parent, text, fontsize, alignment)
	-- Util_CreateButton(parent, text, fontsize)
	-- Util_CreateSwitch(parent, text, is_on)
	-- Util_CreateTextbox(parent, text, placeholdertext, fontsize)
	-- Util_CreateSlider(parent, text, value, min, max, step)
	-- Util_CreateDropdown(parent, text, items, itemindex)
	-- Util_CreateCanvas(parent)
	-- Util_CreateScrollCanvas(parent, height)
	-- Util_CreateSeparator(parent)
	m.Config = function(parent: GuiBase2d)
		Util_CreateText(parent, "settings", 14, Enum.TextXAlignment.Center)
		Util_CreateSwitch(parent, "Mic", m.Mic).Changed:Connect(function(val)
			m.Mic = val
		end)
	end

	-- function called to load from save table
	-- this function can be omitted
	m.LoadConfig = function(save: any)
		m.Mic = not not save.Mic
	end

	-- function called to save from load table
	-- this function can be omitted
	m.SaveConfig = function()
		return {
			Mic = m.Mic,
		} -- AND KEEP YOUR TABLES SERIALIZABLE
	end
	-- called upon initialization
	m.Init = function(figure: Model)
		SetOverrideDanceMusic(AssetGetContentId("t_tetoris.mp3"), "Hiirage Magnetite - Tetoris / Kasane Teto", 1, NumberRange.new(0, 142))
		who        = os.clock()
		boi        = AnimLib.Animator.new()
		boi.rig    = figure
		boi.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("t_tetoris.anim"))
		boi.looped = true
		boi.speed  = 1
		if micinstance then micinstance:Destroy() end
		if m.Mic then
			local leftarm = figure:WaitForChild("Left Arm")
			local scale = figure:GetScale()
			-- cframe diff: 0.079986572265625 -0.0049991607666015625 0.84503173828125
			micinstance = Instance.new("Model")
			micinstance.Name = "TetorisTemuMic"
			local diff = CFrame.new(
				-0.845031738, 0.00499916077, 0.0799865723, 
				1.19248806e-08, -1, 1.19248806e-08, 
				0, 1.19248806e-08, 1, 
				-1, -1.19248806e-08, 1.42202776e-16
			)
			local diff2 = CFrame.new(-0.138122559, -1.17000198, -0.289276123, -1.78774275e-08, 4.09781933e-08, -1.00000119, -9.31322486e-09, 1.00000024, -4.09781933e-08, 1.00000131, -9.31322575e-09, 4.1727219e-08)
			local b = Color3.fromRGB(27, 42, 53)
			local weld1c0 = CFrame.new(-0.845, 0.005, 0.08) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-90), math.rad(0))
			local weld2c0 = CFrame.new()
			local micmotc0 = CFrame.new(-0.138, -1.17, -0.289) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(-90), math.rad(0))
			local d1sc = (diff - diff.Position) + (diff.Position * scale)
			local d2sc = (diff2 - diff2.Position) + (diff2.Position * scale)
			local w1c0sc = (weld1c0 - weld1c0.Position) + (weld1c0.Position * scale)
			local w2c0sc = (weld2c0 - weld2c0.Position) + (weld2c0.Position * scale)
			local m1c0sc = (micmotc0 - micmotc0.Position) + (micmotc0.Position * scale)
			local stick = Instance.new("Part")
			stick.Size = Vector3.new(1.34, 0.44, 1.25) * scale
			stick.Color = b
			stick.Massless = true
			stick.CanCollide = false
			stick.Name = "Stick"
			local cy = Instance.new("SpecialMesh")
			cy.MeshType = Enum.MeshType.Cylinder
			cy.Parent = stick
			local notaguyshead = Instance.new("Part")
			notaguyshead.Size = Vector3.new(0.98, 0.75, 0.68) * scale
			notaguyshead.Color = b
			notaguyshead.Massless = true
			notaguyshead.CanCollide = false
			notaguyshead.Name = "Mic"
			local root = Instance.new("Part")
			root.Size = Vector3.new(0.5, 0.5, 0.5) * scale
			root.Color = Color3.fromRGB(163, 162, 165)
			root.Transparency = 1
			root.Massless = true
			root.CanCollide = false
			root.CastShadow = false
			root.CFrame = leftarm.CFrame * d2sc
			root.Name = "Root"
			local hed = Instance.new("SpecialMesh")
			hed.MeshType = Enum.MeshType.Head
			hed.Parent = notaguyshead
			stick.CFrame = root.CFrame
			notaguyshead.CFrame = stick.CFrame * d1sc
			local w1 = Instance.new("Weld")
			w1.Name = "Weld1"
			w1.Part0 = root
			w1.Part1 = notaguyshead
			w1.C0 = w1c0sc
			w1.C1 = CFrame.new()
			w1.Parent = root
			local w2 = Instance.new("Weld")
			w2.Name = "Weld2"
			w2.Part0 = root
			w2.Part1 = stick
			w2.C0 = w2c0sc
			w2.C1 = CFrame.new()
			w2.Parent = root
			local micmot = Instance.new("Weld")
			micmot.Name = "Root"
			micmot.Part0 = leftarm
			micmot.Part1 = root
			micmot.C0 = m1c0sc
			micmot.C1 = CFrame.new()
			micmot.Parent = root
			root.Parent = micinstance
			stick.Parent = micinstance
			notaguyshead.Parent = micinstance
			mic.Parent = figure
		end
	end

	-- called upon update loop
	m.Update = function(dt: number, figure: Model)
		boi:Step(os.clock() - who)
	end

	-- called upon destruction
	-- this is not called when figure is refreshed so reference ur created and modified instances
	m.Destroy = function(figure: Model?)
		-- destroy created instances, dereference animator
		if micinstance then
			micinstance:Destroy()
			micinstance = nil
		end
		boi = nil
	end
	return m -- function returns the module
end)

return modules -- return modules
