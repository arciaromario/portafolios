class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;

  ServicesUtils(
      {required this.name,
      required this.icon,
      required this.description,
      required this.tool});
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Desarrollo de Aplicaciones Android',
    icon: 'assets/icons/android.svg',
    description:
        "¿Estás interesado en la gran aplicación móvil? Hagámosla realidad",
    tool: ['Flutter', 'Android(Kotlin or Java)'],
  ),
  ServicesUtils(
    name: 'Desarrollo de Aplicaciones iOS',
    icon: 'assets/icons/apple.svg',
    description:
        "¿Estás interesado en la gran aplicación móvil? Hagámosla realidad",
    tool: [
      'Flutter',
    ],
  ),
  ServicesUtils(
    name: 'Diseño de UI/UX',
    icon: 'assets/icons/graphic.svg',
    description:
        "Estamos creando diseños elegantes que se adaptan a sus necesidades siguiendo la teoría del diseño central",
    tool: [
      'Adobe XD',
      'Figma',
      'Photoshop',
    ],
  ),
  ServicesUtils(
    name: 'Desarrollo Web',
    icon: 'assets/icons/website.svg',
    description:
        "¿Tienes una idea para tu próximo gran sitio web? Hagámoslo realidad",
    tool: [
      'Flutter',
      'Python(Django)',
      'Html,css,js',
    ],
  ),
];
