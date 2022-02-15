class Routes {
  static String api = 'arzan.info:3021';
  static String version = 'api/v1';
  static String server = api+version;
  static String posts = 'posts/';

  //Authentication
  static String login = api+version+'/login';
  static String register = api+version+'/register';
  static String changePassword = api+version+'/change-password';
  static String recoverPassword = api+version+'/recover-password';
  static String getUserDataByToken = api+version+'/get-user-data-by-token';

  //Notifications
  static String notificationAll = api+version+'/notifications';

  //Banners
  static String bannersAll = api+version+'/banners';

  //Categories
  static String categoriesAll = api+version+'/categories';

  //Posts
  static String postsAll = '/posts';
  static String postsOne = api+version+'/posts/';

  //Articles
  static String articlesAll = api+version+'/articles';
  static String articleOne = api+version+'/articles/';

  //Albums
  static String albumsAll = api+version +'/albums';
  static String albumsOne = api+version+'/albums/';

  //Reportages
  static String reportagesAll = api+version+'/reportages';
  static String reportagesOne = api+version+'/reportages/';

  //Stories
  static String storiesAll = api+version+'/stories';
}