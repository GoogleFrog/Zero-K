local name = "commweapon_slamrocket"
local weaponDef = {
	name                    = [[SLAM Rocket]],
	avoidFeature            = false,
	areaOfEffect            = 384,
	burnblow                = true,
	cegTag                  = [[BANISHERTRAIL]],
	commandFire             = true,
	craterBoost             = 0,
	craterMult              = 0.75,

	customParams            = {
		slot = [[3]],
		muzzleEffectFire = [[custom:STORMMUZZLE]],
	},

	damage                  = {
		default = 1120,
		subs    = 56,
	},

	edgeEffectiveness       = 0.5,
	explosionGenerator      = [[custom:xamelimpact_slam]],
	fireStarter             = 180,
	flightTime              = 5,
	impulseBoost            = 0,
	impulseFactor           = 0.4,
	interceptedByShieldType = 2,
	model                   = [[wep_m_phoenix.s3o]],
	predictBoost            = 1,
	range                   = 850,
	reloadtime              = 16,
	smokeTrail              = true,
	soundHit                = [[weapon/bomb_hit]],
	soundStart              = [[weapon/missile/missile_fire2]],
	startVelocity           = 300,
	texture2                = [[darksmoketrail]],
	tolerance               = 450,
	tracks                  = false,
	trajectoryHeight        = 0.57735, 
	turret                  = true,
	weaponAcceleration      = 50,
	weaponType              = [[MissileLauncher]],
	weaponVelocity          = 425,
}

return name, weaponDef
