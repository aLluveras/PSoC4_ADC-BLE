// ======================================================================
// adcBtSend.v generated from TopDesign.cysch
// 04/16/2022 at 23:20
// This file is auto generated. ANY EDITS YOU MAKE MAY BE LOST WHEN THIS FILE IS REGENERATED!!!
// ======================================================================

`define CYDEV_CHIP_FAMILY_PSOC3 1
`define CYDEV_CHIP_FAMILY_PSOC4 2
`define CYDEV_CHIP_FAMILY_PSOC5 3
`define CYDEV_CHIP_FAMILY_PSOC6 4
`define CYDEV_CHIP_FAMILY_FM0P 5
`define CYDEV_CHIP_FAMILY_FM3 6
`define CYDEV_CHIP_FAMILY_FM4 7
`define CYDEV_CHIP_FAMILY_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_3A 1
`define CYDEV_CHIP_REVISION_3A_PRODUCTION 3
`define CYDEV_CHIP_REVISION_3A_ES3 3
`define CYDEV_CHIP_REVISION_3A_ES2 1
`define CYDEV_CHIP_REVISION_3A_ES1 0
`define CYDEV_CHIP_MEMBER_5B 2
`define CYDEV_CHIP_REVISION_5B_PRODUCTION 0
`define CYDEV_CHIP_REVISION_5B_ES0 0
`define CYDEV_CHIP_MEMBER_5A 3
`define CYDEV_CHIP_REVISION_5A_PRODUCTION 1
`define CYDEV_CHIP_REVISION_5A_ES1 1
`define CYDEV_CHIP_REVISION_5A_ES0 0
`define CYDEV_CHIP_MEMBER_4G 4
`define CYDEV_CHIP_REVISION_4G_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4G_ES 17
`define CYDEV_CHIP_REVISION_4G_ES2 33
`define CYDEV_CHIP_MEMBER_4U 5
`define CYDEV_CHIP_REVISION_4U_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4E 6
`define CYDEV_CHIP_REVISION_4E_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4E_CCG2_NO_USBPD 0
`define CYDEV_CHIP_MEMBER_4X 7
`define CYDEV_CHIP_REVISION_4X_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4O 8
`define CYDEV_CHIP_REVISION_4O_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4R 9
`define CYDEV_CHIP_REVISION_4R_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4T 10
`define CYDEV_CHIP_REVISION_4T_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4N 11
`define CYDEV_CHIP_REVISION_4N_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4S 12
`define CYDEV_CHIP_REVISION_4S_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4W 13
`define CYDEV_CHIP_REVISION_4W_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AC 14
`define CYDEV_CHIP_REVISION_4AC_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AD 15
`define CYDEV_CHIP_REVISION_4AD_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AE 16
`define CYDEV_CHIP_REVISION_4AE_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Q 17
`define CYDEV_CHIP_REVISION_4Q_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Y 18
`define CYDEV_CHIP_REVISION_4Y_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Z 19
`define CYDEV_CHIP_REVISION_4Z_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4D 20
`define CYDEV_CHIP_REVISION_4D_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4J 21
`define CYDEV_CHIP_REVISION_4J_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4K 22
`define CYDEV_CHIP_REVISION_4K_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4V 23
`define CYDEV_CHIP_REVISION_4V_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4H 24
`define CYDEV_CHIP_REVISION_4H_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AA 25
`define CYDEV_CHIP_REVISION_4AA_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4A 26
`define CYDEV_CHIP_REVISION_4A_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4A_ES0 17
`define CYDEV_CHIP_MEMBER_4F 27
`define CYDEV_CHIP_REVISION_4F_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256K 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA 0
`define CYDEV_CHIP_MEMBER_4P 28
`define CYDEV_CHIP_REVISION_4P_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4M 29
`define CYDEV_CHIP_REVISION_4M_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4AB 30
`define CYDEV_CHIP_REVISION_4AB_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4L 31
`define CYDEV_CHIP_REVISION_4L_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4I 32
`define CYDEV_CHIP_REVISION_4I_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_6A 33
`define CYDEV_CHIP_REVISION_6A_ES 17
`define CYDEV_CHIP_REVISION_6A_PRODUCTION 33
`define CYDEV_CHIP_REVISION_6A_NO_UDB 33
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE1 34
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE1_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE2 35
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE2_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE3 36
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM3 37
`define CYDEV_CHIP_REVISION_FM3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM4 38
`define CYDEV_CHIP_REVISION_FM4_PRODUCTION 0
`define CYDEV_CHIP_FAMILY_USED 2
`define CYDEV_CHIP_MEMBER_USED 27
`define CYDEV_CHIP_REVISION_USED 0
// Component: cy_analog_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0\cy_analog_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_analog_virtualmux_v1_0\cy_analog_virtualmux_v1_0.v"
`endif

// OpAmp_P4_v1_20(Compensation=2, DeepSleepSupport=false, Mode=0, OutputCurrent=1, Power=3, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=OpAmp_P4_v1_20, CY_CONFIG_TITLE=Opamp, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=Opamp, CY_INSTANCE_SHORT_NAME=Opamp, CY_MAJOR_VERSION=1, CY_MINOR_VERSION=20, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=Opamp, )
module OpAmp_P4_v1_20_0 (
    Vminus,
    Vout,
    Vplus);
    inout       Vminus;
    electrical  Vminus;
    inout       Vout;
    electrical  Vout;
    inout       Vplus;
    electrical  Vplus;


          wire  Net_12;
    electrical  Net_29;
    electrical  Net_19;
    electrical  Net_18;
    electrical  Net_9;

    cy_psoc4_abuf_v1_0 cy_psoc4_abuf (
        .cmpout(Net_12),
        .rs_bot(Net_29),
        .vminus(Net_9),
        .vout1(Net_18),
        .vout10(Net_19),
        .vplus(Vplus));
    defparam cy_psoc4_abuf.deepsleep_available = 0;
    defparam cy_psoc4_abuf.has_resistor = 0;
    defparam cy_psoc4_abuf.needs_dsab = 0;

	// cy_analog_virtualmux_1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_1_connect(Net_9, Vminus);
	defparam cy_analog_virtualmux_1_connect.sig_width = 1;

	// cy_analog_virtualmux_2 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_2_connect(Vout, Net_19);
	defparam cy_analog_virtualmux_2_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_1 (
        .noconnect(Net_29));



endmodule

// Component: or_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0\or_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0\or_v1_0.v"
`endif

// Component: cy_constant_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`endif

// BLE_v3_66(AutopopulateWhitelist=true, EnableExternalPAcontrol=false, EnableExternalPrepWriteBuff=false, EnableL2capLogicalChannels=true, EnableLinkLayerPrivacy=false, GapConfig=<?xml version="1.0" encoding="utf-16"?>\r\n<CyGapConfiguration xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">\r\n  <DevAddress>00A050000000</DevAddress>\r\n  <SiliconGeneratedAddress>true</SiliconGeneratedAddress>\r\n  <MtuSize>23</MtuSize>\r\n  <MaxTxPayloadSize>27</MaxTxPayloadSize>\r\n  <MaxRxPayloadSize>27</MaxRxPayloadSize>\r\n  <TxPowerLevel>0</TxPowerLevel>\r\n  <TxPowerLevelConnection>0</TxPowerLevelConnection>\r\n  <TxPowerLevelAdvScan>0</TxPowerLevelAdvScan>\r\n  <SecurityConfig>\r\n    <SecurityMode>SECURITY_MODE_1</SecurityMode>\r\n    <SecurityLevel>NO_SECURITY</SecurityLevel>\r\n    <StrictPairing>false</StrictPairing>\r\n    <KeypressNotifications>false</KeypressNotifications>\r\n    <IOCapability>DISPLAY</IOCapability>\r\n    <PairingMethod>JUST_WORKS</PairingMethod>\r\n    <Bonding>NO_BOND</Bonding>\r\n    <MaxBondedDevices>4</MaxBondedDevices>\r\n    <AutoPopWhitelistBondedDev>true</AutoPopWhitelistBondedDev>\r\n    <MaxWhitelistSize>8</MaxWhitelistSize>\r\n    <EnableLinkLayerPrivacy>false</EnableLinkLayerPrivacy>\r\n    <MaxResolvableDevices>8</MaxResolvableDevices>\r\n    <EncryptionKeySize>16</EncryptionKeySize>\r\n  </SecurityConfig>\r\n  <AdvertisementConfig>\r\n    <AdvScanMode>FAST_CONNECTION</AdvScanMode>\r\n    <AdvFastScanInterval>\r\n      <Minimum>20</Minimum>\r\n      <Maximum>30</Maximum>\r\n    </AdvFastScanInterval>\r\n    <AdvReducedScanInterval>\r\n      <Minimum>1000</Minimum>\r\n      <Maximum>10240</Maximum>\r\n    </AdvReducedScanInterval>\r\n    <AdvDiscoveryMode>GENERAL</AdvDiscoveryMode>\r\n    <AdvType>CONNECTABLE_UNDIRECTED</AdvType>\r\n    <AdvFilterPolicy>SCAN_REQUEST_ANY_CONNECT_REQUEST_ANY</AdvFilterPolicy>\r\n    <AdvChannelMap>ALL</AdvChannelMap>\r\n    <AdvFastTimeout>0</AdvFastTimeout>\r\n    <AdvReducedTimeout>150</AdvReducedTimeout>\r\n    <EnableReducedAdvertising>false</EnableReducedAdvertising>\r\n    <ConnectionInterval>\r\n      <Minimum>7.5</Minimum>\r\n      <Maximum>50</Maximum>\r\n    </ConnectionInterval>\r\n    <ConnectionSlaveLatency>0</ConnectionSlaveLatency>\r\n    <ConnectionTimeout>10000</ConnectionTimeout>\r\n  </AdvertisementConfig>\r\n  <ScanConfig>\r\n    <ScanFastWindow>30</ScanFastWindow>\r\n    <ScanFastInterval>30</ScanFastInterval>\r\n    <ScanTimeout>30</ScanTimeout>\r\n    <ScanReducedWindow>1125</ScanReducedWindow>\r\n    <ScanReducedInterval>1280</ScanReducedInterval>\r\n    <ScanReducedTimeout>150</ScanReducedTimeout>\r\n    <EnableReducedScan>true</EnableReducedScan>\r\n    <ScanDiscoveryMode>GENERAL</ScanDiscoveryMode>\r\n    <ScanningState>ACTIVE</ScanningState>\r\n    <ScanFilterPolicy>ACCEPT_ALL_ADV_PACKETS</ScanFilterPolicy>\r\n    <DuplicateFiltering>false</DuplicateFiltering>\r\n    <ConnectionInterval>\r\n      <Minimum>7.5</Minimum>\r\n      <Maximum>50</Maximum>\r\n    </ConnectionInterval>\r\n    <ConnectionSlaveLatency>0</ConnectionSlaveLatency>\r\n    <ConnectionTimeout>10000</ConnectionTimeout>\r\n  </ScanConfig>\r\n  <AdvertisementPacket>\r\n    <PacketType>ADVERTISEMENT</PacketType>\r\n    <Items>\r\n      <CyADStructure>\r\n        <ADType>1</ADType>\r\n        <ADData>06</ADData>\r\n      </CyADStructure>\r\n      <CyADStructure>\r\n        <ADType>8</ADType>\r\n        <ADData>50:65:72:69:70</ADData>\r\n      </CyADStructure>\r\n      <CyADStructure>\r\n        <ADType>7</ADType>\r\n        <ADData>CB:62:C5:D9:0B:E1:6B:92:D4:4F:0F:F7:46:FE:BA:7F</ADData>\r\n      </CyADStructure>\r\n    </Items>\r\n    <IncludedServicesServiceUuid>\r\n      <int>11</int>\r\n    </IncludedServicesServiceUuid>\r\n    <IncludedServicesServiceSolicitation />\r\n    <IncludedServicesServiceData />\r\n  </AdvertisementPacket>\r\n  <ScanResponsePacket>\r\n    <PacketType>SCAN_RESPONSE</PacketType>\r\n    <Items>\r\n      <CyADStructure>\r\n        <ADType>9</ADType>\r\n        <ADData>50:65:72:69:70:68:65:72:61:6C:5F:45:78:61:6D:70:6C:65:20</ADData>\r\n      </CyADStructure>\r\n    </Items>\r\n    <IncludedServicesServiceUuid />\r\n    <IncludedServicesServiceSolicitation />\r\n    <IncludedServicesServiceData />\r\n  </ScanResponsePacket>\r\n</CyGapConfiguration>, HalBaudRate=115200, HalCtsEnable=true, HalCtsPolarity=0, HalRtsEnable=true, HalRtsPolarity=0, HalRtsTriggerLevel=4, HciMode=0, ImportFilePath=, KeypressNotifications=false, L2capMpsSize=23, L2capMtuSize=23, L2capNumChannels=1, L2capNumPsm=1, LLMaxRxPayloadSize=27, LLMaxTxPayloadSize=27, MaxAttrNoOfBuffer=1, MaxBondedDevices=4, MaxResolvableDevices=8, MaxWhitelistSize=8, Mode=0, ProfileConfig=<?xml version="1.0" encoding="utf-16"?>\r\n<Profile xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" ID="1" DisplayName="Custom" Name="Custom" Type="org.bluetooth.profile.custom">\r\n  <CyProfileRole ID="2" DisplayName="Server" Name="Server">\r\n    <CyService ID="3" DisplayName="Generic Access" Name="Generic Access" Type="org.bluetooth.service.generic_access" UUID="1800">\r\n      <CyCharacteristic ID="4" DisplayName="Device Name" Name="Device Name" Type="org.bluetooth.characteristic.gap.device_name" UUID="2A00">\r\n        <Field Name="Name">\r\n          <DataFormat>utf8s</DataFormat>\r\n          <ByteLength>19</ByteLength>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>Peripheral_Example </GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n          <Property Type="WRITE" Present="false" Mandatory="false" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="5" DisplayName="Appearance" Name="Appearance" Type="org.bluetooth.characteristic.gap.appearance" UUID="2A01">\r\n        <Field Name="Category">\r\n          <DataFormat>16bit</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>ENUM</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="6" DisplayName="Peripheral Preferred Connection Parameters" Name="Peripheral Preferred Connection Parameters" Type="org.bluetooth.characteristic.gap.peripheral_preferred_connection_parameters" UUID="2A04">\r\n        <Field Name="Minimum Connection Interval">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>6</Minimum>\r\n            <Maximum>3200</Maximum>\r\n          </Range>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>0x0006</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Maximum Connection Interval">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>6</Minimum>\r\n            <Maximum>3200</Maximum>\r\n          </Range>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>0x0028</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Slave Latency">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>0</Minimum>\r\n            <Maximum>1000</Maximum>\r\n          </Range>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>0</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="Connection Supervision Timeout Multiplier">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>10</Minimum>\r\n            <Maximum>3200</Maximum>\r\n          </Range>\r\n          <FillRequirement>C1</FillRequirement>\r\n          <ValueType>BASIC</ValueType>\r\n          <GeneralValue>0x03E8</GeneralValue>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="7" DisplayName="Central Address Resolution" Name="Central Address Resolution" Type="org.bluetooth.characteristic.gap.central_address_resolution" UUID="2AA6">\r\n        <Field Name="Central Address Resolution Support">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>ENUM</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="READ" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <Declaration>Primary</Declaration>\r\n      <IncludedServices />\r\n    </CyService>\r\n    <CyService ID="8" DisplayName="Generic Attribute" Name="Generic Attribute" Type="org.bluetooth.service.generic_attribute" UUID="1801">\r\n      <CyCharacteristic ID="9" DisplayName="Service Changed" Name="Service Changed" Type="org.bluetooth.characteristic.gatt.service_changed" UUID="2A05">\r\n        <CyDescriptor ID="10" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">\r\n          <Field Name="Properties">\r\n            <DataFormat>16bit</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <Range>\r\n              <IsDeclared>true</IsDeclared>\r\n              <Minimum>0</Minimum>\r\n              <Maximum>3</Maximum>\r\n            </Range>\r\n            <ValueType>BITFIELD</ValueType>\r\n            <Bit>\r\n              <Index>0</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Notifications disabled" />\r\n                <Enumeration key="1" value="Notifications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <Bit>\r\n              <Index>1</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Indications disabled" />\r\n                <Enumeration key="1" value="Indications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="true" Mandatory="true" />\r\n            <Property Type="WRITE" Present="true" Mandatory="true" />\r\n          </Properties>\r\n          <Permission>\r\n            <AccessPermission>READ_WRITE</AccessPermission>\r\n          </Permission>\r\n        </CyDescriptor>\r\n        <Field Name="Start of Affected Attribute Handle Range">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>1</Minimum>\r\n            <Maximum>65535</Maximum>\r\n          </Range>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Field Name="End of Affected Attribute Handle Range">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <Range>\r\n            <IsDeclared>true</IsDeclared>\r\n            <Minimum>1</Minimum>\r\n            <Maximum>65535</Maximum>\r\n          </Range>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="INDICATE" Present="true" Mandatory="true" />\r\n        </Properties>\r\n        <Permission>\r\n          <AccessPermission>NONE</AccessPermission>\r\n        </Permission>\r\n      </CyCharacteristic>\r\n      <Declaration>Primary</Declaration>\r\n      <IncludedServices />\r\n    </CyService>\r\n    <CyService ID="11" DisplayName="Number" Name="Custom Service" Type="org.bluetooth.service.custom" UUID="7FBAFE46F70F4FD4926BE10BD9C562CB">\r\n      <CyCharacteristic ID="12" DisplayName="Number_Write" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="B0DD5B1BA1994A3195320605CD78EA9B">\r\n        <CyDescriptor ID="13" DisplayName="Custom Descriptor" Name="Custom Descriptor" Type="org.bluetooth.descriptor.custom" UUID="62A1BF7B4CD24EA3BCB072D56CC7D295">\r\n          <Field Name="New field">\r\n            <DataFormat>uint8</DataFormat>\r\n            <ByteLength>1</ByteLength>\r\n            <ValueType>BASIC</ValueType>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="false" Mandatory="false" />\r\n            <Property Type="WRITE" Present="false" Mandatory="false" />\r\n          </Properties>\r\n          <Permission />\r\n        </CyDescriptor>\r\n        <Field Name="New field">\r\n          <DataFormat>uint8</DataFormat>\r\n          <ByteLength>1</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="BROADCAST" Present="false" Mandatory="false" />\r\n          <Property Type="READ" Present="false" Mandatory="false" />\r\n          <Property Type="WRITE" Present="true" Mandatory="false" />\r\n          <Property Type="WRITE_WITHOUT_RESPONSE" Present="true" Mandatory="false" />\r\n          <Property Type="NOTIFY" Present="false" Mandatory="false" />\r\n          <Property Type="INDICATE" Present="false" Mandatory="false" />\r\n          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />\r\n          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />\r\n        </Properties>\r\n        <Permission>\r\n          <AccessPermission>WRITE</AccessPermission>\r\n        </Permission>\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="14" DisplayName="Number_Read" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="569BAE8BC86544B393B2AAB0AA3C829B">\r\n        <CyDescriptor ID="15" DisplayName="Custom Descriptor" Name="Custom Descriptor" Type="org.bluetooth.descriptor.custom" UUID="781BCF3785D24A728EF379FE4D5514A5">\r\n          <Field Name="New field">\r\n            <DataFormat>uint16</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <ValueType>BASIC</ValueType>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="false" Mandatory="false" />\r\n            <Property Type="WRITE" Present="false" Mandatory="false" />\r\n          </Properties>\r\n          <Permission />\r\n        </CyDescriptor>\r\n        <Field Name="New field">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="BROADCAST" Present="false" Mandatory="false" />\r\n          <Property Type="READ" Present="true" Mandatory="false" />\r\n          <Property Type="WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />\r\n          <Property Type="NOTIFY" Present="false" Mandatory="false" />\r\n          <Property Type="INDICATE" Present="false" Mandatory="false" />\r\n          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />\r\n          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />\r\n        </Properties>\r\n        <Permission />\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="16" DisplayName="Number_Notify" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="F9DCB357BE344C6F9017DD5E0BDD7B20">\r\n        <CyDescriptor ID="17" DisplayName="Custom Descriptor" Name="Custom Descriptor" Type="org.bluetooth.descriptor.custom" UUID="B3A4B17C915842CF8ADD382B9F684E5A">\r\n          <Field Name="New field">\r\n            <DataFormat>uint16</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <ValueType>BASIC</ValueType>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="false" Mandatory="false" />\r\n            <Property Type="WRITE" Present="false" Mandatory="false" />\r\n          </Properties>\r\n          <Permission />\r\n        </CyDescriptor>\r\n        <CyDescriptor ID="22" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">\r\n          <Field Name="Properties">\r\n            <DataFormat>16bit</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <Range>\r\n              <IsDeclared>true</IsDeclared>\r\n              <Minimum>0</Minimum>\r\n              <Maximum>3</Maximum>\r\n            </Range>\r\n            <ValueType>BITFIELD</ValueType>\r\n            <Bit>\r\n              <Index>0</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Notifications disabled" />\r\n                <Enumeration key="1" value="Notifications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <Bit>\r\n              <Index>1</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Indications disabled" />\r\n                <Enumeration key="1" value="Indications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="true" Mandatory="false" />\r\n            <Property Type="WRITE" Present="true" Mandatory="false" />\r\n          </Properties>\r\n          <Permission>\r\n            <AccessPermission>READ_WRITE</AccessPermission>\r\n          </Permission>\r\n        </CyDescriptor>\r\n        <Field Name="New field">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="BROADCAST" Present="false" Mandatory="false" />\r\n          <Property Type="READ" Present="false" Mandatory="false" />\r\n          <Property Type="WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />\r\n          <Property Type="NOTIFY" Present="true" Mandatory="false" />\r\n          <Property Type="INDICATE" Present="false" Mandatory="false" />\r\n          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />\r\n          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />\r\n        </Properties>\r\n        <Permission>\r\n          <AccessPermission>NONE</AccessPermission>\r\n        </Permission>\r\n      </CyCharacteristic>\r\n      <CyCharacteristic ID="20" DisplayName="Number_Indicate" Name="Custom Characteristic" Type="org.bluetooth.characteristic.custom" UUID="F0775715FE144505A601CC8327DE8960">\r\n        <CyDescriptor ID="21" DisplayName="Custom Descriptor" Name="Custom Descriptor" Type="org.bluetooth.descriptor.custom" UUID="870BEA9CB2204A4392024905711430FC">\r\n          <Field Name="New field">\r\n            <DataFormat>uint16</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <ValueType>BASIC</ValueType>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="false" Mandatory="false" />\r\n            <Property Type="WRITE" Present="false" Mandatory="false" />\r\n          </Properties>\r\n          <Permission />\r\n        </CyDescriptor>\r\n        <CyDescriptor ID="23" DisplayName="Client Characteristic Configuration" Name="Client Characteristic Configuration" Type="org.bluetooth.descriptor.gatt.client_characteristic_configuration" UUID="2902">\r\n          <Field Name="Properties">\r\n            <DataFormat>16bit</DataFormat>\r\n            <ByteLength>2</ByteLength>\r\n            <Range>\r\n              <IsDeclared>true</IsDeclared>\r\n              <Minimum>0</Minimum>\r\n              <Maximum>3</Maximum>\r\n            </Range>\r\n            <ValueType>BITFIELD</ValueType>\r\n            <Bit>\r\n              <Index>0</Index>\r\n              <Size>1</Size>\r\n              <Value>0</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Notifications disabled" />\r\n                <Enumeration key="1" value="Notifications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <Bit>\r\n              <Index>1</Index>\r\n              <Size>1</Size>\r\n              <Value>1</Value>\r\n              <Enumerations>\r\n                <Enumeration key="0" value="Indications disabled" />\r\n                <Enumeration key="1" value="Indications enabled" />\r\n              </Enumerations>\r\n            </Bit>\r\n            <ArrayValue />\r\n          </Field>\r\n          <Properties>\r\n            <Property Type="READ" Present="true" Mandatory="false" />\r\n            <Property Type="WRITE" Present="true" Mandatory="false" />\r\n          </Properties>\r\n          <Permission>\r\n            <AccessPermission>READ_WRITE</AccessPermission>\r\n          </Permission>\r\n        </CyDescriptor>\r\n        <Field Name="New field">\r\n          <DataFormat>uint16</DataFormat>\r\n          <ByteLength>2</ByteLength>\r\n          <ValueType>BASIC</ValueType>\r\n          <ArrayValue />\r\n        </Field>\r\n        <Properties>\r\n          <Property Type="BROADCAST" Present="false" Mandatory="false" />\r\n          <Property Type="READ" Present="false" Mandatory="false" />\r\n          <Property Type="WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITE_WITHOUT_RESPONSE" Present="false" Mandatory="false" />\r\n          <Property Type="NOTIFY" Present="false" Mandatory="false" />\r\n          <Property Type="INDICATE" Present="true" Mandatory="false" />\r\n          <Property Type="AUTHENTICATED_SIGNED_WRITES" Present="false" Mandatory="false" />\r\n          <Property Type="RELIABLE_WRITE" Present="false" Mandatory="false" />\r\n          <Property Type="WRITABLE_AUXILIARIES" Present="false" Mandatory="false" />\r\n        </Properties>\r\n        <Permission>\r\n          <AccessPermission>NONE</AccessPermission>\r\n        </Permission>\r\n      </CyCharacteristic>\r\n      <Declaration>PrimarySingleInstance</Declaration>\r\n      <IncludedServices />\r\n    </CyService>\r\n    <ProfileRoleIndex>0</ProfileRoleIndex>\r\n    <RoleType>SERVER</RoleType>\r\n  </CyProfileRole>\r\n  <GapRole>PERIPHERAL</GapRole>\r\n</Profile>, SharingMode=0, StackMode=3, StrictPairing=false, UseDeepSleep=true, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=BLE_v3_66, CY_CONFIG_TITLE=BLE, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=BLE_v3_66.pdf, CY_FITTER_NAME=BLE, CY_INSTANCE_SHORT_NAME=BLE, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=66, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=BLE, )
module BLE_v3_66_1 (
    clk,
    pa_en);
    output      clk;
    output      pa_en;


          wire  Net_89;
          wire  Net_107;
          wire  Net_106;
          wire  Net_105;
          wire  Net_93;
          wire  Net_92;
          wire  Net_91;
          wire  Net_101;
          wire  Net_104;
          wire  Net_102;
          wire  Net_103;
          wire  Net_90;
          wire  Net_100;
          wire  Net_99;
          wire  Net_98;
          wire  Net_97;
          wire  Net_96;
          wire  Net_95;
          wire  Net_94;
          wire  Net_88;
          wire  Net_70;
          wire  Net_15;
          wire  Net_14;
          wire  Net_53;
          wire  Net_60;
          wire  Net_55;

    cy_m0s8_ble_v1_0 cy_m0s8_ble (
        .interrupt(Net_15),
        .rf_ext_pa_en(pa_en));


	cy_isr_v1_0
		#(.int_type(2'b10))
		bless_isr
		 (.int_signal(Net_15));



	cy_clock_v1_0
		#(.id("b77d7ce7-b4e4-4429-b34b-8f0d10d5d610/5ae6fa4d-f41a-4a35-8821-7ce70389cb0c"),
		  .source_clock_id("9A908CA6-5BB3-4db0-B098-959E5D90882B"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(0))
		LFCLK
		 (.clock_out(Net_53));



    assign clk = Net_55 | Net_53;

    assign Net_55 = 1'h0;



endmodule

// Component: ZeroTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`endif

// Component: Bus_Connect_v2_50
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\Bus_Connect_v2_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\Bus_Connect_v2_50\Bus_Connect_v2_50.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\Bus_Connect_v2_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\Bus_Connect_v2_50\Bus_Connect_v2_50.v"
`endif

// Component: cy_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.4\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`endif

// ADC_SAR_SEQ_P4_v2_50(AdcAClock=2, AdcAdjust=0, AdcAlternateResolution=0, AdcAvgMode=1, AdcAvgSamplesNum=0, AdcBClock=2, AdcCClock=2, AdcChannelsEnConf=1, AdcChannelsModeConf=0, AdcClock=1, AdcClockFrequency=2666656, AdcCompareMode=0, AdcDataFormatJustification=0, AdcDClock=2, AdcDedicatedExtVref=true, AdcDifferentialResultFormat=0, AdcHighLimit=2047, AdcInjChannelEnabled=false, AdcInputBufGain=0, AdcLowLimit=0, AdcMaxResolution=12, AdcSampleMode=0, AdcSarMuxChannelConfig=0, AdcSequencedChannels=1, AdcSingleEndedNegativeInput=0, AdcSingleResultFormat=1, AdcSymbolHasSingleEndedInputChannel=false, AdcTotalChannels=1, AdcVrefSelect=3, AdcVrefVoltage_mV=1024, rm_int=false, SeqChannelsConfigTable=<?xml version="1.0" encoding="utf-16"?><CyChannelsConfigTable xmlns:Version="2_50"><m_channelsConfigTable><CyChannelsConfigTableRow><m_enabled>false</m_enabled><m_resolution>Twelve</m_resolution><m_mode>Diff</m_mode><m_averaged>false</m_averaged><m_acqTime>AClocks</m_acqTime><m_limitsDetectIntrEnabled>false</m_limitsDetectIntrEnabled><m_saturationIntrEnabled>false</m_saturationIntrEnabled></CyChannelsConfigTableRow><CyChannelsConfigTableRow><m_enabled>true</m_enabled><m_resolution>Twelve</m_resolution><m_mode>Single</m_mode><m_averaged>false</m_averaged><m_acqTime>AClocks</m_acqTime><m_limitsDetectIntrEnabled>false</m_limitsDetectIntrEnabled><m_saturationIntrEnabled>false</m_saturationIntrEnabled></CyChannelsConfigTableRow></m_channelsConfigTable></CyChannelsConfigTable>, TermMode_aclk=0, TermMode_eoc=0, TermMode_sdone=0, TermMode_soc=0, TermMode_vinMinus0=0, TermMode_vinMinus1=0, TermMode_vinMinus10=0, TermMode_vinMinus11=0, TermMode_vinMinus12=0, TermMode_vinMinus13=0, TermMode_vinMinus14=0, TermMode_vinMinus15=0, TermMode_vinMinus2=0, TermMode_vinMinus3=0, TermMode_vinMinus4=0, TermMode_vinMinus5=0, TermMode_vinMinus6=0, TermMode_vinMinus7=0, TermMode_vinMinus8=0, TermMode_vinMinus9=0, TermMode_vinMinusINJ=0, TermMode_vinNeg=0, TermMode_vinPlus0=0, TermMode_vinPlus1=0, TermMode_vinPlus10=0, TermMode_vinPlus11=0, TermMode_vinPlus12=0, TermMode_vinPlus13=0, TermMode_vinPlus14=0, TermMode_vinPlus15=0, TermMode_vinPlus2=0, TermMode_vinPlus3=0, TermMode_vinPlus4=0, TermMode_vinPlus5=0, TermMode_vinPlus6=0, TermMode_vinPlus7=0, TermMode_vinPlus8=0, TermMode_vinPlus9=0, TermMode_vinPlusINJ=0, TermMode_Vref=0, TermVisibility_aclk=false, TermVisibility_eoc=true, TermVisibility_sdone=true, TermVisibility_soc=false, TermVisibility_vinMinus0=false, TermVisibility_vinMinus1=false, TermVisibility_vinMinus10=false, TermVisibility_vinMinus11=false, TermVisibility_vinMinus12=false, TermVisibility_vinMinus13=false, TermVisibility_vinMinus14=false, TermVisibility_vinMinus15=false, TermVisibility_vinMinus2=false, TermVisibility_vinMinus3=false, TermVisibility_vinMinus4=false, TermVisibility_vinMinus5=false, TermVisibility_vinMinus6=false, TermVisibility_vinMinus7=false, TermVisibility_vinMinus8=false, TermVisibility_vinMinus9=false, TermVisibility_vinMinusINJ=false, TermVisibility_vinNeg=false, TermVisibility_vinPlus0=true, TermVisibility_vinPlus1=false, TermVisibility_vinPlus10=false, TermVisibility_vinPlus11=false, TermVisibility_vinPlus12=false, TermVisibility_vinPlus13=false, TermVisibility_vinPlus14=false, TermVisibility_vinPlus15=false, TermVisibility_vinPlus2=false, TermVisibility_vinPlus3=false, TermVisibility_vinPlus4=false, TermVisibility_vinPlus5=false, TermVisibility_vinPlus6=false, TermVisibility_vinPlus7=false, TermVisibility_vinPlus8=false, TermVisibility_vinPlus9=false, TermVisibility_vinPlusINJ=false, TermVisibility_Vref=false, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=ADC_SAR_SEQ_P4_v2_50, CY_CONFIG_TITLE=ADC_SAR, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=ADC_SAR, CY_INSTANCE_SHORT_NAME=ADC_SAR, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=50, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.4, INSTANCE_NAME=ADC_SAR, )
module ADC_SAR_SEQ_P4_v2_50_2 (
    aclk,
    eoc,
    sdone,
    soc,
    vinPlus0,
    Vref);
    input       aclk;
    output      eoc;
    output      sdone;
    input       soc;
    inout       vinPlus0;
    electrical  vinPlus0;
    inout       Vref;
    electrical  Vref;


          wire  Net_3209;
    electrical  Net_3164;
          wire  Net_3128;
          wire  Net_3110;
          wire [11:0] Net_3111;
          wire  Net_3108;
          wire [3:0] Net_3109;
    electrical  Net_3166;
    electrical  Net_3167;
    electrical  Net_3168;
    electrical  Net_3169;
    electrical  Net_3170;
    electrical  Net_3171;
    electrical  Net_3172;
    electrical  Net_3173;
    electrical  Net_3174;
    electrical  Net_3175;
    electrical  Net_3176;
    electrical  Net_3177;
    electrical  Net_3178;
    electrical  Net_3179;
    electrical  Net_3180;
    electrical  muxout_plus;
    electrical  Net_3181;
    electrical  muxout_minus;
    electrical  Net_3227;
    electrical  Net_3113;
    electrical  Net_3225;
    electrical [16:0] mux_bus_minus;
    electrical [16:0] mux_bus_plus;
    electrical  Net_3226;
          wire  Net_3103;
          wire  Net_3104;
          wire  Net_3105;
          wire  Net_3106;
          wire  Net_3107;
    electrical  Net_3165;
    electrical  Net_3182;
    electrical  Net_3183;
    electrical  Net_3184;
    electrical  Net_3185;
    electrical  Net_3186;
    electrical  Net_3187;
    electrical  Net_3188;
    electrical  Net_3189;
    electrical  Net_3190;
    electrical  Net_3191;
    electrical  Net_3192;
    electrical  Net_3193;
    electrical  Net_3194;
    electrical  Net_3195;
    electrical  Net_3196;
    electrical  Net_3197;
    electrical  Net_3198;
    electrical  Net_3132;
    electrical  Net_3133;
    electrical  Net_3134;
    electrical  Net_3135;
    electrical  Net_3136;
    electrical  Net_3137;
    electrical  Net_3138;
    electrical  Net_3139;
    electrical  Net_3140;
    electrical  Net_3141;
    electrical  Net_3142;
    electrical  Net_3143;
    electrical  Net_3144;
    electrical  Net_3145;
    electrical  Net_3146;
    electrical  Net_3147;
    electrical  Net_3148;
    electrical  Net_3149;
    electrical  Net_3150;
    electrical  Net_3151;
    electrical  Net_3152;
    electrical  Net_3153;
    electrical  Net_3154;
    electrical  Net_3159;
    electrical  Net_3157;
    electrical  Net_3158;
    electrical  Net_3160;
    electrical  Net_3161;
    electrical  Net_3162;
    electrical  Net_3163;
    electrical  Net_3156;
    electrical  Net_3155;
    electrical  Net_3118;
    electrical  Net_3119;
          wire  Net_3120;
    electrical  Net_3122;
          wire  Net_3124;
    electrical  Net_3117;
    electrical  Net_3121;
    electrical  Net_3123;
          wire  Net_3112;
          wire  Net_3126;
          wire  Net_3125;
    electrical  Net_2793;
    electrical  Net_2794;
    electrical  Net_1851;
    electrical [0:0] Net_2580;
    electrical [0:0] Net_2375;
    electrical [0:0] Net_1450;
    electrical  Net_3046;
    electrical  Net_3016;
          wire  Net_3235;
    electrical  Net_2099;
          wire  Net_17;
          wire  Net_1845;
    electrical  Net_2020;
    electrical  Net_124;
    electrical  Net_2102;
          wire [1:0] Net_3207;
    electrical  Net_8;
    electrical  Net_43;

    ZeroTerminal ZeroTerminal_8 (
        .z(Net_3125));


    assign Net_3126 = Net_3125 | Net_1845;


	cy_isr_v1_0
		#(.int_type(2'b10))
		IRQ
		 (.int_signal(Net_3112));


    cy_analog_noconnect_v1_0 cy_analog_noconnect_44 (
        .noconnect(Net_3123));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_40 (
        .noconnect(Net_3121));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_39 (
        .noconnect(Net_3117));

	// cy_analog_virtualmux_43 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_43_connect(Net_124, muxout_minus);
	defparam cy_analog_virtualmux_43_connect.sig_width = 1;

	// cy_analog_virtualmux_42 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_42_connect(Net_2020, muxout_plus);
	defparam cy_analog_virtualmux_42_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_38 (
        .noconnect(Net_3118));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_41 (
        .noconnect(Net_3119));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_43 (
        .noconnect(Net_3122));

	// adc_plus_in_sel (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 adc_plus_in_sel_connect(muxout_plus, mux_bus_plus[0]);
	defparam adc_plus_in_sel_connect.sig_width = 1;

    Bus_Connect_v2_50 Connect_1 (
        .in_bus(mux_bus_plus[16:0]),
        .out_bus(Net_1450[0:0]));
    defparam Connect_1.in_width = 17;
    defparam Connect_1.out_width = 1;

	// adc_minus_in_sel (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 adc_minus_in_sel_connect(muxout_minus, mux_bus_minus[0]);
	defparam adc_minus_in_sel_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_3 (
        .noconnect(Net_1851));

	// cy_analog_virtualmux_37 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_37_connect(Net_3016, mux_bus_plus[1]);
	defparam cy_analog_virtualmux_37_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_21 (
        .noconnect(Net_3147));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_20 (
        .noconnect(Net_3146));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_19 (
        .noconnect(Net_3145));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_18 (
        .noconnect(Net_3144));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_17 (
        .noconnect(Net_3143));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_16 (
        .noconnect(Net_3142));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_15 (
        .noconnect(Net_3141));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_14 (
        .noconnect(Net_3140));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_13 (
        .noconnect(Net_3139));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_12 (
        .noconnect(Net_3138));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_11 (
        .noconnect(Net_3137));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_10 (
        .noconnect(Net_3136));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_9 (
        .noconnect(Net_3135));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_8 (
        .noconnect(Net_3134));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_7 (
        .noconnect(Net_3133));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_6 (
        .noconnect(Net_3132));

	// cy_analog_virtualmux_36 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_36_connect(Net_3046, mux_bus_minus[1]);
	defparam cy_analog_virtualmux_36_connect.sig_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_37 (
        .noconnect(Net_3165));

    ZeroTerminal ZeroTerminal_5 (
        .z(Net_3107));

    ZeroTerminal ZeroTerminal_4 (
        .z(Net_3106));

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_3105));

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_3104));

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_3103));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_1 (
        .noconnect(Net_3113));

	// ext_vref_sel (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 ext_vref_sel_connect(Net_43, Net_3227);
	defparam ext_vref_sel_connect.sig_width = 1;

    Bus_Connect_v2_50 Connect_2 (
        .in_bus(mux_bus_minus[16:0]),
        .out_bus(Net_2375[0:0]));
    defparam Connect_2.in_width = 17;
    defparam Connect_2.out_width = 1;

    cy_analog_noconnect_v1_0 cy_analog_noconnect_35 (
        .noconnect(Net_3181));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_34 (
        .noconnect(Net_3180));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_33 (
        .noconnect(Net_3179));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_32 (
        .noconnect(Net_3178));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_31 (
        .noconnect(Net_3177));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_30 (
        .noconnect(Net_3176));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_29 (
        .noconnect(Net_3175));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_28 (
        .noconnect(Net_3174));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_27 (
        .noconnect(Net_3173));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_26 (
        .noconnect(Net_3172));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_25 (
        .noconnect(Net_3171));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_24 (
        .noconnect(Net_3170));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_23 (
        .noconnect(Net_3169));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_22 (
        .noconnect(Net_3168));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_4 (
        .noconnect(Net_3167));

    cy_analog_noconnect_v1_0 cy_analog_noconnect_2 (
        .noconnect(Net_3166));

	// int_vref_sel (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 int_vref_sel_connect(Net_8, Net_3113);
	defparam int_vref_sel_connect.sig_width = 1;

	// clk_src_sel (cy_virtualmux_v1_0)
	assign Net_17 = Net_1845;

    cy_psoc4_sar_v1_0 cy_psoc4_sar (
        .cfg_average(Net_3104),
        .cfg_differential(Net_3106),
        .cfg_resolution(Net_3105),
        .cfg_st_sel(Net_3207[1:0]),
        .chan_id(Net_3109[3:0]),
        .chan_id_valid(Net_3108),
        .clock(Net_17),
        .data(Net_3111[11:0]),
        .data_hilo_sel(Net_3107),
        .data_valid(Net_3110),
        .eos_intr(eoc),
        .ext_vref(Net_43),
        .irq(Net_3112),
        .sample_done(sdone),
        .sw_negvref(Net_3103),
        .trigger(Net_3235),
        .vminus(Net_124),
        .vplus(Net_2020),
        .vref(Net_8));

	// ext_vneg_sel (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 ext_vneg_sel_connect(Net_2580[0:0], Net_1851);
	defparam ext_vneg_sel_connect.sig_width = 1;

	// VMux_soc (cy_virtualmux_v1_0)
	assign Net_3235 = soc;

    ZeroTerminal ZeroTerminal_6 (
        .z(Net_3207[0]));

    ZeroTerminal ZeroTerminal_7 (
        .z(Net_3207[1]));

	// cy_analog_virtualmux_vplus0 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus0_connect(mux_bus_plus[0], vinPlus0);
	defparam cy_analog_virtualmux_vplus0_connect.sig_width = 1;

	// cy_analog_virtualmux_vplus1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus1_connect(mux_bus_plus[1], Net_3132);
	defparam cy_analog_virtualmux_vplus1_connect.sig_width = 1;

	// cy_analog_virtualmux_vplus2 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus2_connect(mux_bus_plus[2], Net_3133);
	defparam cy_analog_virtualmux_vplus2_connect.sig_width = 1;

	// cy_analog_virtualmux_vplus3 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus3_connect(mux_bus_plus[3], Net_3134);
	defparam cy_analog_virtualmux_vplus3_connect.sig_width = 1;

	// cy_analog_virtualmux_vplus4 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus4_connect(mux_bus_plus[4], Net_3135);
	defparam cy_analog_virtualmux_vplus4_connect.sig_width = 1;

	// cy_analog_virtualmux_vplus5 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus5_connect(mux_bus_plus[5], Net_3136);
	defparam cy_analog_virtualmux_vplus5_connect.sig_width = 1;

	// cy_analog_virtualmux_vplus6 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus6_connect(mux_bus_plus[6], Net_3137);
	defparam cy_analog_virtualmux_vplus6_connect.sig_width = 1;

	// cy_analog_virtualmux_vplus7 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus7_connect(mux_bus_plus[7], Net_3138);
	defparam cy_analog_virtualmux_vplus7_connect.sig_width = 1;

	// cy_analog_virtualmux_vplus8 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus8_connect(mux_bus_plus[8], Net_3139);
	defparam cy_analog_virtualmux_vplus8_connect.sig_width = 1;

	// cy_analog_virtualmux_vplus9 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus9_connect(mux_bus_plus[9], Net_3140);
	defparam cy_analog_virtualmux_vplus9_connect.sig_width = 1;

	// cy_analog_virtualmux_vplus10 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus10_connect(mux_bus_plus[10], Net_3141);
	defparam cy_analog_virtualmux_vplus10_connect.sig_width = 1;

	// cy_analog_virtualmux_vplus11 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus11_connect(mux_bus_plus[11], Net_3142);
	defparam cy_analog_virtualmux_vplus11_connect.sig_width = 1;

	// cy_analog_virtualmux_vplus12 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus12_connect(mux_bus_plus[12], Net_3143);
	defparam cy_analog_virtualmux_vplus12_connect.sig_width = 1;

	// cy_analog_virtualmux_vplus13 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus13_connect(mux_bus_plus[13], Net_3144);
	defparam cy_analog_virtualmux_vplus13_connect.sig_width = 1;

	// cy_analog_virtualmux_vplus14 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus14_connect(mux_bus_plus[14], Net_3145);
	defparam cy_analog_virtualmux_vplus14_connect.sig_width = 1;

	// cy_analog_virtualmux_vplus15 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus15_connect(mux_bus_plus[15], Net_3146);
	defparam cy_analog_virtualmux_vplus15_connect.sig_width = 1;

	// cy_analog_virtualmux_vplus_inj (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vplus_inj_connect(Net_3016, Net_3147);
	defparam cy_analog_virtualmux_vplus_inj_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus0 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus0_connect(mux_bus_minus[0], Net_3166);
	defparam cy_analog_virtualmux_vminus0_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus1 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus1_connect(mux_bus_minus[1], Net_3167);
	defparam cy_analog_virtualmux_vminus1_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus2 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus2_connect(mux_bus_minus[2], Net_3168);
	defparam cy_analog_virtualmux_vminus2_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus3 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus3_connect(mux_bus_minus[3], Net_3169);
	defparam cy_analog_virtualmux_vminus3_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus4 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus4_connect(mux_bus_minus[4], Net_3170);
	defparam cy_analog_virtualmux_vminus4_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus5 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus5_connect(mux_bus_minus[5], Net_3171);
	defparam cy_analog_virtualmux_vminus5_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus6 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus6_connect(mux_bus_minus[6], Net_3172);
	defparam cy_analog_virtualmux_vminus6_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus7 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus7_connect(mux_bus_minus[7], Net_3173);
	defparam cy_analog_virtualmux_vminus7_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus8 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus8_connect(mux_bus_minus[8], Net_3174);
	defparam cy_analog_virtualmux_vminus8_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus9 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus9_connect(mux_bus_minus[9], Net_3175);
	defparam cy_analog_virtualmux_vminus9_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus10 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus10_connect(mux_bus_minus[10], Net_3176);
	defparam cy_analog_virtualmux_vminus10_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus11 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus11_connect(mux_bus_minus[11], Net_3177);
	defparam cy_analog_virtualmux_vminus11_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus12 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus12_connect(mux_bus_minus[12], Net_3178);
	defparam cy_analog_virtualmux_vminus12_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus13 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus13_connect(mux_bus_minus[13], Net_3179);
	defparam cy_analog_virtualmux_vminus13_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus14 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus14_connect(mux_bus_minus[14], Net_3180);
	defparam cy_analog_virtualmux_vminus14_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus15 (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus15_connect(mux_bus_minus[15], Net_3181);
	defparam cy_analog_virtualmux_vminus15_connect.sig_width = 1;

	// cy_analog_virtualmux_vminus_inj (cy_analog_virtualmux_v1_0)
	cy_connect_v1_0 cy_analog_virtualmux_vminus_inj_connect(Net_3046, Net_3165);
	defparam cy_analog_virtualmux_vminus_inj_connect.sig_width = 1;


	cy_clock_v1_0
		#(.id("c620d081-14be-4efb-a890-9953634e7dd3/5c71752a-e182-47ca-942c-9cb20adbdf2f"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("375001500.006"),
		  .is_direct(0),
		  .is_digital(0))
		intClock
		 (.clock_out(Net_1845));


    cy_analog_noconnect_v1_0 cy_analog_noconnect_5 (
        .noconnect(Net_3227));



endmodule

// top
module top ;

    electrical  Net_886;
          wire  Net_885;
          wire  Net_884;
          wire  Net_883;
          wire  Net_882;
          wire  Net_799;
          wire  Net_798;
    electrical  Net_785;
    electrical  Net_625;
    electrical  Net_754;
    electrical  Net_641;
    electrical  Net_629;
    electrical  Net_660;

    OpAmp_P4_v1_20_0 Opamp (
        .Vminus(Net_754),
        .Vout(Net_660),
        .Vplus(Net_785));

    BLE_v3_66_1 BLE (
        .clk(Net_798),
        .pa_en(Net_799));

	wire [0:0] tmpOE__photodiode_net;
	wire [0:0] tmpFB_0__photodiode_net;
	wire [0:0] tmpIO_0__photodiode_net;
	wire [0:0] tmpINTERRUPT_0__photodiode_net;
	electrical [0:0] tmpSIOVREF__photodiode_net;

	cy_psoc3_pins_v1_10
		#(.id("a7421461-eb48-4cc8-94a7-476a41a9010c"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b1),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		photodiode
		 (.oe(tmpOE__photodiode_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__photodiode_net[0:0]}),
		  .analog({Net_754}),
		  .io({tmpIO_0__photodiode_net[0:0]}),
		  .siovref(tmpSIOVREF__photodiode_net),
		  .interrupt({tmpINTERRUPT_0__photodiode_net[0:0]}),
		  .annotation({Net_641}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__photodiode_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__OA1out_net;
	wire [0:0] tmpFB_0__OA1out_net;
	wire [0:0] tmpIO_0__OA1out_net;
	wire [0:0] tmpINTERRUPT_0__OA1out_net;
	electrical [0:0] tmpSIOVREF__OA1out_net;

	cy_psoc3_pins_v1_10
		#(.id("98e385eb-a72a-415a-8553-44c0bf81c562"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b1),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		OA1out
		 (.oe(tmpOE__OA1out_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__OA1out_net[0:0]}),
		  .analog({Net_660}),
		  .io({tmpIO_0__OA1out_net[0:0]}),
		  .siovref(tmpSIOVREF__OA1out_net),
		  .interrupt({tmpINTERRUPT_0__OA1out_net[0:0]}),
		  .annotation({Net_629}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__OA1out_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__ref_net;
	wire [0:0] tmpFB_0__ref_net;
	wire [0:0] tmpIO_0__ref_net;
	wire [0:0] tmpINTERRUPT_0__ref_net;
	electrical [0:0] tmpSIOVREF__ref_net;

	cy_psoc3_pins_v1_10
		#(.id("bb422bac-1257-41a9-9af5-315953b85371"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		ref
		 (.oe(tmpOE__ref_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__ref_net[0:0]}),
		  .analog({Net_785}),
		  .io({tmpIO_0__ref_net[0:0]}),
		  .siovref(tmpSIOVREF__ref_net),
		  .interrupt({tmpINTERRUPT_0__ref_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__ref_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    cy_annotation_universal_v1_0 D_1 (
        .connect({
            Net_641,
            Net_625
        })
    );
    defparam D_1.comp_name = "PhotoDiode_v1_0";
    defparam D_1.port_names = "A, K";
    defparam D_1.width = 2;

    cy_annotation_universal_v1_0 GND_2 (
        .connect({
            Net_625
        })
    );
    defparam GND_2.comp_name = "Gnd_v1_0";
    defparam GND_2.port_names = "T1";
    defparam GND_2.width = 1;

    cy_annotation_universal_v1_0 R_1 (
        .connect({
            Net_641,
            Net_629
        })
    );
    defparam R_1.comp_name = "Resistor_v1_0";
    defparam R_1.port_names = "T1, T2";
    defparam R_1.width = 2;

    cy_annotation_universal_v1_0 C_1 (
        .connect({
            Net_641,
            Net_629
        })
    );
    defparam C_1.comp_name = "Capacitor_v1_0";
    defparam C_1.port_names = "T1, T2";
    defparam C_1.width = 2;

    ADC_SAR_SEQ_P4_v2_50_2 ADC_SAR (
        .aclk(1'b0),
        .eoc(Net_883),
        .sdone(Net_884),
        .soc(1'b0),
        .vinPlus0(Net_660),
        .Vref(Net_886));



endmodule

