CREATE TABLE `Instance` (
  `AccountId` varchar(12) NOT NULL,
  `instanceId` varchar(19) NOT NULL,
  `imageId` varchar(12) NOT NULL,
  `ramdiskId` varchar(10) DEFAULT NULL,
  `architecture` varchar(6) NOT NULL DEFAULT 'x86_64',
  `rootDeviceName` varchar(10) DEFAULT NULL,
  `rootDeviceType` varchar(14) NOT NULL DEFAULT 'ebs',
  `rootVolId` varchar(12) DEFAULT NULL,
  `ebsOptimized` tinyint(1) NOT NULL DEFAULT '0',
  `hypervisor` varchar(3) DEFAULT 'xen',
  `iamInstanceProfile` varchar(45) DEFAULT NULL,
  `clientToken` varchar(24) DEFAULT NULL,
  `instanceLifecycle` varchar(9) DEFAULT NULL,
  `instanceType` varchar(11) NOT NULL,
  `kernelId` varchar(10) DEFAULT NULL,
  `keyName` varchar(24) DEFAULT NULL,
  `launchTime` datetime DEFAULT NULL,
  `monitoring` json DEFAULT NULL,
  `networkInterfaceSet` json DEFAULT NULL,
  `placement` varchar(20) DEFAULT NULL,
  `instTenancy` varchar(8) NOT NULL DEFAULT 'shared',
  `instPlaceGrp` varchar(8) DEFAULT NULL,
  `platform` varchar(7) DEFAULT NULL,
  `privateDnsName_orig` varchar(255) NOT NULL,
  `privateDnsName_new` varchar(255) DEFAULT NULL,
  `privateIpAddress_orig` varchar(15) NOT NULL,
  `privateIpAddress_new` varchar(15) DEFAULT NULL,
  `productCodes` json DEFAULT NULL,
  `dnsName_orig` varchar(255) DEFAULT NULL,
  `dnsName_new` varchar(255) DEFAULT NULL,
  `ipAddress_orig` varchar(15) DEFAULT NULL,
  `ipAddress_new` varchar(15) DEFAULT NULL,
  `subnetId` varchar(15) NOT NULL,
  `vpcId` varchar(12) NOT NULL,
  `InstMacAddress` varchar(15) DEFAULT NULL,
  `InstEniName` varchar(12) DEFAULT NULL,
  `sriovNetSupport` tinyint(1) DEFAULT NULL,
  `groupSet` json NOT NULL,
  `sourceDestCheck` tinyint(1) DEFAULT NULL,
  `amiLaunchIndex` tinyint(4) DEFAULT '0',
  `spotInstanceRequestId` varchar(20) DEFAULT NULL,
  `instanceState` varchar(8) DEFAULT NULL,
  `stateReason` varchar(1) DEFAULT NULL,
  `reason` tinyint(2) DEFAULT NULL,
  `tagSet` json DEFAULT NULL,
  `virtualizationType` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`instanceId`)
)
