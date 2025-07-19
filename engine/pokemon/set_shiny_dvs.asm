SECTION "SetShinyDVs", ROM0

; Sets the DVs of the last received Pokémon to shiny (ATK=15, DEF/SPD/SPC=10)
SetShinyDVs::
    ld hl, wPartyMon1DVs
    ld a, [wPartyCount]
    dec a
    ld bc, PARTYMON_STRUCT_LENGTH
    call AddNTimes
    ld a, $FA    ; ATK=15, DEF=10
    ld [hl], a
    inc hl
    ld a, $AA    ; SPD=10, SPC=10
    ld [hl], a
    ret
