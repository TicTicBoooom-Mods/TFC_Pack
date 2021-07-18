import crafttweaker.item.IIngredient;

zenClass mat_pair {
    val i as IIngredient;
    val o as string;
    val c as int;

    zenConstructor(pi as IIngredient, po as string, pc as int) {
        i = pi;
        o = po;
        c = pc;
    }
}