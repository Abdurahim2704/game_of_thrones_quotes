enum Houses {
  baratheon("baratheon",
      "https://pro-heraldica.de/wp-content/uploads/2019/06/baratheon_of_dragonstone_sigil_by_varvara64-d5vl7k7.png"),
  targaryen("targaryen",
      "https://pro-heraldica.de/wp-content/uploads/2019/06/targaryen_sigil_by_varvara64-d5uoo04.png"),
  greyjoy("greyjoy",
      "https://awoiaf.westeros.org/images/thumb/5/5b/House_Greyjoy.svg/545px-House_Greyjoy.svg.png"),
  tarth("tarth",
      "https://awoiaf.westeros.org/images/thumb/c/cc/House_Tarth.svg/545px-House_Tarth.svg.png"),
  tyrell("tyrell",
      "https://pro-heraldica.de/wp-content/uploads/2019/06/tyrell_sigil_by_varvara64-d5ul53s.png"),
  stark("stark",
      "https://pro-heraldica.de/wp-content/uploads/2019/06/stark_sigil_by_varvara64-d5ul45c.png"),
  lannister("lannister",
      "https://pro-heraldica.de/wp-content/uploads/2019/06/lannister_sigil_by_varvara64-d5ukyr3.png");

  const Houses(this.name, this.image);
  final String name;
  final String image;
}
