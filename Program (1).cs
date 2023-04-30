using PowerRiderDLLWrapper;
using PowerRiderDLLWrapper.PowerCom;
using PowerRiderDLLWrapper.PowerPacket;
using System.ComponentModel.Design;
// See https://aka.ms/new-console-template for more information

// Create a packet object (no payload)
PowerPacket powerPacketEmptyPayload = new PowerPacket(2, PowerPacketHelper.CommandID.ChannelStatus_1, 85, 16);

//with payload 
PowerPacket powerPacketWithPayload = new PowerPacket(2, PowerPacketHelper.CommandID.Configuration, 85, 16, PowerPacketHelper.GoToBootloaderPW.ToArray());

// Create a Com object (left side - abstract, right side - specific implementation)
PowerCom com = new PowerSerialCom("COM4", 19200, 85, 16);

// Connect to the converter (construction itself DOESN'T AQUIRE THE PORT)
bool isConnectSuccess = com.ConnectCom();

//Send the message
bool isSendSuccess = com.SendPacket(powerPacketEmptyPayload);

//could also use a shorthand if you don't want to construct a packet (uses the defined powerAddress and hostAddress of the com)
// no payload
com.SendPacket(2, PowerPacketHelper.CommandID.SerialNumber);

// with payload
com.SendPacket(2, PowerPacketHelper.CommandID.LogFile, new byte[] { 0 });

// Receives a packet
PowerPacket receivedPacket = com.ReceivePacket(); 

// If a packet was not successfully aquired, then the error flag will be raised
if (receivedPacket.ErrorFlag)
{
    // the error resides in Payload[0]
    switch (receivedPacket.Payload.ElementAt(0))
    {
        case PowerComHelpers.POWER_COM_TIMEOUT_CODE:
            // TODO: raise TO error
            break;
        case PowerComHelpers.POWER_COM_BAD_CHECKSUM:
            // TODO: raise bad CS error
            break;
        case PowerComHelpers.POWER_COM_CORRUPTED_DATA:
            // TODO: raise corrupted data error
            break;

        case PowerComHelpers.POWER_COM_UNKNOWN_RECEIVE_ERROR:
            // TODO: raise error
            break;

        case PowerComHelpers.BAD_SERIAL_PREAMBLE:
            // TODO: raise bad CS error
            break;
        default:
            // TODO: raise bad unknown error
            break;
    }
}

// Check the parsed message
byte powerAddress = receivedPacket.PowerAddress;
byte hostAddress = receivedPacket.HostAddress;
PowerPacketHelper.CommandID commandID = receivedPacket.CommandID;
byte[] bytes = receivedPacket.Payload.ToArray();

//close the com
bool isCloseSuccess = com.CloseCom();