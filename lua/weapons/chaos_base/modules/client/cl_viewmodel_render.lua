AddCSLuaFile()

function SWEP:PostDrawViewModel(vm, weapon, ply)
    --ThirdPerson Bolt Handling
    if not self.BlowbackBoneMods then
        self.BlowbackBoneMods = {}
        self.BlowbackCurrent = 0
    end
    if self.BlowbackBoneMods then
        for boltname, tbl in pairs(self.BlowbackBoneMods) do
            local bolt = vm:LookupBone(self.BoltViewModelBone)

            if bolt and bolt >= 0 then
                bpos = tbl.pos * self.BlowbackCurrent
                bang = tbl.angle * self.BlowbackCurrent
                vm:ManipulateBonePosition(bolt, bpos)
                vm:ManipulateBoneAngles(bolt, bang)
                if self.BoltViewModelBoneExtra then
                    local bolt2 = vm:LookupBone(self.BoltViewModelBoneExtra)
                    vm:ManipulateBonePosition(bolt2, bpos)
                    vm:ManipulateBoneAngles(bolt2, bang)
                end
            end
        end
    end
end