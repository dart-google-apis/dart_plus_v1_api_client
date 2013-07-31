# google_plus_v1_api

### Description

Auto-generated client library for accessing the plus v1 API.

#### ![Logo](http://www.google.com/images/icons/product/gplus-16.png) Google+ API - plus v1

The Google+ API enables developers to build on top of the Google+ platform.

Official API documentation: https://developers.google.com/+/api/

Adding dependency to pubspec.yaml

```
  dependencies:
    google_plus_v1_api: '>=0.3.9'
```

For web applications:

```
  import "package:google_plus_v1_api/plus_v1_api_browser.dart" as plusclient;
```

For console application:

```
  import "package:google_plus_v1_api/plus_v1_api_console.dart" as plusclient;
```

Working with out authentication the following constructor can be called:

```
  var plus = new plusclient.Plus();
```

Working with authentication then create a new `GoogleOAuth2` object and pass it to the constructor:


```
  GoogleOAuth2 auth = new GoogleOAuth2(CLIENT_ID, SCOPES);
  var plus = new plusclient.Plus(auth);
```

### Licenses

```
Copyright (c) 2013 Gerwin Sturm & Adam Singer

Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a 
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

------------------------
Based on http://code.google.com/p/google-api-dart-client

Copyright 2012 Google Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

```
