local c = game:GetService('ReplicatedStorage'):FindFirstChild('ConnectionEvent')

local args = { [1] = 315, [2] = { ["WalkAnimation"] = WalkAnimation, ["RightArmColor"] = {RightArmC}, ["TorsoColor"] = {TorsoC}, ["RightLegColor"] = {RightLegC}, ["LeftLegColor"] = {LeftLegC}, ["LeftArmColor"] = {LeftArmC}, ["HeadColor"] = {HeadC}, ["GraphicTShirt"] = TShirt, ['HeadAccessory'] = HeadAccessory, ["Torso"] = Torso, ["ProportionScale"] = ProportionScale, ["ClimbAnimation"] = ClimbAnimation, ["Shirt"] = Shirt, ["FaceAccessory"] = FaceAccessory, ["HairAccessory"] = HairAccessory, ["RightArm"] = RightArm, ["Head"] = Head, ["FallAnimation"] = FallAnimation, ["DepthScale"] = DepthScale, ["RightLeg"] = RightLeg, ["HeightScale"] = HeightScale, ["WaistAccessory"] = WaistAccessory, ["WidthScale"] = WidthScale, ["BodyTypeScale"] = BodyTypeScale, ["ShouldersAccessory"] =ShouldersAccessory, ["Emotes"] = {["1"] = {[1] = Slot1}, ["4"] = {[1] = Slot4}, ["3"] = {[1] = Slot3},["5"] = {[1] = Slot5}, ["6"] = {[1] = Slot6}, ["7"] = {[1] = Slot7}, ["8"] = {[1] = Slot8}, ["2"] = {[1] = Slot2} }, ["Pants"] = Pants, ["BackAccessory"] = BackAccessory, ["SwimAnimation"] = SwimAnimation, ["JumpAnimation"] = JumpAnimation, ["Face"] = Face, ["RunAnimation"] = RunAnimation, ["IdleAnimation"] = IdleAnimation, ["LeftArm"] = LeftArm, ["HeadScale"] = HeadScale,["FrontAccessory"] = FrontAccessory, ["LeftLeg"] = LeftLeg}, [3] = true }

c:FireServer(unpack(args))
