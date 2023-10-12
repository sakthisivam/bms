class OfferPlansList {
  String image, packName, packHeader, duration;
  int id;
  double value;

  OfferPlansList(
      {required this.image,
      required this.duration,
      required this.packHeader,
      required this.packName,
      required this.id,
      required this.value});
}

class OffersMenu {
  static List<OfferPlansList> getOfferPlansMenu() {
    return [
      OfferPlansList(
        image: 'trial_pack',
        id: 1,
        duration: '40 Weak',
        packHeader: 'BP',
        packName: 'Basic Pack',
        value: 5000.00,
      ),
      OfferPlansList(
        image: 'basic_pack',
        id: 2,
        duration: '40 Weak',
        packHeader: 'TP',
        packName: 'Trial Pack',
        value: 5000.00,
      ),
      OfferPlansList(
        image: 'value_pack',
        id: 3,
        duration: '40 Weak',
        packHeader: 'VP',
        packName: 'Value Pack',
        value: 5000.00,
      ),
      OfferPlansList(
        image: 'primary_pack',
        id: 4,
        duration: '40 Weak',
        packHeader: 'PP',
        packName: 'Primary Pack',
        value: 5000.00,
      ),
      OfferPlansList(
        image: 'elite_pack',
        id: 5,
        duration: '40 Weak',
        packHeader: 'EP',
        packName: 'Elite Pack',
        value: 5000.00,
      ),
      OfferPlansList(
        image: 'turbo_pack',
        id: 6,
        duration: '40 Weak',
        packHeader: 'TP',
        packName: 'Turbo Pack',
        value: 5000.00,
      ),
      // OfferPlansList(
      //   image: 'Responsabilite',
      //   id: 7,
      //   duration: '40 Weak',
      //   packHeader: '',
      //   packName: '',
      // ),
      // OfferPlansList(
      //   image: 'Habitation',
      //   id: 8,
      //   duration: '40 Weak',
      //   packHeader: '',
      //   packName: '',
      // ),
    ];
  }
}

class OfferPlansList1 {
  String image, packName, packHeader, duration;
  int id;
  double value;

  OfferPlansList1(
      {required this.image,
      required this.duration,
      required this.packHeader,
      required this.packName,
      required this.id,
      required this.value});
}

class OffersMenu1 {
  static List<OfferPlansList1> getOfferPlans1Menu() {
    return [
      OfferPlansList1(
        image: 'regular_pack',
        id: 1,
        duration: '40 Weak',
        packHeader: 'BP',
        packName: 'Basic Pack',
        value: 5000.00,
      ),
      OfferPlansList1(
        image: 'regular_pack_2',
        id: 2,
        duration: '40 Weak',
        packHeader: 'TP',
        packName: 'Trial Pack',
        value: 5000.00,
      ),
    ];
  }
}
