import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sparkyweb/manage/manage_device_info.dart'; // use this to make all the widget size responsive to the device size.
//import 'package:sparkyweb/manage/manage_toast_message.dart';
import 'package:sparkyweb/models/model_user_info.dart';
// import 'package:sparkyweb/packets/packet_common.dart';
// import 'package:sparkyweb/packets/packet_s2c_common.dart';
// import 'package:sparkyweb/packets/packet_c2s_register_creator.dart';
// import 'package:sparkyweb/packets/packet_c2s_unregister_creator.dart';



// Coming soon page for multi-purpose

class CreatorRegistrationWidget extends StatelessWidget {
   CreatorRegistrationWidget({
    Key key,
    this.titleText,
    }) : super(key: key);
  
  final String titleText;



   /* void _onFetchDone(PacketS2CCommon s2cPacket)
   {
     print('[CreatorRegistrationWidget] : onFetchDone');


     switch (s2cPacket.type)
     {
       case e_packet_type.s2c_register_creator:
         {
           ManageToastMessage.showShort('Register Creator !!');
         }
         break;

       case e_packet_type.s2c_unregister_creator:
         {
           ManageToastMessage.showShort('Unregister Creator !!');
         }
         break;

       default:
         break;
     }
   } */

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(ManageDeviceInfo.resolutionHeight * 0.055),
        child: SafeArea(
          child: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            elevation: 1,
            backgroundColor: Colors.white, //Color.fromRGBO(21, 24, 45, 1.0), //Color(0xff202a30), //Colors.black87, // Color(0xFF5986E1),
            title: Text(titleText,
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(CupertinoIcons.info),
              title: Text('This is the Creator registration page.'),
              subtitle: Text('Please follow the steps'),
              isThreeLine: true,
              onTap:(){
                print('onTap');

                /* if(true == ModelUserInfo.getInstance().signedIn)
                {
                  if(null == ModelUserInfo.getInstance().creatorList || 0 == ModelUserInfo.getInstance().creatorList.length)
                    {
                      PacketC2SRegisterCreator packetC2SRegisterCreator = new PacketC2SRegisterCreator();
                      packetC2SRegisterCreator.generate(ModelUserInfo.getInstance().uId);
                      packetC2SRegisterCreator.fetch(_onFetchDone);
                    }
                  else
                    {
                      PacketC2SUnregisterCreator packetC2SUnregisterCreator = new PacketC2SUnregisterCreator();
                      packetC2SUnregisterCreator.generate(ModelUserInfo.getInstance().uId);
                      packetC2SUnregisterCreator.fetch(_onFetchDone);
                    }
                }
                else
                  {
                    ManageToastMessage.showShort('Required SiginUp or SignIn');
                  } */
              },

            ),
          ),
          
          
         
        ],
      ),
    );
  }
}


