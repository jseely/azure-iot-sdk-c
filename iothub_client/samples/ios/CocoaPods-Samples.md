# Building iOS samples for Azure IoT with CocoaPods

#### Prerequisites
 You will need these prerequisites to run the samples:
* The latest version of XCode
* The latest version of the iOS SDK
* [The latest version of CocoaPods](https://guides.cocoapods.org/using/index.html) and 
familiarity with their basic usage. Some more detail about the Azure IoT CocoaPods
may be found [here](./CocoaPods.md).
* An IoT Hub and a connection string for a client device.

#### 1. Clone the Azure IoT C SDK repo

Change to a location where you would like your samples, and run

`git clone https://github.com/Azure/azure-iot-sdk-c.git`

It is not necessary to do a recursive clone to build the iOS samples.

#### 2. Navigate to the iOS sample directory

Change your current directory to the iOS sample directory.

`cd azure-iot-sdk-c/iothub_client/samples/ios/AzureIoTSample`

**Note:** The sample does not need to be within the SDK tree, so you may copy it to a 
convenient location instead of building it within the tree.

#### 3. Install the CocoaPods

Make sure that XCode does not already have the sample project open. If
it does, the CocoaPods may not install properly.

Run this command:

`pod install`

This will cause CocoaPods to read the `Podfile` and install the pods accordingly.

#### 4. Copy an Azure IoT sample into your iOS project

The `azure-iot-sdk-c/iothub_client/samples` directory some Azure IoT samples that
are appropriate for working with the iOS sample application:

* iothub_ll_c2d_sample (cloud to device)
* iothub_ll_telemetry_sample (device to cloud)

Each sample can switch between five communication protocols: HTTP, MQTT, MQTT over websockets, 
AMQP, and AMQP over websockets.

Choose one of these samples and copy its `.c` file into your AzureIoTSample project directory
(it should be in the same directory with `ios-sample.h`).

#### 5. Open the XCode workspace

Double-click the `AzureIoTSampleWS.xcworkspace` workspace file (**not** the project file) to
open XCode and select your build target device (iPhone 7 simulator works well).

Make sure you open the workspace, and not the similarly-named (without the `WS` suffix) project.

#### 4. Modify your sample file

1. Select the AzureIoTSample project, choose "Add files...", and add your chosen sample `.c` file.
1. Open the `.c` sample file.
2. Add the line `#include "ios-sample.h"` below all the other include files.
4. Near the top of the file, add a line like `#define USE_MQTT` to select the protocol you want.
5. If you want either AMQP or MQTT over websockets, also add `#define USE_WEBSOCKETS`.
3. Replace the `<insert connections string here>` string with
the connection string for your provisioned device.

#### 5. Run the app in the simulator

Start the project (command-R). The sample is designed for landscape viewing, so you may need to
rotate the simulator. 

The `iothub_ll_telemetry_sample` will send messages to the cloud and report its responses. 
The `iothub_ll_c2d_sample` will wait for messages from the cloud and display them
when they arrive. Device Explorer can send such messages.


