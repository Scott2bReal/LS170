# Practice Questions for LS171 Assessment

## The Internet

* **What is the Internet?**

The Internet is a "network of networks", which devices can use to communicate
and share data. These devices can be anything from computers to refrigerators,
cars, or phones. A network is simply two or more of those devices connected
physically in some way (e.g. via a cable (LAN, local area network) or radio
waves (WLAN, wireless local area network).

* **How does the Internet work?**

The internet works because of a system of agreed-upon **protocols**, or systems
of rules which make sure that different combinations of software and hardware
can communicate with each other. Devices called **routers** direct the flow of
data so that it reaches the intended destinations, and the protocols allow the
receiving machine to interpret the data from the sender. The system by which
this information is transferred can be thought of as being comprised of
different "layers", where each of those layers has protocols which govern the
rules of communication. Each layer **encapsulates** data from the preceding
layer, creating **protocol data units (PUDs)** which isolate the data from other
layers and make things more easily maintainable and extensible.

* **Name two popular models for managing network communication**

Two popular models for managing network communication are the **TCP/IP** model
and the **OSI** model. They represent two different philosophies or approaches
to organizing network communications, where the TCP/IP model partitions layers
with regard to the scope of communication of each layer, while the OSI model
concerns itself with the functionality each layer provides. The OSI model has
more divisions than the TCP/IP model, but they can be roughly grouped into the
TCP/IP model divisions.

## The Physical Network

* **What are the main characteristics of the physical network?**

Two main characterstics of the physical network are latency and bandwith.
Latency is the amount of time it takes an amount of data to travel from point to
point, while bandwith is the amount of data which can be transferred in an
amount of time.

* **What differentiates the Web from the Internet?**

The term Internet represents the network of networked devices over which information
can be transferred, while the World Wide Web is the collection of resources
which can be accessed via the Internet, and can be navigated using URIs (Uniform
Resource Identifiers)

## The Link/Data Link and Internet/Network Layers

* **What is the Ethernet Protocol?**

The Ethernet Protocol is series of rules for identifying devices on a physical
network. The two most important aspects of the Ethernet Protocol are **framing**
and **addressing**, and the Link/Data Link layer is the lowest layer at which
encapsulation takes place. The most common standard is IEE 802.3

* **What is a MAC address?**

A MAC address can be referred to as a physical, or burned-in, address. They are
formatted as a series of six two-digit hexadecimal numbers, and act as unique
identifiers for devices.

* **What is an Ethernet frame?**

An Ethernet Frame is the PDU (protocol data unit), and adds structure to data
being transmitted over a network. It divides the data into different fields
which can be identified by their length.

* **What is an IP Address? What is a port number?**

An IP address is a series of numbers which can be dynamically assigned to a
device for identification on the Internet/Network layer. A port number is an
identifier used to identify an application running on a device. 

* **What is DNS?**

DNS stands for Domain Name System, and was developed to make IP addresses easier
to remember for humans. Each domain name is tied to an IP address, and those
relationships are stored on a DNS server system. No one DNS server contains all
domain names, but because they are netorked together it is possible to find any
domain name - IP address relationship. 

* **Explain the client-server model of web interactions**

In the client-server model, the client is requesting data from the server. A
server may be hosting an application or just raw data, and can accept
connections and requests from many clients.

* **What is HTTP?**

HTTP stands for Hyper Text Transfer Protocol, and is a protocol which
standardizes the structure of messages transferred between applications over the
Web. It works in a request/response cycle, and usually involves the client
sending a message to a server, and then vice versa. HTTP is a stateless
protocol, meaning that the state of whatever was going on is not saved or
referenced in the communications.

## The Transport Layer: TCP & UDP

* **What is the Transport Layer?**

The transport layer governs communication between applications running on
different machines, whereas the network layer directs communications between the
machines themselves. Protocols such as TCP and UDP are used at the Transport
Layer.

* **What is multiplexing?**

Multiplexing is the process of splitting signals received via a single channel
into multiple messages. This means that multiple requests can be processed at
once, vs. all messages having to wait for a each one in line to be processed.
Multiplexing is enabled through the use of ports

* **What is TCP?**
 
TCP stands for Transmission Control Protocol, and provides a reliable
communication system that can be layered on top of protocols such as Ethernet or
HTTP. TCP allows for multiplexing, and provides means for in-order delivery,
error detection, as well as handling data loss and duplication.

* **What is UDP?**

UDP stands for User Datagram Protocol. UDP is a connectionless protocol which
allows for multiplexing but not any of the reliability services that TCP offers.
This means it is faster with the tradeoff of less reliable communication.

* **Explain the three-way TCP handshake**

The three-way TCP handshake is the means by which a reliable TCP connection is
established. Basically, the client will send a message to the server, the server
will acknowledge that message and send a message back to the client, and the
client will send one more message back to the server acknowledging receipt of
the server's message. Once this handshake is compelete then the transfer of data
can begin.

* **What are flow control and congestion avoidance?**

Flow control is a tool to avoid overwhelming the receiver with more data than it
can handle at once. TCP uses a field called WINDOW SIZE to set up a buffer which
can be dynamically adjusted depending on available memory and processing power.
Flow control protects individual machines from being overwhelmed, while
congestion avoidance protects the network itself. TCP checks to see if it is
resending the same message often, it will shrink the buffer size to avoid
congestion.

## URLs

* **What are the different components of a URL?**

A URL is like an address for a resource on the Web. The different components of
a URL are the scheme, port, path, and query string

* **Give an example of a valid URL, using those components**

`http://www.internetsearch.com?search=search%20term&results=10`

* **What is URL encoding? Why is it used?**

URLs can only accept certain characters, and any other characters included in a
URL must be encoded. Encoding is accomplished by replacing the character in
question with a `%` followed by a two-digit hexadecimal number (for example,
`%20` represents a space)

## HTTP and the Request/Response Cycle

* **What is an HTTP request?**

An HTTP request is a message sent to a server requesting the resource specified

* **What is an HTTP response?**

An HTTP response is sent in response to an HTTP request and contains a status
code and the resource specified in the request if it is available.

* **Describe the HTTP request/response cycle**

The client sends a request to a server, and the server will respond to that
request message by "serving" the resource specified. 

* **What is a status code? Provide some examples**

Status codes are used to indicate the result of a server's processing of an HTTP
request. Common codes are: 

* `200` - OK - Request was handled successfully
* `302` - Found - Requested resource has changed temporarily. Usually redirects
* `404` - Not Found - Requested resource can't be found
* `500` - Internal Server Error - Server has encountered an error

* **In the context of web apps, what does the word "state" mean?**

The word state refers to the application keeping track of information between
request/response cycles. HTTP does not keep track of state, so developers must
use techniques to simulate statefulness.

  * **What are some strategies used to simulate statefulness?**

    * Sessions
    * Cookies
    * Asynchronous JavaScript calls, or AJAX


* **What is the difference between a GET and POST request? When is each used?**

A GET request is used to retrieve a resource *from* a server, while a POST request
is used to provide information *to* a server.

## Security

* **What are the security risks which can affect HTTP?**

Some security risks that HTTP is vulnerable to are packet-sniffing, session
hijacking, cross-site scripting

* **What are some measures used to mitigate those risks?**

Strategies to mitigate the security risks of HTTP are resetting sessions,
expiring sessions, using HTTPS across an entire app, sanitizing and/or
sanitizing user input.

* **What is TLS? What services does it provide?**

TLS stands for Transport Layer Security, and it is a protocol which can be
thought of as being between TCP and HTTP. It requires a TCP connection and
provides the following services:

  * **Encryption** - Message is encoded, and can only be decoded by means of a
    key
  * **Authentication** - Making sure of *who* the message is sent by.
  * **Integrity** - Making sure the message wasn't tampered with or faked.
