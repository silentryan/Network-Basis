# Data-Link - 数据链路层
Data Link is the OSI layer 2. It provides the functional and procedural means to **transfer data** between network entities and may also provide the means to **detect and possibly correct errors** that can occur in the physical layer.

This file is a collect of the some basis knowledge of Data-Link Layer. We can also think it is miscellany. 

Reference: https://en.wikipedia.org/wiki/Data_link_layer


## Terminology
Data-Link Layer contains a series of termmology. 

- PDU:   
Protocol Data Unit (协议数据单元)

- MTU:   
Maxium Transport Unit. MTU is layer 2 terminology. It is the lenghth of layer 2 payload which means it contains IP header and TCP header. The mean of MTU exist is Packet Switching(分组交换). By default, it is 1500 bytes.   

## Protocols
OSI layer 2 frame has different data encapsulation mode when it is in LAN and WAN.  LAN uses **IEEE 802.3** and **Ethernet2** to encapsulate the farme and WAN uses **PPP** and **HDLC**.


## MAC - Media Access Control Address
It is unique globally and used by mark a interface.  It also called LAN Address. An MAC contains 48 bits and it is also recognizable as six groups of two hexadecimal digits. 

48 bits MAC: [OUI - 24bits][Provider - 24 bits].  OUI is Orignazion Unique Identifier which is allocated by IEEE.

MAC has three classes
- Unicast MAC  
Unicast is point to point, or we can say one-to-one tranmission / communication. The eighth digit of unicast MAC is and must be 0 from high level dight to low level dight (left to right)

- Multicast MAC  
Mulitcast MAC is point to many transmission. Especiallly, the point will **send message to all in a Broadcast** area but only the instances on that speicifc group will reply.  The eighth digit of unicast MAC is and must be 1 from high level dight to low level dight (left to right)  
It cannot work as a source MAC. 

- Broadcast MAC  
Broadcast MAC is point to all transmission. All instances in a Broadcast area will receive broadcast message and they must reply this broadcast message.   
The all digits of Broadcast MAC are all 1 which means the broadcast MAC is **ff:ff:ff:ff:ff:ff**. Same with Multicast MAC, Broadcast cannot work as source MAC also.


## Broadcast area
- It is the range of a broadcast packet can be delievered.
- All ports of a Switcher are within a broadcast area exclude VLAN
- Each Interface of a Routr belongs to a broadcast area. 
- Broadcast message cannot cross the layer 3 interface of a router. 