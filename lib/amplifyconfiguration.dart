const amplifyconfig = '''{
  "UserAgent": "aws-amplify-cli/0.1.0",
  "Version": "0.1.0",
  "auth": {
    "plugins": {
      "awsCognitoAuthPlugin": {
        "UserAgent": "aws-amplify-cli/0.1.0",
        "Version": "0.1.0",
        "identityPoolId": "YOUR_IDENTITY_POOL_ID",
        "region": "YOUR_REGION",
        "userPoolId": "YOUR_USER_POOL_ID",
        "userPoolWebClientId": "YOUR_USER_POOL_WEB_CLIENT_ID",
        "oauth": {}
      }
    }
  }
}''';
