#!/bin/bash
zone=1
for i in 92 93 94 95 96
do
      swift-ring-builder /etc/swift/account.builder add z$zone-192.168.100.$i:6002/sda1 100
      swift-ring-builder /etc/swift/container.builder add z$zone-192.168.100.$i:6001/sda1 100
      swift-ring-builder /etc/swift/object.builder add z$zone-192.168.100.$i:6000/sda1 100
      ((zone++))
done
