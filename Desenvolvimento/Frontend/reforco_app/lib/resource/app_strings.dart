class AppStrings {
  /*  ===============
  *   App Bar Strings
  *   =============== */

  /// Generic back to previous page
  static String back = "Voltar";

  /// HSL acronym
  static String hsl = "HSL";

  /// Communications list title
  static String communications = "Comunicações Gerais";

  /// Communicate title
  static String communicate = 'Comunicado';

  /// Communicate title
  static String sendMessage = 'Enviar Mensagem';

  /// Communicate filter
  static String filter = 'Filtrar';

  /*  ===============
  *   Other Strings
  *   =============== */
  static String seeMore = "Ver mais";
  static String loading = "Carregando";
  static String connect = "Conectar";

  /*  ===============
  *   Button Strings
  *   =============== */
  static _Button button = _Button();

  /*  ===============
  *   Icon Image Name
  *   =============== */
  static _Images images = _Images();

  /*  ===============
  *   External URLs
  *   =============== */
  static _ExternalURL externalURL = _ExternalURL();

  /*  ===============
  *   Phone numbers
  *   =============== */
  static _PhoneNumbers phoneNumbers = _PhoneNumbers();

  /*  ===============
  *   Error Messages
  *   =============== */
  static _Error error = _Error();

  /*  ===============
  *   Input Decoration Placeholder
  *   =============== */
  static _InputDecorationPlaceholder placeholders =
      _InputDecorationPlaceholder();

  static _LocalStorageKeys storageKeys = _LocalStorageKeys();
}

class _Button {
  final String send = "Enviar";
  final String filter = "Filtrar";
}

class _Images {
  final String background = "assets/background_tela_login.png";
  final String logo = "assets/logo_app.png";
  // final String rightChevron = "assets/icons/right_chevron.png";
  // final String filter = "assets/icons/filter.png";
  // final String communicate = "assets/icons/indisponivel.png";
  // final String trashbin = "assets/icons/trashbin.png";
  // final String pencil = "assets/icons/pencil.png";
  // final String birthdayFilledIcon = "assets/icons/birthday_filled_icon.png";
  // final String birthdayUnfilledIcon = "assets/icons/birthday_unfilled_icon.png";
  // final String permMedia = "assets/icons/perm_media.png";
  // final String success = "assets/icons/success.png";
  // final String error = "assets/icons/error.png";
}

class _ExternalURL {
  final String moodle = "https://hslmoodle.pucrs.br/";
  final String site = "https://www.hospitalsaolucas.pucrs.br";
  final String appdata = "https://portalrh.pucrs.br/hsl/";
}

class _PhoneNumbers {
  final String institutional = "(51) 3320-3000";
  final String schedules = "(51) 3320-3200";
  final String emergency = "(51) 3320-3300";
  final String occupationalMedicine = "(51) 3320-3001";
  final String personnelAdministration = "(51) 3320-3033";
  final String organizationalDevelopment = "(51) 3320-3008";
}

/// Application error messages
class _Error {
  /// No content available
  final String noContent = "Nenhum conteúdo disponível!";

  /// Generic back to previous page
  final String router = "Erro carregando a página.";

  /// No content available
  final String snapshot = "Erro ao carregar os dados.";
}

class _InputDecorationPlaceholder {
  /// Destination placeholder
  final String destination = "Para: RH";

  /// Branch placeholder
  final String branch = "Ramal";

  /// Subject placeholder
  final String subject = "Assunto";

  /// Multiline placeholder
  final String message = "Mensagem";

  /// Title placeholder
  final String title = "Título";
}

class _LocalStorageKeys {
  final String root = "hsl";

  final String registration = "matricula";
  final String token = "token";
}
