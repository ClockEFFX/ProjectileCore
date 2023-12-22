E2Lib.RegisterExtension( "projectilecore", true )



PROJECTILECORE = PROJECTILECORE or {}
PROJECTILECORE.CVARS = PROJECTILECORE.CVARS or {}

PROJECTILECORE.EP2MOUNTED = IsMounted( "ep2" )





-- convars ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- bullet
PROJECTILECORE.CVARS.BULLET_ENABLED = CreateConVar( "projcore_bullet_enabled", "1", FCVAR_ARCHIVE, "Allow E2 to shoot bullets", 0, 1 )
PROJECTILECORE.BULLET_ENABLED = PROJECTILECORE.CVARS.BULLET_ENABLED:GetBool()

PROJECTILECORE.CVARS.BULLET_MAXDMG = CreateConVar( "projcore_bullet_maxdmg", "20", FCVAR_ARCHIVE, "Maximum damage E2 fired bullets are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.BULLET_MAXDMG = PROJECTILECORE.CVARS.BULLET_MAXDMG:GetInt()

PROJECTILECORE.CVARS.BULLET_MAXFORCE = CreateConVar( "projcore_bullet_maxforce", "500", FCVAR_ARCHIVE, "Maximum impact force E2 fired bullets are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.BULLET_MAXFORCE = PROJECTILECORE.CVARS.BULLET_MAXFORCE:GetInt()

PROJECTILECORE.CVARS.BULLET_TRACERLESS = CreateConVar( "projcore_bullet_tracerless", "0", FCVAR_ARCHIVE, "Allow E2 fired bullets to be tracer-less", 0, 1 )
PROJECTILECORE.BULLET_TRACERLESS = PROJECTILECORE.CVARS.BULLET_TRACERLESS:GetInt()

PROJECTILECORE.CVARS.BULLET_DELAY = CreateConVar( "projcore_bullet_delay", "0.1", FCVAR_ARCHIVE, "Minimum time between bullet shots" )
PROJECTILECORE.BULLET_DELAY = PROJECTILECORE.CVARS.BULLET_DELAY:GetFloat()



-- crossbow bolt
PROJECTILECORE.CVARS.BOLT_ENABLED = CreateConVar( "projcore_bolt_enabled", "1", FCVAR_ARCHIVE, "Allow E2 to shoot crossbow bolts", 0, 1 )
PROJECTILECORE.BOLT_ENABLED = PROJECTILECORE.CVARS.BOLT_ENABLED:GetBool()

PROJECTILECORE.CVARS.BOLT_MAXDMG = CreateConVar( "projcore_bolt_maxdmg", "100", FCVAR_ARCHIVE, "Maximum damage E2 fired crossbow bolts are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.BOLT_MAXDMG = PROJECTILECORE.CVARS.BOLT_MAXDMG:GetInt()

PROJECTILECORE.CVARS.BOLT_MAXVEL = CreateConVar( "projcore_bolt_maxvel", "5000", FCVAR_ARCHIVE, "Maximum velocity E2 fired crossbow bolts are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.BOLT_MAXVEL = PROJECTILECORE.CVARS.BOLT_MAXVEL:GetInt()

PROJECTILECORE.CVARS.BOLT_DELAY = CreateConVar( "projcore_bolt_delay", "1", FCVAR_ARCHIVE, "Minimum time between crossbow bolt shots" )
PROJECTILECORE.BOLT_DELAY = PROJECTILECORE.CVARS.BOLT_DELAY:GetFloat()



-- ar2/combine ball
PROJECTILECORE.CVARS.COMBALL_ENABLED = CreateConVar( "projcore_comball_enabled", "0", FCVAR_ARCHIVE, "Allow E2 to shoot AR2/combine balls", 0, 1 )
PROJECTILECORE.COMBALL_ENABLED = PROJECTILECORE.CVARS.COMBALL_ENABLED:GetBool()

PROJECTILECORE.CVARS.COMBALL_MAXVEL = CreateConVar( "projcore_comball_maxvel", "1000", FCVAR_ARCHIVE, "Maximum velocity E2 fired AR2/combine balls are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.COMBALL_MAXVEL = PROJECTILECORE.CVARS.COMBALL_MAXVEL:GetInt()

PROJECTILECORE.CVARS.COMBALL_DELAY = CreateConVar( "projcore_comball_delay", "5", FCVAR_ARCHIVE, "Minimum time between AR2/combine ball shots" )
PROJECTILECORE.COMBALL_DELAY = PROJECTILECORE.CVARS.COMBALL_DELAY:GetFloat()



-- frag grenade
PROJECTILECORE.CVARS.GRENADE_ENABLED = CreateConVar( "projcore_grenade_enabled", "1", FCVAR_ARCHIVE, "Allow E2 to spawn frag grenades", 0, 1 )
PROJECTILECORE.GRENADE_ENABLED = PROJECTILECORE.CVARS.GRENADE_ENABLED:GetBool()

PROJECTILECORE.CVARS.GRENADE_MAXDMG = CreateConVar( "projcore_grenade_maxdmg", "100", FCVAR_ARCHIVE, "Maximum damage E2 spawned frag grenades are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.GRENADE_MAXDMG = PROJECTILECORE.CVARS.GRENADE_MAXDMG:GetInt()

PROJECTILECORE.CVARS.GRENADE_MAXRADIUS = CreateConVar( "projcore_grenade_maxradius", "200", FCVAR_ARCHIVE, "Maximum explosion radius E2 spawned frag grenades are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.GRENADE_MAXRADIUS = PROJECTILECORE.CVARS.GRENADE_MAXRADIUS:GetInt()

PROJECTILECORE.CVARS.GRENADE_MAXTIMER = CreateConVar( "projcore_grenade_maxtimer", "5", FCVAR_ARCHIVE, "Maximum explosion timer for E2 spawned frag grenades (set to -1 for no limit)" )
PROJECTILECORE.GRENADE_MAXTIMER = PROJECTILECORE.CVARS.GRENADE_MAXTIMER:GetFloat()

PROJECTILECORE.CVARS.GRENADE_MINTIMER = CreateConVar( "projcore_grenade_mintimer", "0", FCVAR_ARCHIVE, "Minimum explosion timer for E2 spawned frag grenades (set to -1 for no limit)" )
PROJECTILECORE.GRENADE_MINTIMER = PROJECTILECORE.CVARS.GRENADE_MINTIMER:GetFloat()

PROJECTILECORE.CVARS.GRENADE_MAXVEL = CreateConVar( "projcore_grenade_maxvel", "500", FCVAR_ARCHIVE, "Maximum velocity E2 spawned frag grenades are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.GRENADE_MAXVEL = PROJECTILECORE.CVARS.GRENADE_MAXVEL:GetInt()

PROJECTILECORE.CVARS.GRENADE_DELAY = CreateConVar( "projcore_grenade_delay", "2", FCVAR_ARCHIVE, "Minimum time between frag grenade spawns" )
PROJECTILECORE.GRENADE_DELAY = PROJECTILECORE.CVARS.GRENADE_DELAY:GetFloat()



-- helicopter bombs
PROJECTILECORE.CVARS.HELIBOMB_ENABLED = CreateConVar( "projcore_helibomb_enabled", "1", FCVAR_ARCHIVE, "Allow E2 to spawn helicopter bombs", 0, 1 )
PROJECTILECORE.HELIBOMB_ENABLED = PROJECTILECORE.CVARS.HELIBOMB_ENABLED:GetBool()

PROJECTILECORE.CVARS.HELIBOMB_MAXDMG = CreateConVar( "projcore_helibomb_maxdmg", "100", FCVAR_ARCHIVE, "Maximum damage E2 spawned helicopter bombs are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.HELIBOMB_MAXDMG = PROJECTILECORE.CVARS.HELIBOMB_MAXDMG:GetInt()

PROJECTILECORE.CVARS.HELIBOMB_MAXRADIUS = CreateConVar( "projcore_helibomb_maxradius", "200", FCVAR_ARCHIVE, "Maximum explosion radius E2 spawned helicopter bombs are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.HELIBOMB_MAXRADIUS = PROJECTILECORE.CVARS.HELIBOMB_MAXRADIUS:GetInt()

PROJECTILECORE.CVARS.HELIBOMB_MAXTIMER = CreateConVar( "projcore_helibomb_maxtimer", "5", FCVAR_ARCHIVE, "Maximum explosion timer for E2 spawned helicopter bombs (set to -1 for no limit)" )
PROJECTILECORE.HELIBOMB_MAXTIMER = PROJECTILECORE.CVARS.HELIBOMB_MAXTIMER:GetFloat()

PROJECTILECORE.CVARS.HELIBOMB_MINTIMER = CreateConVar( "projcore_helibomb_mintimer", "0", FCVAR_ARCHIVE, "Minimum explosion timer for E2 spawned helicopter bombs (set to -1 for no limit)" )
PROJECTILECORE.HELIBOMB_MINTIMER = PROJECTILECORE.CVARS.HELIBOMB_MINTIMER:GetFloat()

PROJECTILECORE.CVARS.HELIBOMB_MAXVEL = CreateConVar( "projcore_helibomb_maxvel", "500", FCVAR_ARCHIVE, "Maximum velocity E2 spawned helicopter bombs are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.HELIBOMB_MAXVEL = PROJECTILECORE.CVARS.HELIBOMB_MAXVEL:GetInt()

PROJECTILECORE.CVARS.HELIBOMB_DELAY = CreateConVar( "projcore_helibomb_delay", "2", FCVAR_ARCHIVE, "Minimum time between helicopter bomb spawns" )
PROJECTILECORE.HELIBOMB_DELAY = PROJECTILECORE.CVARS.HELIBOMB_DELAY:GetFloat()



-- combine mine
PROJECTILECORE.CVARS.COMMINE_ENABLED = CreateConVar( "projcore_commine_enabled", "1", FCVAR_ARCHIVE, "Allow E2 to spawn combine mines", 0, 1 )
PROJECTILECORE.COMMINE_ENABLED = PROJECTILECORE.CVARS.COMMINE_ENABLED:GetBool()

PROJECTILECORE.CVARS.COMMINE_MAXVEL = CreateConVar( "projcore_commine_maxvel", "500", FCVAR_ARCHIVE, "Maximum velocity E2 spawned combine mines are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.COMMINE_MAXVEL = PROJECTILECORE.CVARS.COMMINE_MAXVEL:GetInt()

PROJECTILECORE.CVARS.COMMINE_DELAY = CreateConVar( "projcore_commine_delay", "2", FCVAR_ARCHIVE, "Minimum time between combine mine spawns" )
PROJECTILECORE.COMMINE_DELAY = PROJECTILECORE.CVARS.COMMINE_DELAY:GetFloat()



-- rpg
PROJECTILECORE.CVARS.RPG_ENABLED = CreateConVar( "projcore_rpg_enabled", "1", FCVAR_ARCHIVE, "Allow E2 to shoot RPG missiles", 0, 1 )
PROJECTILECORE.RPG_ENABLED = PROJECTILECORE.CVARS.RPG_ENABLED:GetBool()

PROJECTILECORE.CVARS.RPG_MAXDMG = CreateConVar( "projcore_rpg_maxdmg", "100", FCVAR_ARCHIVE, "Maximum damage E2 fired RPG missiles are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.RPG_MAXDMG = PROJECTILECORE.CVARS.RPG_MAXDMG:GetInt()

PROJECTILECORE.CVARS.RPG_MAXRADIUS = CreateConVar( "projcore_rpg_maxradius", "200", FCVAR_ARCHIVE, "Maximum explosion radius E2 fired RPG missiles are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.RPG_MAXRADIUS = PROJECTILECORE.CVARS.RPG_MAXRADIUS:GetInt()

PROJECTILECORE.CVARS.RPG_MAXVEL = CreateConVar( "projcore_rpg_maxvel", "100", FCVAR_ARCHIVE, "Maximum velocity E2 fired RPG missiles are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.RPG_MAXVEL = PROJECTILECORE.CVARS.RPG_MAXVEL:GetInt()

PROJECTILECORE.CVARS.RPG_DELAY = CreateConVar( "projcore_rpg_delay", "3", FCVAR_ARCHIVE, "Minimum time between RPG missile shots" )
PROJECTILECORE.RPG_DELAY = PROJECTILECORE.CVARS.RPG_DELAY:GetFloat()



-- smg grenade
PROJECTILECORE.CVARS.SMGGRENADE_ENABLED = CreateConVar( "projcore_smggrenade_enabled", "1", FCVAR_ARCHIVE, "Allow E2 to shoot SMG grenades", 0, 1 )
PROJECTILECORE.SMGGRENADE_ENABLED = PROJECTILECORE.CVARS.SMGGRENADE_ENABLED:GetBool()

PROJECTILECORE.CVARS.SMGGRENADE_MAXDMG = CreateConVar( "projcore_smggrenade_maxdmg", "100", FCVAR_ARCHIVE, "Maximum damage E2 fired SMG grenades are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.SMGGRENADE_MAXDMG = PROJECTILECORE.CVARS.SMGGRENADE_MAXDMG:GetInt()

PROJECTILECORE.CVARS.SMGGRENADE_MAXRADIUS = CreateConVar( "projcore_smggrenade_maxradius", "200", FCVAR_ARCHIVE, "Maximum explosion radius E2 fired SMG grenades are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.SMGGRENADE_MAXRADIUS = PROJECTILECORE.CVARS.SMGGRENADE_MAXRADIUS:GetInt()

PROJECTILECORE.CVARS.SMGGRENADE_MAXVEL = CreateConVar( "projcore_smggrenade_maxvel", "1000", FCVAR_ARCHIVE, "Maximum velocity E2 fired SMG grenades are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.SMGGRENADE_MAXVEL = PROJECTILECORE.CVARS.SMGGRENADE_MAXVEL:GetInt()

PROJECTILECORE.CVARS.SMGGRENADE_DELAY = CreateConVar( "projcore_smggrenade_delay", "2", FCVAR_ARCHIVE, "Minimum time between SMG grenade shots" )
PROJECTILECORE.SMGGRENADE_DELAY = PROJECTILECORE.CVARS.SMGGRENADE_DELAY:GetFloat()



-- flechette
PROJECTILECORE.CVARS.FLECHETTE_ENABLED = CreateConVar( "projcore_flechette_enabled", "1", FCVAR_ARCHIVE, "Allow E2 to shoot hunter flechettes (EP2 required)", 0, 1 )
PROJECTILECORE.FLECHETTE_ENABLED = PROJECTILECORE.CVARS.FLECHETTE_ENABLED:GetBool()

PROJECTILECORE.CVARS.FLECHETTE_MAXVEL = CreateConVar( "projcore_flechette_maxvel", "2000", FCVAR_ARCHIVE, "Maximum velocity E2 fired flechettes are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.FLECHETTE_MAXVEL = PROJECTILECORE.CVARS.FLECHETTE_MAXVEL:GetInt()

PROJECTILECORE.CVARS.FLECHETTE_DELAY = CreateConVar( "projcore_flechette_delay", "0.1", FCVAR_ARCHIVE, "Minimum time between flechette shots" )
PROJECTILECORE.FLECHETTE_DELAY = PROJECTILECORE.CVARS.FLECHETTE_DELAY:GetFloat()



-- magnusson
PROJECTILECORE.CVARS.MAGNUSSON_ENABLED = CreateConVar( "projcore_magnusson_enabled", "1", FCVAR_ARCHIVE, "Allow E2 to spawn strider busters (EP2 required)", 0, 1 )
PROJECTILECORE.MAGNUSSON_ENABLED = PROJECTILECORE.CVARS.MAGNUSSON_ENABLED:GetBool()

PROJECTILECORE.CVARS.MAGNUSSON_MAXDMG = CreateConVar( "projcore_magnusson_maxdmg", "100", FCVAR_ARCHIVE, "Maximum damage E2 spawned strider busters are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.MAGNUSSON_MAXDMG = PROJECTILECORE.CVARS.MAGNUSSON_MAXDMG:GetInt()

PROJECTILECORE.CVARS.MAGNUSSON_MAXRADIUS = CreateConVar( "projcore_magnusson_maxradius", "300", FCVAR_ARCHIVE, "Maximum explosion radius E2 spawned strider busters are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.MAGNUSSON_MAXRADIUS = PROJECTILECORE.CVARS.MAGNUSSON_MAXRADIUS:GetInt()

PROJECTILECORE.CVARS.MAGNUSSON_MAXTIMER = CreateConVar( "projcore_magnusson_maxtimer", "5", FCVAR_ARCHIVE, "Maximum explosion timer for E2 spawned strider busters (set to -1 for no limit)" )
PROJECTILECORE.MAGNUSSON_MAXTIMER = PROJECTILECORE.CVARS.MAGNUSSON_MAXTIMER:GetFloat()

PROJECTILECORE.CVARS.MAGNUSSON_MINTIMER = CreateConVar( "projcore_magnusson_mintimer", "0", FCVAR_ARCHIVE, "Minimum explosion timer for E2 spawned strider busters (set to -1 for no limit)" )
PROJECTILECORE.MAGNUSSON_MINTIMER = PROJECTILECORE.CVARS.MAGNUSSON_MINTIMER:GetFloat()

PROJECTILECORE.CVARS.MAGNUSSON_MAXVEL = CreateConVar( "projcore_magnusson_maxvel", "1000", FCVAR_ARCHIVE, "Maximum velocity E2 spawned strider busters are allowed to have (set to -1 for no limit)" )
PROJECTILECORE.MAGNUSSON_MAXVEL = PROJECTILECORE.CVARS.MAGNUSSON_MAXVEL:GetInt()

PROJECTILECORE.CVARS.MAGNUSSON_DELAY = CreateConVar( "projcore_magnusson_delay", "3", FCVAR_ARCHIVE, "Minimum time between strider buster spawns" )
PROJECTILECORE.MAGNUSSON_DELAY = PROJECTILECORE.CVARS.MAGNUSSON_DELAY:GetFloat()










PROJECTILECORE.TRACERLIST = {
	"Tracer",
	"AR2Tracer",
	"AirboatGunHeavyTracer",
	"LaserTracer",
	"ToolTracer",
}



-- functionss ----------------------------------------------------------------------------------------------------------------------------------------------




-- idk what im doing lol
function PROJECTILECORE.CLAMPVECTOR( vec, max )
	
	local length = vec:Length()

	if ( length > max ) then
		return vec:GetNormalized() * max
	else
		return vec
	end
	
end

local E2totalspawnedprops = 0
local E2tempSpawnedProps = 0



-- bullet
function PROJECTILECORE.SHOOTBULLET( ent, chip, pos, dir, dmg, force, tracer, dist )
	
	if ( PROJECTILECORE.BULLET_ENABLED == 0 ) then
		return 0
	end
	
	-- permission
	if ( CPPI ) then
		if ( not ent:CPPICanTool( chip.player ) ) then
			return 0
		end
	else
		if ( not isOwner( chip, ent ) ) then
			return 0
		end
	end
	
	if ( not IsValid( ent ) ) then
		return 0
	end
	

	-- delay
	if ( PROJECTILECORE.BULLET_DELAY > 0 ) then
		if ( ent.ProjCoreDelay ) then
			if ( CurTime() < ent.ProjCoreDelay ) then
				return 0
			end
		end
		ent.ProjCoreDelay = CurTime() + PROJECTILECORE.BULLET_DELAY
	end


	
	-- bullet info
	
	if ( !PROJECTILECORE.BULLET_TRACERLESS ) then
		tracer = math.Clamp( tracer, 1, 5 )
	end
	
	local maxdmg = PROJECTILECORE.BULLET_MAXDMG
	dmg = maxdmg > -1 and math.Clamp( dmg, 0, maxdmg ) or dmg
	
	local maxforce = PROJECTILECORE.BULLET_MAXFORCE
	force = maxforce > -1 and math.Clamp( dmg, 0, maxforce ) or force
	

	local bulletInfo = {}
	bulletInfo.Damage = dmg
	bulletInfo.Force = force
	bulletInfo.Distance = dist or 56756
	-- bulletInfo.HullSize = 0 -- sad
	bulletInfo.TracerName = PROJECTILECORE.TRACERLIST[ tracer ] or ""
	bulletInfo.Dir = Vector( dir[ 1 ], dir[ 2 ], dir[ 3 ] ) or ent:GetForward()
	bulletInfo.Src = Vector( pos[ 1 ], pos[ 2 ], pos[ 3 ] ) or ent:GetPos()
	-- bulletInfo.IgnoreEntity = ent
	bulletInfo.Num = 1
	bulletInfo.Spread = Vector( 0, 0, 0 )
	bulletInfo.Tracer = 1
	bulletInfo.Attacker = chip.player
	bulletInfo.Inflictor = ent
	
	

	ent:FireBullets( bulletInfo, true ) -- making this true fixes it working on servers somehow, me dum dum
	
	return 1
	
end


-- combine ball
function PROJECTILECORE.SHOOTBOLT( ent, chip, pos, vel, dmg )
	
	if ( PROJECTILECORE.BOLT_ENABLED == 0 ) then
		return nil
	end
	
	-- permission
	if ( CPPI ) then
		if ( not ent:CPPICanTool( chip.player ) ) then
			return nil
		end
	else
		if ( not isOwner( chip, ent ) ) then
			return nil
		end
	end
	
	if ( not IsValid( ent ) ) then
		return nil
	end


	-- delay
	if ( PROJECTILECORE.BOLT_DELAY > 0 ) then
		if ( ent.ProjCoreDelay ) then
			if ( CurTime() < ent.ProjCoreDelay ) then
				return nil
			end
		end
		ent.ProjCoreDelay = CurTime() + PROJECTILECORE.BOLT_DELAY
	end

	
	-- entity
	local bolt = ents.Create( "crossbow_bolt" )
    if ( not IsValid( bolt ) ) then 
		return nil
	end
	
	bolt:SetPos( Vector( pos[ 1 ], pos[ 2 ], pos[ 3 ] ) or ent:GetPos() )
	bolt:SetOwner( chip.player )
	bolt:Spawn()
	bolt:Activate()

	if ( CPPI ) then
		bolt:CPPISetOwner( chip.player )
	end
	
	local dir = Vector( vel[ 1 ], vel[ 2 ], vel[ 3 ] )
	
	local maxvel = PROJECTILECORE.BOLT_MAXVEL
	dir = maxvel > -1 and PROJECTILECORE.CLAMPVECTOR( dir, maxvel ) or dir
	
	bolt:SetVelocity( dir )
	bolt:SetAngles( dir:Angle() )


	
	-- damage
	local maxdmg = PROJECTILECORE.BOLT_MAXDMG
	dmg = maxdmg > -1 and math.Clamp( dmg, 0, maxdmg ) or dmg
	
	-- -- workaround
	-- bolt.ProjCoreDmg = 0
	-- bolt:CallOnRemove( "ProjectileCore_Explosion", function( self )
		
		-- local dmgInfo = DamageInfo()
		-- local pos = self:GetPos()
		
		-- dmgInfo:SetAttacker( chip.player )
		-- dmgInfo:SetDamage( dmg )
		-- dmgInfo:SetDamagePosition( pos )
		-- dmgInfo:SetDamageType( DMG_NEVERGIB )
		-- dmgInfo:SetInflictor( self )
		-- dmgInfo:SetReportedPosition( pos )
		
		-- util.BlastDamageInfo( dmgInfo, pos, 5 )
		
	-- end )
	



	return bolt
	
end

-- combine ball
function PROJECTILECORE.SHOOTCOMBALL( ent, chip, pos, vel )
	
	if ( PROJECTILECORE.COMBALL_ENABLED == 0 ) then
		return 0
	end
	
	-- permission
	if ( CPPI ) then
		if ( not ent:CPPICanTool( chip.player ) ) then
			return 0
		end
	else
		if ( not isOwner( chip, ent ) ) then
			return 0
		end
	end

	if ( not IsValid( ent ) ) then
		return 0
	end


	-- delay
	if ( PROJECTILECORE.COMBALL_DELAY > 0 ) then
		if ( ent.ProjCoreDelay ) then
			if ( CurTime() < ent.ProjCoreDelay ) then
				return 0
			end
		end
		ent.ProjCoreDelay = CurTime() + PROJECTILECORE.COMBALL_DELAY
	end

	
	-- entity
	local ballspawner = ents.Create( "point_combine_ball_launcher" )
    if ( not IsValid( ballspawner ) ) then 
		return 0
	end
	
	ballspawner:SetPos( Vector( pos[ 1 ], pos[ 2 ], pos[ 3 ] ) or ent:GetPos() )
	ballspawner:SetOwner( chip.player )
	ballspawner:Spawn()
	ballspawner:Activate()
	
	-- i dont think this is needed but idk
	if ( CPPI ) then
		ballspawner:CPPISetOwner( chip.player )
	end
	
	local maxspeed = PROJECTILECORE.COMBALL_MAXVEL
	local length = vel:Length() -- ouch
	local speed = maxspeed > -1 and math.Clamp( length, 0, maxspeed ) or length
	
	ballspawner:SetKeyValue( "minspeed", speed )
	ballspawner:SetKeyValue( "maxspeed", speed )
	ballspawner:SetKeyValue( "ballradius", "15" )
	ballspawner:SetKeyValue( "ballcount", "0" )
	ballspawner:SetKeyValue( "launchconenoise", 0 )
	ballspawner:SetKeyValue( "spawnflags", FVPHYSICS_WAS_THROWN )
	
	local dir = Vector( vel[ 1 ], vel[ 2 ], vel[ 3 ] )
	ballspawner:SetAngles( dir:Angle() )

	ballspawner:Fire( "LaunchBall" )
	ballspawner:Fire( "Kill", "", 0 ) -- remove the ball launcher

	return 1
	
end

-- npc grenade
function PROJECTILECORE.SHOOTGRENADE( ent, chip, pos, vel, dmg, radius, timer )
	
	if ( PROJECTILECORE.GRENADE_ENABLED == 0 ) then
		return nil
	end
	
	-- permission
	if ( CPPI ) then
		if ( not ent:CPPICanTool( chip.player ) ) then
			return nil
		end
	else
		if ( not isOwner( chip, ent ) ) then
			return nil
		end
	end
	
	if ( not IsValid( ent ) ) then
		return nil
	end


	-- delay
	if ( PROJECTILECORE.GRENADE_DELAY > 0 ) then
		if ( ent.ProjCoreDelay ) then
			if ( CurTime() < ent.ProjCoreDelay ) then
				return nil
			end
		end
		ent.ProjCoreDelay = CurTime() + PROJECTILECORE.GRENADE_DELAY
	end


	-- entity
	local frag = ents.Create( "npc_grenade_frag" )
    if ( not IsValid( frag ) ) then 
		return nil
	end
	
	frag:SetPos( Vector( pos[ 1 ], pos[ 2 ], pos[ 3 ] ) or ent:GetPos() )
	frag:SetOwner( chip.player )
	frag:Spawn()
	frag:Activate()
	
	if ( CPPI ) then
		frag:CPPISetOwner( chip.player )
	end
	
	local dir = Vector( vel[ 1 ], vel[ 2 ], vel[ 3 ] )
	frag:SetAngles( dir:Angle() )

	local maxvel = PROJECTILECORE.GRENADE_MAXVEL
	dir = maxvel > -1 and PROJECTILECORE.CLAMPVECTOR( dir, maxvel ) or dir
	frag:GetPhysicsObject():SetVelocity( dir )
	


	-- damage
	frag.ProjCoreDmg = 0
	
	local maxdmg = PROJECTILECORE.GRENADE_MAXDMG
	dmg = maxdmg > -1 and math.Clamp( dmg, 0, maxdmg ) or dmg
	
	local maxradius = PROJECTILECORE.GRENADE_MAXRADIUS
	radius = maxradius > -1 and math.Clamp( radius, 0, maxradius ) or radius
	
	frag:CallOnRemove( "ProjectileCore_Explosion", function( self )
		util.BlastDamage( self, chip.player, self:GetPos(), radius, dmg )
	end )


	
	-- timer
	local maxtimer = PROJECTILECORE.GRENADE_MAXTIMER
	local mintimer = PROJECTILECORE.GRENADE_MINTIMER
	
	if ( maxtimer < 0 ) then -- no time limit
		if ( mintimer > 0 ) then -- but minimum time limit
			if ( timer < mintimer ) then
				timer = mintimer
			end
		end
	else -- time limit
		if ( mintimer < 0 ) then -- but no minimum time limit
			if ( timer > maxtimer ) then
				timer = maxtimer
			end
		end
	end
	-- timer = math.Clamp( timer, mintimer, maxtimer )
	frag:Fire( "SetTimer", "", timer )



	cleanup.Add( chip.player, "props", frag )
	
	if ( chip.data.propSpawnUndo ) then
		undo.Create( "Frag Grenade" )
			undo.AddEntity( frag )
			undo.SetPlayer( chip.player )
		undo.Finish()
	end

	frag:CallOnRemove( "wire_expression2_propcore_remove",
		function( frag )
			chip.data.spawnedProps[ frag ] = nil
			E2totalspawnedprops = E2totalspawnedprops - 1
		end
	)

	chip.data.spawnedProps[ frag ] = chip.data.propSpawnUndo
	E2totalspawnedprops = E2totalspawnedprops + 1
	E2tempSpawnedProps = E2tempSpawnedProps + 1

	return frag
	
end

-- helicopter bomb
function PROJECTILECORE.SHOOTHELIBOMB( ent, chip, pos, vel, dmg, radius, timer )
	
	if ( PROJECTILECORE.HELIBOMB_ENABLED == 0 ) then
		return nil
	end

	-- permission
	if ( CPPI ) then
		if ( not ent:CPPICanTool( chip.player ) ) then
			return nil
		end
	else
		if ( not isOwner( chip, ent ) ) then
			return nil
		end
	end
	
	if ( not IsValid( ent ) ) then
		return nil
	end


	-- delay
	if ( PROJECTILECORE.HELIBOMB_DELAY > 0 ) then
		if ( ent.ProjCoreDelay ) then
			if ( CurTime() < ent.ProjCoreDelay ) then
				return nil
			end
		end
		ent.ProjCoreDelay = CurTime() + PROJECTILECORE.HELIBOMB_DELAY
	end

	
	-- entity
	local helibomb = ents.Create( "grenade_helicopter" )
    if ( not IsValid( helibomb ) ) then 
		return nil
	end
	
	helibomb:SetPos( Vector( pos[ 1 ], pos[ 2 ], pos[ 3 ] ) or ent:GetPos() )
	helibomb:SetOwner( chip.player )
	helibomb:Spawn()
	helibomb:Activate()

	if ( CPPI ) then
		helibomb:CPPISetOwner( chip.player )
	end
	
	local dir = Vector( vel[ 1 ], vel[ 2 ], vel[ 3 ] )
	helibomb:SetAngles( dir:Angle() )
	
	local maxvel = PROJECTILECORE.HELIBOMB_MAXVEL
	dir = maxvel > -1 and PROJECTILECORE.CLAMPVECTOR( dir, maxvel ) or dir
	helibomb:GetPhysicsObject():SetVelocity( dir )



	-- damage
	helibomb.ProjCoreDmg = 0 -- set the base entities damage to 0
	
	local maxdmg = PROJECTILECORE.HELIBOMB_MAXDMG
	dmg = maxdmg > -1 and math.Clamp( dmg, 0, maxdmg ) or dmg
	
	local maxradius = PROJECTILECORE.HELIBOMB_MAXRADIUS
	radius = maxradius > -1 and math.Clamp( radius, 0, maxradius ) or radius
	
	helibomb:CallOnRemove( "ProjectileCore_Explosion", function( self )
		util.BlastDamage( self, chip.player, self:GetPos(), radius, dmg )
	end )
	

	
	-- timer
	local maxtimer = PROJECTILECORE.HELIBOMB_MAXTIMER
	local mintimer = PROJECTILECORE.HELIBOMB_MINTIMER
	
	if ( maxtimer < 0 ) then -- no time limit
		if ( mintimer > 0 ) then -- but minimum time limit
			if ( timer < mintimer ) then
				timer = mintimer
			end
		end
	else -- time limit
		if ( mintimer < 0 ) then -- but no minimum time limit
			if ( timer > maxtimer ) then
				timer = maxtimer
			end
		end
	end
	
	helibomb:Fire( "ExplodeIn", "", timer )


	cleanup.Add( chip.player, "props", helibomb )
	
	if ( chip.data.propSpawnUndo ) then
		undo.Create( "Helicopter Bomb" )
			undo.AddEntity( helibomb )
			undo.SetPlayer( chip.player )
		undo.Finish()
	end

	helibomb:CallOnRemove( "wire_expression2_propcore_remove",
		function( helibomb )
			chip.data.spawnedProps[ helibomb ] = nil
			E2totalspawnedprops = E2totalspawnedprops - 1
		end
	)

	chip.data.spawnedProps[ helibomb ] = chip.data.propSpawnUndo
	E2totalspawnedprops = E2totalspawnedprops + 1
	E2tempSpawnedProps = E2tempSpawnedProps + 1


	return helibomb
	
end

-- combine mine
function PROJECTILECORE.SHOOTCOMMINE( ent, chip, pos, vel )
	
	if ( PROJECTILECORE.COMMINE_ENABLED == 0 ) then
		return nil
	end

	-- permission
	if ( CPPI ) then
		if ( not ent:CPPICanTool( chip.player ) ) then
			return nil
		end
	else
		if ( not isOwner( chip, ent ) ) then
			return nil
		end
	end

	if ( not IsValid( ent ) ) then
		return nil
	end
	

	-- delay
	if ( PROJECTILECORE.COMMINE_DELAY > 0 ) then
		if ( ent.ProjCoreDelay ) then
			if ( CurTime() < ent.ProjCoreDelay ) then
				return nil
			end
		end
		ent.ProjCoreDelay = CurTime() + PROJECTILECORE.COMMINE_DELAY
	end

	
	-- entity
	local mine = ents.Create( "combine_mine" )
    if ( not IsValid( mine ) ) then 
		return nil
	end
	
	mine:SetPos( Vector( pos[ 1 ], pos[ 2 ], pos[ 3 ] ) or ent:GetPos() )
	mine:SetOwner( chip.player )
	mine:Spawn()
	mine:Activate()
	
	if ( CPPI ) then
		mine:CPPISetOwner( chip.player )
	end
	
	local dir = Vector( vel[ 1 ], vel[ 2 ], vel[ 3 ] )
	mine:SetAngles( dir:Angle() )
	
	local maxvel = PROJECTILECORE.COMMINE_MAXVEL
	dir = maxvel > -1 and PROJECTILECORE.CLAMPVECTOR( dir, maxvel ) or dir
	mine:GetPhysicsObject():SetVelocity( dir )


	cleanup.Add( chip.player, "props", mine )
	
	if ( chip.data.propSpawnUndo ) then
		undo.Create( "Combine Mine" )
			undo.AddEntity( mine )
			undo.SetPlayer( chip.player )
		undo.Finish()
	end

	mine:CallOnRemove( "wire_expression2_propcore_remove",
		function( mine )
			chip.data.spawnedProps[ mine ] = nil
			E2totalspawnedprops = E2totalspawnedprops - 1
		end
	)

	chip.data.spawnedProps[ mine ] = chip.data.propSpawnUndo
	E2totalspawnedprops = E2totalspawnedprops + 1
	E2tempSpawnedProps = E2tempSpawnedProps + 1

	return mine
	
end

-- rpg
function PROJECTILECORE.SHOOTRPG( ent, chip, pos, vel, ang, dmg, radius )
	
	if ( PROJECTILECORE.RPG_ENABLED == 0 ) then
		return nil
	end

	-- permission
	if ( CPPI ) then
		if ( not ent:CPPICanTool( chip.player ) ) then
			return nil
		end
	else
		if ( not isOwner( chip, ent ) ) then
			return nil
		end
	end
	
	if ( not IsValid( ent ) ) then
		return nil
	end


	-- delay
	if ( PROJECTILECORE.RPG_DELAY > 0 ) then
		if ( ent.ProjCoreDelay ) then
			if ( CurTime() < ent.ProjCoreDelay ) then
				return nil
			end
		end
		ent.ProjCoreDelay = CurTime() + PROJECTILECORE.RPG_DELAY
	end


	
	-- entity
	local rpg = ents.Create( "rpg_missile" )
    if ( not IsValid( rpg ) ) then 
		return nil
	end
	
	rpg:SetPos( Vector( pos[ 1 ], pos[ 2 ], pos[ 3 ] ) or ent:GetPos() )
	rpg:SetOwner( ent )
	rpg:Spawn()
	rpg:Activate()
	rpg:SetAngles( Angle( ang[ 1 ], ang[ 2 ], ang[ 3 ] ) )
	
	if ( CPPI ) then
		rpg:CPPISetOwner( chip.player )
	end
	
	local dir = Vector( vel[ 1 ], vel[ 2 ], vel[ 3 ] )
	local maxvel = PROJECTILECORE.RPG_MAXVEL
	dir = maxvel > -1 and PROJECTILECORE.CLAMPVECTOR( dir, maxvel ) or dir

	rpg:SetVelocity( dir )




	-- damage
	rpg.ProjCoreDmg = 0
	
	local maxdmg = PROJECTILECORE.RPG_MAXDMG
	dmg = maxdmg > -1 and math.Clamp( dmg, 0, maxdmg ) or dmg
	
	local maxradius = PROJECTILECORE.RPG_MAXRADIUS
	radius = maxradius > -1 and math.Clamp( radius, 0, maxradius ) or radius
	
	rpg:CallOnRemove( "ProjectileCore_Explosion", function( self )
		util.BlastDamage( self, chip.player, self:GetPos(), radius, dmg )
	end )




	return rpg
	
end

-- smg grenade
function PROJECTILECORE.SHOOTSMGGRENADE( ent, chip, pos, vel, dmg, radius )
	
	if ( PROJECTILECORE.SMGGRENADE_ENABLED == 0 ) then
		return nil
	end
	
	-- permission
	if ( CPPI ) then
		if ( not ent:CPPICanTool( chip.player ) ) then
			return nil
		end
	else
		if ( not isOwner( chip, ent ) ) then
			return nil
		end
	end

	if ( not IsValid( ent ) ) then
		return nil
	end


	-- delay
	if ( PROJECTILECORE.SMGGRENADE_DELAY > 0 ) then
		if ( ent.ProjCoreDelay ) then
			if ( CurTime() < ent.ProjCoreDelay ) then
				return nil
			end
		end
		ent.ProjCoreDelay = CurTime() + PROJECTILECORE.SMGGRENADE_DELAY
	end


	
	-- entity
	local grenade = ents.Create( "grenade_ar2" )
    if ( not IsValid( grenade ) ) then 
		return nil
	end
	
	grenade:SetPos( Vector( pos[ 1 ], pos[ 2 ], pos[ 3 ] ) or ent:GetPos() )
	grenade:SetOwner( chip.player )
	grenade:Spawn()
	grenade:Activate()
	
	if ( CPPI ) then
		grenade:CPPISetOwner( chip.player )
	end
	
	local dir = Vector( vel[ 1 ], vel[ 2 ], vel[ 3 ] )
	grenade:SetAngles( dir:Angle() )
	
	local maxvel = PROJECTILECORE.SMGGRENADE_MAXVEL
	dir = maxvel > -1 and PROJECTILECORE.CLAMPVECTOR( dir, maxvel ) or dir

	grenade:SetVelocity( dir )
	


	-- damaGE
	grenade.ProjCoreDmg = 0

	local maxdmg = PROJECTILECORE.SMGGRENADE_MAXDMG
	dmg = maxdmg > -1 and math.Clamp( dmg, 0, maxdmg ) or dmg
	
	local maxradius = PROJECTILECORE.SMGGRENADE_MAXRADIUS
	radius = maxradius > -1 and math.Clamp( radius, 0, maxradius ) or radius
	
	grenade:CallOnRemove( "ProjectileCore_Explosion", function( self )
		util.BlastDamage( self, chip.player, self:GetPos(), radius, dmg )
	end )




	return grenade
	
end

-- flechette
function PROJECTILECORE.SHOOTFLECHETTE( ent, chip, pos, vel )
	
	if ( PROJECTILECORE.FLECHETTE_ENABLED == 0 or not PROJECTILECORE.EP2MOUNTED ) then
		return nil
	end

	-- permission
	if ( CPPI ) then
		if ( not ent:CPPICanTool( chip.player ) ) then
			return nil
		end
	else
		if ( not isOwner( chip, ent ) ) then
			return nil
		end
	end

	if ( not IsValid( ent ) ) then
		return nil
	end
	

	-- delay
	if ( PROJECTILECORE.FLECHETTE_DELAY > 0 ) then
		if ( ent.ProjCoreDelay ) then
			if ( CurTime() < ent.ProjCoreDelay ) then
				return nil
			end
		end
		ent.ProjCoreDelay = CurTime() + PROJECTILECORE.FLECHETTE_DELAY
	end

	
	-- entity
	local flech = ents.Create( "hunter_flechette" )
    if ( not IsValid( flech ) ) then 
		return nil
	end
	
	flech:SetPos( Vector( pos[ 1 ], pos[ 2 ], pos[ 3 ] ) or ent:GetPos() )
	flech:SetOwner( chip.player )
	flech:Spawn()
	flech:Activate()
	
	local dir = Vector( vel[ 1 ], vel[ 2 ], vel[ 3 ] )
	flech:SetAngles( dir:Angle() )

	local maxvel = PROJECTILECORE.FLECHETTE_MAXVEL
	dir = maxvel > -1 and PROJECTILECORE.CLAMPVECTOR( dir, maxvel ) or dir

	flech:SetVelocity( dir )



	return flech
	
end

-- magnusson
function PROJECTILECORE.SHOOTMAGNUSSON( ent, chip, pos, vel, dmg, radius )
	
	if ( PROJECTILECORE.MAGNUSSON_ENABLED == 0 or not PROJECTILECORE.EP2MOUNTED ) then
		return nil
	end

	-- permission
	if ( CPPI ) then
		if ( not ent:CPPICanTool( chip.player ) ) then
			return nil
		end
	else
		if ( not isOwner( chip, ent ) ) then
			return nil
		end
	end

	if ( not IsValid( ent ) ) then
		return nil
	end
	

	-- delay
	if ( PROJECTILECORE.MAGNUSSON_DELAY > 0 ) then
		if ( ent.ProjCoreDelay ) then
			if ( CurTime() < ent.ProjCoreDelay ) then
				return nil
			end
		end
		ent.ProjCoreDelay = CurTime() + PROJECTILECORE.MAGNUSSON_DELAY
	end

	
	-- entity
	local buster = ents.Create( "weapon_striderbuster" )
    if ( not IsValid( buster ) ) then 
		return nil
	end
	
	buster:SetPos( Vector( pos[ 1 ], pos[ 2 ], pos[ 3 ] ) or ent:GetPos() )
	buster:SetOwner( chip.player )
	buster:Spawn()
	buster:Activate()
	
	local dir = Vector( vel[ 1 ], vel[ 2 ], vel[ 3 ] )
	buster:SetAngles( dir:Angle() )

	local maxvel = PROJECTILECORE.MAGNUSSON_MAXVEL
	dir = maxvel > -1 and PROJECTILECORE.CLAMPVECTOR( dir, maxvel ) or dir
	
	local phys = buster:GetPhysicsObject()
	phys:SetVelocity( dir )


	-- damage
	buster.ProjCoreDmg = 0 -- set the base entities damage to 0
	
	local maxdmg = PROJECTILECORE.MAGNUSSON_MAXDMG
	dmg = maxdmg > -1 and math.Clamp( dmg, 0, maxdmg ) or dmg
	
	local maxradius = PROJECTILECORE.MAGNUSSON_MAXRADIUS
	radius = maxradius > -1 and math.Clamp( radius, 0, maxradius ) or radius
	
	buster:CallOnRemove( "ProjectileCore_Explosion", function( self )
		util.BlastDamage( self, chip.player, self:GetPos(), radius, dmg )
	end )

	
	cleanup.Add( chip.player, "props", buster )
	
	if ( chip.data.propSpawnUndo ) then
		undo.Create( "Magnusson" )
			undo.AddEntity( buster )
			undo.SetPlayer( chip.player )
		undo.Finish()
	end

	buster:CallOnRemove( "wire_expression2_propcore_remove",
		function( buster )
			chip.data.spawnedProps[ buster ] = nil
			E2totalspawnedprops = E2totalspawnedprops - 1
		end
	)

	chip.data.spawnedProps[ buster ] = chip.data.propSpawnUndo
	E2totalspawnedprops = E2totalspawnedprops + 1
	E2tempSpawnedProps = E2tempSpawnedProps + 1


	return buster
	
end




-- e2 functinasd ------------------------------------------------------------------------------------------------------------------------------------------



-- bullet
__e2setcost( 25 )
e2function number entity:shootBullet( vector pos, vector dir, number dmg )
	
	return PROJECTILECORE.SHOOTBULLET( this, self, pos,dir, dmg )
	
end
e2function number entity:shootBullet( vector pos, vector dir, number dmg, number force )
	
	return PROJECTILECORE.SHOOTBULLET( this, self, pos, dir, dmg, force )
	
end
e2function number entity:shootBullet( vector pos, vector dir, number dmg, number force, number tracertype )
	
	return PROJECTILECORE.SHOOTBULLET( this, self, pos, dir, dmg, force, tracertype )
	
end
e2function number entity:shootBullet( vector pos, vector dir, number dmg, number force, number tracertype, number dist )
	
	return PROJECTILECORE.SHOOTBULLET( this, self, pos, dir, dmg, force, tracertype, dist )
	
end



-- base projectiles
__e2setcost( 60 )
e2function entity entity:shootBolt( vector pos, vector vel, number dmg )
	
	return PROJECTILECORE.SHOOTBOLT( this, self, pos, vel, dmg )
	
end
e2function number entity:shootComBall( vector pos, vector vel )
	
	return PROJECTILECORE.SHOOTCOMBALL( this, self, pos, vel )
	
end
e2function entity entity:shootGrenade( vector pos, vector vel, number dmg, number radius, number timer )
	
	return PROJECTILECORE.SHOOTGRENADE( this, self, pos, vel, dmg, radius, timer )
	
end
e2function entity entity:shootHeliBomb( vector pos, vector vel, number dmg, number radius, number timer )
	
	return PROJECTILECORE.SHOOTHELIBOMB( this, self, pos, vel, dmg, radius, timer )
	
end
e2function entity entity:shootComMine( vector pos, vector vel )
	
	return PROJECTILECORE.SHOOTCOMMINE( this, self, pos, vel )
	
end
e2function entity entity:shootRPG( vector pos, vector vel, angle ang, number dmg, number radius )
	
	return PROJECTILECORE.SHOOTRPG( this, self, pos, vel, ang, dmg, radius )
	
end
e2function entity entity:shootSMGGrenade( vector pos, vector vel, number dmg, number radius )
	
	return PROJECTILECORE.SHOOTSMGGRENADE( this, self, pos, vel, dmg, radius )
	
end



-- ep2 projectiles
e2function entity entity:shootFlechette( vector pos, vector vel )
	
	return PROJECTILECORE.SHOOTFLECHETTE( this, self, pos, vel )
	
end
e2function entity entity:shootMagnusson( vector pos, vector vel, number dmg, number radius )
	
	return PROJECTILECORE.SHOOTMAGNUSSON( this, self, pos, vel, dmg, radius )
	
end




-- da hookess ----------------------------------------------------------------------------------------------------------------------------------------------

hook.Add( "EntityTakeDamage", "ProjectileCore", function( target, dmginfo )
	
	local attacker = dmginfo:GetAttacker()
	local inflictor = dmginfo:GetInflictor()
	
	if ( IsValid( inflictor ) ) then
		
		local dmg = inflictor.ProjCoreDmg
		
		if ( dmg and dmg > 0 ) then
			
			dmginfo:SetDamage( dmg )
			
		end
		
	end
	
end )

hook.Add( "OnEntityCreated", "ProjectileCore", function( ent )
	
	if ( not ent:IsValid() or not IsValid( ent ) ) then
		return nil
	end
	
	-- we have to wait 1 game tick for the entity to get its class/keyvalues ect.
	timer.Simple( 0, function()
		
		-- what
		if ( not ent:IsValid() or not IsValid( ent ) ) then
			return nil
		end
		
		local ent_class = ent:GetClass()
		
		-- apparently this doesnt interfere with the regular AR2? somehow
		if ( ent_class == "prop_combine_ball" ) then
			
			ent:SetKeyValue( "gmod_allowphysgun", 0 )
			ent:Fire( "Explode", "", 4 )
			
		end
		
	end )

end )


-- me
print( "Projectilecore loaded" )