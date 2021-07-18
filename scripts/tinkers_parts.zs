import mods.terrafirmacraft.Anvil;
import scripts.mat_pair.mat_pair;




var MATERIALS = [
  mat_pair(<ore:logWood>, "wood", 0),
  mat_pair(<ore:rock>, "stone", 0),
  mat_pair(<ore:gemFlint>, "flint", 0),
  mat_pair(<ore:cactus>, "cactus", 0),
  mat_pair(<ore:bone>, "bone", 0),
  mat_pair(<ore:prismarine>, "prismarine", 0),
  mat_pair(<ore:obsidian>, "obsidian", 4),
  mat_pair(<ore:endstone>, "endstone", 2),
  mat_pair(<ore:paper>, "paper", 0),
  mat_pair(<item:minecraft:sponge>, "sponge", 0),
  mat_pair(<item:tconstruct:firewood:*>, "firewood", 0),
  mat_pair(<ore:ingotIron>, "iron", 3),
  mat_pair(<ore:ingotPigIron>, "pigiron", 3),
  mat_pair(<ore:ingotKnightslime>, "knightslime", 1),
  mat_pair(<ore:slimeball>, "slime", 1),
  mat_pair(<ore:netherrack>, "netherrack", 0),
  mat_pair(<ore:ingotCobalt>, "cobalt", 3),
  mat_pair(<ore:ingotArdite>, "ardite", 3),
  mat_pair(<ore:ingotManyullyn>, "manyullyn", 4),
  mat_pair(<ore:ingotCopper>, "copper", 1),
  mat_pair(<ore:ingotBronze>, "bronze", 2),
  mat_pair(<ore:lead>, "lead", 1),
  mat_pair(<ore:ingotSilver>, "silver", 2),
  mat_pair(<ore:ingotSteel>, "steel", 3),
  mat_pair(<ore:ingotAluminium>, "aluminium", 2),
  mat_pair(<ore:ingotChrome>, "chrome", 2),
  mat_pair(<ore:ingotIridium>, "iridium", 5),
  mat_pair(<ore:ingotManganese>, "manganese", 2),
  mat_pair(<ore:ingotMolybdenum>, "molybdenum", 6),
  mat_pair(<ore:ingotElectrum>, "electrum", 3),
  mat_pair(<ore:ingotNeodymium>, "neodymium", 6),
  mat_pair(<ore:ingotDarmstadtium>, "darmstadtium", 3),
  mat_pair(<ore:ingotOsmium>, "osmium", 4),
  mat_pair(<ore:ingotPalladium>, "palladium", 4),
  mat_pair(<ore:ingotThorium>, "thorium", 4),
  mat_pair(<ore:ingotTitanium>, "titanium", 4),
  mat_pair(<ore:ingotTungsten>, "tungsten", 4),
  mat_pair(<ore:ingotUranium>, "uranium", 4),
  mat_pair(<ore:ingotUranium235>, "uranium235", 4),
  mat_pair(<ore:ingotBrass>, "brass", 2),
  mat_pair(<ore:ingotInvar>, "invar", 2),
  mat_pair(<ore:ingotMagnalium>, "magnalium", 3),
  mat_pair(<ore:ingotStainlessSteel>, "stainless_steel", 4),
  mat_pair(<ore:ingotUltimet>, "ultimet", 6),
  mat_pair(<ore:ingotWroughtIron>, "wrought_iron", 2),
  mat_pair(<ore:ingotOsmiridium>, "osmiridium", 6),
  mat_pair(<ore:ingotSterlingSilver>, "sterling_silver", 4),
  mat_pair(<ore:ingotRoseGold>, "rose_gold", 2),
  mat_pair(<ore:ingotBlackBronze>, "black_bronze", 2),
  mat_pair(<ore:ingotBismuth>, "bismuth_bronze", 2),
  mat_pair(<ore:ingotBlackSteel>, "black_steel", 2),
  mat_pair(<ore:ingotRedSteel>, "red_steel", 2),
  mat_pair(<ore:ingotBlueSteel>, "blue_steel", 2),
  mat_pair(<ore:ingotDamascusSteel>, "damascus_steel", 2),
  mat_pair(<ore:boltCobaltBrass>, "cobalt_brass", 2),
  mat_pair(<ore:ingotTungstenSteel>, "tungsten_steel", 5),
  mat_pair(<ore:ingotTungstenCarbide>, "tungsten_carbide", 5),
  mat_pair(<ore:ingotVanadiumSteel>, "vanadium_steel", 5),
  mat_pair(<ore:ingotHssg>, "hssg", 6),
  mat_pair(<ore:ingotHsse>, "hsse", 6),
  mat_pair(<ore:oreHsss>, "hsss", 6),
  mat_pair(<ore:ingotNaquadah>, "naquadah", 6),
  mat_pair(<ore:ingotNaquadahAlloy>, "naquadah_alloy", 6),
  mat_pair(<ore:ingotEnrichedNaquadahAlloy>, "enriched_naquadah", 6),
  mat_pair(<ore:ingotTritanium>, "tritanium", 6),
  mat_pair(<ore:ingotDuranium>, "duranium", 6),
  mat_pair(<ore:ingotRhodiumPlatedPalladium>, "rhodium_plated_palladium", 6),
  mat_pair(<ore:ingotEnderium>, "enderium", 6),
  mat_pair(<ore:ingotNeutronium>, "neutronium", 6),
  mat_pair(<ore:ingotBlueTopaz>, "blue_topaz", 4),
  mat_pair(<ore:gemDiamond>, "diamond", 5),
  mat_pair(<ore:gemEmerald>, "emerald", 5),
  mat_pair(<ore:gemGreenSapphire>, "green_sapphire", 5),
  mat_pair(<ore:gemRuby>, "ruby", 5),
  mat_pair(<ore:gemSapphire>, "sapphire", 5),
  mat_pair(<ore:ingotTough>, "tough", 5),
  mat_pair(<ore:ingotHardCarbon>, "hard_carbon", 5),
  mat_pair(<ore:gemBoronNitride>, "boron_nitride", 5),
  mat_pair(<ore:ingotMagnesium>, "magnesium", 4),
  mat_pair(<ore:ingotChocolate>, "chocolate", 1),
  mat_pair(<ore:ingotNickelSilver>, "tfc_nickel_silver", 4),
  mat_pair(<ore:ingotMithril>, "tfc_mithril", 4),
  mat_pair(<ore:ingotZircaloy>, "tfc_zircaloy", 6),
  mat_pair(<ore:ingotMithril>, "tfc_beryllium_copper", 6)
] as mat_pair[];

for i, item in MATERIALS {
    Anvil.addRecipe("anvil_recipe_tconstruct_pickaxe_" + item.o as string, item.i, <tconstruct:pick_head>.withTag({Material: item.o as string}), item.c, "tools", "SHRINK_LAST", "HIT_SECOND_LAST", "SHRINK_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_axe_" + item.o as string, item.i, <tconstruct:axe_head>.withTag({Material: item.o as string}), item.c, "tools", "SHRINK_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_shovel_" + item.o as string, item.i, <tconstruct:shovel_head>.withTag({Material: item.o as string}), item.c, "tools", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_b_axe_" + item.o as string, item.i, <tconstruct:broad_axe_head>.withTag({Material: item.o as string}), item.c, "tools", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_sword_" + item.o as string, item.i, <tconstruct:sword_blade>.withTag({Material: item.o as string}), item.c, "tools", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_large_sword_" + item.o as string, item.i, <tconstruct:large_sword_blade>.withTag({Material: item.o as string}), item.c, "tools", "HIT_SECOND_LAST", "HIT_LAST", "HIT_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_hammer_" + item.o as string, item.i, <tconstruct:hammer>.withTag({Material: item.o as string}), item.c, "tools", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_excavator_" + item.o as string, item.i, <tconstruct:excavator_head>.withTag({Material: item.o as string}), item.c, "tools", "HIT_SECOND_LAST", "HIT_LAST", "HIT_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_kama_" + item.o as string, item.i, <tconstruct:kama_head>.withTag({Material: item.o as string}), item.c, "tools", "HIT_LAST", "SHRINK_SECOND_LAST", "HIT_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_sythe_" + item.o as string, item.i, <tconstruct:scythe_head>.withTag({Material: item.o as string}), item.c, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "SHRINK_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_pan_" + item.o as string, item.i, <tconstruct:pan_head>.withTag({Material: item.o as string}), item.c, "tools", "HIT_LAST", "PUNCH_SECOND_LAST", "HIT_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_sign_" + item.o as string, item.i, <tconstruct:sign_head>.withTag({Material: item.o as string}), item.c, "tools", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_rod_" + item.o as string, item.i, <tconstruct:tool_rod>.withTag({Material: item.o as string}), item.c, "tools", "HIT_LAST", "DRAW_SECOND_LAST", "BEND_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_ttrod_" + item.o as string, item.i, <tconstruct:tough_tool_rod>.withTag({Material: item.o as string}), item.c, "tools", "HIT_SECOND_LAST", "DRAW_LAST", "UPSET_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_binding_" + item.o as string, item.i, <tconstruct:binding>.withTag({Material: item.o as string}), item.c, "tools", "HIT_SECOND_LAST", "UPSET_LAST", "BEND_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_tbinding_" + item.o as string, item.i, <tconstruct:wide_guard>.withTag({Material: item.o as string}), item.c, "tools", "BEND_SECOND_LAST", "HIT_LAST", "BEND_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_hand_guard_" + item.o as string, item.i, <tconstruct:hand_guard>.withTag({Material: item.o as string}), item.c, "tools", "BEND_SECOND_LAST", "HIT_LAST", "BEND_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_cross_guard_" + item.o as string, item.i, <tconstruct:cross_guard>.withTag({Material: item.o as string}), item.c, "tools", "HIT_SECOND_LAST", "HIT_LAST", "HIT_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_chonky_flat_" + item.o as string, item.i, <tconstruct:large_plate>.withTag({Material: item.o as string}), item.c, "tools", "HIT_SECOND_LAST", "BEND_LAST", "HIT_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_smol_pointy_" + item.o as string, item.i, <tconstruct:knife_blade>.withTag({Material: item.o as string}), item.c, "tools", "HIT_SECOND_LAST", "HIT_LAST", "HIT_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_bow_limb_" + item.o as string, item.i, <tconstruct:bow_limb>.withTag({Material: item.o as string}), item.c, "tools", "HIT_SECOND_LAST", "BEND_LAST", "HIT_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_arrow" + item.o as string, item.i, <tconstruct:arrow_head>.withTag({Material: item.o as string}), item.c, "tools", "HIT_SECOND_LAST", "HIT_LAST", "HIT_THIRD_LAST");
    Anvil.addRecipe("anvil_recipe_tconstruct_propick_" + item.o as string, item.i, <tfc_tinker:propick_head>.withTag({Material: item.o as string}), item.c, "tools", "HIT_SECOND_LAST", "BEND_LAST", "BEND_THIRD_LAST");
}





