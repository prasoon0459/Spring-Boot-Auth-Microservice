
<p align="center">
    <h1 align="center">Spring Boot Authentication Microservice</h3>
</p>

## Introduction
This project is an Authentication Microservice implemented using Spring Boot. The authentication system used is [**OAuth 2.0**](https://oauth.net/2/) which is a Token-Based Authentication system using JSON Web Tokens [(JWTs)](https://jwt.io/). 
<br></br>

## Methods 

- **Register a new User** :
  
   - End Point : /auth/register
   - Method : POST
   - Request: 
	   ```
	   Body: {
		    "username":"abcd@xyz.com",
		    "password":"123456",
		    "name":"prasoon baghel",
		    "phone": "1234567890"
	   }
	   ```
   - Response : 
	   ```
	   Body: {
		    "path": "auth/register",
		    "error": false,
		    "message": "Successfully Registerd!!",
		    "timestamp": "2020-06-12T17:52:26.517+00:00",
		    "status": 201
		}
	   ```

- **SignIn Method** :
  
   - End Point : /auth/signin
   - Method : POST
   - Request: 
	   ```
	   Body: {
            "username":"abcd@xyz.com",
            "password":"123456"
	   }
	   ```
   - Response : 
	   ```
	   Body: {
            "access_token": "eyJ0eXBlIjoiand0IiwiYWxnIjoiUlMyNTYifQ.eyJzdWIiOiJhYmNkQHh5ei5jb20iLCJuYW1lIjoicHJhc29vbiBiYWdoZWwiLCJyb2xlcyI6WyJST0xFX1VTRVIiXSwiaWF0IjoxNTkxOTg1MDczLCJl...",
            "refresh_token": "eyJ0eXBlIjoiand0IiwiYWxnIjoiSFMyNTYifQ.eyJzdWIiO....",
            "path": "auth/signin",
            "expiry": 3600000,
            "timestamp": "2020-06-12T18:04:33.372+00:00",
            "status": 200
		}
	   ```

- **Refresh Method** :
  
   - End Point : /auth/refresh
   - Method : POST
   - Request: 
	   ```
	   Body: {
		    "refresh_token": "eyJ0eXBlIjoiand0IiwiYWxnIjoiSFMyNTYifQ.eyJzdWIiOiJhY..."
	   }
	   ```
   - Response : 
	   ```
	   Body:{
            "access_token": "eyJ0eXBlIjoiand0IiwiYWxnIjoiUlMyNTYifQ.eyJzdWIiOiJhYmNkQHh5ei5jb20iLCJuYW1lIjoicHJhc29vbiBiYWdoZWwiLCJyb2xlcyI6WyJST0xFX1VTRVIiXSwiaWF0IjoxNTkxOTg1MzEwLCJleHAiOjE1OTE5ODg5MTB9.Yz7eidEcSZ8A7jNBnl-WIgkFxyEa...",
            "refresh_token": "eyJ0eXBlIjoiand0IiwiYWxnIjoiSFMyNTYifQ.eyJzdWIiOiJhYmNkQHh5ei5jb20iLCJpYXQiOjE1OTE5ODUwNzMsImV4cCI6MTU5...",
            "path": "auth/refresh",
            "error": false,
            "timestamp": "2020-06-12T18:08:30.393+00:00",
            "status": 201
		}
	    ```
