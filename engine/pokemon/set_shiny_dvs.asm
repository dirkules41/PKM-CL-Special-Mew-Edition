; SetShinyDVs: Sets the DVs of the last party Pokémon to shiny-compatible
SetShinyDVs::
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1DVs
	ld bc, PARTYMON_STRUCT_LENGTH
	call AddNTimes
	ld [hl], $FA
	inc hl
	ld [hl], $AA
	ret
