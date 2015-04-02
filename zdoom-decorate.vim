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
" Keywords
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


" ====================

" Syntax highlighting

let b:current_syntax = "zdec"

hi def link decorateGeneral Statement
