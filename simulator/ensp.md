# Huawei Simulator: eNSP

## Install
refer to: https://bbs.huaweicloud.com/blogs/348672

## VRP
VRP is an operating system which based on Linux / Unix which created by HuaWei and used for Huawei network devices


## operating view
There are three operating views in eNSP. 
- user view: always start with '<device-name>'
- system view: always start with '[device-name]'
- interface view: always start with '[interface-name]'


## eNSP devices

### AR201
AR201's interfaces default set layer 2 interface mode. Hence we cannot configure a IP address to the interface by default until we change it to layer 3 interface mode. 

commad: 
```shell
undo portswitch

ip accounting
```

refer to https://blog.csdn.net/weixin_42871592/article/details/126501922



## Command (continue update)

- Display Route table (User view)
```shell
display ip ro
display ip routing-table
```

- Change to system view
```shell
# Full name
system view

# simplified
sy
```

- Change device name
```shell
sy <name>
```

- check interface
```shell
display ip interface brief

# simplified
display ip int br
```

- Withdraw operation
```shell
undo

# undo shutdown
undo shutdown
```

- configure IP adress
```shell
# 1. use interface view.  
# This command only worked at system view
int <interface>

# 2. configure IP address
ip address <address> <prefix>
```

- configure loopback. It is a logic interface and will not down.
```shell
# default create a loopback interface
interface LoopBack
```

- configure static route
```shell
ip route-static <destination-ip> <mask> <next hop>
```

- Enable APR proxy
```shell
arp-proxy enable
```

- configure OSPF
```shell
# 1. Announce under area

# under system view. Go in specific area
area <area-id>
# announce
network <route-id> <mask>

# 2. Annound under interface
## precondition: open OSPF gloablly, ceate OSPF process and area 0

# under system view. Go into interface view
int <interface>
# enable ospf
ospf enable <process-id> area 0

```