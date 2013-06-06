part of plus_v1_api_client;

class ActivitiesResource_ extends Resource {

  ActivitiesResource_(Client client) : super(client) {
  }

  /**
   * Get an activity.
   *
   * [activityId] - The ID of the activity to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Activity> get(core.String activityId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "activities/{activityId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (activityId == null) paramErrors.add("activityId is required");
    if (activityId != null) urlParams["activityId"] = activityId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Activity.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all of the activities in the specified collection for a particular user.
   *
   * [userId] - The ID of the user to get activities for. The special value "me" can be used to indicate the authenticated user.
   *
   * [collection] - The collection of activities to list.
   *   Allowed values:
   *     public - All public activities created by the specified user.
   *
   * [maxResults] - The maximum number of activities to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
   *   Default: 20
   *   Minimum: 1
   *   Maximum: 100
   *
   * [pageToken] - The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ActivityFeed> list(core.String userId, core.String collection, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "people/{userId}/activities/{collection}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (collection == null) paramErrors.add("collection is required");
    if (collection != null && !["public"].contains(collection)) {
      paramErrors.add("Allowed values for collection: public");
    }
    if (collection != null) urlParams["collection"] = collection;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ActivityFeed.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Search public activities.
   *
   * [query] - Full-text search query string.
   *
   * [language] - Specify the preferred language to search with. See search language codes for available values.
   *   Default: en-US
   *
   * [maxResults] - The maximum number of activities to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
   *   Default: 10
   *   Minimum: 1
   *   Maximum: 20
   *
   * [orderBy] - Specifies how to order search results.
   *   Default: recent
   *   Allowed values:
   *     best - Sort activities by relevance to the user, most relevant first.
   *     recent - Sort activities by published date, most recent first.
   *
   * [pageToken] - The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response. This token can be of any length.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ActivityFeed> search(core.String query, {core.String language, core.int maxResults, core.String orderBy, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "activities";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderBy != null && !["best", "recent"].contains(orderBy)) {
      paramErrors.add("Allowed values for orderBy: best, recent");
    }
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (query == null) paramErrors.add("query is required");
    if (query != null) queryParams["query"] = query;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ActivityFeed.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class CommentsResource_ extends Resource {

  CommentsResource_(Client client) : super(client) {
  }

  /**
   * Get a comment.
   *
   * [commentId] - The ID of the comment to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Comment> get(core.String commentId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "comments/{commentId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (commentId == null) paramErrors.add("commentId is required");
    if (commentId != null) urlParams["commentId"] = commentId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Comment.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all of the comments for an activity.
   *
   * [activityId] - The ID of the activity to get comments for.
   *
   * [maxResults] - The maximum number of comments to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
   *   Default: 20
   *   Minimum: 0
   *   Maximum: 500
   *
   * [pageToken] - The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [sortOrder] - The order in which to sort the list of comments.
   *   Default: ascending
   *   Allowed values:
   *     ascending - Sort oldest comments first.
   *     descending - Sort newest comments first.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CommentFeed> list(core.String activityId, {core.int maxResults, core.String pageToken, core.String sortOrder, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "activities/{activityId}/comments";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (activityId == null) paramErrors.add("activityId is required");
    if (activityId != null) urlParams["activityId"] = activityId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (sortOrder != null && !["ascending", "descending"].contains(sortOrder)) {
      paramErrors.add("Allowed values for sortOrder: ascending, descending");
    }
    if (sortOrder != null) queryParams["sortOrder"] = sortOrder;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new CommentFeed.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class MomentsResource_ extends Resource {

  MomentsResource_(Client client) : super(client) {
  }

  /**
   * Record a moment representing a user's activity such as making a purchase or commenting on a blog.
   *
   * [request] - Moment to send in this request
   *
   * [userId] - The ID of the user to record activities for. The only valid values are "me" and the ID of the authenticated user.
   *
   * [collection] - The collection to which to write moments.
   *   Allowed values:
   *     vault - The default collection for writing new moments.
   *
   * [debug] - Return the moment as written. Should be used only for debugging.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Moment> insert(Moment request, core.String userId, core.String collection, {core.bool debug, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "people/{userId}/moments/{collection}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (collection == null) paramErrors.add("collection is required");
    if (collection != null && !["vault"].contains(collection)) {
      paramErrors.add("Allowed values for collection: vault");
    }
    if (collection != null) urlParams["collection"] = collection;
    if (debug != null) queryParams["debug"] = debug;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Moment.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all of the moments for a particular user.
   *
   * [userId] - The ID of the user to get moments for. The special value "me" can be used to indicate the authenticated user.
   *
   * [collection] - The collection of moments to list.
   *   Allowed values:
   *     vault - All moments created by the requesting application for the authenticated user.
   *
   * [maxResults] - The maximum number of moments to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
   *   Default: 20
   *   Minimum: 1
   *   Maximum: 100
   *
   * [pageToken] - The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [targetUrl] - Only moments containing this targetUrl will be returned.
   *
   * [type] - Only moments of this type will be returned.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<MomentsFeed> list(core.String userId, core.String collection, {core.int maxResults, core.String pageToken, core.String targetUrl, core.String type, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "people/{userId}/moments/{collection}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (collection == null) paramErrors.add("collection is required");
    if (collection != null && !["vault"].contains(collection)) {
      paramErrors.add("Allowed values for collection: vault");
    }
    if (collection != null) urlParams["collection"] = collection;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (targetUrl != null) queryParams["targetUrl"] = targetUrl;
    if (type != null) queryParams["type"] = type;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new MomentsFeed.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Delete a moment.
   *
   * [id] - The ID of the moment to delete.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> remove(core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "moments/{id}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class PeopleResource_ extends Resource {

  PeopleResource_(Client client) : super(client) {
  }

  /**
   * Get a person's profile. If your app uses scope https://www.googleapis.com/auth/plus.login, this method is guaranteed to return ageRange and language.
   *
   * [userId] - The ID of the person to get the profile for. The special value "me" can be used to indicate the authenticated user.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Person> get(core.String userId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "people/{userId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Person.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all of the people in the specified collection.
   *
   * [userId] - Get the collection of people for the person identified. Use "me" to indicate the authenticated user.
   *
   * [collection] - The collection of people to list.
   *   Allowed values:
   *     visible - The list of people who this user has added to one or more circles, limited to the circles visible to the requesting application.
   *
   * [maxResults] - The maximum number of people to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
   *   Default: 100
   *   Minimum: 1
   *   Maximum: 100
   *
   * [orderBy] - The order to return people in.
   *   Allowed values:
   *     alphabetical - Order the people by their display name.
   *     best - Order people based on the relevence to the viewer.
   *
   * [pageToken] - The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PeopleFeed> list(core.String userId, core.String collection, {core.int maxResults, core.String orderBy, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "people/{userId}/people/{collection}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (collection == null) paramErrors.add("collection is required");
    if (collection != null && !["visible"].contains(collection)) {
      paramErrors.add("Allowed values for collection: visible");
    }
    if (collection != null) urlParams["collection"] = collection;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (orderBy != null && !["alphabetical", "best"].contains(orderBy)) {
      paramErrors.add("Allowed values for orderBy: alphabetical, best");
    }
    if (orderBy != null) queryParams["orderBy"] = orderBy;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (userId == null) paramErrors.add("userId is required");
    if (userId != null) urlParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new PeopleFeed.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * List all of the people in the specified collection for a particular activity.
   *
   * [activityId] - The ID of the activity to get the list of people for.
   *
   * [collection] - The collection of people to list.
   *   Allowed values:
   *     plusoners - List all people who have +1'd this activity.
   *     resharers - List all people who have reshared this activity.
   *
   * [maxResults] - The maximum number of people to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
   *   Default: 20
   *   Minimum: 1
   *   Maximum: 100
   *
   * [pageToken] - The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PeopleFeed> listByActivity(core.String activityId, core.String collection, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "activities/{activityId}/people/{collection}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (activityId == null) paramErrors.add("activityId is required");
    if (activityId != null) urlParams["activityId"] = activityId;
    if (collection == null) paramErrors.add("collection is required");
    if (collection != null && !["plusoners", "resharers"].contains(collection)) {
      paramErrors.add("Allowed values for collection: plusoners, resharers");
    }
    if (collection != null) urlParams["collection"] = collection;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new PeopleFeed.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Search all public profiles.
   *
   * [query] - Specify a query string for full text search of public text in all profiles.
   *
   * [language] - Specify the preferred language to search with. See search language codes for available values.
   *   Default: en-US
   *
   * [maxResults] - The maximum number of people to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
   *   Default: 25
   *   Minimum: 1
   *   Maximum: 50
   *
   * [pageToken] - The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of "nextPageToken" from the previous response. This token can be of any length.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PeopleFeed> search(core.String query, {core.String language, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "people";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (query == null) paramErrors.add("query is required");
    if (query != null) queryParams["query"] = query;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new PeopleFeed.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

