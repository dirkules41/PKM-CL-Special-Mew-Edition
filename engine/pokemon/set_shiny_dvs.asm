SECTION "SetShinyDVs", ROM0

SetShinyDVs::
    ld hl, wPartyMon1DVs
    ld a, [wPartyCount]
    dec a
    ld bc, PARTYMON_STRUCT_LENGTH
    call AddNTimes
    ; Set DVs for shiny: ATK/DEF = 0x2A, SPD/SPC = 0xAA
    ld a, $2A
    ld [hl], a
    inc hl
    ld a, $AA
    ld [hl], a
    ret
