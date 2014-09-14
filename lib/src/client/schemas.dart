part of plus_v1_api;

class Acl {

  /** Description of the access granted, suitable for display. */
  core.String description;

  /** The list of access entries. */
  core.List<PlusAclentryResource> items;

  /** Identifies this resource as a collection of access controls. Value: "plus#acl". */
  core.String kind;

  /** Create new Acl from JSON data */
  Acl.fromJson(core.Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new PlusAclentryResource.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Acl */
  core.Map toJson() {
    var output = new core.Map();

    if (description != null) {
      output["description"] = description;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Acl */
  core.String toString() => JSON.encode(this.toJson());

}

class Activity {

  /** Identifies who has access to see this activity. */
  Acl access;

  /** The person who performed this activity. */
  ActivityActor actor;

  /** Street address where this activity occurred. */
  core.String address;

  /** Additional content added by the person who shared this activity, applicable only when resharing an activity. */
  core.String annotation;

  /** If this activity is a crosspost from another system, this property specifies the ID of the original activity. */
  core.String crosspostSource;

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** Latitude and longitude where this activity occurred. Format is latitude followed by longitude, space separated. */
  core.String geocode;

  /** The ID of this activity. */
  core.String id;

  /** Identifies this resource as an activity. Value: "plus#activity". */
  core.String kind;

  /** The location where this activity occurred. */
  Place location;

  /** The object of this activity. */
  ActivityObject object;

  /** ID of the place where this activity occurred. */
  core.String placeId;

  /** Name of the place where this activity occurred. */
  core.String placeName;

  /** The service provider that initially published this activity. */
  ActivityProvider provider;

  /** The time at which this activity was initially published. Formatted as an RFC 3339 timestamp. */
  core.String published;

  /** Radius, in meters, of the region where this activity occurred, centered at the latitude and longitude identified in geocode. */
  core.String radius;

  /** Title of this activity. */
  core.String title;

  /** The time at which this activity was last updated. Formatted as an RFC 3339 timestamp. */
  core.String updated;

  /** The link to this activity. */
  core.String url;

  /** This activity's verb, which indicates the action that was performed. Possible values include, but are not limited to, the following values:  
- "post" - Publish content to the stream. 
- "share" - Reshare an activity. */
  core.String verb;

  /** Create new Activity from JSON data */
  Activity.fromJson(core.Map json) {
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
    if (json.containsKey("location")) {
      location = new Place.fromJson(json["location"]);
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
  core.Map toJson() {
    var output = new core.Map();

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
    if (location != null) {
      output["location"] = location.toJson();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** The person who performed this activity. */
class ActivityActor {

  /** The name of the actor, suitable for display. */
  core.String displayName;

  /** The ID of the actor's Person resource. */
  core.String id;

  /** The image representation of the actor. */
  ActivityActorImage image;

  /** An object representation of the individual components of name. */
  ActivityActorName name;

  /** The link to the actor's Google profile. */
  core.String url;

  /** Create new ActivityActor from JSON data */
  ActivityActor.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** The image representation of the actor. */
class ActivityActorImage {

  /** The URL of the actor's profile photo. To resize the image and crop it to a square, append the query string ?sz=x, where x is the dimension in pixels of each side. */
  core.String url;

  /** Create new ActivityActorImage from JSON data */
  ActivityActorImage.fromJson(core.Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ActivityActorImage */
  core.Map toJson() {
    var output = new core.Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ActivityActorImage */
  core.String toString() => JSON.encode(this.toJson());

}

/** An object representation of the individual components of name. */
class ActivityActorName {

  /** The family name ("last name") of the actor. */
  core.String familyName;

  /** The given name ("first name") of the actor. */
  core.String givenName;

  /** Create new ActivityActorName from JSON data */
  ActivityActorName.fromJson(core.Map json) {
    if (json.containsKey("familyName")) {
      familyName = json["familyName"];
    }
    if (json.containsKey("givenName")) {
      givenName = json["givenName"];
    }
  }

  /** Create JSON Object for ActivityActorName */
  core.Map toJson() {
    var output = new core.Map();

    if (familyName != null) {
      output["familyName"] = familyName;
    }
    if (givenName != null) {
      output["givenName"] = givenName;
    }

    return output;
  }

  /** Return String representation of ActivityActorName */
  core.String toString() => JSON.encode(this.toJson());

}

/** The object of this activity. */
class ActivityObject {

  /** If this activity's object is itself another activity, such as when a person reshares an activity, this property specifies the original activity's actor. */
  ActivityObjectActor actor;

  /** The media objects attached to this activity. */
  core.List<ActivityObjectAttachments> attachments;

  /** The HTML-formatted content, which is suitable for display. */
  core.String content;

  /** The ID of the object. When resharing an activity, this is the ID of the activity that is being reshared. */
  core.String id;

  /** The type of the object. Possible values include, but are not limited to, the following values:  
- "note" - Textual content. 
- "activity" - A Google+ activity. */
  core.String objectType;

  /** The content (text) as provided by the author, which is stored without any HTML formatting. When creating or updating an activity, this value must be supplied as plain text in the request. */
  core.String originalContent;

  /** People who +1'd this activity. */
  ActivityObjectPlusoners plusoners;

  /** Comments in reply to this activity. */
  ActivityObjectReplies replies;

  /** People who reshared this activity. */
  ActivityObjectResharers resharers;

  /** The URL that points to the linked resource. */
  core.String url;

  /** Create new ActivityObject from JSON data */
  ActivityObject.fromJson(core.Map json) {
    if (json.containsKey("actor")) {
      actor = new ActivityObjectActor.fromJson(json["actor"]);
    }
    if (json.containsKey("attachments")) {
      attachments = json["attachments"].map((attachmentsItem) => new ActivityObjectAttachments.fromJson(attachmentsItem)).toList();
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
  core.Map toJson() {
    var output = new core.Map();

    if (actor != null) {
      output["actor"] = actor.toJson();
    }
    if (attachments != null) {
      output["attachments"] = attachments.map((attachmentsItem) => attachmentsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** If this activity's object is itself another activity, such as when a person reshares an activity, this property specifies the original activity's actor. */
class ActivityObjectActor {

  /** The original actor's name, which is suitable for display. */
  core.String displayName;

  /** ID of the original actor. */
  core.String id;

  /** The image representation of the original actor. */
  ActivityObjectActorImage image;

  /** A link to the original actor's Google profile. */
  core.String url;

  /** Create new ActivityObjectActor from JSON data */
  ActivityObjectActor.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** The image representation of the original actor. */
class ActivityObjectActorImage {

  /** A URL that points to a thumbnail photo of the original actor. */
  core.String url;

  /** Create new ActivityObjectActorImage from JSON data */
  ActivityObjectActorImage.fromJson(core.Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ActivityObjectActorImage */
  core.Map toJson() {
    var output = new core.Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ActivityObjectActorImage */
  core.String toString() => JSON.encode(this.toJson());

}

class ActivityObjectAttachments {

  /** If the attachment is an article, this property contains a snippet of text from the article. It can also include descriptions for other types. */
  core.String content;

  /** The title of the attachment, such as a photo caption or an article title. */
  core.String displayName;

  /** If the attachment is a video, the embeddable link. */
  ActivityObjectAttachmentsEmbed embed;

  /** The full image URL for photo attachments. */
  ActivityObjectAttachmentsFullImage fullImage;

  /** The ID of the attachment. */
  core.String id;

  /** The preview image for photos or videos. */
  ActivityObjectAttachmentsImage image;

  /** The type of media object. Possible values include, but are not limited to, the following values:  
- "photo" - A photo. 
- "album" - A photo album. 
- "video" - A video. 
- "article" - An article, specified by a link. */
  core.String objectType;

  /** If the attachment is an album, this property is a list of potential additional thumbnails from the album. */
  core.List<ActivityObjectAttachmentsThumbnails> thumbnails;

  /** The link to the attachment, which should be of type text/html. */
  core.String url;

  /** Create new ActivityObjectAttachments from JSON data */
  ActivityObjectAttachments.fromJson(core.Map json) {
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
      thumbnails = json["thumbnails"].map((thumbnailsItem) => new ActivityObjectAttachmentsThumbnails.fromJson(thumbnailsItem)).toList();
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ActivityObjectAttachments */
  core.Map toJson() {
    var output = new core.Map();

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
      output["thumbnails"] = thumbnails.map((thumbnailsItem) => thumbnailsItem.toJson()).toList();
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ActivityObjectAttachments */
  core.String toString() => JSON.encode(this.toJson());

}

/** If the attachment is a video, the embeddable link. */
class ActivityObjectAttachmentsEmbed {

  /** Media type of the link. */
  core.String type;

  /** URL of the link. */
  core.String url;

  /** Create new ActivityObjectAttachmentsEmbed from JSON data */
  ActivityObjectAttachmentsEmbed.fromJson(core.Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ActivityObjectAttachmentsEmbed */
  core.Map toJson() {
    var output = new core.Map();

    if (type != null) {
      output["type"] = type;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ActivityObjectAttachmentsEmbed */
  core.String toString() => JSON.encode(this.toJson());

}

/** The full image URL for photo attachments. */
class ActivityObjectAttachmentsFullImage {

  /** The height, in pixels, of the linked resource. */
  core.int height;

  /** Media type of the link. */
  core.String type;

  /** URL of the image. */
  core.String url;

  /** The width, in pixels, of the linked resource. */
  core.int width;

  /** Create new ActivityObjectAttachmentsFullImage from JSON data */
  ActivityObjectAttachmentsFullImage.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** The preview image for photos or videos. */
class ActivityObjectAttachmentsImage {

  /** The height, in pixels, of the linked resource. */
  core.int height;

  /** Media type of the link. */
  core.String type;

  /** Image URL. */
  core.String url;

  /** The width, in pixels, of the linked resource. */
  core.int width;

  /** Create new ActivityObjectAttachmentsImage from JSON data */
  ActivityObjectAttachmentsImage.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

class ActivityObjectAttachmentsThumbnails {

  /** Potential name of the thumbnail. */
  core.String description;

  /** Image resource. */
  ActivityObjectAttachmentsThumbnailsImage image;

  /** URL of the webpage containing the image. */
  core.String url;

  /** Create new ActivityObjectAttachmentsThumbnails from JSON data */
  ActivityObjectAttachmentsThumbnails.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** Image resource. */
class ActivityObjectAttachmentsThumbnailsImage {

  /** The height, in pixels, of the linked resource. */
  core.int height;

  /** Media type of the link. */
  core.String type;

  /** Image url. */
  core.String url;

  /** The width, in pixels, of the linked resource. */
  core.int width;

  /** Create new ActivityObjectAttachmentsThumbnailsImage from JSON data */
  ActivityObjectAttachmentsThumbnailsImage.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** People who +1'd this activity. */
class ActivityObjectPlusoners {

  /** The URL for the collection of people who +1'd this activity. */
  core.String selfLink;

  /** Total number of people who +1'd this activity. */
  core.int totalItems;

  /** Create new ActivityObjectPlusoners from JSON data */
  ActivityObjectPlusoners.fromJson(core.Map json) {
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for ActivityObjectPlusoners */
  core.Map toJson() {
    var output = new core.Map();

    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of ActivityObjectPlusoners */
  core.String toString() => JSON.encode(this.toJson());

}

/** Comments in reply to this activity. */
class ActivityObjectReplies {

  /** The URL for the collection of comments in reply to this activity. */
  core.String selfLink;

  /** Total number of comments on this activity. */
  core.int totalItems;

  /** Create new ActivityObjectReplies from JSON data */
  ActivityObjectReplies.fromJson(core.Map json) {
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for ActivityObjectReplies */
  core.Map toJson() {
    var output = new core.Map();

    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of ActivityObjectReplies */
  core.String toString() => JSON.encode(this.toJson());

}

/** People who reshared this activity. */
class ActivityObjectResharers {

  /** The URL for the collection of resharers. */
  core.String selfLink;

  /** Total number of people who reshared this activity. */
  core.int totalItems;

  /** Create new ActivityObjectResharers from JSON data */
  ActivityObjectResharers.fromJson(core.Map json) {
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for ActivityObjectResharers */
  core.Map toJson() {
    var output = new core.Map();

    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of ActivityObjectResharers */
  core.String toString() => JSON.encode(this.toJson());

}

/** The service provider that initially published this activity. */
class ActivityProvider {

  /** Name of the service provider. */
  core.String title;

  /** Create new ActivityProvider from JSON data */
  ActivityProvider.fromJson(core.Map json) {
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for ActivityProvider */
  core.Map toJson() {
    var output = new core.Map();

    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of ActivityProvider */
  core.String toString() => JSON.encode(this.toJson());

}

class ActivityFeed {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The ID of this collection of activities. Deprecated. */
  core.String id;

  /** The activities in this page of results. */
  core.List<Activity> items;

  /** Identifies this resource as a collection of activities. Value: "plus#activityFeed". */
  core.String kind;

  /** Link to the next page of activities. */
  core.String nextLink;

  /** The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** Link to this activity resource. */
  core.String selfLink;

  /** The title of this collection of activities, which is a truncated portion of the content. */
  core.String title;

  /** The time at which this collection of activities was last updated. Formatted as an RFC 3339 timestamp. */
  core.String updated;

  /** Create new ActivityFeed from JSON data */
  ActivityFeed.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Activity.fromJson(itemsItem)).toList();
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
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

class Comment {

  /** The person who posted this comment. */
  CommentActor actor;

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The ID of this comment. */
  core.String id;

  /** The activity this comment replied to. */
  core.List<CommentInReplyTo> inReplyTo;

  /** Identifies this resource as a comment. Value: "plus#comment". */
  core.String kind;

  /** The object of this comment. */
  CommentObject object;

  /** People who +1'd this comment. */
  CommentPlusoners plusoners;

  /** The time at which this comment was initially published. Formatted as an RFC 3339 timestamp. */
  core.String published;

  /** Link to this comment resource. */
  core.String selfLink;

  /** The time at which this comment was last updated. Formatted as an RFC 3339 timestamp. */
  core.String updated;

  /** This comment's verb, indicating what action was performed. Possible values are:  
- "post" - Publish content to the stream. */
  core.String verb;

  /** Create new Comment from JSON data */
  Comment.fromJson(core.Map json) {
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
      inReplyTo = json["inReplyTo"].map((inReplyToItem) => new CommentInReplyTo.fromJson(inReplyToItem)).toList();
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
  core.Map toJson() {
    var output = new core.Map();

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
      output["inReplyTo"] = inReplyTo.map((inReplyToItem) => inReplyToItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

/** The person who posted this comment. */
class CommentActor {

  /** The name of this actor, suitable for display. */
  core.String displayName;

  /** The ID of the actor. */
  core.String id;

  /** The image representation of this actor. */
  CommentActorImage image;

  /** A link to the Person resource for this actor. */
  core.String url;

  /** Create new CommentActor from JSON data */
  CommentActor.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** The image representation of this actor. */
class CommentActorImage {

  /** The URL of the actor's profile photo. To resize the image and crop it to a square, append the query string ?sz=x, where x is the dimension in pixels of each side. */
  core.String url;

  /** Create new CommentActorImage from JSON data */
  CommentActorImage.fromJson(core.Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for CommentActorImage */
  core.Map toJson() {
    var output = new core.Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of CommentActorImage */
  core.String toString() => JSON.encode(this.toJson());

}

class CommentInReplyTo {

  /** The ID of the activity. */
  core.String id;

  /** The URL of the activity. */
  core.String url;

  /** Create new CommentInReplyTo from JSON data */
  CommentInReplyTo.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for CommentInReplyTo */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of CommentInReplyTo */
  core.String toString() => JSON.encode(this.toJson());

}

/** The object of this comment. */
class CommentObject {

  /** The HTML-formatted content, suitable for display. */
  core.String content;

  /** The object type of this comment. Possible values are:  
- "comment" - A comment in reply to an activity. */
  core.String objectType;

  /** The content (text) as provided by the author, stored without any HTML formatting. When creating or updating a comment, this value must be supplied as plain text in the request. */
  core.String originalContent;

  /** Create new CommentObject from JSON data */
  CommentObject.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** People who +1'd this comment. */
class CommentPlusoners {

  /** Total number of people who +1'd this comment. */
  core.int totalItems;

  /** Create new CommentPlusoners from JSON data */
  CommentPlusoners.fromJson(core.Map json) {
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for CommentPlusoners */
  core.Map toJson() {
    var output = new core.Map();

    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of CommentPlusoners */
  core.String toString() => JSON.encode(this.toJson());

}

class CommentFeed {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The ID of this collection of comments. */
  core.String id;

  /** The comments in this page of results. */
  core.List<Comment> items;

  /** Identifies this resource as a collection of comments. Value: "plus#commentFeed". */
  core.String kind;

  /** Link to the next page of activities. */
  core.String nextLink;

  /** The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** The title of this collection of comments. */
  core.String title;

  /** The time at which this collection of comments was last updated. Formatted as an RFC 3339 timestamp. */
  core.String updated;

  /** Create new CommentFeed from JSON data */
  CommentFeed.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Comment.fromJson(itemsItem)).toList();
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
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

class ItemScope {

  /** The subject matter of the content. */
  ItemScope about;

  /** An additional name for a Person, can be used for a middle name. */
  core.List<core.String> additionalName;

  /** Postal address. */
  ItemScope address;

  /** Address country. */
  core.String addressCountry;

  /** Address locality. */
  core.String addressLocality;

  /** Address region. */
  core.String addressRegion;

  /** The encoding. */
  core.List<ItemScope> associated_media;

  /** Number of attendees. */
  core.int attendeeCount;

  /** A person attending the event. */
  core.List<ItemScope> attendees;

  /** From http://schema.org/MusicRecording, the audio file. */
  ItemScope audio;

  /** The person or persons who created this result. In the example of restaurant reviews, this might be the reviewer's name. */
  core.List<ItemScope> author;

  /** Best possible rating value that a result might obtain. This property defines the upper bound for the ratingValue. For example, you might have a 5 star rating scale, you would provide 5 as the value for this property. */
  core.String bestRating;

  /** Date of birth. */
  core.String birthDate;

  /** From http://schema.org/MusicRecording, the artist that performed this recording. */
  ItemScope byArtist;

  /** The caption for this object. */
  core.String caption;

  /** File size in (mega/kilo) bytes. */
  core.String contentSize;

  /** Actual bytes of the media object, for example the image file or video file. */
  core.String contentUrl;

  /** A list of contributors to this result. */
  core.List<ItemScope> contributor;

  /** The date the result was created such as the date that a review was first created. */
  core.String dateCreated;

  /** The date the result was last modified such as the date that a review was last edited. */
  core.String dateModified;

  /** The initial date that the result was published. For example, a user writes a comment on a blog, which has a result.dateCreated of when they submit it. If the blog users comment moderation, the result.datePublished value would match the date when the owner approved the message. */
  core.String datePublished;

  /** The string that describes the content of the result. */
  core.String description;

  /** The duration of the item (movie, audio recording, event, etc.) in ISO 8601 date format. */
  core.String duration;

  /** A URL pointing to a player for a specific video. In general, this is the information in the src element of an embed tag and should not be the same as the content of the loc tag. */
  core.String embedUrl;

  /** The end date and time of the event (in ISO 8601 date format). */
  core.String endDate;

  /** Family name. This property can be used with givenName instead of the name property. */
  core.String familyName;

  /** Gender of the person. */
  core.String gender;

  /** Geo coordinates. */
  ItemScope geo;

  /** Given name. This property can be used with familyName instead of the name property. */
  core.String givenName;

  /** The height of the media object. */
  core.String height;

  /** An identifier for the object. Your app can choose how to identify objects. The object.id is required if you are writing an action that does not have a corresponding web page or object.url property. */
  core.String id;

  /** A URL to the image that represents this result. For example, if a user writes a review of a restaurant and attaches a photo of their meal, you might use that photo as the result.image. */
  core.String image;

  /** From http://schema.org/MusicRecording, which album a song is in. */
  ItemScope inAlbum;

  /** Identifies this resource as an itemScope. */
  core.String kind;

  /** Latitude. */
  core.num latitude;

  /** The location of the event or organization. */
  ItemScope location;

  /** Longitude. */
  core.num longitude;

  /** The name of the result. In the example of a restaurant review, this might be the summary the user gave their review such as "Great ambiance, but overpriced." */
  core.String name;

  /** Property of http://schema.org/TVEpisode indicating which series the episode belongs to. */
  ItemScope partOfTVSeries;

  /** The main performer or performers of the event-for example, a presenter, musician, or actor. */
  core.List<ItemScope> performers;

  /** Player type that is required. For example: Flash or Silverlight. */
  core.String playerType;

  /** Post office box number. */
  core.String postOfficeBoxNumber;

  /** Postal code. */
  core.String postalCode;

  /** Rating value. */
  core.String ratingValue;

  /** Review rating. */
  ItemScope reviewRating;

  /** The start date and time of the event (in ISO 8601 date format). */
  core.String startDate;

  /** Street address. */
  core.String streetAddress;

  /** The text that is the result of the app activity. For example, if a user leaves a review of a restaurant, this might be the text of the review. */
  core.String text;

  /** Thumbnail image for an image or video. */
  ItemScope thumbnail;

  /** A URL to a thumbnail image that represents this result. */
  core.String thumbnailUrl;

  /** The exchange traded instrument associated with a Corporation object. The tickerSymbol is expressed as an exchange and an instrument name separated by a space character. For the exchange component of the tickerSymbol attribute, we recommend using the controlled vocabulary of Market Identifier Codes (MIC) specified in ISO15022. */
  core.String tickerSymbol;

  /** The schema.org URL that best describes the referenced object and matches the type of moment. */
  core.String type;

  /** The URL that points to the result object. For example, a permalink directly to a restaurant reviewer's comment. */
  core.String url;

  /** The width of the media object. */
  core.String width;

  /** Worst possible rating value that a result might obtain. This property defines the lower bound for the ratingValue. */
  core.String worstRating;

  /** Create new ItemScope from JSON data */
  ItemScope.fromJson(core.Map json) {
    if (json.containsKey("about")) {
      about = new ItemScope.fromJson(json["about"]);
    }
    if (json.containsKey("additionalName")) {
      additionalName = json["additionalName"].toList();
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
      associated_media = json["associated_media"].map((associated_mediaItem) => new ItemScope.fromJson(associated_mediaItem)).toList();
    }
    if (json.containsKey("attendeeCount")) {
      attendeeCount = json["attendeeCount"];
    }
    if (json.containsKey("attendees")) {
      attendees = json["attendees"].map((attendeesItem) => new ItemScope.fromJson(attendeesItem)).toList();
    }
    if (json.containsKey("audio")) {
      audio = new ItemScope.fromJson(json["audio"]);
    }
    if (json.containsKey("author")) {
      author = json["author"].map((authorItem) => new ItemScope.fromJson(authorItem)).toList();
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
      contributor = json["contributor"].map((contributorItem) => new ItemScope.fromJson(contributorItem)).toList();
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
      performers = json["performers"].map((performersItem) => new ItemScope.fromJson(performersItem)).toList();
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
  core.Map toJson() {
    var output = new core.Map();

    if (about != null) {
      output["about"] = about.toJson();
    }
    if (additionalName != null) {
      output["additionalName"] = additionalName.toList();
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
      output["associated_media"] = associated_media.map((associated_mediaItem) => associated_mediaItem.toJson()).toList();
    }
    if (attendeeCount != null) {
      output["attendeeCount"] = attendeeCount;
    }
    if (attendees != null) {
      output["attendees"] = attendees.map((attendeesItem) => attendeesItem.toJson()).toList();
    }
    if (audio != null) {
      output["audio"] = audio.toJson();
    }
    if (author != null) {
      output["author"] = author.map((authorItem) => authorItem.toJson()).toList();
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
      output["contributor"] = contributor.map((contributorItem) => contributorItem.toJson()).toList();
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
      output["performers"] = performers.map((performersItem) => performersItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

class Moment {

  /** The moment ID. */
  core.String id;

  /** Identifies this resource as a moment. */
  core.String kind;

  /** The object on which the action was performed. Specifying this is equivalent with specifying "target". Note that responses from the server will use the "target" field instead for backward-compatibility with older clients. */
  ItemScope object;

  /** The object generated by performing the action on the object. For example, a user writes a review of a restaurant, the object is the restaurant and the result is the review. */
  ItemScope result;

  /** Time stamp of when the action occurred in RFC3339 format. */
  core.String startDate;

  /** The object on which the action was performed. */
  ItemScope target;

  /** The schema.org type for the type of moment to write. For example, http://schema.org/AddAction. Note that responses from the server will use the Google schema type instead for backward-compatibility with older clients. For example, http://schemas.google.com/AddActivity. */
  core.String type;

  /** Create new Moment from JSON data */
  Moment.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("object")) {
      object = new ItemScope.fromJson(json["object"]);
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
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (object != null) {
      output["object"] = object.toJson();
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
  core.String toString() => JSON.encode(this.toJson());

}

class MomentsFeed {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The moments in this page of results. */
  core.List<Moment> items;

  /** Identifies this resource as a collection of moments. Value: "plus#momentsFeed". */
  core.String kind;

  /** Link to the next page of moments. */
  core.String nextLink;

  /** The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** Link to this page of moments. */
  core.String selfLink;

  /** The title of this collection of moments. */
  core.String title;

  /** The RFC 339 timestamp for when this collection of moments was last updated. */
  core.String updated;

  /** Create new MomentsFeed from JSON data */
  MomentsFeed.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Moment.fromJson(itemsItem)).toList();
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
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

class PeopleFeed {

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The people in this page of results. Each item includes the id, displayName, image, and url for the person. To retrieve additional profile data, see the people.get method. */
  core.List<Person> items;

  /** Identifies this resource as a collection of people. Value: "plus#peopleFeed". */
  core.String kind;

  /** The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** Link to this resource. */
  core.String selfLink;

  /** The title of this collection of people. */
  core.String title;

  /** The total number of people available in this list. The number of people in a response might be smaller due to paging. This might not be set for all collections. */
  core.int totalItems;

  /** Create new PeopleFeed from JSON data */
  PeopleFeed.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Person.fromJson(itemsItem)).toList();
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
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
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
  core.String toString() => JSON.encode(this.toJson());

}

class Person {

  /** A short biography for this person. */
  core.String aboutMe;

  /** The age range of the person. Valid ranges are 17 or younger, 18 to 20, and 21 or older. Age is determined from the user's birthday using Western age reckoning. */
  PersonAgeRange ageRange;

  /** The person's date of birth, represented as YYYY-MM-DD. */
  core.String birthday;

  /** The "bragging rights" line of this person. */
  core.String braggingRights;

  /** For followers who are visible, the number of people who have added this person or page to a circle. */
  core.int circledByCount;

  /** The cover photo content. */
  PersonCover cover;

  /** (this field is not currently used) */
  core.String currentLocation;

  /** The name of this person, which is suitable for display. */
  core.String displayName;

  /** The hosted domain name for the user's Google Apps account. For instance, example.com. The plus.profile.emails.read or email scope is needed to get this domain name. */
  core.String domain;

  /** A list of email addresses that this person has, including their Google account email address, and the public verified email addresses on their Google+ profile. The plus.profile.emails.read scope is needed to retrieve these email addresses, or the email scope can be used to retrieve just the Google account email address. */
  core.List<PersonEmails> emails;

  /** ETag of this response for caching purposes. */
  core.String etag;

  /** The person's gender. Possible values include, but are not limited to, the following values:  
- "male" - Male gender. 
- "female" - Female gender. 
- "other" - Other. */
  core.String gender;

  /** The ID of this person. */
  core.String id;

  /** The representation of the person's profile photo. */
  PersonImage image;

  /** Whether this user has signed up for Google+. */
  core.bool isPlusUser;

  /** Identifies this resource as a person. Value: "plus#person". */
  core.String kind;

  /** The user's preferred language for rendering. */
  core.String language;

  /** An object representation of the individual components of a person's name. */
  PersonName name;

  /** The nickname of this person. */
  core.String nickname;

  /** Type of person within Google+. Possible values include, but are not limited to, the following values:  
- "person" - represents an actual person. 
- "page" - represents a page. */
  core.String objectType;

  /** The occupation of this person. */
  core.String occupation;

  /** A list of current or past organizations with which this person is associated. */
  core.List<PersonOrganizations> organizations;

  /** A list of places where this person has lived. */
  core.List<PersonPlacesLived> placesLived;

  /** If a Google+ Page, the number of people who have +1'd this page. */
  core.int plusOneCount;

  /** The person's relationship status. Possible values include, but are not limited to, the following values:  
- "single" - Person is single. 
- "in_a_relationship" - Person is in a relationship. 
- "engaged" - Person is engaged. 
- "married" - Person is married. 
- "its_complicated" - The relationship is complicated. 
- "open_relationship" - Person is in an open relationship. 
- "widowed" - Person is widowed. 
- "in_domestic_partnership" - Person is in a domestic partnership. 
- "in_civil_union" - Person is in a civil union. */
  core.String relationshipStatus;

  /** The person's skills. */
  core.String skills;

  /** The brief description (tagline) of this person. */
  core.String tagline;

  /** The URL of this person's profile. */
  core.String url;

  /** A list of URLs for this person. */
  core.List<PersonUrls> urls;

  /** Whether the person or Google+ Page has been verified. */
  core.bool verified;

  /** Create new Person from JSON data */
  Person.fromJson(core.Map json) {
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
    if (json.containsKey("domain")) {
      domain = json["domain"];
    }
    if (json.containsKey("emails")) {
      emails = json["emails"].map((emailsItem) => new PersonEmails.fromJson(emailsItem)).toList();
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("gender")) {
      gender = json["gender"];
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
    if (json.containsKey("occupation")) {
      occupation = json["occupation"];
    }
    if (json.containsKey("organizations")) {
      organizations = json["organizations"].map((organizationsItem) => new PersonOrganizations.fromJson(organizationsItem)).toList();
    }
    if (json.containsKey("placesLived")) {
      placesLived = json["placesLived"].map((placesLivedItem) => new PersonPlacesLived.fromJson(placesLivedItem)).toList();
    }
    if (json.containsKey("plusOneCount")) {
      plusOneCount = json["plusOneCount"];
    }
    if (json.containsKey("relationshipStatus")) {
      relationshipStatus = json["relationshipStatus"];
    }
    if (json.containsKey("skills")) {
      skills = json["skills"];
    }
    if (json.containsKey("tagline")) {
      tagline = json["tagline"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
    if (json.containsKey("urls")) {
      urls = json["urls"].map((urlsItem) => new PersonUrls.fromJson(urlsItem)).toList();
    }
    if (json.containsKey("verified")) {
      verified = json["verified"];
    }
  }

  /** Create JSON Object for Person */
  core.Map toJson() {
    var output = new core.Map();

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
    if (domain != null) {
      output["domain"] = domain;
    }
    if (emails != null) {
      output["emails"] = emails.map((emailsItem) => emailsItem.toJson()).toList();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (gender != null) {
      output["gender"] = gender;
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
    if (occupation != null) {
      output["occupation"] = occupation;
    }
    if (organizations != null) {
      output["organizations"] = organizations.map((organizationsItem) => organizationsItem.toJson()).toList();
    }
    if (placesLived != null) {
      output["placesLived"] = placesLived.map((placesLivedItem) => placesLivedItem.toJson()).toList();
    }
    if (plusOneCount != null) {
      output["plusOneCount"] = plusOneCount;
    }
    if (relationshipStatus != null) {
      output["relationshipStatus"] = relationshipStatus;
    }
    if (skills != null) {
      output["skills"] = skills;
    }
    if (tagline != null) {
      output["tagline"] = tagline;
    }
    if (url != null) {
      output["url"] = url;
    }
    if (urls != null) {
      output["urls"] = urls.map((urlsItem) => urlsItem.toJson()).toList();
    }
    if (verified != null) {
      output["verified"] = verified;
    }

    return output;
  }

  /** Return String representation of Person */
  core.String toString() => JSON.encode(this.toJson());

}

/** The age range of the person. Valid ranges are 17 or younger, 18 to 20, and 21 or older. Age is determined from the user's birthday using Western age reckoning. */
class PersonAgeRange {

  /** The age range's upper bound, if any. Possible values include, but are not limited to, the following:  
- "17" - for age 17 
- "20" - for age 20 */
  core.int max;

  /** The age range's lower bound, if any. Possible values include, but are not limited to, the following:  
- "21" - for age 21 
- "18" - for age 18 */
  core.int min;

  /** Create new PersonAgeRange from JSON data */
  PersonAgeRange.fromJson(core.Map json) {
    if (json.containsKey("max")) {
      max = json["max"];
    }
    if (json.containsKey("min")) {
      min = json["min"];
    }
  }

  /** Create JSON Object for PersonAgeRange */
  core.Map toJson() {
    var output = new core.Map();

    if (max != null) {
      output["max"] = max;
    }
    if (min != null) {
      output["min"] = min;
    }

    return output;
  }

  /** Return String representation of PersonAgeRange */
  core.String toString() => JSON.encode(this.toJson());

}

/** The cover photo content. */
class PersonCover {

  /** Extra information about the cover photo. */
  PersonCoverCoverInfo coverInfo;

  /** The person's primary cover image. */
  PersonCoverCoverPhoto coverPhoto;

  /** The layout of the cover art. Possible values include, but are not limited to, the following values:  
- "banner" - One large image banner. */
  core.String layout;

  /** Create new PersonCover from JSON data */
  PersonCover.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

/** Extra information about the cover photo. */
class PersonCoverCoverInfo {

  /** The difference between the left position of the cover image and the actual displayed cover image. Only valid for banner layout. */
  core.int leftImageOffset;

  /** The difference between the top position of the cover image and the actual displayed cover image. Only valid for banner layout. */
  core.int topImageOffset;

  /** Create new PersonCoverCoverInfo from JSON data */
  PersonCoverCoverInfo.fromJson(core.Map json) {
    if (json.containsKey("leftImageOffset")) {
      leftImageOffset = json["leftImageOffset"];
    }
    if (json.containsKey("topImageOffset")) {
      topImageOffset = json["topImageOffset"];
    }
  }

  /** Create JSON Object for PersonCoverCoverInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (leftImageOffset != null) {
      output["leftImageOffset"] = leftImageOffset;
    }
    if (topImageOffset != null) {
      output["topImageOffset"] = topImageOffset;
    }

    return output;
  }

  /** Return String representation of PersonCoverCoverInfo */
  core.String toString() => JSON.encode(this.toJson());

}

/** The person's primary cover image. */
class PersonCoverCoverPhoto {

  /** The height of the image. */
  core.int height;

  /** The URL of the image. */
  core.String url;

  /** The width of the image. */
  core.int width;

  /** Create new PersonCoverCoverPhoto from JSON data */
  PersonCoverCoverPhoto.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

class PersonEmails {

  /** The type of address. Possible values include, but are not limited to, the following values:  
- "account" - Google account email address. 
- "home" - Home email address. 
- "work" - Work email address. 
- "other" - Other. */
  core.String type;

  /** The email address. */
  core.String value;

  /** Create new PersonEmails from JSON data */
  PersonEmails.fromJson(core.Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for PersonEmails */
  core.Map toJson() {
    var output = new core.Map();

    if (type != null) {
      output["type"] = type;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of PersonEmails */
  core.String toString() => JSON.encode(this.toJson());

}

/** The representation of the person's profile photo. */
class PersonImage {

  /** Whether the person's profile photo is the default one */
  core.bool isDefault;

  /** The URL of the person's profile photo. To resize the image and crop it to a square, append the query string ?sz=x, where x is the dimension in pixels of each side. */
  core.String url;

  /** Create new PersonImage from JSON data */
  PersonImage.fromJson(core.Map json) {
    if (json.containsKey("isDefault")) {
      isDefault = json["isDefault"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for PersonImage */
  core.Map toJson() {
    var output = new core.Map();

    if (isDefault != null) {
      output["isDefault"] = isDefault;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of PersonImage */
  core.String toString() => JSON.encode(this.toJson());

}

/** An object representation of the individual components of a person's name. */
class PersonName {

  /** The family name (last name) of this person. */
  core.String familyName;

  /** The full name of this person, including middle names, suffixes, etc. */
  core.String formatted;

  /** The given name (first name) of this person. */
  core.String givenName;

  /** The honorific prefixes (such as "Dr." or "Mrs.") for this person. */
  core.String honorificPrefix;

  /** The honorific suffixes (such as "Jr.") for this person. */
  core.String honorificSuffix;

  /** The middle name of this person. */
  core.String middleName;

  /** Create new PersonName from JSON data */
  PersonName.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

class PersonOrganizations {

  /** The department within the organization. Deprecated. */
  core.String department;

  /** A short description of the person's role in this organization. Deprecated. */
  core.String description;

  /** The date that the person left this organization. */
  core.String endDate;

  /** The location of this organization. Deprecated. */
  core.String location;

  /** The name of the organization. */
  core.String name;

  /** If "true", indicates this organization is the person's primary one, which is typically interpreted as the current one. */
  core.bool primary;

  /** The date that the person joined this organization. */
  core.String startDate;

  /** The person's job title or role within the organization. */
  core.String title;

  /** The type of organization. Possible values include, but are not limited to, the following values:  
- "work" - Work. 
- "school" - School. */
  core.String type;

  /** Create new PersonOrganizations from JSON data */
  PersonOrganizations.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

class PersonPlacesLived {

  /** If "true", this place of residence is this person's primary residence. */
  core.bool primary;

  /** A place where this person has lived. For example: "Seattle, WA", "Near Toronto". */
  core.String value;

  /** Create new PersonPlacesLived from JSON data */
  PersonPlacesLived.fromJson(core.Map json) {
    if (json.containsKey("primary")) {
      primary = json["primary"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for PersonPlacesLived */
  core.Map toJson() {
    var output = new core.Map();

    if (primary != null) {
      output["primary"] = primary;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of PersonPlacesLived */
  core.String toString() => JSON.encode(this.toJson());

}

class PersonUrls {

  /** The label of the URL. */
  core.String label;

  /** The type of URL. Possible values include, but are not limited to, the following values:  
- "otherProfile" - URL for another profile. 
- "contributor" - URL to a site for which this person is a contributor. 
- "website" - URL for this Google+ Page's primary website. 
- "other" - Other URL. */
  core.String type;

  /** The URL value. */
  core.String value;

  /** Create new PersonUrls from JSON data */
  PersonUrls.fromJson(core.Map json) {
    if (json.containsKey("label")) {
      label = json["label"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for PersonUrls */
  core.Map toJson() {
    var output = new core.Map();

    if (label != null) {
      output["label"] = label;
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
  core.String toString() => JSON.encode(this.toJson());

}

class Place {

  /** The physical address of the place. */
  PlaceAddress address;

  /** The display name of the place. */
  core.String displayName;

  /** The id of the place. */
  core.String id;

  /** Identifies this resource as a place. Value: "plus#place". */
  core.String kind;

  /** The position of the place. */
  PlacePosition position;

  /** Create new Place from JSON data */
  Place.fromJson(core.Map json) {
    if (json.containsKey("address")) {
      address = new PlaceAddress.fromJson(json["address"]);
    }
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("position")) {
      position = new PlacePosition.fromJson(json["position"]);
    }
  }

  /** Create JSON Object for Place */
  core.Map toJson() {
    var output = new core.Map();

    if (address != null) {
      output["address"] = address.toJson();
    }
    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (position != null) {
      output["position"] = position.toJson();
    }

    return output;
  }

  /** Return String representation of Place */
  core.String toString() => JSON.encode(this.toJson());

}

/** The physical address of the place. */
class PlaceAddress {

  /** The formatted address for display. */
  core.String formatted;

  /** Create new PlaceAddress from JSON data */
  PlaceAddress.fromJson(core.Map json) {
    if (json.containsKey("formatted")) {
      formatted = json["formatted"];
    }
  }

  /** Create JSON Object for PlaceAddress */
  core.Map toJson() {
    var output = new core.Map();

    if (formatted != null) {
      output["formatted"] = formatted;
    }

    return output;
  }

  /** Return String representation of PlaceAddress */
  core.String toString() => JSON.encode(this.toJson());

}

/** The position of the place. */
class PlacePosition {

  /** The latitude of this position. */
  core.num latitude;

  /** The longitude of this position. */
  core.num longitude;

  /** Create new PlacePosition from JSON data */
  PlacePosition.fromJson(core.Map json) {
    if (json.containsKey("latitude")) {
      latitude = json["latitude"];
    }
    if (json.containsKey("longitude")) {
      longitude = json["longitude"];
    }
  }

  /** Create JSON Object for PlacePosition */
  core.Map toJson() {
    var output = new core.Map();

    if (latitude != null) {
      output["latitude"] = latitude;
    }
    if (longitude != null) {
      output["longitude"] = longitude;
    }

    return output;
  }

  /** Return String representation of PlacePosition */
  core.String toString() => JSON.encode(this.toJson());

}

class PlusAclentryResource {

  /** A descriptive name for this entry. Suitable for display. */
  core.String displayName;

  /** The ID of the entry. For entries of type "person" or "circle", this is the ID of the resource. For other types, this property is not set. */
  core.String id;

  /** The type of entry describing to whom access is granted. Possible values are:  
- "person" - Access to an individual. 
- "circle" - Access to members of a circle. 
- "myCircles" - Access to members of all the person's circles. 
- "extendedCircles" - Access to members of all the person's circles, plus all of the people in their circles. 
- "domain" - Access to members of the person's Google Apps domain. 
- "public" - Access to anyone on the web. */
  core.String type;

  /** Create new PlusAclentryResource from JSON data */
  PlusAclentryResource.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
