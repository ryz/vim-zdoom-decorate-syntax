" ==========
" Vim syntax file
"      Language: ZDoom Decorate
"    Maintainer: Steve 'ryz' Hassenpflug <ryzawy@gmail.com>
" Last Modified: 2015-04-02 
"       Version: 1.0
"       Changes: All keywords, functions and constants from SLADE are in
"                See https://github.com/ryz/vim-zdoom-decorate-syntax for the
"                latest version!
"       Credits: Simon 'sirjuddington' Judd for SLADE and his hard work!
" ==========

"if exists("b:current_syntax")
"    finish
"endif

syntax case ignore

" ==========
" DECORATE Keywords
" ==========

" General keywords
syntax keyword decorateGeneral Actor States Spawn See Melee Missile Pain Death XDeath Burn Ice Disintegrate Raise Heal Crash Crush Wound Greetings Yes No Extreme Bounce Floor Ceiling Wall Creature Loop Stop Wait Fail Goto Ready Deselect Select Fire AltFire Hold AltHold Flash AltFlash Reload Zoom Pickup Use Drop Bright Fast Slow NoDelay CanRaise Idle Active Inactive Light Offset Action Native Const Enum Replaces LightDone Super Spray GenericFreezeDeath GenericCrush
syntax keyword decorateGeneral #INCLUDE

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

" Restricted functions
syntax keyword decorateFunc A_IceSetTics A_BridgeOrbit A_BridgeInit A_SpawnSingleItem

" Scripted marines
syntax keyword decorateFunc A_M_Refire A_M_CheckAttack A_MarineChase A_MarineLook A_MarineNoise A_M_Punch A_M_SawRefire A_M_FirePistol A_M_FireShotgun A_M_FireShotgun2 A_M_FireCGun A_M_FireMissile A_M_FirePlasma A_M_FireRailgun A_M_BFGsound A_M_FireBFG

" Heretic
syntax keyword decorateFunc A_BeakRaise A_BeakAttackPL1 A_BeakAttackPL2 A_Sor1Pain A_Sor1Chase A_Srcr1Attack A_SorcererRise A_Srcr2Decide A_Srcr2Attack A_Sor2DthInit A_Sor2DthLoop A_BlueSpark A_GenWizard A_Timebomb A_ImpMsAttack A_ImpDeath A_ImpXDeath1 A_ImpExplode A_PodPain A_RemovePod A_MakePod A_AccTeleGlitter A_VolcanoSet A_VolcanoBlast A_VolcBallImpact A_StaffAttack A_FireGoldWandPL1 A_FireGoldWandPL2 A_FireCrossbowPL1 A_FireCrossbowPL2 A_GauntletAttack A_FireMacePL1 A_FireMacePL2 A_MacePL1Check A_MaceBallImpact A_MaceBallImpact2 A_DeathBallImpact A_FireBlasterPL1 A_SpawnRippers A_FireSkullRodPL1 A_FireSkullRodPL2 A_AddPlayerRain A_HideInCeiling A_SkullRodStorm A_RainImpact A_FirePhoenixPL1 A_InitPhoenixPL2 A_FirePhoenixPL2 A_ShutdownPhoenixPL2 A_PhoenixPuff A_FlameEnd A_FloatPuff A_LichAttack A_LichIceImpact A_LichFireGrow A_WhirlwindSeek A_MinotaurDecide A_MinotaurAtk1 A_MinotaurAtk2 A_MinotaurAtk3 A_MinotaurCharge A_MinotaurLook A_MinotaurRoam A_MinotaurChase A_MinotaurDeath A_MntrFloorFire A_KnightAttack A_DripBlood A_GhostOff A_WizAtk1 A_WizAtk2 A_WizAtk3

" Hexen
syntax keyword decorateFunc A_BatSpawnInit A_BatSpawn A_BatMove A_BishopChase A_BishopDecide A_BishopDoBlur A_BishopSpawnBlur A_BishopPainBlur A_BishopAttack A_BishopAttack2 A_ClericAttack A_FighterAttack A_CFlameAttack A_CFlameRotate A_CFlamePuff A_CFlameMissile A_CHolyAttack A_CHolyPalette A_CHolyAttack2 A_CHolySeek A_CHolyCheckScream A_CHolyTail A_CMaceAttack A_CStaffInitBlink A_CStaffCheckBlink A_CStaffCheck A_CStaffAttack A_DragonInitFlight A_DragonFlap A_DragonFlight A_DragonPain A_DragonAttack A_DragonCheckCrash A_DragonFX2 A_FAxeCheckUp A_FAxeCheckReady A_FAxeCheckAtk A_FAxeAttack A_FAxeCheckUpG A_FAxeCheckReadyG A_FPunchAttack A_FHammerAttack A_FHammerThrow A_FSwordAttack A_FSwordFlames A_FiredRocks A_FiredChase A_FiredAttack A_FiredSplotch A_SmBounce A_PoisonBagInit A_TimeBomb A_CheckThrowBomb A_CheckThrowBomb2 A_PoisonBagDamage A_PoisonBagCheck A_PoisonShroom A_FogSpawn A_FogMove A_SorcSpinBalls A_SpeedBalls A_SorcBossAttack A_SpawnFizzle A_SpawnBishop A_SorcererBishopEntry A_SorcBallOrbit A_SorcBallPop A_BounceCheck A_SorcFX1Seek A_SorcFX2Split A_SorcFX2Orbit A_SorcFX4Check A_PotteryExplode A_PotteryChooseBit A_PotteryCheck A_CorpseBloodDrip A_CorpseExplode A_LeafSpawn A_LeafThrust A_LeafCheck A_SoAExplode A_BellReset1 A_BellReset2 A_IceGuyLook A_IceGuyChase A_IceGuyAttack A_IceGuyMissileExplode A_KoraxChase A_KoraxDecide A_KoraxBonePop A_KoraxMissile A_KoraxCommand A_KSpiritRoam A_KBolt A_KBoltRaise A_MageAttack A_FireConePL1 A_ShedShard A_LightningReady A_MLightningAttack A_LightningZap A_LightningClip A_LightningRemove A_LastZap A_ZapMimic A_MStaffAttack A_MStaffPalette A_MStaffTrack A_SnoutAttack A_SerpentHumpDecide A_SerpentHide A_SerpentCheckForAttack A_SerpentSpawnGibs A_SerpentUnHide A_SerpentRaiseHump A_SerpentLowerHump A_SerpentChooseAttack A_SerpentMeleeAttack A_SerpentHeadCheck A_FloatGib A_DelayGib A_SinkGib A_ThrustRaise A_ThrustImpale A_ThrustLower A_ThrustInitDn A_ThrustInitUp A_Summon A_TeloSpawnA A_TeloSpawnB A_TeloSpawnC A_TeloSpawnD A_CheckTeleRing A_WraithInit A_WraithChase A_WraithMelee A_WraithRaiseInit A_WraithRaise A_WraithFX2 A_WraithFX3

" Strife
syntax keyword decorateFunc A_BeShadowyFoe A_AcolyteBits A_AcolyteDie A_HideDecepticon A_AlienSpectreDeath A_CrusaderChoose A_CrusaderSweepLeft A_CrusaderSweepRight A_CrusaderRefire A_CrusaderDeath A_SpawnEntity A_EntityAttack A_EntityDeath A_SubEntityDeath A_InquisitorWalk A_InquisitorDecide A_InquisitorAttack A_InquisitorJump A_InquisitorCheckLand A_TossArm A_ReaverRanged A_LoremasterChain A_WakeOracleSpectre A_ProgrammerMelee A_SpawnProgrammerBase A_ProgrammerDeath A_SpotLightning A_ReaverRanged A_Beacon A_SentinelAttack A_SelectPiece A_SelectSigilView A_SelectSigilDown A_SelectSigilAttack A_SigilCharge A_FireSigil1 A_FireSigil2 A_FireSigil3 A_FireSigil4 A_FireSigil5 A_SpectreChunkSmall A_SpectreChunkLarge A_Spectre3Attack A_SpotLightning A_SpectralBigBallLightning A_SpectralLightningTail A_SpectralLightning A_StalkerLookInit A_StalkerChaseDecide A_StalkerWalk A_StalkerDrop A_StalkerAttack A_ItBurnsItBurns A_CrispyPlayer A_HandLower A_JabDagger A_FireMiniMissile A_FireFlamer A_FlameDie A_ClearFlash A_ShowElectricFlash A_FireArrow A_FireMauler1 A_FireMauler2Pre A_FireMauler2 A_MaulerTorpedoWave A_Burnarea A_Burnination A_FireGrenade A_TemplarAttack A_ExtraLightOff A_Explode512 A_LightGoesOut

" Special functions for DECORATE expressions
syntax keyword decorateFuncSpecial abs cos sin sqrt random random2 frandom ACS_NamedExecute ACS_NamedExecuteAlways ACS_NamedExecuteWithResult ACS_NamedLockedExecute ACS_NamedLockedExecuteDoor ACS_NamedSuspend ACS_NamedTerminate CallACS CheckClass IsPointerEqual

" Internal use funcs only, normally
syntax keyword decorateFunc A_Turn A_LineEffect A_CallSpecial

" Action specials, can be called from within DECORATE
syntax keyword decorateFunc ACS_Execute ACS_ExecuteAlways ACS_ExecuteWithResult ACS_LockedExecute ACS_LockedExecuteDoor ACS_Suspend ACS_Terminate Autosave Ceiling_CrushAndRaise Ceiling_CrushAndRaiseA Ceiling_CrushAndRaiseDist Ceiling_CrushAndRaiseSilentA Ceiling_CrushAndRaiseSilentDist Ceiling_CrushRaiseAndStay Ceiling_CrushRaiseAndStayA Ceiling_CrushRaiseAndStaySilA Ceiling_CrushStop Ceiling_LowerAndCrush Ceiling_LowerAndCrushDist Ceiling_LowerByValue Ceiling_LowerByValueTimes8 Ceiling_LowerInstant Ceiling_LowerToFloor Ceiling_LowerToHighestFloor Ceiling_LowerToLowest Ceiling_MoveToValue Ceiling_MoveToValueTimes8 Ceiling_RaiseByValue Ceiling_RaiseByValueTimes8 Ceiling_RaiseInstant Ceiling_RaiseToNearest Ceiling_Waggle ChangeCamera ChangeSkill ClearForceField DamageThing Door_Animated Door_Close Door_CloseWaitOpen Door_LockedRaise Door_Open Door_Raise Elevator_LowerToNearest Elevator_MoveToFloor Elevator_RaiseToNearest Exit_Normal Exit_Secret Floor_CrushStop Floor_Donut Floor_LowerByValue Floor_LowerByValueTimes8 Floor_LowerInstant Floor_LowerToHighest Floor_LowerToLowest Floor_LowerToLowestTxTy Floor_LowerToNearest Floor_MoveToValue Floor_MoveToValueTimes8 Floor_RaiseAndCrush Floor_RaiseAndCrushDoom Floor_RaiseByTexture Floor_RaiseByValue Floor_RaiseByValueTimes8 Floor_RaiseByValueTxTy Floor_RaiseInstant Floor_RaiseToHighest Floor_RaiseToLowestCeiling Floor_RaiseToNearest Floor_TransferNumeric Floor_TransferTrigger Floor_Waggle FloorAndCeiling_LowerByValue FloorAndCeiling_LowerRaise FloorAndCeiling_RaiseByValue ForceField FS_Execute Generic_Ceiling Generic_Crusher Generic_Crusher2 Generic_Door Generic_Floor Generic_Lift Generic_Stairs GlassBreak HealThing Light_ChangeToValue Light_Fade Light_Flicker Light_ForceLightning Light_Glow Light_LowerByValue Light_MaxNeighbor Light_MinNeighbor Light_RaiseByValue Light_Stop Light_Strobe Light_StrobeDoom Line_AlignCeiling Line_AlignFloor Line_SetBlocking Line_SetTextureOffset Line_SetTextureScale NoiseAlert Pillar_Build Pillar_BuildAndCrush Pillar_Open Plat_DownByValue Plat_DownWaitUpStay Plat_DownWaitUpStayLip Plat_PerpetualRaise Plat_PerpetualRaiseLip Plat_RaiseAndStayTx0 Plat_Stop Plat_ToggleCeiling Plat_UpByValue Plat_UpByValueStayTx Plat_UpNearestWaitDownStay Plat_UpWaitDownStay Polyobj_DoorSlide Polyobj_DoorSwing Polyobj_Move Polyobj_MoveTimes8 Polyobj_MoveTo Polyobj_MoveToSpot Polyobj_OR_Move Polyobj_OR_MoveTimes8 Polyobj_OR_MoveTo Polyobj_OR_MoveToSpot Polyobj_OR_RotateLeft Polyobj_OR_RotateRight Polyobj_RotateLeft Polyobj_RotateRight Polyobj_Stop Radius_Quake Scroll_Ceiling Scroll_Floor Scroll_Texture_Both Scroll_Wall Sector_ChangeFlags Sector_ChangeSound Sector_SetCeilingPanning Sector_SetCeilingScale Sector_SetCeilingScale2 Sector_SetColor Sector_SetCurrent Sector_SetDamage Sector_SetFade Sector_SetFloorPanning Sector_SetFloorScale Sector_SetFloorScale2 Sector_SetFriction Sector_SetGravity Sector_SetLink Sector_SetPlaneReflection Sector_SetRotation Sector_SetTranslucent Sector_SetWind SendToCommunicator SetGlobalFogParameter SetPlayerProperty Stairs_BuildDown Stairs_BuildDownSync Stairs_BuildUp Stairs_BuildUpDoom Stairs_BuildUpSync StartConversation Teleport Teleport_EndGame Teleport_Line Teleport_NewMap Teleport_NoFog Teleport_NoStop Teleport_ZombieChanger TeleportGroup TeleportInSector TeleportOther Thing_Activate Thing_ChangeTID Thing_Damage Thing_Deactivate Thing_Destroy Thing_Hate Thing_Move Thing_Projectile Thing_ProjectileAimed Thing_ProjectileGravity Thing_ProjectileIntercept Thing_Raise Thing_Remove Thing_SetConversation Thing_SetGoal Thing_SetSpecial Thing_SetTranslation Thing_Spawn Thing_SpawnFacing Thing_SpawnNoFog Thing_Stop ThrustThing ThrustThingZ TranslucentLine UsePuzzleItem


" ==========
" DECORATE Constants
" ==========

" General constants
syntax keyword decorateConstGeneral TRUE FALSE

" Flags
syntax keyword decorateConstFlags ACTIVATEIMPACT ACTIVATEMCROSS ACTIVATEPCROSS ACTLIKEBRIDGE ADDITIVEPOISONDAMAGE ADDITIVEPOISONDURATION ALLOWBOUNCEONACTORS ALLOWPARTICLES ALWAYSFAST ALWAYSPUFF ALWAYSRESPAWN ALWAYSTELEFRAG AMBUSH AVOIDMELEE BLASTED BLOCKEDBYSOLIDACTORS BLOODLESSIMPACT BLOODSPLATTER BOSS BOSSDEATH BOUNCEAUTOOFF BOUNCEAUTOOFFFLOORONLY BOUNCELIKEHERETIC BOUNCEONACTORS BOUNCEONCEILINGS BOUNCEONFLOORS BOUNCEONWALLS BRIGHT BUMPSPECIAL CANBLAST CANBOUNCEWATER CANNOTPUSH CANPASS CANPASS CANPUSHWALLS CANTLEAVEFLOORPIC CANTSEEK CANUSEWALLS CEILINGHUGGER CORPSE COUNTITEM COUNTKILL COUNTSECRET DEFLECT DEHEXPLOSION DOHARMSPECIES DONTBLAST DONTCORPSE DONTDRAIN DONTFALL DONTGIB DONTHARMCLASS DONTHARMSPECIES DONTHURTSPECIES DONTMORPH DONTOVERLAP DONTREFLECT DONTRIP DONTSEEKINVISIBLE DONTSPLASH DONTSQUASH DONTTRANSLATE DOOMBOUNCE DORMANT DROPOFF DROPPED EXPLOCOUNT EXPLODEONWATER EXTREMEDEATH FASTER FASTMELEE FIREDAMAGE FIRERESIST FIXMAPTHINGPOS FLOAT FLOATBOB FLOORCLIP FLOORHUGGER FOILINVUL FORCEPAIN FORCERADIUSDMG FORCEXYBILLBOARD FORCEYBILLBOARD FRIENDLY FRIGHTENED FULLVOLACTIVE FULLVOLDEATH GHOST GRENADETRAIL HERETICBOUNCE HEXENBOUNCE ICECORPSE ICEDAMAGE INCOMBAT INVISIBLE INVULNERABLE ISMONSTER JUMPDOWN JUSTATTACKED JUSTHIT LONGMELEERANGE LOOKALLAROUND LOWGRAVITY MBFBOUNCER MISSILE MISSILEEVENMORE MISSILEMORE MOVEWITHSECTOR MTHRUSPECIES NEVERFAST NEVERRESPAWN NEVERTARGET NOBLOCKMAP NOBLOCKMONST NOBLOOD NOBLOODDECALS NOBOSSRIP NOBOUNCESOUND NOCLIP NODAMAGE NODAMAGETHRUST NODROPOFF NOEXPLODEFLOOR NOEXTREMEDEATH NOFEAR NOFORWARDFALL NOGRAVITY NOICEDEATH NOINFIGHTING NOINTERACTION NOLIFTDROP NONSHOOTABLE NOPAIN NORADIUSDMG NOSECTOR NOSKIN NOSPLASHALERT NOTARGET NOTARGETSWITCH NOTAUTOAIMED NOTDMATCH NOTELEFRAG NOTELEOTHER NOTELEPORT NOTELESTOMP NOTIMEFREEZE NOTONAUTOMAP NOTRIGGER NOVERTICALMELEERANGE NOWALLBOUNCESND OLDRADIUSDMG PAINLESS PICKUP PIERCEARMOR PUFFGETSOWNER PUFFONACTORS PUSHABLE QUARTERGRAVITY QUICKTORETALIATE RANDOMIZE REFLECTIVE RELATIVETOFLOOR RIPPER ROCKETTRAIL SCREENSEEKER SEEINVISIBLE SEEKERMISSILE SEESDAGGERS SHADOW SHIELDREFLECT SHOOTABLE SHORTMISSILERANGE SKULLFLY SKYEXPLODE SLIDESONWALLS SOLID SPAWNCEILING SPAWNFLOAT SPAWNSOUNDSOURCE SPECIAL SPECIALFIREDAMAGE SPECIALFLOORCLIP SPECTRAL STANDSTILL STAYMORPHED STEALTH STEPMISSILE STRIFEDAMAGE SUMMONEDMONSTER SYNCHRONIZED TELEPORT TELESTOMP TERRAIN THRUACTORS THRUGHOST THRUSPECIES TOUCHY USEBOUNCESTATE USESPECIAL VISIBILITYPULSE VULNERABLE WEAPONSPAWN WINDTHRUST

" Inventory
syntax keyword decorateConstGeneral INVENTORY QUIET AUTOACTIVATE UNDROPPABLE INVBAR HUBPOWER PERSISTENTPOWER INTERHUBSTRIP PICKUPFLASH ALWAYSPICKUP FANCYPICKUPSOUND BIGPOWERUP KEEPDEPLETED IGNORESKILL ADDITIVETIME UNTOSSABLE RESTRICTABSOLUTELY NEVERRESPAWN NOSCREENFLASH NOATTENPICKUPSOUND TOSSED

" PlayerPawn
syntax keyword decorateConstGeneral PLAYERPAWN CANSUPERMORPH CROUCHABLEMORPH NOTHRUSTWHENINVUL

" PowerSpeed
syntax keyword decorateConstGeneral POWERSPEED NOTRAIL

" Weapon
syntax keyword decorateConstGeneral WEAPON NOAUTOFIRE READYSNDHALF DONTBOB AXEBLOOD NOALERT AMMO_OPTIONAL ALT_AMMO_OPTIONAL AMMO_CHECKBOTH PRIMARY_USES_BOTH ALT_USES_BOTH WIMPY_WEAPON POWERED_UP STAFF2_KICKBACK EXPLOSIVE MELEEWEAPON BFG CHEATNOTWEAPON NO_AUTO_SWITCH NOAUTOAIM

" Thing activation
syntax keyword decorateConstGeneral THINGSPEC_Default THINGSPEC_ThingActs THINGSPEC_TriggerActs THINGSPEC_ThingTargets THINGSPEC_TriggerTargets THINGSPEC_MonsterTrigger THINGSPEC_MissileTrigger THINGSPEC_ClearSpecial THINGSPEC_NoDeathSpecial THINGSPEC_Activate THINGSPEC_Deactivate THINGSPEC_Switch AF_Default AF_ThingActs AF_ThingTargets AF_TriggerTargets AF_MonsterTrigger AF_MissileTrigger AF_ClearSpecial AF_NoDeathSpecial AF_TriggerActs

" Bounctype and game constants
syntax keyword decorateConstGeneral Doom Heretic Hexen Chex Raven Strife Classic Grenade DoomCompat HereticCompat HexenCompat

" GZDoom constants, source: gzdoom.pk3
syntax keyword decorateConstGeneral AAPTR_DEFAULT AAPTR_FRIENDPLAYER AAPTR_LINETARGET AAPTR_MASTER AAPTR_NULL AAPTR_PLAYER_GETCONVERSATION AAPTR_PLAYER_GETTARGET AAPTR_PLAYER1 AAPTR_PLAYER2 AAPTR_PLAYER3 AAPTR_PLAYER4 AAPTR_PLAYER5 AAPTR_PLAYER6 AAPTR_PLAYER7 AAPTR_PLAYER8 AAPTR_TARGET AAPTR_TRACER AF_ClearSpecial AF_Default AF_MissileTrigger AF_MonsterTrigger AF_NoDeathSpecial AF_ThingActs AF_ThingTargets AF_TriggerActs AF_TriggerTargets AMF_TARGETEMITTER AMF_TARGETNONPLAYER AMF_EMITFROMTARGET ATTN_IDLE ATTN_NONE ATTN_NORM ATTN_STATIC BF_AFFECTBOSSES BF_DONTWARN BF_USEAMMO BF_NOIMPACTDAMAGE BLOCKF_CREATURES BLOCKF_EVERYTHING BLOCKF_FLOATERS BLOCKF_MONSTERS BLOCKF_PLAYERS BLOCKF_PROJECTILES BLOCKF_RAILING BLOCKF_USE CBAF_AIMFACING CBAF_EXPLICITANGLE CBAF_NOPITCH CBAF_NORANDOM CBAF_NORANDOMPUFFZ CHAN_5 CHAN_6 CHAN_7 CHAN_AUTO CHAN_BODY CHAN_ITEM CHAN_LISTENERZ CHAN_MAYBE_LOCAL CHAN_NOPAUSE CHAN_UI CHAN_VOICE CHAN_WEAPON CHF_DONTMOVE CHF_FASTCHASE CHF_NIGHTMAREFAST CHF_NOPLAYACTIVE CHF_RESURRECT CMF_ABSOLUTEANGLE CLOFF_NOAIM_VERT CLOFF_NOAIM_HORZ CLOFF_AIM_VERT_NOOFFSET CLOFF_FROMBASE CLOFF_MUL_HEIGHT CLOFF_MUL_WIDTH CLOFF_JUMPENEMY CLOFF_JUMPFRIEND CLOFF_JUMPOBJECT CLOFF_JUMPNONHOSTILE CLOFF_SKIPENEMY CLOFF_SKIPFRIEND CLOFF_SKIPOBJECT CLOFF_SKIPNONHOSTILE CLOFF_JUMP_ON_MISS CLOFF_MUSTBESHOOTABLE CLOFF_MUSTBEGHOST CLOFF_IGNOREGHOST CLOFF_MUSTBESOLID CLOFF_SKIPTARGET CLOFF_BEYONDTARGET CLOFF_ALLOWNULL CLOFF_CHECKPARTIAL CLOFF_SKIPOBSTACLES CLOFF_NOAIM CMF_ABSOLUTEPITCH CMF_AIMDIRECTION CMF_AIMOFFSET CMF_CHECKTARGETDEAD CMF_OFFSETPITCH CMF_SAVEPITCH CMF_TRACKOWNER CPF_DAGGER CPF_PULLIN CPF_USEAMMO CPF_NORANDOMPUFFZ CVF_RELATIVE CVF_REPLACE

" Flags for A_Damage* funcs
syntax keyword decorateConstGeneral DMSS_AFFECTARMOR DMSS_FOILINVUL DMSS_KILL DMSS_NOFACTOR FBF_EXPLICITANGLE FBF_NOFLASH FBF_NOPITCH FBF_NORANDOM FBF_USEAMMO FBF_NORANDOMPUFFZ FPF_AIMATANGLE FPF_TRANSFERTRANSLATION GFF_NOEXTCHANGE

" Flags for A_JumpIfTargetInLOS and A_JumpIfInTargetLOS 
syntax keyword decorateConstGeneral JLOSF_ALLYNOJUMP JLOSF_CHECKMASTER JLOSF_CHECKTRACER JLOSF_CLOSENOFOV JLOSF_CLOSENOJUMP JLOSF_CLOSENOSIGHT JLOSF_COMBATANTONLY JLOSF_DEADNOJUMP JLOSF_FLIPFOV JLOSF_NOSIGHT JLOSF_PROJECTILE JLOSF_TARGETLOS JLOSF_NOAUTOAIM

" Flags for A_Kill* funcs
syntax keyword decorateConstGeneral KILS_FOILINVUL KILS_KILLMISSILES KILS_NOMONSTERS LOF_DONTCHASEGOAL LOF_FULLVOLSEESOUND LOF_NOJUMP LOF_NOSEESOUND LOF_NOSIGHTCHECK LOF_NOSOUNDCHECK MRF_ADDSTAMINA MRF_FAILNOLAUGH MRF_FAILNOTELEFRAG MRF_FULLHEALTH MRF_LOSEACTUALWEAPON MRF_NEWTIDBEHAVIOUR MRF_UNDOBYCHAOSDEVICE MRF_UNDOBYDEATH MRF_UNDOBYDEATHFORCED MRF_UNDOBYDEATHSAVES MRF_UNDOBYTOMEOFPOWER MRF_WHENINVULNERABLE MSF_Classic MSF_DontHurt MSF_Standard PAF_AIMFACING PAF_NOSKULLATTACK PAF_NOTARGET PROP_ALLMAP PROP_BUDDHA PROP_FLIGHT PROP_FLY PROP_FROZEN PROP_INFRARED PROP_INSTANTWEAPONSWITCH PROP_INVISIBILITY PROP_INVULNERABILITY PROP_NOTARGET PROP_RADIATIONSUIT PROP_SPEED PROP_STRENGTH PROP_TOTALLYFROZEN PROP_WEAPONLEVEL2 PTROP_NOSAFEGUARDS PTROP_UNSAFEMASTER PTROP_UNSAFETARGET RGF_CENTERZ RGF_CORPSES RGF_CUBE RGF_EXPLICITANGLE RGF_FULLBRIGHT RGF_GIVESELF RGF_MONSTERS RGF_NOMASTER RGF_NOPIERCING RGF_NOTARGET RGF_NOTRACER RGF_OBJECTS RGF_PLAYERS RGF_SILENT RGF_VOODOO

" Flags for A_Remove* funcs
syntax keyword decorateConstGeneral RMVF_EVERYTHING RMVF_MISC RMVF_MISSILES RMVF_NOMONSTERS RSF_FOG RSF_KEEPTARGET RSF_TELEFRAG RTF_AFFECTSOURCE RTF_NOIMPACTDAMAGE RTF_NOTMISSILE SF_NOPULLIN SF_NORANDOM SF_NOTURN SF_NOUSEAMMO SF_NOUSEAMMOMISS SF_RANDOMLIGHTBOTH SF_RANDOMLIGHTHIT SF_RANDOMLIGHTMISS SMF_CURSPEED SMF_LOOK SMF_PRECISE SPF_FORCECLAMP SPF_INTERPOLATE

" A_SpawnItemEx flags
syntax keyword decorateConstGeneral SXF_ABSOLUTEANGLE SXF_ABSOLUTEMOMENTUM SXF_ABSOLUTEPOSITION SXF_ABSOLUTEVELOCITY SXF_CLIENTSIDE SXF_NOCHECKPOSITION SXF_SETMASTER SXF_TELEFRAG SXF_TRANSFERAMBUSHFLAG SXF_TRANSFERPITCH SXF_TRANSFERPOINTERS SXF_TRANSFERTRANSLATION SXF_USEBLOODCOLOR SXF_CLEARCALLERTID SXF_MULTIPLYSPEED SXF_TRANSFERSCALE SXF_TRANSFERSPECIAL SXF_CLEARCALLERSPECIAL SXF_TRANSFERSTENCILCOL SXF_TRANSFERALPHA SXF_TRANSFERRENDERSTYLE SXF_SETTARGET SXF_SETTRACER SXF_NOPOINTERS SXF_ORIGINATOR TF_RANDOMDECIDE TF_TELEFRAG THINGSPEC_ClearSpecial THINGSPEC_Default THINGSPEC_MissileTrigger THINGSPEC_MonsterTrigger THINGSPEC_NoDeathSpecial THINGSPEC_ThingActs THINGSPEC_ThingTargets THINGSPEC_TriggerActs THINGSPEC_TriggerTargets TIF_NOTAKEINFINITE VAF_DMGTYPEAPPLYTODIRECT WAF_NORANDOM WAF_USEPUFF WARPF_ABSOLUTEANGLE WARPF_ABSOLUTEOFFSET WARPF_COPYINTERPOLATION WARPF_INTERPOLATE WARPF_NOCHECKPOSITION WARPF_STOP WARPF_TESTONLY WARPF_TOFLOOR WARPF_USECALLERANGLE WARPF_WARPINTERPOLATION WAPRF_ABSOLUTEPOSITION WRF_ALLOWRELOAD WRF_ALLOWZOOM WRF_NOBOB WRF_NOFIRE WRF_NOPRIMARY WRF_NOSECONDARY WRF_NOSWITCH WRF_DISABLESWITCH XF_HURTSOURCE XF_NOTMISSILE

" A_ZoomFactor consts 
syntax keyword decorateConstGeneral ZOOM_INSTANT ZOOM_NOSCALETURNING

" Additional consts
syntax keyword decorateConstGeneral ChunkFlags BeastAttack BeastPuff ClinkAttack ImpMeAttack TeleGlitter TeleGlitter2 StaffAttack BoltSpark MummyAttack MummyAttack2 CentaurDrop DemonAttack1 EttinAttack DropMace PigAttack SpectreMelee PeasantAttack spectrespawn ReaverMelee

" Skulltag/Zandronum specific multiplayer flags
syntax keyword decorateConstFlagsSkulltag ALLOWCLIENTSPAWN CLIENTSIDEONLY SCOREPILLAR NONETID


" ==========
" Matches
" ==========

" ints
syntax match decorateNumber '\d\+'
"syntax match decorateNumber '[-+]\d\+'

" floats
syntax match decorateFloat '\d\+\.\d*'
"syntax match decorateFloat '[-+]\d\+\.\d*'

syntax match decorateOperator '\v\:'
syntax match decorateOperator '\v\+'
syntax match decorateOperator '\v\-'

syntax match decorateComment '\/\/.*$'


" ==========
" Regions
" ==========

syntax region decorateString start='"' end='"'
syntax region decorateDescBlock start='{' end='}' transparent
syntax region decorateFuncBlock start='(' end=')' transparent
syntax region decorateCommentMulti start='\/\*' end='\*\/'


" ==========
" Syntax highlighting
" ==========

" def means default color - colorschemes can override them

let b:current_syntax = "zdec"

hi def link decorateGeneral Keyword
hi link decorateComment Comment
hi link decorateCommentMulti Comment
hi link decorateNumber Float
hi link decorateFloat Float
hi link decorateString String
hi link decorateFunc Function
hi link decorateClass Function
hi link decorateOperator Operator
hi link decorateConstGeneral Type
hi link decorateConstFlags Type
hi link decorateConstFlagsSkulltag Type
