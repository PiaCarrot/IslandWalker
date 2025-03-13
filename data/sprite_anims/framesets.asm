SpriteAnimFrameData:
; entries correspond to SPRITE_ANIM_FRAMESET_* constants (see constants/sprite_anim_constants.asm)
	table_width 2
	dw .Frameset_00
	dw .Frameset_PartyMon
	dw .Frameset_PartyMonWithMail
	dw .Frameset_PartyMonWithItem
	dw .Frameset_PartyMonFast
	dw .Frameset_PartyMonWithMailFast
	dw .Frameset_PartyMonWithItemFast
	dw .Frameset_GSTitleTrail
	dw .Frameset_TextEntryCursor
	dw .Frameset_TextEntryCursorBig
	dw .Frameset_GameFreakLogo
	dw .Frameset_GSGameFreakLogoStar
	dw .Frameset_GSGameFreakLogoSparkle
	dw .Frameset_SlotsGolem
	dw .Frameset_SlotsChansey
	dw .Frameset_SlotsChansey2
	dw .Frameset_SlotsEgg
	dw .Frameset_RedWalk
	dw .Frameset_StillCursor
	dw .Frameset_TradePokeBall
	dw .Frameset_TradePokeBallWobble
	dw .Frameset_TradePoof
	dw .Frameset_TradeTubeBulge
	dw .Frameset_TrademonIcon
	dw .Frameset_TrademonBubble
	dw .Frameset_EvolutionBallOfLight
	dw .Frameset_RadioTuningKnob
	dw .Frameset_MagnetTrain
	dw .Frameset_Unused1C
	dw .Frameset_Leaf
	dw .Frameset_CutTree
	dw .Frameset_EggCrack
	dw .Frameset_EggHatch1
	dw .Frameset_EggHatch2
	dw .Frameset_EggHatch3
	dw .Frameset_EggHatch4
	dw .Frameset_GSIntroHoOhLugia
	dw .Frameset_HeadbuttTree
	dw .Frameset_EZChatCursor1
	dw .Frameset_EZChatCursor2
	dw .Frameset_EZChatCursor3
	dw .Frameset_EZChatCursor4
	dw .Frameset_EZChatCursor5
	dw .Frameset_EZChatCursor6
	dw .Frameset_EZChatCursor7
	dw .Frameset_BlueWalk
	dw .Frameset_MobileTradeSentBall
	dw .Frameset_MobileTradeOTBall
	dw .Frameset_MobileTradeCableBulge
	dw .Frameset_MobileTradeSentPulse
	dw .Frameset_MobileTradeOTPulse
	dw .Frameset_MobileTradePing
	dw .Frameset_GSIntroBubble
	dw .Frameset_GSIntroShellder
	dw .Frameset_GSIntroShellderEyes
	dw .Frameset_GSIntroMagikarp
	dw .Frameset_GSIntroMagikarpStripes
	dw .Frameset_GSIntroMagikarpMask
	dw .Frameset_GSIntroMagikarpSaucy
	dw .Frameset_GSIntroMagikarpShiny
	dw .Frameset_GSIntroLuvdisc
	dw .Frameset_GSIntroLapras
	dw .Frameset_GSIntroWingull
	dw .Frameset_GSIntroNote
	dw .Frameset_GSIntroInvisibleNote
	dw .Frameset_GSIntroJigglypuff
	dw .Frameset_GSIntroJigglypuff2
	dw .Frameset_GSIntroPikachu
	dw .Frameset_GSIntroPikachu2
	dw .Frameset_CelebiLeft
	dw .Frameset_CelebiRight
	dw .Frameset_GSIntroPikachu3
	dw .Frameset_GSIntroPikachuTail
	dw .Frameset_GSIntroPikachuTail2
	dw .Frameset_GSIntroFireball
	dw .Frameset_GSIntroChikorita
	dw .Frameset_GSIntroCyndaquil
	dw .Frameset_GSIntroTotodile
	dw .Frameset_TitlePressA
	dw .Frameset_NewGamePressA
	dw .Frameset_TitleLogoPalmLeft
	dw .Frameset_TitleLogoPalmRight
	dw .Frameset_TitleMarillWait
	dw .Frameset_TitleMarillPressA
	dw .Frameset_TitleMarillTail
	dw .Frameset_TitleDragonite
	dw .Frameset_NewGameIvyLeftEye
	dw .Frameset_NewGameIvyRightEye
	dw .Frameset_NewGameIvyShirt
	dw .Frameset_NewGameIvyBall
	dw .Frameset_NewGameIvyShoes
	dw .Frameset_PCCursor
	dw .Frameset_PCCursorItem
	dw .Frameset_PCQuick
	dw .Frameset_PCMode
	dw .Frameset_PCMode2
	dw .Frameset_PCPack
	assert_table_length NUM_SPRITE_ANIM_FRAMESETS

.Frameset_00:
	oamframe SPRITE_ANIM_OAMSET_RED_WALK_1, 32
	oamend

.Frameset_PartyMon:
	oamframe SPRITE_ANIM_OAMSET_PARTY_MON_1,  8
	oamframe SPRITE_ANIM_OAMSET_PARTY_MON_2,  8
	oamrestart

.Frameset_PartyMonWithMail:
	oamframe SPRITE_ANIM_OAMSET_PARTY_MON_WITH_MAIL_1,  8
	oamframe SPRITE_ANIM_OAMSET_PARTY_MON_WITH_MAIL_2,  8
	oamrestart

.Frameset_PartyMonWithItem:
	oamframe SPRITE_ANIM_OAMSET_PARTY_MON_WITH_ITEM_1,  8
	oamframe SPRITE_ANIM_OAMSET_PARTY_MON_WITH_ITEM_2,  8
	oamrestart

.Frameset_PartyMonFast:
	oamframe SPRITE_ANIM_OAMSET_PARTY_MON_1,  4
	oamframe SPRITE_ANIM_OAMSET_PARTY_MON_2,  4
	oamrestart

.Frameset_PartyMonWithMailFast:
	oamframe SPRITE_ANIM_OAMSET_PARTY_MON_WITH_MAIL_1,  4
	oamframe SPRITE_ANIM_OAMSET_PARTY_MON_WITH_MAIL_2,  4
	oamrestart

.Frameset_PartyMonWithItemFast:
	oamframe SPRITE_ANIM_OAMSET_PARTY_MON_WITH_ITEM_1,  4
	oamframe SPRITE_ANIM_OAMSET_PARTY_MON_WITH_ITEM_2,  4
	oamrestart

.Frameset_RedWalk:
	oamframe SPRITE_ANIM_OAMSET_RED_WALK_1,  8
	oamframe SPRITE_ANIM_OAMSET_RED_WALK_2,  8
	oamframe SPRITE_ANIM_OAMSET_RED_WALK_1,  8
	oamframe SPRITE_ANIM_OAMSET_RED_WALK_2,  8, OAM_X_FLIP
	oamrestart

.Frameset_BlueWalk:
	oamframe SPRITE_ANIM_OAMSET_BLUE_WALK_1,  8
	oamframe SPRITE_ANIM_OAMSET_BLUE_WALK_2,  8
	oamframe SPRITE_ANIM_OAMSET_BLUE_WALK_1,  8
	oamframe SPRITE_ANIM_OAMSET_BLUE_WALK_2,  8, OAM_X_FLIP
	oamrestart

.Frameset_GSTitleTrail:
	oamframe SPRITE_ANIM_OAMSET_GS_TITLE_TRAIL_1,  1
	oamframe SPRITE_ANIM_OAMSET_GS_TITLE_TRAIL_2,  1
	oamrestart

.Frameset_TextEntryCursor:
	oamframe SPRITE_ANIM_OAMSET_TEXT_ENTRY_CURSOR,  1
	oamwait 1
	oamrestart

.Frameset_TextEntryCursorBig:
	oamframe SPRITE_ANIM_OAMSET_TEXT_ENTRY_CURSOR_BIG,  1
	oamwait 1
	oamrestart
	
.Frameset_NewGameIvyShirt:
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_SHIRT,  32
	oamend

.Frameset_NewGameIvyBall:
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_BALL,  32
	oamend

.Frameset_NewGameIvyShoes:
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_SHOES,  32
	oamend

.Frameset_GameFreakLogo:
	oamframe SPRITE_ANIM_OAMSET_GAMEFREAK_LOGO_1,  12
	oamframe SPRITE_ANIM_OAMSET_GAMEFREAK_LOGO_2,   1
	oamframe SPRITE_ANIM_OAMSET_GAMEFREAK_LOGO_3,   1
	oamframe SPRITE_ANIM_OAMSET_GAMEFREAK_LOGO_2,   4
	oamframe SPRITE_ANIM_OAMSET_GAMEFREAK_LOGO_1,  12
	oamframe SPRITE_ANIM_OAMSET_GAMEFREAK_LOGO_2,  12
	oamframe SPRITE_ANIM_OAMSET_GAMEFREAK_LOGO_3,   4
	oamframe SPRITE_ANIM_OAMSET_GAMEFREAK_LOGO_4,  32
	oamframe SPRITE_ANIM_OAMSET_GAMEFREAK_LOGO_5,   3
	oamframe SPRITE_ANIM_OAMSET_GAMEFREAK_LOGO_6,   3
	oamframe SPRITE_ANIM_OAMSET_GAMEFREAK_LOGO_7,   4
	oamframe SPRITE_ANIM_OAMSET_GAMEFREAK_LOGO_8,   4
	oamframe SPRITE_ANIM_OAMSET_GAMEFREAK_LOGO_9,   4
	oamframe SPRITE_ANIM_OAMSET_GAMEFREAK_LOGO_10, 10
	oamframe SPRITE_ANIM_OAMSET_GAMEFREAK_LOGO_11,  7
	oamend

.Frameset_GSGameFreakLogoStar:
	oamframe SPRITE_ANIM_OAMSET_GS_GAMEFREAK_LOGO_STAR,  3
	oamframe SPRITE_ANIM_OAMSET_GS_GAMEFREAK_LOGO_STAR,  3, OAM_Y_FLIP
	oamrestart

.Frameset_GSGameFreakLogoSparkle:
	oamframe SPRITE_ANIM_OAMSET_GS_GAMEFREAK_LOGO_SPARKLE_1,  2
	oamframe SPRITE_ANIM_OAMSET_GS_GAMEFREAK_LOGO_SPARKLE_2,  2
	oamframe SPRITE_ANIM_OAMSET_GS_GAMEFREAK_LOGO_SPARKLE_3,  2
	oamframe SPRITE_ANIM_OAMSET_GS_GAMEFREAK_LOGO_SPARKLE_2,  2
	oamrestart

.Frameset_SlotsGolem:
	oamframe SPRITE_ANIM_OAMSET_SLOTS_GOLEM_1,  7
	oamframe SPRITE_ANIM_OAMSET_SLOTS_GOLEM_2,  7
	oamframe SPRITE_ANIM_OAMSET_SLOTS_GOLEM_1,  7, OAM_Y_FLIP
	oamframe SPRITE_ANIM_OAMSET_SLOTS_GOLEM_2,  7, OAM_X_FLIP
	oamrestart

.Frameset_SlotsChansey:
	oamframe SPRITE_ANIM_OAMSET_SLOTS_CHANSEY_1,  7
	oamframe SPRITE_ANIM_OAMSET_SLOTS_CHANSEY_2,  7
	oamframe SPRITE_ANIM_OAMSET_SLOTS_CHANSEY_1,  7
	oamframe SPRITE_ANIM_OAMSET_SLOTS_CHANSEY_3,  7
	oamrestart

.Frameset_SlotsChansey2:
	oamframe SPRITE_ANIM_OAMSET_SLOTS_CHANSEY_1,  7
	oamframe SPRITE_ANIM_OAMSET_SLOTS_CHANSEY_4,  7
	oamframe SPRITE_ANIM_OAMSET_SLOTS_CHANSEY_5,  7
	oamframe SPRITE_ANIM_OAMSET_SLOTS_CHANSEY_4,  7
	oamframe SPRITE_ANIM_OAMSET_SLOTS_CHANSEY_1,  7
	oamend

.Frameset_SlotsEgg:
	oamframe SPRITE_ANIM_OAMSET_SLOTS_EGG, 20
	oamend

.Frameset_StillCursor:
	oamframe SPRITE_ANIM_OAMSET_STILL_CURSOR, 32
	oamend

.Frameset_TradePokeBall:
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_1, 32
	oamend

.Frameset_TradePokeBallWobble:
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_2,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_2,  3, OAM_X_FLIP
	oamrestart

.Frameset_TradePoof:
	oamframe SPRITE_ANIM_OAMSET_TRADE_POOF_1,  4
	oamframe SPRITE_ANIM_OAMSET_TRADE_POOF_2,  4
	oamframe SPRITE_ANIM_OAMSET_TRADE_POOF_3,  4
	oamdelete

.Frameset_TradeTubeBulge:
	oamframe SPRITE_ANIM_OAMSET_TRADE_TUBE_BULGE_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_TUBE_BULGE_2,  3
	oamrestart

.Frameset_TrademonIcon:
	oamframe SPRITE_ANIM_OAMSET_TRADEMON_ICON_1,  7
	oamframe SPRITE_ANIM_OAMSET_TRADEMON_ICON_2,  7
	oamrestart

.Frameset_TrademonBubble:
	oamframe SPRITE_ANIM_OAMSET_TRADEMON_BUBBLE, 32
	oamend

.Frameset_EvolutionBallOfLight:
	oamframe SPRITE_ANIM_OAMSET_EVOLUTION_BALL_OF_LIGHT_2,  2
	oamframe SPRITE_ANIM_OAMSET_EVOLUTION_BALL_OF_LIGHT_1,  2
	oamframe SPRITE_ANIM_OAMSET_EVOLUTION_BALL_OF_LIGHT_2,  2
	oamend

.Frameset_RadioTuningKnob:
	oamframe SPRITE_ANIM_OAMSET_RADIO_TUNING_KNOB, 32
	oamend

.Frameset_MagnetTrain:
	oamframe SPRITE_ANIM_OAMSET_MAGNET_TRAIN_1,  8
	oamframe SPRITE_ANIM_OAMSET_MAGNET_TRAIN_2,  8
	oamframe SPRITE_ANIM_OAMSET_MAGNET_TRAIN_1,  8
	oamframe SPRITE_ANIM_OAMSET_MAGNET_TRAIN_2,  8, OAM_X_FLIP
	oamrestart

.Frameset_Unused1C:
	oamwait 32
	oamend

.Frameset_Leaf:
	oamframe SPRITE_ANIM_OAMSET_LEAF, 32
	oamend

.Frameset_CutTree:
	oamframe SPRITE_ANIM_OAMSET_TREE_1,      2
	oamframe SPRITE_ANIM_OAMSET_CUT_TREE_2, 16
	oamwait 1
	oamframe SPRITE_ANIM_OAMSET_CUT_TREE_3,  1
	oamwait 1
	oamframe SPRITE_ANIM_OAMSET_CUT_TREE_4,  1
	oamdelete

.Frameset_EggCrack:
	oamframe SPRITE_ANIM_OAMSET_EGG_CRACK, 32
	oamend

.Frameset_EggHatch1:
	oamframe SPRITE_ANIM_OAMSET_EGG_HATCH, 32
	oamend

.Frameset_EggHatch2:
	oamframe SPRITE_ANIM_OAMSET_EGG_HATCH, 32, OAM_X_FLIP
	oamend

.Frameset_EggHatch3:
	oamframe SPRITE_ANIM_OAMSET_EGG_HATCH, 32, OAM_Y_FLIP
	oamend

.Frameset_EggHatch4:
	oamframe SPRITE_ANIM_OAMSET_EGG_HATCH, 32, OAM_X_FLIP, OAM_Y_FLIP
	oamend

.Frameset_GSIntroHoOhLugia:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_HO_OH_LUGIA_1, 10
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_HO_OH_LUGIA_2,  9
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_HO_OH_LUGIA_3, 10
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_HO_OH_LUGIA_4, 10
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_HO_OH_LUGIA_3,  9
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_HO_OH_LUGIA_5, 10
	oamrestart

.Frameset_HeadbuttTree:
	oamframe SPRITE_ANIM_OAMSET_TREE_1,           2
	oamframe SPRITE_ANIM_OAMSET_HEADBUTT_TREE_2,  2
	oamframe SPRITE_ANIM_OAMSET_TREE_1,           2
	oamframe SPRITE_ANIM_OAMSET_HEADBUTT_TREE_2,  2, OAM_X_FLIP
	oamrestart

.Frameset_EZChatCursor1:
	oamframe SPRITE_ANIM_OAMSET_EZCHAT_CURSOR_1,  2
	oamend

.Frameset_EZChatCursor2:
	oamframe SPRITE_ANIM_OAMSET_EZCHAT_CURSOR_2,  2
	oamend

.Frameset_EZChatCursor3:
	oamframe SPRITE_ANIM_OAMSET_EZCHAT_CURSOR_3,  2
	oamend

.Frameset_EZChatCursor4:
	oamframe SPRITE_ANIM_OAMSET_EZCHAT_CURSOR_4,  2
	oamend

.Frameset_EZChatCursor5:
	oamframe SPRITE_ANIM_OAMSET_EZCHAT_CURSOR_5,  2
	oamend

.Frameset_EZChatCursor6:
	oamframe SPRITE_ANIM_OAMSET_EZCHAT_CURSOR_6,  2
	oamend

.Frameset_EZChatCursor7:
	oamframe SPRITE_ANIM_OAMSET_EZCHAT_CURSOR_7,  2
	oamend

.Frameset_MobileTradeSentBall:
	oamframe SPRITE_ANIM_OAMSET_TRADE_POOF_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POOF_2,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POOF_3,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_2,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_2,  3, OAM_X_FLIP
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_2,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_2,  3, OAM_X_FLIP
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_2,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_2,  3, OAM_X_FLIP
	oamend

.Frameset_MobileTradeOTBall:
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_2,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_2,  3, OAM_X_FLIP
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_2,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_2,  3, OAM_X_FLIP
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_2,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POKE_BALL_2,  3, OAM_X_FLIP
	oamframe SPRITE_ANIM_OAMSET_TRADE_POOF_1,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POOF_2,  3
	oamframe SPRITE_ANIM_OAMSET_TRADE_POOF_3,  3
	oamdelete

.Frameset_MobileTradeCableBulge:
	oamframe SPRITE_ANIM_OAMSET_MOBILE_TRADE_CABLE_BULGE_1,  3
	oamframe SPRITE_ANIM_OAMSET_MOBILE_TRADE_CABLE_BULGE_2,  3
	oamrestart

.Frameset_MobileTradeSentPulse:
	oamframe SPRITE_ANIM_OAMSET_MOBILE_TRADE_SENT_PULSE,  3
	oamend

.Frameset_MobileTradeOTPulse:
	oamframe SPRITE_ANIM_OAMSET_MOBILE_TRADE_OT_PULSE,  3
	oamend

.Frameset_MobileTradePing:
	oamframe SPRITE_ANIM_OAMSET_MOBILE_TRADE_PING_1,  2
	oamframe SPRITE_ANIM_OAMSET_MOBILE_TRADE_PING_2,  2
	oamframe SPRITE_ANIM_OAMSET_MOBILE_TRADE_PING_3,  2
	oamdelete

.Frameset_GSIntroBubble:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_BUBBLE_1,  8
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_BUBBLE_2,  8
	dorestart

.Frameset_GSIntroShellder:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_SHELLDER_1,  8
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_SHELLDER_2,  8
	dorestart

.Frameset_TitleMarillWait:
	oamframe SPRITE_ANIM_OAMSET_TITLE_MARILL_WAIT_1,  32
	oamframe SPRITE_ANIM_OAMSET_TITLE_MARILL_PRESS_A_1,  32
	oamframe SPRITE_ANIM_OAMSET_TITLE_MARILL_WAIT_2,  32
	oamframe SPRITE_ANIM_OAMSET_TITLE_MARILL_PRESS_A_1,  32
	dorestart

.Frameset_TitleMarillPressA:
	oamframe SPRITE_ANIM_OAMSET_TITLE_MARILL_PRESS_A_1,  32
	oamframe SPRITE_ANIM_OAMSET_TITLE_MARILL_PRESS_A_2,  32
	dorestart
	
.Frameset_NewGameIvyLeftEye:
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_2, 24
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_3, 24
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_4, 24
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_3, 24
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_2, 24
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_LEFT_EYE_1, 56
	dorestart
	

.Frameset_NewGameIvyRightEye:
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_2, 24
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_3, 24
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_4, 24
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_3, 24
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_2, 24
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_1, 56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_IVY_RIGHT_EYE_1, 56
	dorestart

.Frameset_TitleMarillTail:
	oamframe SPRITE_ANIM_OAMSET_TITLE_MARILL_TAIL_1,  32
	oamframe SPRITE_ANIM_OAMSET_TITLE_MARILL_TAIL_2,  32
	oamframe SPRITE_ANIM_OAMSET_TITLE_MARILL_TAIL_3,  24
	oamframe SPRITE_ANIM_OAMSET_TITLE_MARILL_TAIL_2,  32
	oamframe SPRITE_ANIM_OAMSET_TITLE_MARILL_TAIL_1,  32
	endanim

.Frameset_GSIntroShellderEyes:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_SHELLDER_EYES_1,  8
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_SHELLDER_EYES_2,  8
	dorestart

.Frameset_GSIntroWingull:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_WINGULL_1,  8
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_WINGULL_2,  8
	dorestart

.Frameset_TitlePressA:
	oamframe SPRITE_ANIM_OAMSET_TITLE_PRESS_A_1,  16
	oamframe SPRITE_ANIM_OAMSET_TITLE_PRESS_A_2,  16
	dorestart

.Frameset_NewGamePressA:
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_PRESS_A_1,  56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_PRESS_A_1,  56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_PRESS_A_1,  56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_PRESS_A_1,  56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_PRESS_A_2,  56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_PRESS_A_2,  56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_PRESS_A_2,  56
	oamframe SPRITE_ANIM_OAMSET_NEW_GAME_PRESS_A_2,  56
	dorestart

.Frameset_TitleLogoPalmLeft:
	oamframe SPRITE_ANIM_OAMSET_TITLE_LOGO_PALM_LEFT,  32
	dorestart

.Frameset_TitleLogoPalmRight:
	oamframe SPRITE_ANIM_OAMSET_TITLE_LOGO_PALM_RIGHT,  32
	dorestart

.Frameset_TitleDragonite:
	oamframe SPRITE_ANIM_OAMSET_TITLE_DRAGONITE_1,  12
	oamframe SPRITE_ANIM_OAMSET_TITLE_DRAGONITE_2,  12
	oamframe SPRITE_ANIM_OAMSET_TITLE_DRAGONITE_1,  12
	oamframe SPRITE_ANIM_OAMSET_TITLE_DRAGONITE_3,  12
	dorestart

.Frameset_GSIntroMagikarp:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_MAGIKARP_1,  1, OAM_X_FLIP
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_MAGIKARP_2,  1, OAM_X_FLIP
	dorestart

.Frameset_GSIntroMagikarpStripes:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_MAGIKARP_STRIPES_1,  1, OAM_X_FLIP
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_MAGIKARP_STRIPES_2,  1, OAM_X_FLIP
	dorestart

.Frameset_GSIntroMagikarpMask:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_MAGIKARP_MASK_1,  1, OAM_X_FLIP
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_MAGIKARP_MASK_2,  1, OAM_X_FLIP
	dorestart

.Frameset_GSIntroMagikarpSaucy:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_MAGIKARP_SAUCY_1,  1, OAM_X_FLIP
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_MAGIKARP_SAUCY_2,  1, OAM_X_FLIP
	dorestart

.Frameset_GSIntroMagikarpShiny:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_MAGIKARP_SHINY_1,  1, OAM_X_FLIP
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_MAGIKARP_SHINY_2,  1, OAM_X_FLIP
	dorestart

.Frameset_GSIntroLuvdisc:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_LUVDISC_1,  8, OAM_X_FLIP
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_LUVDISC_2,  8, OAM_X_FLIP
	dorestart

.Frameset_GSIntroLapras:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_LAPRAS_1,  7
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_LAPRAS_2,  7
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_LAPRAS_3,  7
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_LAPRAS_1,  7
	dorestart

.Frameset_GSIntroNote:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_NOTE,  8
	endanim

.Frameset_GSIntroInvisibleNote:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_INVISIBLE_NOTE,  8
	endanim

.Frameset_GSIntroJigglypuff:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_JIGGLYPUFF_1, 25, OAM_X_FLIP
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_JIGGLYPUFF_3,  9
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_JIGGLYPUFF_1, 25
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_JIGGLYPUFF_3,  9
	dorestart

.Frameset_GSIntroJigglypuff2:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_JIGGLYPUFF_2, 32
	endanim

.Frameset_GSIntroPikachu:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_1,  4
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_2,  5
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_4,  4
	dorestart

.Frameset_GSIntroPikachu2:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_2,  8
	endanim

.Frameset_CelebiLeft:
	oamframe SPRITE_ANIM_OAMSET_CELEBI_1,  8
	oamframe SPRITE_ANIM_OAMSET_CELEBI_2,  8
	oamend

.Frameset_CelebiRight:
	oamframe SPRITE_ANIM_OAMSET_CELEBI_1,  8, OAM_X_FLIP
	oamframe SPRITE_ANIM_OAMSET_CELEBI_2,  8, OAM_X_FLIP
	oamend

.Frameset_GSIntroPikachu3:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_3, 32
	endanim

.Frameset_GSIntroPikachuTail:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_TAIL_1,  3
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_TAIL_2,  3
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_TAIL_3,  3
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_TAIL_2,  3
	dorestart

.Frameset_GSIntroPikachuTail2:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_PIKACHU_TAIL_1, 31
	endanim

.Frameset_GSIntroFireball:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_SMALL_FIREBALL,  1
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_MED_FIREBALL,  1
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_BIG_FIREBALL,  1
	oamdelete

.Frameset_GSIntroChikorita:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_CHIKORITA, 32
	oamdelete

.Frameset_GSIntroCyndaquil:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_CYNDAQUIL, 32, OAM_X_FLIP
	oamdelete

.Frameset_GSIntroTotodile:
	oamframe SPRITE_ANIM_OAMSET_GS_INTRO_TOTODILE, 32
	oamdelete 

.Frameset_PCCursor:
	oamframe SPRITE_ANIM_OAMSET_PC_CURSOR, 32
	oamrestart

.Frameset_PCCursorItem:
	; Conditionally switched to when dealing with items
	oamframe SPRITE_ANIM_OAMSET_PC_CURSOR_ITEM, 32
	oamrestart

.Frameset_PCQuick:
	oamframe SPRITE_ANIM_OAMSET_PC_QUICK, 8
	oamdelete

.Frameset_PCMode:
	oamframe SPRITE_ANIM_OAMSET_PC_MODE, 32
	oamrestart

.Frameset_PCMode2:
	oamframe SPRITE_ANIM_OAMSET_PC_MODE2, 32
	oamrestart

.Frameset_PCPack:
	oamframe SPRITE_ANIM_OAMSET_PC_PACK, 32
	oamrestart
