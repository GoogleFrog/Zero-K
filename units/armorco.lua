unitDef = {
  unitname               = [[armorco]],
  name                   = [[Detriment]],
  description            = [[Ultimate Assault Strider]],
  acceleration           = 0.1092,
  brakeRate              = 0.2392,
  buildCostEnergy        = 24000,
  buildCostMetal         = 24000,
  builder                = false,
  buildPic               = [[ARMORCO.png]],
  buildTime              = 24000,
  canAttack              = true,
  canGuard               = true,
  canManualFire          = true,
  canMove                = true,
  canPatrol              = true,
  canstop                = [[1]],
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[100 100 100]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_fr = [[Walker Éxperimental d'Assaut Lourd]],
	description_de = [[Ultimativer Sturmläufer]],
    helptext       = [[The Detriment is the single heaviest strider in the field. It can defend itself against air attacks or use its rockets to hit distant targets, but the real meat lies in the massive gauss guns designed for one purpose - to kill other heavy units quickly and efficiently. Remember - the wise commander sends his Detriment out with adequate escorts against light unit swarms and air assaults.]],
    helptext_fr    = [[Le Detriment est le summum de la technologie. Assez solide pour résister r plusieurs missiles nucléaires, capable de repérer des unités camouflées il fait passer le Bantha pour un caniche. Son armement fait pâlir une armée enticre, et sa relative lenteur est son seul défaut. Son prix est exorbitant et éxige des sacrifices, mais une fois construit rien ne l'arrete.]],
	helptext_de    = [[Der Detriment ist der stärkste Strider auf dem Platz. Er verteidigt sich selbst gegen Luftattacken oder nutzt seine Raketen, um entfernte Ziele zu treffen. Des Weiteren besitzt er eine Gaußkanone, die nur für einen Zweck konzipiert wurde: das schnelle und sichere Töten von starken, gegnerischen Einheiten. Beachte - der kluge Feldherr schickt seinen Detriment mit angebrachter Unterstützung aus, um Gruppen leichter Gegner, bzw. Lufteinheiten in Schach zu halten.]],
	modelradius    = [[50]],
  },

  explodeAs              = [[NUCLEAR_MISSILE]],
  footprintX             = 6,
  footprintZ             = 6,
  iconType               = [[krogoth]],
  idleAutoHeal           = 30,
  idleTime               = 0,
  leaveTracks            = true,
  mass                   = 2233,
  maxDamage              = 85800,
  maxSlope               = 37,
  maxVelocity            = 1.626,
  maxWaterDepth          = 5000,
  minCloakDistance       = 150,
  movementClass          = [[AKBOT6]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM SATELLITE SUB]],
  objectName             = [[detriment.s3o]],
  script                 = [[armorco.lua]],
  seismicSignature       = 4,
  selfDestructAs         = [[NUCLEAR_MISSILE]],
  selfDestructCountdown  = 10,
  side                   = [[ARM]],
  sightDistance          = 910,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 0.8,
  trackType              = [[ComTrack]],
  trackWidth             = 60,
  turnRate               = 482,
  upright                = true,

  weapons                = {

    {
      def                = [[GAUSS]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

    {
      def                = [[AALASER]],
      badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
    },

    {
      def                = [[TACNUKE]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

    {
      def                = [[TRILASER]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },    

  },


  weaponDefs             = {

    GAUSS         = {
      name                    = [[Gauss Battery]],
      alphaDecay              = 0.12,
      areaOfEffect            = 16,
      avoidfeature            = false,
      bouncerebound           = 0.15,
      bounceslip              = 1,
      burst                   = 3,
      burstrate               = 0.2,
      cegTag                  = [[gauss_tag_h]],
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 200,
        planes  = 200,
        subs    = 10,
      },

      explosionGenerator      = [[custom:gauss_hit_h]],
      groundbounce            = 1,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 0,
      minbarrelangle          = [[-15]],
      noExplode               = true,
      noSelfDamage            = true,
      numbounce               = 40,
      range                   = 600,
      reloadtime              = 1.2,
      rgbColor                = [[0.5 1 1]],
      separation              = 0.5,
      size                    = 0.8,
      sizeDecay               = -0.1,
      soundHit                = [[weapon/gauss_hit]],
      soundStart              = [[weapon/gauss_fire]],
      sprayangle              = 800,
      stages                  = 32,
      startsmoke              = [[1]],
      tolerance               = 4096,
      turret                  = true,
      waterbounce             = 1,
      weaponType              = [[Cannon]],
      weaponVelocity          = 900,
    },


    AALASER         = {
      name                    = [[Anti-Air Laser Battery]],
      areaOfEffect            = 12,
      beamDecay               = 0.736,
      beamTime                = 0.01,
      beamttl                 = 15,
      canattackground         = false,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting      = 1,

      damage                  = {
        default = 2.25,
        planes  = 22.5,
        subs    = 1.125,
      },

      explosionGenerator      = [[custom:flash_teal7]],
      fireStarter             = 100,
      impactOnly              = true,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      laserFlareSize          = 3.75,
      minIntensity            = 1,
      noSelfDamage            = true,
      pitchtolerance          = 8192,
      range                   = 820,
      reloadtime              = 0.1,
      rgbColor                = [[0 1 1]],
      soundStart              = [[weapon/laser/rapid_laser]],
      thickness               = 2.5,
      tolerance               = 8192,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 2200,
    },

    TACNUKE = {
      name                    = [[Tactical Nuke]],
      accuracy                = 750,
      avoidFeature            = false,
      areaOfEffect            = 480,
      commandFire             = true,
      craterBoost             = 4,
      craterMult              = 3,

      damage                  = {
        default = 6000,
      },

      explosionGenerator      = [[custom:NUKE_300]],
      impulseBoost            = 0.5,
      impulseFactor           = 0.2,
      interceptedByShieldType = 1,
      model                   = [[diskball.s3o]],
      range                   = 750,
      rgbColor                = [[1 0.1 0.1]],
      reloadtime              = 15,
      size                    = 15,
      sizeDecay               = 0.03,
      soundHit                = [[explosion/mini_nuke]],
      soundStart              = [[weapon/cannon/cannon_fire2]],
      stages                  = 30,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 300,
    },
    
    TRILASER = {
      name                    = [[High-Energy Laserbeam]],
      areaOfEffect            = 14,
      beamTime                = 0.8,
      beamttl                 = 1,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 600,
        planes  = 600,
        subs    = 30,
      },

      explosionGenerator      = [[custom:flash1green]],
      fireStarter             = 90,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      largeBeamLaser          = true,
      laserFlareSize          = 10.4,
      minIntensity            = 1,
      noSelfDamage            = true,
      projectiles             = 3,
      range                   = 600,
      reloadtime              = 6,
      rgbColor                = [[0 1 0]],
      scrollSpeed             = 5,
      soundStart              = [[weapon/laser/heavy_laser3]],
      soundStartVolume        = 3,
      sweepfire               = false,
      targetMoveError         = 0.2,
      texture1                = [[largelaserdark]],
      texture2                = [[flaredark]],
      texture3                = [[flaredark]],
      texture4                = [[smallflaredark]],
      thickness               = 8,
      tileLength              = 300,
      tolerance               = 10000,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 2250,
    },    


  },


  featureDefs            = {

    DEAD  = {
      description      = [[Wreckage - Detriment]],
      blocking         = true,
      category         = [[arm_corpses]],
      damage           = 85800,
      featureDead      = [[HEAP]],
      footprintX       = 6,
      footprintZ       = 6,
      height           = [[60]],
      hitdensity       = [[150]],
      metal            = 9600,
      object           = [[armorco_dead]],
      reclaimable      = true,
      reclaimTime      = 9600,
    },

    
    HEAP  = {
      description      = [[Debris - Detriment]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 85800,
      footprintX       = 4,
      footprintZ       = 4,
      height           = [[2]],
      hitdensity       = [[105]],
      metal            = 4800,
      object           = [[debris4x4b.s3o]],
      reclaimable      = true,
      reclaimTime      = 4800,
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ armorco = unitDef })
