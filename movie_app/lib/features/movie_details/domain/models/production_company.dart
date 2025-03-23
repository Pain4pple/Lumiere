/*
 This is what a production company object is
 _________________________________________________

  it has these properties:
  > int id;
  > String logoPath;
  > String name;
  > String originCountry;
_________________________________________________
*/
class ProductionCompany {
  final int id;
  final String logoPath;
  final String name;
  final String originCountry;

  ProductionCompany({required this.id, required this.logoPath, required this.name, required this.originCountry});
}
