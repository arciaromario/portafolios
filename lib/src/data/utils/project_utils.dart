class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/02.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Social Media App',
    description:
        'Esta es una aplicación de redes sociales totalmente funcional que usa flutter, el código fuente también está disponible, consulte a continuación.',
    links: 'https://github.com/romaloxesx/',
  ),
  ProjectUtils(
    banners: 'assets/imgs/1.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Awesome CRM UI',
    description:
        'Este es solo un diseño de interfaz de usuario de CRM usando Figma, el archivo también está disponible, consulte a continuación.',
    links: 'https://github.com/romaloxesx/',
  ),
  ProjectUtils(
    banners: 'assets/imgs/03.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Aplicación para ejercitarnos',
    description:
        'Esta es una aplicación de ejercicio completamente funcional usando flutter, el código fuente también está disponible, consulte a continuación.',
    links: 'https://github.com/romaloxesx/',
  ),
  ProjectUtils(
    banners: 'assets/imgs/04.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Plant App UI',
    description:
        'Esta es solo una interfaz de usuario de la aplicación Plant usando flutter, el código fuente también está disponible, consulte a continuación.',
    links: 'https://github.com/romaloxesx/',
  ),
];
