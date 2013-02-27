part of plus_v1_api_client;

class Acl {

  /** Description of the access granted, suitable for display. */
  String description;

  /** The list of access entries. */
  List<PlusAclentryResource> items;

  /** Identifies this resource as a collection of access controls. Value: "plus#acl". */
  String kind;

  /** Create new Acl from JSON data */
  Acl.fromJson(Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new PlusAclentryResource.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Acl */
  Map toJson() {
    var output = new Map();

    if (description != null) {
      output["description"] = description;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Acl */
  String toString() => JSON.stringify(this.toJson());

}

class Activity {

  /** Identifies who has access to see this activity. */
  Acl access;

  /** The person who performed this activity. */
  ActivityActor actor;

  /** Street address where this activity occurred. */
  String address;

  /** Additional content added by the person who shared this activity, applicable only when resharing an activity. */
  String annotation;

  /** If this activity is a crosspost from another system, this property specifies the ID of the original activity. */
  String crosspostSource;

  /** ETag of this response for caching purposes. */
  String etag;

  /** Latitude and longitude where this activity occurred. Format is latitude followed by longitude, space separated. */
  String geocode;

  /** The ID of this activity. */
  String id;

  /** Identifies this resource as an activity. Value: "plus#activity". */
  String kind;

  /** The object of this activity. */
  ActivityObject object;

  /** ID of the place where this activity occurred. */
  String placeId;

  /** Name of the place where this activity occurred. */
  String placeName;

  /** The service provider that initially published this activity. */
  ActivityProvider provider;

  /** The time at which this activity was initially published. Formatted as an RFC 3339 timestamp. */
  String published;

  /** Radius, in meters, of the region where this activity occurred, centered at the latitude and longitude identified in geocode. */
  String radius;

  /** Title of this activity. */
  String title;

  /** The time at which this activity was last updated. Formatted as an RFC 3339 timestamp. */
  String updated;

  /** The link to this activity. */
  String url;

  /** This activity's verb, indicating what action was performed. Possible values are:  
- "post" - Publish content to the stream. 
- "share" - Reshare an activity. */
  String verb;

  /** Create new Activity from JSON data */
  Activity.fromJson(Map json) {
    if (json.containsKey("access")) {
      access = new Acl.fromJson(json["access"]);
    }
    if (json.containsKey("actor")) {
      actor = new ActivityActor.fromJson(json["actor"]);
    }
    if (json.containsKey("address")) {
      address = json["address"];
    }
    if (json.containsKey("annotation")) {
      annotation = json["annotation"];
    }
    if (json.containsKey("crosspostSource")) {
      crosspostSource = json["crosspostSource"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("geocode")) {
      geocode = json["geocode"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("object")) {
      object = new ActivityObject.fromJson(json["object"]);
    }
    if (json.containsKey("placeId")) {
      placeId = json["placeId"];
    }
    if (json.containsKey("placeName")) {
      placeName = json["placeName"];
    }
    if (json.containsKey("provider")) {
      provider = new ActivityProvider.fromJson(json["provider"]);
    }
    if (json.containsKey("published")) {
      published = json["published"];
    }
    if (json.containsKey("radius")) {
      radius = json["radius"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
    if (json.containsKey("verb")) {
      verb = json["verb"];
    }
  }

  /** Create JSON Object for Activity */
  Map toJson() {
    var output = new Map();

    if (access != null) {
      output["access"] = access.toJson();
    }
    if (actor != null) {
      output["actor"] = actor.toJson();
    }
    if (address != null) {
      output["address"] = address;
    }
    if (annotation != null) {
      output["annotation"] = annotation;
    }
    if (crosspostSource != null) {
      output["crosspostSource"] = crosspostSource;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (geocode != null) {
      output["geocode"] = geocode;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (object != null) {
      output["object"] = object.toJson();
    }
    if (placeId != null) {
      output["placeId"] = placeId;
    }
    if (placeName != null) {
      output["placeName"] = placeName;
    }
    if (provider != null) {
      output["provider"] = provider.toJson();
    }
    if (published != null) {
      output["published"] = published;
    }
    if (radius != null) {
      output["radius"] = radius;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (url != null) {
      output["url"] = url;
    }
    if (verb != null) {
      output["verb"] = verb;
    }

    return output;
  }

  /** Return String representation of Activity */
  String toString() => JSON.stringify(this.toJson());

}

/** The service provider that initially published this activity. */
class ActivityProvider {

  /** Name of the service provider. */
  String title;

  /** Create new ActivityProvider from JSON data */
  ActivityProvider.fromJson(Map json) {
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for ActivityProvider */
  Map toJson() {
    var output = new Map();

    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of ActivityProvider */
  String toString() => JSON.stringify(this.toJson());

}

/** The person who performed this activity. */
class ActivityActor {

  /** The name of the actor, suitable for display. */
  String displayName;

  /** The ID of the actor's person resource. */
  String id;

  /** The image representation of the actor. */
  ActivityActorImage image;

  /** An object representation of the individual components of name. */
  ActivityActorName name;

  /** The link to the actor's Google profile. */
  String url;

  /** Create new ActivityActor from JSON data */
  ActivityActor.fromJson(Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("image")) {
      image = new ActivityActorImage.fromJson(json["image"]);
    }
    if (json.containsKey("name")) {
      name = new ActivityActorName.fromJson(json["name"]);
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ActivityActor */
  Map toJson() {
    var output = new Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (image != null) {
      output["image"] = image.toJson();
    }
    if (name != null) {
      output["name"] = name.toJson();
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ActivityActor */
  String toString() => JSON.stringify(this.toJson());

}

/** An object representation of the individual components of name. */
class ActivityActorName {

  /** The family name (last name) of the actor. */
  String familyName;

  /** The given name (first name) of the actor. */
  String givenName;

  /** Create new ActivityActorName from JSON data */
  ActivityActorName.fromJson(Map json) {
    if (json.containsKey("familyName")) {
      familyName = json["familyName"];
    }
    if (json.containsKey("givenName")) {
      givenName = json["givenName"];
    }
  }

  /** Create JSON Object for ActivityActorName */
  Map toJson() {
    var output = new Map();

    if (familyName != null) {
      output["familyName"] = familyName;
    }
    if (givenName != null) {
      output["givenName"] = givenName;
    }

    return output;
  }

  /** Return String representation of ActivityActorName */
  String toString() => JSON.stringify(this.toJson());

}

/** The image representation of the actor. */
class ActivityActorImage {

  /** The URL of the actor's profile photo. To re-size the image and crop it to a square, append the query string ?sz=x, where x is the dimension in pixels of each side. */
  String url;

  /** Create new ActivityActorImage from JSON data */
  ActivityActorImage.fromJson(Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ActivityActorImage */
  Map toJson() {
    var output = new Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ActivityActorImage */
  String toString() => JSON.stringify(this.toJson());

}

/** The object of this activity. */
class ActivityObject {

  /** If this activity's object is itself another activity (for example, when a person reshares an activity), this property specifies the original activity's actor. */
  ActivityObjectActor actor;

  /** The media objects attached to this activity. */
  List<ActivityObjectAttachments> attachments;

  /** The HTML-formatted content, suitable for display. */
  String content;

  /** The ID of the object. When resharing an activity, this is the ID of the activity being reshared. */
  String id;

  /** The type of the object. Possible values are:  
- "note" - Textual content. 
- "activity" - A Google+ activity. */
  String objectType;

  /** The content (text) as provided by the author, stored without any HTML formatting. When creating or updating an activity, this value must be supplied as plain text in the request. */
  String originalContent;

  /** People who +1'd this activity. */
  ActivityObjectPlusoners plusoners;

  /** Comments in reply to this activity. */
  ActivityObjectReplies replies;

  /** People who reshared this activity. */
  ActivityObjectResharers resharers;

  /** The URL that points to the linked resource. */
  String url;

  /** Create new ActivityObject from JSON data */
  ActivityObject.fromJson(Map json) {
    if (json.containsKey("actor")) {
      actor = new ActivityObjectActor.fromJson(json["actor"]);
    }
    if (json.containsKey("attachments")) {
      attachments = [];
      json["attachments"].forEach((item) {
        attachments.add(new ActivityObjectAttachments.fromJson(item));
      });
    }
    if (json.containsKey("content")) {
      content = json["content"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("objectType")) {
      objectType = json["objectType"];
    }
    if (json.containsKey("originalContent")) {
      originalContent = json["originalContent"];
    }
    if (json.containsKey("plusoners")) {
      plusoners = new ActivityObjectPlusoners.fromJson(json["plusoners"]);
    }
    if (json.containsKey("replies")) {
      replies = new ActivityObjectReplies.fromJson(json["replies"]);
    }
    if (json.containsKey("resharers")) {
      resharers = new ActivityObjectResharers.fromJson(json["resharers"]);
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ActivityObject */
  Map toJson() {
    var output = new Map();

    if (actor != null) {
      output["actor"] = actor.toJson();
    }
    if (attachments != null) {
      output["attachments"] = new List();
      attachments.forEach((item) {
        output["attachments"].add(item.toJson());
      });
    }
    if (content != null) {
      output["content"] = content;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (objectType != null) {
      output["objectType"] = objectType;
    }
    if (originalContent != null) {
      output["originalContent"] = originalContent;
    }
    if (plusoners != null) {
      output["plusoners"] = plusoners.toJson();
    }
    if (replies != null) {
      output["replies"] = replies.toJson();
    }
    if (resharers != null) {
      output["resharers"] = resharers.toJson();
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ActivityObject */
  String toString() => JSON.stringify(this.toJson());

}

/** If this activity's object is itself another activity (for example, when a person reshares an activity), this property specifies the original activity's actor. */
class ActivityObjectActor {

  /** The original actor's name, suitable for display. */
  String displayName;

  /** ID of the original actor. */
  String id;

  /** The image representation of the original actor. */
  ActivityObjectActorImage image;

  /** A link to the original actor's Google profile. */
  String url;

  /** Create new ActivityObjectActor from JSON data */
  ActivityObjectActor.fromJson(Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("image")) {
      image = new ActivityObjectActorImage.fromJson(json["image"]);
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ActivityObjectActor */
  Map toJson() {
    var output = new Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (image != null) {
      output["image"] = image.toJson();
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ActivityObjectActor */
  String toString() => JSON.stringify(this.toJson());

}

/** The image representation of the original actor. */
class ActivityObjectActorImage {

  /** A URL that points to a thumbnail photo of the original actor. */
  String url;

  /** Create new ActivityObjectActorImage from JSON data */
  ActivityObjectActorImage.fromJson(Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ActivityObjectActorImage */
  Map toJson() {
    var output = new Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ActivityObjectActorImage */
  String toString() => JSON.stringify(this.toJson());

}

/** Comments in reply to this activity. */
class ActivityObjectReplies {

  /** The URL for the collection of comments in reply to this activity. */
  String selfLink;

  /** Total number of comments on this activity. */
  int totalItems;

  /** Create new ActivityObjectReplies from JSON data */
  ActivityObjectReplies.fromJson(Map json) {
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for ActivityObjectReplies */
  Map toJson() {
    var output = new Map();

    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of ActivityObjectReplies */
  String toString() => JSON.stringify(this.toJson());

}

class ActivityObjectAttachments {

  /** If the attachment is an article, this property contains a snippet of text from the article. It can also include descriptions for other types. */
  String content;

  /** The title of the attachment (such as a photo caption or an article title). */
  String displayName;

  /** If the attachment is a video, the embeddable link. */
  ActivityObjectAttachmentsEmbed embed;

  /** The full image URL for photo attachments. */
  ActivityObjectAttachmentsFullImage fullImage;

  /** The ID of the attachment. */
  String id;

  /** The preview image for photos or videos. */
  ActivityObjectAttachmentsImage image;

  /** The type of media object. Possible values are:  
- "photo" - A photo. 
- "album" - A photo album. 
- "video" - A video. 
- "article" - An article, specified by a link. */
  String objectType;

  /** If the attachment is an album, potential additional thumbnails from the album. */
  List<ActivityObjectAttachmentsThumbnails> thumbnails;

  /** The link to the attachment, should be of type text/html. */
  String url;

  /** Create new ActivityObjectAttachments from JSON data */
  ActivityObjectAttachments.fromJson(Map json) {
    if (json.containsKey("content")) {
      content = json["content"];
    }
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("embed")) {
      embed = new ActivityObjectAttachmentsEmbed.fromJson(json["embed"]);
    }
    if (json.containsKey("fullImage")) {
      fullImage = new ActivityObjectAttachmentsFullImage.fromJson(json["fullImage"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("image")) {
      image = new ActivityObjectAttachmentsImage.fromJson(json["image"]);
    }
    if (json.containsKey("objectType")) {
      objectType = json["objectType"];
    }
    if (json.containsKey("thumbnails")) {
      thumbnails = [];
      json["thumbnails"].forEach((item) {
        thumbnails.add(new ActivityObjectAttachmentsThumbnails.fromJson(item));
      });
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ActivityObjectAttachments */
  Map toJson() {
    var output = new Map();

    if (content != null) {
      output["content"] = content;
    }
    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (embed != null) {
      output["embed"] = embed.toJson();
    }
    if (fullImage != null) {
      output["fullImage"] = fullImage.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (image != null) {
      output["image"] = image.toJson();
    }
    if (objectType != null) {
      output["objectType"] = objectType;
    }
    if (thumbnails != null) {
      output["thumbnails"] = new List();
      thumbnails.forEach((item) {
        output["thumbnails"].add(item.toJson());
      });
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ActivityObjectAttachments */
  String toString() => JSON.stringify(this.toJson());

}

/** The preview image for photos or videos. */
class ActivityObjectAttachmentsImage {

  /** The height, in pixels, of the linked resource. */
  int height;

  /** Media type of the link. */
  String type;

  /** Image url. */
  String url;

  /** The width, in pixels, of the linked resource. */
  int width;

  /** Create new ActivityObjectAttachmentsImage from JSON data */
  ActivityObjectAttachmentsImage.fromJson(Map json) {
    if (json.containsKey("height")) {
      height = json["height"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
    if (json.containsKey("width")) {
      width = json["width"];
    }
  }

  /** Create JSON Object for ActivityObjectAttachmentsImage */
  Map toJson() {
    var output = new Map();

    if (height != null) {
      output["height"] = height;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (url != null) {
      output["url"] = url;
    }
    if (width != null) {
      output["width"] = width;
    }

    return output;
  }

  /** Return String representation of ActivityObjectAttachmentsImage */
  String toString() => JSON.stringify(this.toJson());

}

class ActivityObjectAttachmentsThumbnails {

  /** Potential name of the thumbnail. */
  String description;

  /** Image resource. */
  ActivityObjectAttachmentsThumbnailsImage image;

  /** URL to the webpage containing the image. */
  String url;

  /** Create new ActivityObjectAttachmentsThumbnails from JSON data */
  ActivityObjectAttachmentsThumbnails.fromJson(Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("image")) {
      image = new ActivityObjectAttachmentsThumbnailsImage.fromJson(json["image"]);
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ActivityObjectAttachmentsThumbnails */
  Map toJson() {
    var output = new Map();

    if (description != null) {
      output["description"] = description;
    }
    if (image != null) {
      output["image"] = image.toJson();
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ActivityObjectAttachmentsThumbnails */
  String toString() => JSON.stringify(this.toJson());

}

/** Image resource. */
class ActivityObjectAttachmentsThumbnailsImage {

  /** The height, in pixels, of the linked resource. */
  int height;

  /** Media type of the link. */
  String type;

  /** Image url. */
  String url;

  /** The width, in pixels, of the linked resource. */
  int width;

  /** Create new ActivityObjectAttachmentsThumbnailsImage from JSON data */
  ActivityObjectAttachmentsThumbnailsImage.fromJson(Map json) {
    if (json.containsKey("height")) {
      height = json["height"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
    if (json.containsKey("width")) {
      width = json["width"];
    }
  }

  /** Create JSON Object for ActivityObjectAttachmentsThumbnailsImage */
  Map toJson() {
    var output = new Map();

    if (height != null) {
      output["height"] = height;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (url != null) {
      output["url"] = url;
    }
    if (width != null) {
      output["width"] = width;
    }

    return output;
  }

  /** Return String representation of ActivityObjectAttachmentsThumbnailsImage */
  String toString() => JSON.stringify(this.toJson());

}

/** If the attachment is a video, the embeddable link. */
class ActivityObjectAttachmentsEmbed {

  /** Media type of the link. */
  String type;

  /** URL of the link. */
  String url;

  /** Create new ActivityObjectAttachmentsEmbed from JSON data */
  ActivityObjectAttachmentsEmbed.fromJson(Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ActivityObjectAttachmentsEmbed */
  Map toJson() {
    var output = new Map();

    if (type != null) {
      output["type"] = type;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ActivityObjectAttachmentsEmbed */
  String toString() => JSON.stringify(this.toJson());

}

/** The full image URL for photo attachments. */
class ActivityObjectAttachmentsFullImage {

  /** The height, in pixels, of the linked resource. */
  int height;

  /** Media type of the link. */
  String type;

  /** URL to the image. */
  String url;

  /** The width, in pixels, of the linked resource. */
  int width;

  /** Create new ActivityObjectAttachmentsFullImage from JSON data */
  ActivityObjectAttachmentsFullImage.fromJson(Map json) {
    if (json.containsKey("height")) {
      height = json["height"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
    if (json.containsKey("width")) {
      width = json["width"];
    }
  }

  /** Create JSON Object for ActivityObjectAttachmentsFullImage */
  Map toJson() {
    var output = new Map();

    if (height != null) {
      output["height"] = height;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (url != null) {
      output["url"] = url;
    }
    if (width != null) {
      output["width"] = width;
    }

    return output;
  }

  /** Return String representation of ActivityObjectAttachmentsFullImage */
  String toString() => JSON.stringify(this.toJson());

}

/** People who reshared this activity. */
class ActivityObjectResharers {

  /** The URL for the collection of resharers. */
  String selfLink;

  /** Total number of people who reshared this activity. */
  int totalItems;

  /** Create new ActivityObjectResharers from JSON data */
  ActivityObjectResharers.fromJson(Map json) {
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for ActivityObjectResharers */
  Map toJson() {
    var output = new Map();

    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of ActivityObjectResharers */
  String toString() => JSON.stringify(this.toJson());

}

/** People who +1'd this activity. */
class ActivityObjectPlusoners {

  /** The URL for the collection of people who +1'd this activity. */
  String selfLink;

  /** Total number of people who +1'd this activity. */
  int totalItems;

  /** Create new ActivityObjectPlusoners from JSON data */
  ActivityObjectPlusoners.fromJson(Map json) {
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for ActivityObjectPlusoners */
  Map toJson() {
    var output = new Map();

    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of ActivityObjectPlusoners */
  String toString() => JSON.stringify(this.toJson());

}

class ActivityFeed {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The ID of this collection of activities. Deprecated. */
  String id;

  /** The activities in this page of results. */
  List<Activity> items;

  /** Identifies this resource as a collection of activities. Value: "plus#activityFeed". */
  String kind;

  /** Link to the next page of activities. */
  String nextLink;

  /** The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  String nextPageToken;

  /** Link to this activity resource. */
  String selfLink;

  /** The title of this collection of activities. */
  String title;

  /** The time at which this collection of activities was last updated. Formatted as an RFC 3339 timestamp. */
  String updated;

  /** Create new ActivityFeed from JSON data */
  ActivityFeed.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Activity.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextLink")) {
      nextLink = json["nextLink"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
  }

  /** Create JSON Object for ActivityFeed */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextLink != null) {
      output["nextLink"] = nextLink;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of ActivityFeed */
  String toString() => JSON.stringify(this.toJson());

}

class Comment {

  /** The person who posted this comment. */
  CommentActor actor;

  /** ETag of this response for caching purposes. */
  String etag;

  /** The ID of this comment. */
  String id;

  /** The activity this comment replied to. */
  List<CommentInReplyTo> inReplyTo;

  /** Identifies this resource as a comment. Value: "plus#comment". */
  String kind;

  /** The object of this comment. */
  CommentObject object;

  /** People who +1'd this comment. */
  CommentPlusoners plusoners;

  /** The time at which this comment was initially published. Formatted as an RFC 3339 timestamp. */
  String published;

  /** Link to this comment resource. */
  String selfLink;

  /** The time at which this comment was last updated. Formatted as an RFC 3339 timestamp. */
  String updated;

  /** This comment's verb, indicating what action was performed. Possible values are:  
- "post" - Publish content to the stream. */
  String verb;

  /** Create new Comment from JSON data */
  Comment.fromJson(Map json) {
    if (json.containsKey("actor")) {
      actor = new CommentActor.fromJson(json["actor"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("inReplyTo")) {
      inReplyTo = [];
      json["inReplyTo"].forEach((item) {
        inReplyTo.add(new CommentInReplyTo.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("object")) {
      object = new CommentObject.fromJson(json["object"]);
    }
    if (json.containsKey("plusoners")) {
      plusoners = new CommentPlusoners.fromJson(json["plusoners"]);
    }
    if (json.containsKey("published")) {
      published = json["published"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
    if (json.containsKey("verb")) {
      verb = json["verb"];
    }
  }

  /** Create JSON Object for Comment */
  Map toJson() {
    var output = new Map();

    if (actor != null) {
      output["actor"] = actor.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (inReplyTo != null) {
      output["inReplyTo"] = new List();
      inReplyTo.forEach((item) {
        output["inReplyTo"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (object != null) {
      output["object"] = object.toJson();
    }
    if (plusoners != null) {
      output["plusoners"] = plusoners.toJson();
    }
    if (published != null) {
      output["published"] = published;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (updated != null) {
      output["updated"] = updated;
    }
    if (verb != null) {
      output["verb"] = verb;
    }

    return output;
  }

  /** Return String representation of Comment */
  String toString() => JSON.stringify(this.toJson());

}

/** The person who posted this comment. */
class CommentActor {

  /** The name of this actor, suitable for display. */
  String displayName;

  /** The ID of the actor. */
  String id;

  /** The image representation of this actor. */
  CommentActorImage image;

  /** A link to the person resource for this actor. */
  String url;

  /** Create new CommentActor from JSON data */
  CommentActor.fromJson(Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("image")) {
      image = new CommentActorImage.fromJson(json["image"]);
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for CommentActor */
  Map toJson() {
    var output = new Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (image != null) {
      output["image"] = image.toJson();
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of CommentActor */
  String toString() => JSON.stringify(this.toJson());

}

/** The image representation of this actor. */
class CommentActorImage {

  /** The URL of the actor's profile photo. To re-size the image and crop it to a square, append the query string ?sz=x, where x is the dimension in pixels of each side. */
  String url;

  /** Create new CommentActorImage from JSON data */
  CommentActorImage.fromJson(Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for CommentActorImage */
  Map toJson() {
    var output = new Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of CommentActorImage */
  String toString() => JSON.stringify(this.toJson());

}

/** People who +1'd this comment. */
class CommentPlusoners {

  /** Total number of people who +1'd this comment. */
  int totalItems;

  /** Create new CommentPlusoners from JSON data */
  CommentPlusoners.fromJson(Map json) {
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for CommentPlusoners */
  Map toJson() {
    var output = new Map();

    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of CommentPlusoners */
  String toString() => JSON.stringify(this.toJson());

}

class CommentInReplyTo {

  /** The ID of the activity. */
  String id;

  /** The URL of the activity. */
  String url;

  /** Create new CommentInReplyTo from JSON data */
  CommentInReplyTo.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for CommentInReplyTo */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of CommentInReplyTo */
  String toString() => JSON.stringify(this.toJson());

}

/** The object of this comment. */
class CommentObject {

  /** The HTML-formatted content, suitable for display. */
  String content;

  /** The object type of this comment. Possible values are:  
- "comment" - A comment in reply to an activity. */
  String objectType;

  /** The content (text) as provided by the author, stored without any HTML formatting. When creating or updating a comment, this value must be supplied as plain text in the request. */
  String originalContent;

  /** Create new CommentObject from JSON data */
  CommentObject.fromJson(Map json) {
    if (json.containsKey("content")) {
      content = json["content"];
    }
    if (json.containsKey("objectType")) {
      objectType = json["objectType"];
    }
    if (json.containsKey("originalContent")) {
      originalContent = json["originalContent"];
    }
  }

  /** Create JSON Object for CommentObject */
  Map toJson() {
    var output = new Map();

    if (content != null) {
      output["content"] = content;
    }
    if (objectType != null) {
      output["objectType"] = objectType;
    }
    if (originalContent != null) {
      output["originalContent"] = originalContent;
    }

    return output;
  }

  /** Return String representation of CommentObject */
  String toString() => JSON.stringify(this.toJson());

}

class CommentFeed {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The ID of this collection of comments. */
  String id;

  /** The comments in this page of results. */
  List<Comment> items;

  /** Identifies this resource as a collection of comments. Value: "plus#commentFeed". */
  String kind;

  /** Link to the next page of activities. */
  String nextLink;

  /** The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  String nextPageToken;

  /** The title of this collection of comments. */
  String title;

  /** The time at which this collection of comments was last updated. Formatted as an RFC 3339 timestamp. */
  String updated;

  /** Create new CommentFeed from JSON data */
  CommentFeed.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Comment.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextLink")) {
      nextLink = json["nextLink"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
  }

  /** Create JSON Object for CommentFeed */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextLink != null) {
      output["nextLink"] = nextLink;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of CommentFeed */
  String toString() => JSON.stringify(this.toJson());

}

class ItemScope {

  /** The subject matter of the content. */
  ItemScope about;

  /** An additional name for a Person, can be used for a middle name. */
  List<String> additionalName;

  /** Postal address. */
  ItemScope address;

  /** Address country. */
  String addressCountry;

  /** Address locality. */
  String addressLocality;

  /** Address region. */
  String addressRegion;

  /** The encoding. */
  List<ItemScope> associated_media;

  /** Number of attendees. */
  int attendeeCount;

  /** A person attending the event. */
  List<ItemScope> attendees;

  /** From http://schema.org/MusicRecording, the audio file. */
  ItemScope audio;

  /** The person or persons who created this result. In the example of restaurant reviews, this might be the reviewer's name. */
  List<ItemScope> author;

  /** Best possible rating value that a result might obtain. This property defines the upper bound for the ratingValue. For example, you might have a 5 star rating scale, you would provide 5 as the value for this property. */
  String bestRating;

  /** Date of birth. */
  String birthDate;

  /** From http://schema.org/MusicRecording, the artist that performed this recording. */
  ItemScope byArtist;

  /** The caption for this object. */
  String caption;

  /** File size in (mega/kilo) bytes. */
  String contentSize;

  /** Actual bytes of the media object, for example the image file or video file. */
  String contentUrl;

  /** A list of contributors to this result. */
  List<ItemScope> contributor;

  /** The date the result was created such as the date that a review was first created. */
  String dateCreated;

  /** The date the result was last modified such as the date that a review was last edited. */
  String dateModified;

  /** The initial date that the result was published. For example, a user writes a comment on a blog, which has a result.dateCreated of when they submit it. If the blog users comment moderation, the result.datePublished value would match the date when the owner approved the message. */
  String datePublished;

  /** The string that describes the content of the result. */
  String description;

  /** The duration of the item (movie, audio recording, event, etc.) in ISO 8601 date format. */
  String duration;

  /** A URL pointing to a player for a specific video. In general, this is the information in the src element of an embed tag and should not be the same as the content of the loc tag. */
  String embedUrl;

  /** The end date and time of the event (in ISO 8601 date format). */
  String endDate;

  /** Family name. This property can be used with givenName instead of the name property. */
  String familyName;

  /** Gender of the person. */
  String gender;

  /** Geo coordinates. */
  ItemScope geo;

  /** Given name. This property can be used with familyName instead of the name property. */
  String givenName;

  /** The height of the media object. */
  String height;

  /** An identifier for the target. Your app can choose how to identify targets. The target.id is required if you are writing an activity that does not have a corresponding web page or target.url property. */
  String id;

  /** A URL to the image that represents this result. For example, if a user writes a review of a restaurant and attaches a photo of their meal, you might use that photo as the result.image. */
  String image;

  /** From http://schema.org/MusicRecording, which album a song is in. */
  ItemScope inAlbum;

  /** Identifies this resource as an itemScope. */
  String kind;

  /** Latitude. */
  num latitude;

  /** The location of the event or organization. */
  ItemScope location;

  /** Longitude. */
  num longitude;

  /** The name of the result. In the example of a restaurant review, this might be the summary the user gave their review such as "Great ambiance, but overpriced." */
  String name;

  /** Property of http://schema.org/TVEpisode indicating which series the episode belongs to. */
  ItemScope partOfTVSeries;

  /** The main performer or performers of the event-for example, a presenter, musician, or actor. */
  List<ItemScope> performers;

  /** Player type that is required. For example: Flash or Silverlight. */
  String playerType;

  /** Post office box number. */
  String postOfficeBoxNumber;

  /** Postal code. */
  String postalCode;

  /** Rating value. */
  String ratingValue;

  /** Review rating. */
  ItemScope reviewRating;

  /** The start date and time of the event (in ISO 8601 date format). */
  String startDate;

  /** Street address. */
  String streetAddress;

  /** The text that is the result of the app activity. For example, if a user leaves a review of a restaurant, this might be the text of the review. */
  String text;

  /** Thumbnail image for an image or video. */
  ItemScope thumbnail;

  /** A URL to a thumbnail image that represents this result. */
  String thumbnailUrl;

  /** The exchange traded instrument associated with a Corporation object. The tickerSymbol is expressed as an exchange and an instrument name separated by a space character. For the exchange component of the tickerSymbol attribute, we reccommend using the controlled vocaulary of Market Identifier Codes (MIC) specified in ISO15022. */
  String tickerSymbol;

  /** The schema.org URL that best describes the referenced target and matches the type of moment. */
  String type;

  /** The URL that points to the result object. For example, a permalink directly to a restaurant reviewer's comment. */
  String url;

  /** The width of the media object. */
  String width;

  /** Worst possible rating value that a result might obtain. This property defines the lower bound for the ratingValue. */
  String worstRating;

  /** Create new ItemScope from JSON data */
  ItemScope.fromJson(Map json) {
    if (json.containsKey("about")) {
      about = new ItemScope.fromJson(json["about"]);
    }
    if (json.containsKey("additionalName")) {
      additionalName = [];
      json["additionalName"].forEach((item) {
        additionalName.add(item);
      });
    }
    if (json.containsKey("address")) {
      address = new ItemScope.fromJson(json["address"]);
    }
    if (json.containsKey("addressCountry")) {
      addressCountry = json["addressCountry"];
    }
    if (json.containsKey("addressLocality")) {
      addressLocality = json["addressLocality"];
    }
    if (json.containsKey("addressRegion")) {
      addressRegion = json["addressRegion"];
    }
    if (json.containsKey("associated_media")) {
      associated_media = [];
      json["associated_media"].forEach((item) {
        associated_media.add(new ItemScope.fromJson(item));
      });
    }
    if (json.containsKey("attendeeCount")) {
      attendeeCount = json["attendeeCount"];
    }
    if (json.containsKey("attendees")) {
      attendees = [];
      json["attendees"].forEach((item) {
        attendees.add(new ItemScope.fromJson(item));
      });
    }
    if (json.containsKey("audio")) {
      audio = new ItemScope.fromJson(json["audio"]);
    }
    if (json.containsKey("author")) {
      author = [];
      json["author"].forEach((item) {
        author.add(new ItemScope.fromJson(item));
      });
    }
    if (json.containsKey("bestRating")) {
      bestRating = json["bestRating"];
    }
    if (json.containsKey("birthDate")) {
      birthDate = json["birthDate"];
    }
    if (json.containsKey("byArtist")) {
      byArtist = new ItemScope.fromJson(json["byArtist"]);
    }
    if (json.containsKey("caption")) {
      caption = json["caption"];
    }
    if (json.containsKey("contentSize")) {
      contentSize = json["contentSize"];
    }
    if (json.containsKey("contentUrl")) {
      contentUrl = json["contentUrl"];
    }
    if (json.containsKey("contributor")) {
      contributor = [];
      json["contributor"].forEach((item) {
        contributor.add(new ItemScope.fromJson(item));
      });
    }
    if (json.containsKey("dateCreated")) {
      dateCreated = json["dateCreated"];
    }
    if (json.containsKey("dateModified")) {
      dateModified = json["dateModified"];
    }
    if (json.containsKey("datePublished")) {
      datePublished = json["datePublished"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("duration")) {
      duration = json["duration"];
    }
    if (json.containsKey("embedUrl")) {
      embedUrl = json["embedUrl"];
    }
    if (json.containsKey("endDate")) {
      endDate = json["endDate"];
    }
    if (json.containsKey("familyName")) {
      familyName = json["familyName"];
    }
    if (json.containsKey("gender")) {
      gender = json["gender"];
    }
    if (json.containsKey("geo")) {
      geo = new ItemScope.fromJson(json["geo"]);
    }
    if (json.containsKey("givenName")) {
      givenName = json["givenName"];
    }
    if (json.containsKey("height")) {
      height = json["height"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("image")) {
      image = json["image"];
    }
    if (json.containsKey("inAlbum")) {
      inAlbum = new ItemScope.fromJson(json["inAlbum"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("latitude")) {
      latitude = json["latitude"];
    }
    if (json.containsKey("location")) {
      location = new ItemScope.fromJson(json["location"]);
    }
    if (json.containsKey("longitude")) {
      longitude = json["longitude"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("partOfTVSeries")) {
      partOfTVSeries = new ItemScope.fromJson(json["partOfTVSeries"]);
    }
    if (json.containsKey("performers")) {
      performers = [];
      json["performers"].forEach((item) {
        performers.add(new ItemScope.fromJson(item));
      });
    }
    if (json.containsKey("playerType")) {
      playerType = json["playerType"];
    }
    if (json.containsKey("postOfficeBoxNumber")) {
      postOfficeBoxNumber = json["postOfficeBoxNumber"];
    }
    if (json.containsKey("postalCode")) {
      postalCode = json["postalCode"];
    }
    if (json.containsKey("ratingValue")) {
      ratingValue = json["ratingValue"];
    }
    if (json.containsKey("reviewRating")) {
      reviewRating = new ItemScope.fromJson(json["reviewRating"]);
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
    if (json.containsKey("streetAddress")) {
      streetAddress = json["streetAddress"];
    }
    if (json.containsKey("text")) {
      text = json["text"];
    }
    if (json.containsKey("thumbnail")) {
      thumbnail = new ItemScope.fromJson(json["thumbnail"]);
    }
    if (json.containsKey("thumbnailUrl")) {
      thumbnailUrl = json["thumbnailUrl"];
    }
    if (json.containsKey("tickerSymbol")) {
      tickerSymbol = json["tickerSymbol"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
    if (json.containsKey("width")) {
      width = json["width"];
    }
    if (json.containsKey("worstRating")) {
      worstRating = json["worstRating"];
    }
  }

  /** Create JSON Object for ItemScope */
  Map toJson() {
    var output = new Map();

    if (about != null) {
      output["about"] = about.toJson();
    }
    if (additionalName != null) {
      output["additionalName"] = new List();
      additionalName.forEach((item) {
        output["additionalName"].add(item);
      });
    }
    if (address != null) {
      output["address"] = address.toJson();
    }
    if (addressCountry != null) {
      output["addressCountry"] = addressCountry;
    }
    if (addressLocality != null) {
      output["addressLocality"] = addressLocality;
    }
    if (addressRegion != null) {
      output["addressRegion"] = addressRegion;
    }
    if (associated_media != null) {
      output["associated_media"] = new List();
      associated_media.forEach((item) {
        output["associated_media"].add(item.toJson());
      });
    }
    if (attendeeCount != null) {
      output["attendeeCount"] = attendeeCount;
    }
    if (attendees != null) {
      output["attendees"] = new List();
      attendees.forEach((item) {
        output["attendees"].add(item.toJson());
      });
    }
    if (audio != null) {
      output["audio"] = audio.toJson();
    }
    if (author != null) {
      output["author"] = new List();
      author.forEach((item) {
        output["author"].add(item.toJson());
      });
    }
    if (bestRating != null) {
      output["bestRating"] = bestRating;
    }
    if (birthDate != null) {
      output["birthDate"] = birthDate;
    }
    if (byArtist != null) {
      output["byArtist"] = byArtist.toJson();
    }
    if (caption != null) {
      output["caption"] = caption;
    }
    if (contentSize != null) {
      output["contentSize"] = contentSize;
    }
    if (contentUrl != null) {
      output["contentUrl"] = contentUrl;
    }
    if (contributor != null) {
      output["contributor"] = new List();
      contributor.forEach((item) {
        output["contributor"].add(item.toJson());
      });
    }
    if (dateCreated != null) {
      output["dateCreated"] = dateCreated;
    }
    if (dateModified != null) {
      output["dateModified"] = dateModified;
    }
    if (datePublished != null) {
      output["datePublished"] = datePublished;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (duration != null) {
      output["duration"] = duration;
    }
    if (embedUrl != null) {
      output["embedUrl"] = embedUrl;
    }
    if (endDate != null) {
      output["endDate"] = endDate;
    }
    if (familyName != null) {
      output["familyName"] = familyName;
    }
    if (gender != null) {
      output["gender"] = gender;
    }
    if (geo != null) {
      output["geo"] = geo.toJson();
    }
    if (givenName != null) {
      output["givenName"] = givenName;
    }
    if (height != null) {
      output["height"] = height;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (image != null) {
      output["image"] = image;
    }
    if (inAlbum != null) {
      output["inAlbum"] = inAlbum.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (latitude != null) {
      output["latitude"] = latitude;
    }
    if (location != null) {
      output["location"] = location.toJson();
    }
    if (longitude != null) {
      output["longitude"] = longitude;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (partOfTVSeries != null) {
      output["partOfTVSeries"] = partOfTVSeries.toJson();
    }
    if (performers != null) {
      output["performers"] = new List();
      performers.forEach((item) {
        output["performers"].add(item.toJson());
      });
    }
    if (playerType != null) {
      output["playerType"] = playerType;
    }
    if (postOfficeBoxNumber != null) {
      output["postOfficeBoxNumber"] = postOfficeBoxNumber;
    }
    if (postalCode != null) {
      output["postalCode"] = postalCode;
    }
    if (ratingValue != null) {
      output["ratingValue"] = ratingValue;
    }
    if (reviewRating != null) {
      output["reviewRating"] = reviewRating.toJson();
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }
    if (streetAddress != null) {
      output["streetAddress"] = streetAddress;
    }
    if (text != null) {
      output["text"] = text;
    }
    if (thumbnail != null) {
      output["thumbnail"] = thumbnail.toJson();
    }
    if (thumbnailUrl != null) {
      output["thumbnailUrl"] = thumbnailUrl;
    }
    if (tickerSymbol != null) {
      output["tickerSymbol"] = tickerSymbol;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (url != null) {
      output["url"] = url;
    }
    if (width != null) {
      output["width"] = width;
    }
    if (worstRating != null) {
      output["worstRating"] = worstRating;
    }

    return output;
  }

  /** Return String representation of ItemScope */
  String toString() => JSON.stringify(this.toJson());

}

class Moment {

  /** The moment ID. */
  String id;

  /** Identifies this resource as a moment. */
  String kind;

  /** The object generated by performing the action on the target. For example, a user writes a review of a restaurant, the target is the restaurant and the result is the review. */
  ItemScope result;

  /** Time stamp of when the action occurred in RFC3339 format. */
  String startDate;

  /** The object on which the action was performed. */
  ItemScope target;

  /** The Google schema for the type of moment to write. For example, http://schemas.google.com/AddActivity. */
  String type;

  /** Create new Moment from JSON data */
  Moment.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("result")) {
      result = new ItemScope.fromJson(json["result"]);
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
    if (json.containsKey("target")) {
      target = new ItemScope.fromJson(json["target"]);
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Moment */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (result != null) {
      output["result"] = result.toJson();
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }
    if (target != null) {
      output["target"] = target.toJson();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Moment */
  String toString() => JSON.stringify(this.toJson());

}

class MomentsFeed {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The moments in this page of results. */
  List<Moment> items;

  /** Identifies this resource as a collection of moments. Value: "plus#momentsFeed". */
  String kind;

  /** Link to the next page of moments. */
  String nextLink;

  /** The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  String nextPageToken;

  /** Link to this page of moments. */
  String selfLink;

  /** The title of this collection of moments. */
  String title;

  /** The RFC 339 timestamp for when this collection of moments was last updated. */
  String updated;

  /** Create new MomentsFeed from JSON data */
  MomentsFeed.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Moment.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextLink")) {
      nextLink = json["nextLink"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("updated")) {
      updated = json["updated"];
    }
  }

  /** Create JSON Object for MomentsFeed */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextLink != null) {
      output["nextLink"] = nextLink;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (updated != null) {
      output["updated"] = updated;
    }

    return output;
  }

  /** Return String representation of MomentsFeed */
  String toString() => JSON.stringify(this.toJson());

}

class PeopleFeed {

  /** ETag of this response for caching purposes. */
  String etag;

  /** The people in this page of results. Each item includes the id, displayName, image, and url for the person. To retrieve additional profile data, see the people.get method. */
  List<Person> items;

  /** Identifies this resource as a collection of people. Value: "plus#peopleFeed". */
  String kind;

  /** The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  String nextPageToken;

  /** Link to this resource. */
  String selfLink;

  /** The title of this collection of people. */
  String title;

  /** The total number of people available in this list. The number of people in a response might be smaller due to paging. This might not be set for all collections. */
  int totalItems;

  /** Create new PeopleFeed from JSON data */
  PeopleFeed.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Person.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for PeopleFeed */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of PeopleFeed */
  String toString() => JSON.stringify(this.toJson());

}

class Person {

  /** A short biography for this person. */
  String aboutMe;

  /** The age range of the person. */
  PersonAgeRange ageRange;

  /** The person's date of birth, represented as YYYY-MM-DD. */
  String birthday;

  /** The "bragging rights" line of this person. */
  String braggingRights;

  /** If a Google+ Page and for followers who are visible, the number of people who have added this page to a circle. */
  int circledByCount;

  /** The cover photo content. */
  PersonCover cover;

  /** The current location for this person. */
  String currentLocation;

  /** The name of this person, suitable for display. */
  String displayName;

  /** A list of email addresses that this person has set to public on their Google+ profile. You can also use the userinfo.email scope to retrieve an authenticated user's email address. */
  List<PersonEmails> emails;

  /** ETag of this response for caching purposes. */
  String etag;

  /** The person's gender. Possible values are:  
- "male" - Male gender. 
- "female" - Female gender. 
- "other" - Other. */
  String gender;

  /** If "true", indicates that the person has installed the app that is making the request and has chosen to expose this install state to the caller. A value of "false" indicates that the install state cannot be determined (it is either not installed or the person has chosen to keep this information private). */
  bool hasApp;

  /** The ID of this person. */
  String id;

  /** The representation of the person's profile photo. */
  PersonImage image;

  /** Whether this user has signed up for Google+. */
  bool isPlusUser;

  /** Identifies this resource as a person. Value: "plus#person". */
  String kind;

  /** The user's preferred language for rendering. */
  String language;

  /** An object representation of the individual components of a person's name. */
  PersonName name;

  /** The nickname of this person. */
  String nickname;

  /** Type of person within Google+. Possible values are:  
- "person" - represents an actual person. 
- "page" - represents a page. */
  String objectType;

  /** A list of current or past organizations with which this person is associated. */
  List<PersonOrganizations> organizations;

  /** A list of places where this person has lived. */
  List<PersonPlacesLived> placesLived;

  /** If a Google+ Page, the number of people who have +1'ed this page. */
  int plusOneCount;

  /** The person's relationship status. Possible values are:  
- "single" - Person is single. 
- "in_a_relationship" - Person is in a relationship. 
- "engaged" - Person is engaged. 
- "married" - Person is married. 
- "its_complicated" - The relationship is complicated. 
- "open_relationship" - Person is in an open relationship. 
- "widowed" - Person is widowed. 
- "in_domestic_partnership" - Person is in a domestic partnership. 
- "in_civil_union" - Person is in a civil union. */
  String relationshipStatus;

  /** The brief description (tagline) of this person. */
  String tagline;

  /** The URL of this person's profile. */
  String url;

  /** A list of URLs for this person. */
  List<PersonUrls> urls;

  /** Whether the person or Google+ Page has been verified. */
  bool verified;

  /** Create new Person from JSON data */
  Person.fromJson(Map json) {
    if (json.containsKey("aboutMe")) {
      aboutMe = json["aboutMe"];
    }
    if (json.containsKey("ageRange")) {
      ageRange = new PersonAgeRange.fromJson(json["ageRange"]);
    }
    if (json.containsKey("birthday")) {
      birthday = json["birthday"];
    }
    if (json.containsKey("braggingRights")) {
      braggingRights = json["braggingRights"];
    }
    if (json.containsKey("circledByCount")) {
      circledByCount = json["circledByCount"];
    }
    if (json.containsKey("cover")) {
      cover = new PersonCover.fromJson(json["cover"]);
    }
    if (json.containsKey("currentLocation")) {
      currentLocation = json["currentLocation"];
    }
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("emails")) {
      emails = [];
      json["emails"].forEach((item) {
        emails.add(new PersonEmails.fromJson(item));
      });
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("gender")) {
      gender = json["gender"];
    }
    if (json.containsKey("hasApp")) {
      hasApp = json["hasApp"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("image")) {
      image = new PersonImage.fromJson(json["image"]);
    }
    if (json.containsKey("isPlusUser")) {
      isPlusUser = json["isPlusUser"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("language")) {
      language = json["language"];
    }
    if (json.containsKey("name")) {
      name = new PersonName.fromJson(json["name"]);
    }
    if (json.containsKey("nickname")) {
      nickname = json["nickname"];
    }
    if (json.containsKey("objectType")) {
      objectType = json["objectType"];
    }
    if (json.containsKey("organizations")) {
      organizations = [];
      json["organizations"].forEach((item) {
        organizations.add(new PersonOrganizations.fromJson(item));
      });
    }
    if (json.containsKey("placesLived")) {
      placesLived = [];
      json["placesLived"].forEach((item) {
        placesLived.add(new PersonPlacesLived.fromJson(item));
      });
    }
    if (json.containsKey("plusOneCount")) {
      plusOneCount = json["plusOneCount"];
    }
    if (json.containsKey("relationshipStatus")) {
      relationshipStatus = json["relationshipStatus"];
    }
    if (json.containsKey("tagline")) {
      tagline = json["tagline"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
    if (json.containsKey("urls")) {
      urls = [];
      json["urls"].forEach((item) {
        urls.add(new PersonUrls.fromJson(item));
      });
    }
    if (json.containsKey("verified")) {
      verified = json["verified"];
    }
  }

  /** Create JSON Object for Person */
  Map toJson() {
    var output = new Map();

    if (aboutMe != null) {
      output["aboutMe"] = aboutMe;
    }
    if (ageRange != null) {
      output["ageRange"] = ageRange.toJson();
    }
    if (birthday != null) {
      output["birthday"] = birthday;
    }
    if (braggingRights != null) {
      output["braggingRights"] = braggingRights;
    }
    if (circledByCount != null) {
      output["circledByCount"] = circledByCount;
    }
    if (cover != null) {
      output["cover"] = cover.toJson();
    }
    if (currentLocation != null) {
      output["currentLocation"] = currentLocation;
    }
    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (emails != null) {
      output["emails"] = new List();
      emails.forEach((item) {
        output["emails"].add(item.toJson());
      });
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (gender != null) {
      output["gender"] = gender;
    }
    if (hasApp != null) {
      output["hasApp"] = hasApp;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (image != null) {
      output["image"] = image.toJson();
    }
    if (isPlusUser != null) {
      output["isPlusUser"] = isPlusUser;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (language != null) {
      output["language"] = language;
    }
    if (name != null) {
      output["name"] = name.toJson();
    }
    if (nickname != null) {
      output["nickname"] = nickname;
    }
    if (objectType != null) {
      output["objectType"] = objectType;
    }
    if (organizations != null) {
      output["organizations"] = new List();
      organizations.forEach((item) {
        output["organizations"].add(item.toJson());
      });
    }
    if (placesLived != null) {
      output["placesLived"] = new List();
      placesLived.forEach((item) {
        output["placesLived"].add(item.toJson());
      });
    }
    if (plusOneCount != null) {
      output["plusOneCount"] = plusOneCount;
    }
    if (relationshipStatus != null) {
      output["relationshipStatus"] = relationshipStatus;
    }
    if (tagline != null) {
      output["tagline"] = tagline;
    }
    if (url != null) {
      output["url"] = url;
    }
    if (urls != null) {
      output["urls"] = new List();
      urls.forEach((item) {
        output["urls"].add(item.toJson());
      });
    }
    if (verified != null) {
      output["verified"] = verified;
    }

    return output;
  }

  /** Return String representation of Person */
  String toString() => JSON.stringify(this.toJson());

}

/** The cover photo content. */
class PersonCover {

  /** Extra information about the cover photo. */
  PersonCoverCoverInfo coverInfo;

  /** The person's primary cover image. */
  PersonCoverCoverPhoto coverPhoto;

  /** The layout of the cover art. Possible values are:  
- "banner" - One large image banner. */
  String layout;

  /** Create new PersonCover from JSON data */
  PersonCover.fromJson(Map json) {
    if (json.containsKey("coverInfo")) {
      coverInfo = new PersonCoverCoverInfo.fromJson(json["coverInfo"]);
    }
    if (json.containsKey("coverPhoto")) {
      coverPhoto = new PersonCoverCoverPhoto.fromJson(json["coverPhoto"]);
    }
    if (json.containsKey("layout")) {
      layout = json["layout"];
    }
  }

  /** Create JSON Object for PersonCover */
  Map toJson() {
    var output = new Map();

    if (coverInfo != null) {
      output["coverInfo"] = coverInfo.toJson();
    }
    if (coverPhoto != null) {
      output["coverPhoto"] = coverPhoto.toJson();
    }
    if (layout != null) {
      output["layout"] = layout;
    }

    return output;
  }

  /** Return String representation of PersonCover */
  String toString() => JSON.stringify(this.toJson());

}

/** Extra information about the cover photo. */
class PersonCoverCoverInfo {

  /** The difference between the left position of the image cover and the actual displayed cover image. Only valid for BANNER layout. */
  int leftImageOffset;

  /** The difference between the top position of the image cover and the actual displayed cover image. Only valid for BANNER layout. */
  int topImageOffset;

  /** Create new PersonCoverCoverInfo from JSON data */
  PersonCoverCoverInfo.fromJson(Map json) {
    if (json.containsKey("leftImageOffset")) {
      leftImageOffset = json["leftImageOffset"];
    }
    if (json.containsKey("topImageOffset")) {
      topImageOffset = json["topImageOffset"];
    }
  }

  /** Create JSON Object for PersonCoverCoverInfo */
  Map toJson() {
    var output = new Map();

    if (leftImageOffset != null) {
      output["leftImageOffset"] = leftImageOffset;
    }
    if (topImageOffset != null) {
      output["topImageOffset"] = topImageOffset;
    }

    return output;
  }

  /** Return String representation of PersonCoverCoverInfo */
  String toString() => JSON.stringify(this.toJson());

}

/** The person's primary cover image. */
class PersonCoverCoverPhoto {

  /** The height to the image. */
  int height;

  /** The url to the image. */
  String url;

  /** The width to the image. */
  int width;

  /** Create new PersonCoverCoverPhoto from JSON data */
  PersonCoverCoverPhoto.fromJson(Map json) {
    if (json.containsKey("height")) {
      height = json["height"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
    if (json.containsKey("width")) {
      width = json["width"];
    }
  }

  /** Create JSON Object for PersonCoverCoverPhoto */
  Map toJson() {
    var output = new Map();

    if (height != null) {
      output["height"] = height;
    }
    if (url != null) {
      output["url"] = url;
    }
    if (width != null) {
      output["width"] = width;
    }

    return output;
  }

  /** Return String representation of PersonCoverCoverPhoto */
  String toString() => JSON.stringify(this.toJson());

}

/** An object representation of the individual components of a person's name. */
class PersonName {

  /** The family name (last name) of this person. */
  String familyName;

  /** The full name of this person, including middle names, suffixes, etc. */
  String formatted;

  /** The given name (first name) of this person. */
  String givenName;

  /** The honorific prefixes (such as "Dr." or "Mrs.") for this person. */
  String honorificPrefix;

  /** The honorific suffixes (such as "Jr.") for this person. */
  String honorificSuffix;

  /** The middle name of this person. */
  String middleName;

  /** Create new PersonName from JSON data */
  PersonName.fromJson(Map json) {
    if (json.containsKey("familyName")) {
      familyName = json["familyName"];
    }
    if (json.containsKey("formatted")) {
      formatted = json["formatted"];
    }
    if (json.containsKey("givenName")) {
      givenName = json["givenName"];
    }
    if (json.containsKey("honorificPrefix")) {
      honorificPrefix = json["honorificPrefix"];
    }
    if (json.containsKey("honorificSuffix")) {
      honorificSuffix = json["honorificSuffix"];
    }
    if (json.containsKey("middleName")) {
      middleName = json["middleName"];
    }
  }

  /** Create JSON Object for PersonName */
  Map toJson() {
    var output = new Map();

    if (familyName != null) {
      output["familyName"] = familyName;
    }
    if (formatted != null) {
      output["formatted"] = formatted;
    }
    if (givenName != null) {
      output["givenName"] = givenName;
    }
    if (honorificPrefix != null) {
      output["honorificPrefix"] = honorificPrefix;
    }
    if (honorificSuffix != null) {
      output["honorificSuffix"] = honorificSuffix;
    }
    if (middleName != null) {
      output["middleName"] = middleName;
    }

    return output;
  }

  /** Return String representation of PersonName */
  String toString() => JSON.stringify(this.toJson());

}

class PersonEmails {

  /** If "true", indicates this email address is the person's primary one. */
  bool primary;

  /** The type of address. Possible values are:  
- "home" - Home email address. 
- "work" - Work email address. 
- "other" - Other. */
  String type;

  /** The email address. */
  String value;

  /** Create new PersonEmails from JSON data */
  PersonEmails.fromJson(Map json) {
    if (json.containsKey("primary")) {
      primary = json["primary"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for PersonEmails */
  Map toJson() {
    var output = new Map();

    if (primary != null) {
      output["primary"] = primary;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of PersonEmails */
  String toString() => JSON.stringify(this.toJson());

}

class PersonUrls {

  /** If "true", this URL is the person's primary URL. */
  bool primary;

  /** The type of URL. Possible values are:  
- "home" - URL for home. 
- "work" - URL for work. 
- "blog" - URL for blog. 
- "profile" - URL for profile. 
- "other" - Other. */
  String type;

  /** The URL value. */
  String value;

  /** Create new PersonUrls from JSON data */
  PersonUrls.fromJson(Map json) {
    if (json.containsKey("primary")) {
      primary = json["primary"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for PersonUrls */
  Map toJson() {
    var output = new Map();

    if (primary != null) {
      output["primary"] = primary;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of PersonUrls */
  String toString() => JSON.stringify(this.toJson());

}

class PersonPlacesLived {

  /** If "true", this place of residence is this person's primary residence. */
  bool primary;

  /** A place where this person has lived. For example: "Seattle, WA", "Near Toronto". */
  String value;

  /** Create new PersonPlacesLived from JSON data */
  PersonPlacesLived.fromJson(Map json) {
    if (json.containsKey("primary")) {
      primary = json["primary"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for PersonPlacesLived */
  Map toJson() {
    var output = new Map();

    if (primary != null) {
      output["primary"] = primary;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of PersonPlacesLived */
  String toString() => JSON.stringify(this.toJson());

}

/** The age range of the person. */
class PersonAgeRange {

  /** The age range's upper bound, if any. */
  int max;

  /** The age range's lower bound, if any. */
  int min;

  /** Create new PersonAgeRange from JSON data */
  PersonAgeRange.fromJson(Map json) {
    if (json.containsKey("max")) {
      max = json["max"];
    }
    if (json.containsKey("min")) {
      min = json["min"];
    }
  }

  /** Create JSON Object for PersonAgeRange */
  Map toJson() {
    var output = new Map();

    if (max != null) {
      output["max"] = max;
    }
    if (min != null) {
      output["min"] = min;
    }

    return output;
  }

  /** Return String representation of PersonAgeRange */
  String toString() => JSON.stringify(this.toJson());

}

class PersonOrganizations {

  /** The department within the organization. Deprecated. */
  String department;

  /** A short description of the person's role in this organization. Deprecated. */
  String description;

  /** The date the person left this organization. */
  String endDate;

  /** The location of this organization. Deprecated. */
  String location;

  /** The name of the organization. */
  String name;

  /** If "true", indicates this organization is the person's primary one (typically interpreted as current one). */
  bool primary;

  /** The date the person joined this organization. */
  String startDate;

  /** The person's job title or role within the organization. */
  String title;

  /** The type of organization. Possible values are:  
- "work" - Work. 
- "school" - School. */
  String type;

  /** Create new PersonOrganizations from JSON data */
  PersonOrganizations.fromJson(Map json) {
    if (json.containsKey("department")) {
      department = json["department"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("endDate")) {
      endDate = json["endDate"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("primary")) {
      primary = json["primary"];
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for PersonOrganizations */
  Map toJson() {
    var output = new Map();

    if (department != null) {
      output["department"] = department;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (endDate != null) {
      output["endDate"] = endDate;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (primary != null) {
      output["primary"] = primary;
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of PersonOrganizations */
  String toString() => JSON.stringify(this.toJson());

}

/** The representation of the person's profile photo. */
class PersonImage {

  /** The URL of the person's profile photo. To re-size the image and crop it to a square, append the query string ?sz=x, where x is the dimension in pixels of each side. */
  String url;

  /** Create new PersonImage from JSON data */
  PersonImage.fromJson(Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for PersonImage */
  Map toJson() {
    var output = new Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of PersonImage */
  String toString() => JSON.stringify(this.toJson());

}

class PlusAclentryResource {

  /** A descriptive name for this entry. Suitable for display. */
  String displayName;

  /** The ID of the entry. For entries of type "person" or "circle", this is the ID of the resource. For other types, this property is not set. */
  String id;

  /** The type of entry describing to whom access is granted. Possible values are:  
- "person" - Access to an individual. 
- "circle" - Access to members of a circle. 
- "myCircles" - Access to members of all the person's circles. 
- "extendedCircles" - Access to members of everyone in a person's circles, plus all of the people in their circles. 
- "public" - Access to anyone on the web. */
  String type;

  /** Create new PlusAclentryResource from JSON data */
  PlusAclentryResource.fromJson(Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for PlusAclentryResource */
  Map toJson() {
    var output = new Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of PlusAclentryResource */
  String toString() => JSON.stringify(this.toJson());

}

