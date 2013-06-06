part of plus_v1_api_browser;

/** Client to access the plus v1 API */
/** The Google+ API enables developers to build on top of the Google+ platform. */
class Plus extends BrowserClient {

  ActivitiesResource_ _activities;
  ActivitiesResource_ get activities => _activities;
  CommentsResource_ _comments;
  CommentsResource_ get comments => _comments;
  MomentsResource_ _moments;
  MomentsResource_ get moments => _moments;
  PeopleResource_ _people;
  PeopleResource_ get people => _people;

  /** OAuth Scope2: Know your name, basic info, and list of people you're connected to on Google+ */
  static const core.String PLUS_LOGIN_SCOPE = "https://www.googleapis.com/auth/plus.login";

  /** OAuth Scope2: Know who you are on Google */
  static const core.String PLUS_ME_SCOPE = "https://www.googleapis.com/auth/plus.me";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  Plus([oauth.OAuth2 auth]) : super(auth) {
    basePath = "/plus/v1/";
    rootUrl = "https://www.googleapis.com/";
    _activities = new ActivitiesResource_(this);
    _comments = new CommentsResource_(this);
    _moments = new MomentsResource_(this);
    _people = new PeopleResource_(this);
  }
}
