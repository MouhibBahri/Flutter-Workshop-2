enum MainCourse { kouskous, makrouna, rouz, chakchouka, mlokheya }

enum Entree { SaladeTunisienne, SaladeMechouia, SaladeRusse }

enum Dessert { Toffeh, Bordguen, Yaghort }

class Menu {
  Menu({
    required this.day,
    required this.mainCourse,
    required this.entree,
    required this.dessert,
  });

  final String day;
  final MainCourse mainCourse;
  final Entree entree;
  final Dessert dessert;
}
