--[[Define Modules]]--
SWEP.SV_MODULES = {
    
}
SWEP.SH_MODULES = {
    "modules/shared/sh_aim_behaviour.lua",
    "modules/shared/sh_anims.lua",
    "modules/shared/sh_bullet.lua",
    "modules/shared/sh_common.lua",
    "modules/shared/sh_deploy.lua",
    "modules/shared/sh_effects.lua",
    "modules/shared/sh_firemode_behaviour.lua",
    "modules/shared/sh_primaryattack_behaviour.lua",
    "modules/shared/sh_reload.lua",
    "modules/shared/sh_sprint.lua",
    "modules/shared/sh_think.lua"
}
SWEP.CLSIDE_MODULES = {
    "modules/client/cl_calcview.lua",
    "modules/client/cl_calcviewmodelview.lua",
    "modules/client/cl_effects.lua",
    "modules/client/cl_hud.lua",
    "modules/client/cl_sck.lua",
    "modules/client/cl_scopes.lua",
    "modules/client/cl_viewmodel_render.lua"
}



--START GUN CODE.
SWEP.Gun = "chaos_base"
SWEP.Base = "weapon_base"
--Some Defaults for later.
SWEP.ChaosBase = true
SWEP.BurstCount = 0
SWEP.AnimQueue = {}
SWEP.FiremodeIndex = 1
SWEP.UnReady = true
--Flavor Text and The name/category of the weapon.
SWEP.PrintName = "Revival Weapons Base" -- 'Nice' Weapon name (Shown on HUD)
SWEP.Author = ""
SWEP.Contact = ""
SWEP.Purpose = ""
SWEP.Instructions = ""
SWEP.Category = "Revival"
--WorldModels Defaults.
SWEP.WorldModel = "models/your/path/here.mdl" -- WorldModel Path
--ViewModel Defaults.
SWEP.ViewModel = "models/your/path/here.mdl" -- Viewmodel path
SWEP.ViewModelFOV = 65 -- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip = false -- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands = false -- Use gmod c_arms system.
SWEP.MuzzleAttachment = "1" -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.VMPos = Vector(0, 0, 0) -- The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0, 0, 0) -- The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = true -- Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse
SWEP.AdditiveViewModelPosition = true
SWEP.FovMultiplier = 0


--Scopes
SWEP.Scoped                = false  --Draw a scope overlay?
SWEP.ScopeOverlayThreshold = 0.875 --Percentage you have to be sighted in to see the scope.

--Custom Muzzle Flashes to Code in.
SWEP.ParticleEffects = {
    ["MuzzleFlash"] = "",
    ["MuzzleFlash_Suppressed"] = "",
    ["Ejection"] = "",
}

--Passed to CalcView
SWEP.Zoom = {
    FovMultiplier = 0.85,
    ViewModelFovMultiplier = 0.9,
    Blur = {
        EyeFocusDistance = 7
    }
}

-- The viewmodel positional offset, constantly.
-- Subtract this from any other modifications to viewmodel position.
-- AKA VMPos (SWEP Construction Kit naming, VMPos is always checked for presence and it always override ViewModelPosition if present)
SWEP.ViewModelPosition = Vector(0, 0, 0)
-- AKA VMAng (SWEP Construction Kit naming)
-- The viewmodel angular offset, constantly.
-- Subtract this from any other modifications to viewmodel angle.
SWEP.ViewModelAngle = Vector(0, 0, 0)
SWEP.IronSightsPos = Vector(0, 0, 0)
SWEP.IronSightsAng = Vector(0, 0, 0)
SWEP.SafetyPos = Vector(0, 0, -2)
SWEP.SafetyAng = Vector(-10, -15, 25)
SWEP.IronSightsEnable = true
--HoldType Handling.
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "smg"
SWEP.HoldtypeCustomize = "slam"
SWEP.HoldtypeSprintShoot = nil
SWEP.HoldtypeNPC = nil

--Spread weapon defaults
--SWEP.Primary.SpreadMultiplierMax = 2.5 --How far the spread can expand when you shoot.
--SWEP.Primary.SpreadIncrement = 1/3.5 --What percentage of the modifier is added on, per shot.
--SWEP.Primary.SpreadRecovery = 3 --How much the spread recovers, per second.
SWEP.Cone = {
    Hip = 0.57, --accuracy while hip
    Ads = 0.03, --accuracy while aiming
    Increase = 0.12, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.075, --multiply the increase value by this amount while aiming
    Max = 2.2, --the cone size will not go beyond this size
    Decrease = 0.8, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 95235 --just give this a random number 
}

--Weapon Sound Defaults
SWEP.Primary.Sound = Sound("")
SWEP.ShootVol = 125 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootPitchVariation = 0.05
--Standard weapon defaults.
SWEP.Primary.NumShots = 1 --The number of shots the gun/bow fires.  
SWEP.Primary.RPM = 600 -- This is in Rounds Per Minute / RPM
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 0 -- This is the size of a clip
SWEP.Primary.DefaultClip = 0 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Automatic = true -- Automatic/Semi Auto
SWEP.Primary.Ammo = "none" -- What kind of ammo
SWEP.Primary.AmmoPerShot = 1
SWEP.Primary.Range = -1 -- The distance the bullet can travel in source units.  Set to -1 to autodetect based on damage/rpm.
SWEP.Primary.RangeFalloff = -1 -- The percentage of the range the bullet damage starts to fall off at.  Set to 0.8, for example, to start falling off after 80% of the range.
SWEP.DrawTime = 1
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 1
SWEP.Firemodes = {}
--Tracer Defaults
SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "rev_halo_ar_bullet" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)
SWEP.HullSize = 0 -- HullSize used by FireBullets
--Shooting Entites "aka Rockets"
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 400 -- projectile muzzle velocity in m/s
--Shotgun Defaults
SWEP.IsShotgun = false -- weapon receives shotgun ammo types
SWEP.ShotgunReload = false -- reloads like shotgun instead of magazines
SWEP.ManualAction = false -- pump/bolt action
SWEP.ShotgunSpreadPattern = nil
SWEP.ReloadTime = 1
--Swep Damage Defaults
SWEP.Damage = 26
SWEP.DamageType = DMG_BULLET
SWEP.DamageTypeHandled = false -- set to true to have the base not do anything with damage types

-- this includes: igniting if type has DMG_BURN; adding DMG_AIRBOAT when hitting helicopter; adding DMG_BULLET to DMG_BUCKSHOT
SWEP.Bullet = {
    Damage = {50, 20}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    DropOffStartRange = 20, --in meters, damage will start dropping off after this range
    EffectiveRange = 65, --in meters, damage scales within this distance
    Range = 180, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    TracerName = nil,
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 1, --damage is multiplied by this amount when pushing objects 
}

--Custom Body Part Damage
SWEP.BodyDamageMults = nil

-- if a limb is not set the damage multiplier will default to 1
-- that means gmod's stupid default limb mults will **NOT** apply
-- {
--     [HITGROUP_HEAD] = 1.25,
--     [HITGROUP_CHEST] = 1,
--     [HITGROUP_LEFTARM] = 0.9,
--     [HITGROUP_RIGHTARM] = 0.9,
-- }
--Recoil Defaults.
--SWEP.Primary.KickUp               = 0 -- This is the maximum upwards recoil (rise)
--SWEP.Primary.KickDown         = 0 -- This is the maximum downwards recoil (skeet)
--SWEP.Primary.KickHorizontal       = 0 -- This is the maximum sideways recoil (no real term)
--SWEP.Primary.StaticRecoilFactor = 0 --Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.
SWEP.Recoil = {
    Vertical = {1, 3.5}, --random value between the 2
    Horizontal = {-2, 2}, --random value between the 2
    Shake = 1.5, --camera shake
    AdsMultiplier = 0.25, --multiply the values by this amount while aiming
    Seed = 67498 --give this a random number until you like the current recoil pattern 
}

--Setup Bashing
SWEP.CanBash = true -- Can Melee?
SWEP.PrimaryBash = false -- primary attack triggers melee attack (energy Sword or Grav Hammer)
SWEP.Lunge = nil -- Whether to allow the bash/melee to lunge a short distance
SWEP.LungeLength = 64 -- Maximum distance for lunging
SWEP.MeleeDamage = 25
SWEP.MeleeRange = 16
SWEP.MeleeDamageType = DMG_CLUB
SWEP.MeleeTime = 0.5
SWEP.MeleeGesture = nil
SWEP.MeleeAttackTime = 0.2
SWEP.Melee2 = false
SWEP.Melee2Damage = 25
SWEP.Melee2Range = 16
SWEP.Melee2Time = 0.5
SWEP.Melee2Gesture = nil
SWEP.Melee2AttackTime = 0.2
--Ironsight handling.
SWEP.Secondary.IronSightsEnabled = true
-- Controls Field of View when scoping in.
-- Default FoV of Garry's Mod is 75, most of players prefer 90
-- Lesser FoV value means stronger "zoom"
-- Good value to begin experimenting with is 70
-- AKA Secondary.IronFOV
SWEP.Secondary.OwnerFOV = 70
-- AKA IronViewModelFOV
SWEP.Secondary.ViewModelFOV = 65 -- Defaults to 65. Target viewmodel FOV when aiming down the sights.
-- Time needed to enter / leave the ironsight in seconds
SWEP.IronSightTime = 0.1
SWEP.KeepBaseIrons = false -- do not override iron sights when scope installed
SWEP.BaseIronsFirst = false -- If a sight keeps base irons, irons comes first

SWEP.IronSightStruct = {
    Pos = Vector(0, 0, 0),
    Ang = Vector(0, 0, 0),
    Magnification = 0,
    BlackBox = false,
    ScopeTexture = nil,
    SwitchToSound = "", -- sound that plays when switching to this sight
    SwitchFromSound = "",
    ScrollFunc = ChaosBase.SCROLL_NONE,
    CrosshairInSights = false,
}

-- If Jamming is enabled, a heat meter will gradually build up until it reaches HeatCapacity.
-- Once that happens, the gun will overheat, playing an animation. If HeatLockout is true, it cannot be fired until heat is 0 again.
SWEP.Heat = false
SWEP.HeatCapacity = 200 -- rounds that can be fired non-stop before the gun jams, playing the "fix" animation
SWEP.HeatDissipation = 2 -- rounds' worth of heat lost per second
SWEP.HeatLockout = false -- overheating means you cannot fire until heat has been fully depleted
SWEP.HeatDelayTime = 0.5
SWEP.HeatFix = false -- when the "fix" animation is played, all heat is restored.
SWEP.HeatOverflow = nil -- if true, heat is allowed to exceed capacity (this only applies when the default overheat handling is overridden)
-- When using custom sprint animations, set this to the same as ActivePos and ActiveAng
SWEP.SprintPos = nil
SWEP.SprintAng = nil
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "smg"
SWEP.HoldtypeCustomize = "slam"
SWEP.HoldtypeSprintShoot = nil
SWEP.HoldtypeNPC = nil
--Sprint Attack?
SWEP.ShootWhileSprint = false
--SCK KIT integration.
SWEP.VElements = {}
SWEP.WElements = {}

SWEP.ViewModelOffsets = {
    Aim = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
    Idle = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
    RecoilMultiplier = 1.15,
    KickMultiplier = 2,
    AimKickMultiplier = 0.15
}

--BASE VALUES DONT TOUCH.
SWEP.IronSightsProgressUnpredicted = 0
SWEP.CLIronSightsProgress = 0
SWEP.BurstCount = 0
SWEP.SafetyProgressUnpredicted = 0

function SWEP:SetupDataTables()
    self:NetworkVar("Int", 0, "NWState")
    self:NetworkVar("Int", 1, "FireMode")
    self:NetworkVar("Int", 2, "BurstRounds")
    self:NetworkVar("Int", 3, "LastLoad")
    self:NetworkVar("Int", 4, "NthReload")
    self:NetworkVar("Int", 5, "NthShot")
    --Am I using this? V
    self:NetworkVar("Int", 6, "AimMode")
    -- 2 = insert
    -- 3 = cancelling
    -- 4 = insert empty
    -- 5 = cancelling empty
    self:NetworkVar("Int", 7, "ShotgunReloading")
    self:NetworkVar("Int", 8, "MagUpCount")
    self:NetworkVar("Int", 9, "SprayRounds")
    self:NetworkVar("Bool", 0, "HeatLocked")
    self:NetworkVar("Bool", 1, "NeedCycle")
    self:NetworkVar("Bool", 2, "ToggleAim")
    self:NetworkVar("Bool", 5, "IsReloading")
    self:NetworkVar("Bool", 6, "IsSprinting")
    self:NetworkVar("Bool", 7, "IsAiming")
    self:NetworkVar("Bool", 8, "IsHolstering")
    self:NetworkVar("Bool", 9, "IsPumping")
    self:NetworkVar("Bool", 11, "Safety")
    self:NetworkVar("Float", 0, "Heat")
    self:NetworkVar("Float", 1, "ReloadingREAL")
    self:NetworkVar("Float", 2, "NextIdle")
    self:NetworkVar("Float", 3, "NextHolsterTime")
    self:NetworkVar("Float", 4, "NWSightDelta")
    self:NetworkVar("Float", 5, "NWSprintDelta")
    self:NetworkVar("Float", 6, "WeaponOpDelay")
    self:NetworkVar("Float", 7, "MagUpIn")
    self:NetworkVar("Float", 8, "IronSightsRatio")
    self:NetworkVar("Float", 9, "NextFiremodeTime")
    self:NetworkVar("Float", 10, "AimDelta")
    self:NetworkVar("Float", 11, "Cone")
    self:NetworkVar("Float", 12, "BreathingDelta")
    self:NetworkVar("Float", 13, "SafetyDelta")
    self:NetworkVar("Entity", 0, "NextWeapon")
    self:NetworkVar("Angle", 0, "BreathingAngle")
end

function SWEP:OnRestore()
    self:SetNthReload(0)
    self:SetNthShot(0)
    self:SetReloadingREAL(0)
    self:SetMagUpIn(0)
    self.UnReady = false
end

function SWEP:SetReloading(v)
    if isbool(v) then
        if v then
            self:SetReloadingREAL(math.huge)
        else
            self:SetReloadingREAL(-math.huge)
        end
    elseif isnumber(v) and v > self:GetReloadingREAL() then
        self:SetReloadingREAL(v)
    end
end

function SWEP:GetReloading()
    local decide

    if self:GetReloadingREAL() > CurTime() then
        decide = true
    else
        decide = false
    end

    return decide
end

function SWEP:SetState(v)
    self:SetNWState(v)

    if not game.SinglePlayer() and CLIENT then
        self.State = v
    end
end

function SWEP:GetState(v)
    if not game.SinglePlayer() and CLIENT and self.State then return self.State end

    return self:GetNWState(v)
end

SWEP.CL_SightDelta = 0

function SWEP:SetSightDelta(d)
    if not game.SinglePlayer() and CLIENT then
        self.CL_SightDelta = d
    end

    self:SetNWSightDelta(d)
end

function SWEP:GetSightDelta()
    if not game.SinglePlayer() and CLIENT then return self.CL_SightDelta end

    return self:GetNWSightDelta()
end

SWEP.CL_SprintDelta = 0

function SWEP:SetSprintDelta(d)
    if not game.SinglePlayer() and CLIENT then
        self.CL_SprintDelta = d
    end

    self:SetNWSprintDelta(d)
end

function SWEP:GetSprintDelta()
    if not game.SinglePlayer() and CLIENT then return self.CL_SprintDelta end

    return self:GetNWSprintDelta()
end

SWEP.Animations = {}