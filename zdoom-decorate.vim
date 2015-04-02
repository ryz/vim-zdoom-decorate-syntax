" ==========
" Vim syntax file
"      Language: ZDoom Decorate
"    Maintainer: Steve 'ryz' Hassenpflug 
" Last Modified: 2015-04-02 
"       Version: 0.1
"       Changes: 
"       Credits: Simon 'sirjuddington' Judd for SLADE and his hard work
" ==========

if exists("b:current_syntax")
    finish
endif

syntax case ignore

" ==========
" DECORATE Keywords
" ==========

" General keywords
syntax keyword decorateGeneral Actor States Spawn See Melee Missile Pain Death XDeath Burn Ice Disintegrate Raise Heal Crash Crush Wound Greetings Yes No Extreme Bounce Floor Ceiling Wall Creature Loop Stop Wait Fail Goto Ready Deselect Select Fire AltFire Hold AltHold Flash AltFlash Reload Zoom Pickup Use Drop Bright Fast Slow NoDelay CanRaise Idle Active Inactive Light Offset Action Native Const Enum Replaces LightDone Super Spray GenericFreezeDeath GenericCrush

""" Actor properties

" Generic
syntax keyword decorateGeneral Game SpawnID ConversationID

" Text
syntax keyword decorateGeneral Obituary HitObituary Tag

" Health and Pain
syntax keyword decorateGeneral Health GibHealth WoundHealth PainChance PainThreshold PainType DeathType LowMessage HealthPickup AutoUse

" Combat
syntax keyword decorateGeneral Accuracy Stamina ReactionTime Damage DamageFactor DamageType PoisonDamage PoisonDamageType ExplosionRadius ExplosionDamage RadiusDamageFactor DontHurtShooter MeleeDamage MeleeThreshold MeleeRange MaxTargetRange MissileType MissileHeight MinMissileChance WeaveIndexXY WeaveIndexZ ProjectileKickBack

" Weapon-specific properties
syntax keyword decorateGeneral Weapon Kickback DefaultKickback ReadySound SelectionOrder SisterWeapon UpSound YAdjust AmmoGive AmmoGive1 AmmoGive2 AmmoType AmmoType1 AmmoType2 AmmoUse AmmoUse1 AmmoUse2 BobStyle BobSpeed BobRangeX BobRangeY SlotNumber SlotPriority PreferredSkin MinSelectionAmmo1 MinSelectionAmmo2

" Weapon piece
syntax keyword decorateGeneral WeaponPiece Number Weapon

" Ammo-specific properties
syntax keyword decorateGeneral Ammo BackpackAmount BackpackMaxAmount DropAmount

" Physics
syntax keyword decorateGeneral Gravity Mass Radius Height BounceFactor BounceCount BounceType WallBounceFactor PushFactor DeathHeight BurnHeight ProjectilePassHeight CameraHeight MaxStepHeight MaxDropOffHeight Speed VSpeed FastSpeed FloatSpeed 

" Rendering
syntax keyword decorateGeneral RenderStyle None Normal Fuzzy OptFuzzy Translucent SoulTrans Stencil AddStencil StencilColor Shaded AddShaded Shadow Add Subtract DefaultAlpha Alpha XScale YScale Scale Translation BloodColor BloodType Decal FloatBobPhase

" Sounds
syntax keyword decorateGeneral SeeSound AttackSound PainSound BounceSound CrushPainSound DeathSound ActiveSound MeleeSound HowlSound PainSound WallBounceSound

" Multiplayer weirdness
syntax keyword decorateGeneral DesignatedTeam VisibleToTeam VisibleToPlayerClass

" Scripting
syntax keyword decorateGeneral Args ClearFlags Species Activation DropItem Skip_Super DynamicLight

" Player-specific
syntax keyword decorateGeneral Player DisplayName SoundClass Face ColorRange ColorSet ColorSetFile ClearColorSet AttackZOffset JumpZ SpawnClass ViewHeight ForwardMove SideMove MaxHealth MugshotMaxHealth RunHealth MorphWeapon FlechetteType ScoreIcon CrouchSprite DamageScreenColor StartItem InvulnerabilityMode HealRadiusType HexenArmor Portrait WeaponSlot FallingScreamSpeed GruntSpeed AirCapacity UseRange

" Inventory properties
syntax keyword decorateGeneral Inventory RestrictedTo ForbiddenTo Amount Icon InterHubAmount MaxAmount DefMaxAmount PickupFlash PickupMessage PickupSound PickupAnnouncerEntry Respawntics UseSound GiveQuest

" Fake Inventory
syntax keyword FakeInventory Respawns

" Armor
syntax keyword decorateGeneral Armor SaveAmount SavePercent MaxAbsorb MaxFullAbsorb MaxSaveAmount MaxBonus MaxBonusMax

" Powerup
syntax keyword decorateGeneral Powerup Color Colormap Duration Mode Strength Type

" Predefined powerup colors
syntax keyword decorateGeneral BlueMap GoldMap GreenMap InverseMap RedMap

" Morph powerup
syntax keyword decorateGeneral PowerMorph PlayerClass MorphStyle MorphFlash UnmorphFlash

" Morph projectile
syntax keyword decorateGeneral MorphProjectile MonsterClass Duration

" Puzzle items
syntax keyword decorateGeneral PuzzleItem Number FailMessage

" Combos
syntax keyword decorateGeneral Monster Projectile

" Damage type properties
syntax keyword decorateGeneral NoArmor Factor ReplaceFactor

" DECORATE expressions
syntax keyword decorateGeneral x y z angle momx momy momz velx vely velz pitch tid tidtohate ceilingz floorz scalex scaley score special waterlevel var int fixed_t angle_t


" ==========
" DECORATE Functions
" ==========

" General functions
syntax keyword decorateFunc A_ActiveAndUnblock A_ActiveSound A_AlertMonsters A_BabyMetal A_Bang4Cloud A_BarrelDestroy A_BasicAttack A_BetaSkullAttack A_BFGSound A_BFGSpray A_BishopMissileWeave A_Blast A_BossDeath A_BrainAwake A_BrainDie A_BrainExplode A_BrainPain A_BrainScream A_BrainSpit A_BruisAttack A_BspiAttack A_BulletAttack A_Burst A_CentaurDefend A_ChangeFlag A_ChangeVelocity A_Chase A_CheckCeiling A_CheckFlag A_CheckFloor A_CheckForReload A_CheckLOF A_CheckPlayerDone A_CheckRailReload A_CheckRange A_CheckReload A_CheckSight A_CheckSightOrRange A_CheckTerrain A_ClassBossHealth A_ClearLastHeard A_ClearReFire A_ClearShadow A_ClearSoundTarget A_ClearTarget A_CloseShotgun2 A_ComboAttack A_CopyFriendliness A_Countdown A_CountdownArg A_CPosAttack A_CPosRefire A_CStaffMissileSlither A_CustomBulletAttack A_CustomComboAttack A_CustomMeleeAttack A_CustomMissile A_CustomPunch A_CustomRailgun A_CyberAttack A_DamageChildren A_DamageMaster A_DamageSelf A_DamageSiblings A_DamageTarget A_DamageTracer A_DeQueueCorpse A_Detonate A_Die A_DropFire A_DropInventory A_DropItem A_DropWeaponPieces A_DualPainAttack A_Explode A_ExtChase A_FaceMaster A_FaceTarget A_FaceTracer A_FadeIn A_FadeOut A_FadeTo A_Fall A_FastChase A_FatAttack1 A_FatAttack2 A_FatAttack3 A_FatRaise A_Feathers A_Fire A_FireAssaultGun A_FireBFG A_FireBullets A_FireCGun A_FireCrackle A_FireCustomMissile A_FireMissile A_FireOldBFG A_FirePistol A_FirePlasma A_FireRailgun A_FireRailgunLeft A_FireRailgunRight A_FireShotgun A_FireShotgun2 A_FireSTGrenade A_FLoopActiveSound A_FreezeDeath A_FreezeDeathChunks A_GenericFreezeDeath A_GetHurt A_GiveInventory A_GiveQuestItem A_GiveToTarget A_Gravity A_GunFlash A_HeadAttack A_HideThing A_Hoof A_IceGuyDie A_Jump A_JumpIf A_JumpIfArmorType A_JumpIfCloser A_JumpIfHealthLower A_JumpIfInTargetInventory A_JumpIfInTargetLOS A_JumpIfInventory A_JumpIfMasterCloser A_JumpIfNoAmmo A_JumpIfTargetInLOS A_JumpIfTargetInsideMeleeRange A_JumpIfTargetOutsideMeleeRange A_JumpIfTracerCloser A_KeenDie A_KillChildren A_KillMaster A_KillSiblings A_KillTarget A_KillTracer A_KlaxonBlare A_Light A_Light0 A_Light1 A_Light2 A_LightInverse A_LoadShotgun2 A_Log A_LogInt A_Look A_Look2 A_LookEx A_LoopActiveSound A_Lower A_LowGravity A_M_Saw A_MeleeAttack A_Metal A_MissileAttack A_MonsterRail A_MonsterRefire A_Mushroom A_NoBlocking A_NoGravity A_OpenShotgun2 A_Pain A_PainAttack A_PainDie A_PigPain A_PlayerScream A_PlayerSkinCheck A_PlaySound A_PlaySoundEx A_PlayWeaponSound A_PosAttack A_Print A_PrintBold A_Punch A_Quake A_QueueCorpse A_RadiusGive A_RadiusThrust A_RailAttack A_RailWait A_Raise A_RaiseChildren A_RaiseMaster A_RaiseSiblings A_RearrangePointers A_Recoil A_ReFire A_Remove A_RemoveChildren A_RemoveForcefield A_RemoveMaster A_RemoveSiblings A_RemoveTarget A_RemoveTracer A_ResetReloadCounter A_Respawn A_RestoreSpecialDoomThing A_RestoreSpecialPosition A_RestoreSpecialThing1 A_RestoreSpecialThing2 A_RocketInFlight A_SargAttack A_Saw A_ScaleVelocity A_Scream A_ScreamAndUnblock A_SeekerMissile A_SelectWeapon A_SentinelBob A_SentinelRefire A_SetAngle A_SetArg A_SetBlend A_SetCrosshair A_SetDamageType A_SetFloat A_SetFloorClip A_SetGravity A_SetInvulnerable A_SetMass A_SetPitch A_SetReflective A_SetReflectiveInvulnerable A_SetScale A_SetShadow A_SetShootable A_SetSolid A_SetSpecial A_SetSpeed A_SetTics A_SetTranslucent A_SetUserArray A_SetUserVar A_ShootGun A_SkelFist A_SkelMissile A_SkelWhoosh A_SkullAttack A_SkullPop A_SpawnDebris A_SpawnFly A_SpawnItem A_SpawnItemEx A_SpawnSound A_SpidRefire A_SPosAttack A_SPosAttackUseAtkSound A_StartFire A_Stop A_StopSound A_StopSoundEx A_TakeFromTarget A_TakeInventory A_Teleport A_ThrowGrenade A_TossGib A_Tracer A_Tracer2 A_TransferPointer A_TroopAttack A_TurretLook A_UnHideThing A_UnsetFloat A_UnSetFloorClip A_UnSetInvulnerable A_UnSetReflective A_UnSetReflectiveInvulnerable A_UnSetShootable A_UnsetSolid A_VileAttack A_VileChase A_VileStart A_VileTarget A_Wander A_Warp A_WeaponReady A_Weave A_WolfAttack A_XScream A_ZoomFactor

" Special functions for DECORATE expressions
syntax keyword decorateFuncSpecial abs cos sin sqrt random random2 frandom ACS_NamedExecute ACS_NamedExecuteAlways ACS_NamedExecuteWithResult ACS_NamedLockedExecute ACS_NamedLockedExecuteDoor ACS_NamedSuspend ACS_NamedTerminate CallACS CheckClass IsPointerEqual


" ==========
" DECORATE Constants
" ==========

" General constants
syntax keyword decorateConstGeneral TRUE FALSE

" Flags
syntax keyword decorateConstFlags ACTIVATEIMPACT ACTIVATEMCROSS ACTIVATEPCROSS ACTLIKEBRIDGE ADDITIVEPOISONDAMAGE ADDITIVEPOISONDURATION ALLOWBOUNCEONACTORS ALLOWPARTICLES ALWAYSFAST ALWAYSPUFF ALWAYSRESPAWN ALWAYSTELEFRAG AMBUSH AVOIDMELEE BLASTED BLOCKEDBYSOLIDACTORS BLOODLESSIMPACT BLOODSPLATTER BOSS BOSSDEATH BOUNCEAUTOOFF BOUNCEAUTOOFFFLOORONLY BOUNCELIKEHERETIC BOUNCEONACTORS BOUNCEONCEILINGS BOUNCEONFLOORS BOUNCEONWALLS BRIGHT BUMPSPECIAL CANBLAST CANBOUNCEWATER CANNOTPUSH CANPASS CANPASS CANPUSHWALLS CANTLEAVEFLOORPIC CANTSEEK CANUSEWALLS CEILINGHUGGER CORPSE COUNTITEM COUNTKILL COUNTSECRET DEFLECT DEHEXPLOSION DOHARMSPECIES DONTBLAST DONTCORPSE DONTDRAIN DONTFALL DONTGIB DONTHARMCLASS DONTHARMSPECIES DONTHURTSPECIES DONTMORPH DONTOVERLAP DONTREFLECT DONTRIP DONTSEEKINVISIBLE DONTSPLASH DONTSQUASH DONTTRANSLATE DOOMBOUNCE DORMANT DROPOFF DROPPED EXPLOCOUNT EXPLODEONWATER EXTREMEDEATH FASTER FASTMELEE FIREDAMAGE FIRERESIST FIXMAPTHINGPOS FLOAT FLOATBOB FLOORCLIP FLOORHUGGER FOILINVUL FORCEPAIN FORCERADIUSDMG FORCEXYBILLBOARD FORCEYBILLBOARD FRIENDLY FRIGHTENED FULLVOLACTIVE FULLVOLDEATH GHOST GRENADETRAIL HERETICBOUNCE HEXENBOUNCE ICECORPSE ICEDAMAGE INCOMBAT INVISIBLE INVULNERABLE ISMONSTER JUMPDOWN JUSTATTACKED JUSTHIT LONGMELEERANGE LOOKALLAROUND LOWGRAVITY MBFBOUNCER MISSILE MISSILEEVENMORE MISSILEMORE MOVEWITHSECTOR MTHRUSPECIES NEVERFAST NEVERRESPAWN NEVERTARGET NOBLOCKMAP NOBLOCKMONST NOBLOOD NOBLOODDECALS NOBOSSRIP NOBOUNCESOUND NOCLIP NODAMAGE NODAMAGETHRUST NODROPOFF NOEXPLODEFLOOR NOEXTREMEDEATH NOFEAR NOFORWARDFALL NOGRAVITY NOICEDEATH NOINFIGHTING NOINTERACTION NOLIFTDROP NONSHOOTABLE NOPAIN NORADIUSDMG NOSECTOR NOSKIN NOSPLASHALERT NOTARGET NOTARGETSWITCH NOTAUTOAIMED NOTDMATCH NOTELEFRAG NOTELEOTHER NOTELEPORT NOTELESTOMP NOTIMEFREEZE NOTONAUTOMAP NOTRIGGER NOVERTICALMELEERANGE NOWALLBOUNCESND OLDRADIUSDMG PAINLESS PICKUP PIERCEARMOR PUFFGETSOWNER PUFFONACTORS PUSHABLE QUARTERGRAVITY QUICKTORETALIATE RANDOMIZE REFLECTIVE RELATIVETOFLOOR RIPPER ROCKETTRAIL SCREENSEEKER SEEINVISIBLE SEEKERMISSILE SEESDAGGERS SHADOW SHIELDREFLECT SHOOTABLE SHORTMISSILERANGE SKULLFLY SKYEXPLODE SLIDESONWALLS SOLID SPAWNCEILING SPAWNFLOAT SPAWNSOUNDSOURCE SPECIAL SPECIALFIREDAMAGE SPECIALFLOORCLIP SPECTRAL STANDSTILL STAYMORPHED STEALTH STEPMISSILE STRIFEDAMAGE SUMMONEDMONSTER SYNCHRONIZED TELEPORT TELESTOMP TERRAIN THRUACTORS THRUGHOST THRUSPECIES TOUCHY USEBOUNCESTATE USESPECIAL VISIBILITYPULSE VULNERABLE WEAPONSPAWN WINDTHRUST

" Skulltag/Zandronum specific multiplayer flags
syntax keyword decorateConstFlagsSkulltag ALLOWCLIENTSPAWN CLIENTSIDEONLY SCOREPILLAR NONETID


" ==========
" Matches
" ==========

syntax match decorateComment '//.*$'


" ==========
" Regions
" ==========

syntax region decorateString start='"' end= '"'


" ==========
" Syntax highlighting
" ==========

" def means default color - colorschemes can override them

let b:current_syntax = "zdec"

hi def link decorateGeneral Statement
hi link decorateComment Comment
hi link decorateString String
hi link decorateFunc Function

hi link decorateConstGeneral Type
hi link decorateConstFlags Type
hi link decorateConstFlagsSkulltag Type
