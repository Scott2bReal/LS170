# Request-Response Cycle

## Question 1

What are the required components of an HTTP request? What are the additional
optional components?

**Required**
* Host
* Method
* Path (technically called the "request-URI")

**Optional**
* Parameters
* Headers
* Body

## Question 2

What are the required components of an HTTP response? What are the additional
optional components?

**Required**
* Status

**Optional**
* Headers
* Body

## Question 3

What determines whether a request should use GET or POST as its HTTP method?

**Answer**:
The method of the request describes the type of request, and is usually set
automatically. For example, an HTTP request made using the browser's URL bar
will automatically be a GET request.

GET requests are asking the server for information.
POST requests are "pushing" data to the receiver, and will typically cause a
change to data on the receiving end.
