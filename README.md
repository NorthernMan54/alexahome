# homebridge-alexa 2nd Gen Beta Test

Enable Amazon Alexa access to you homebridge controlled devices and accessories.  Full support for all Amazon Alexa devices, including the echo 2nd Generation.  Uses an Amazon smart home skill based approach for integration between HomeBridge and Amazon Alexa.  ( I have stopped using my previous version based on a custom version of HomeBridge, as Amazon is no longer supporting the integration interface I was using on newer Alexa devices, like the Echo 2nd generation. )

* Supports multiple homebridge instances running on your network.
* Autodiscovery of multiple Homebridge's
* Supports devices of homekit Service type Lightbulb, Outlet, Fan, Temperature Sensor, Window Coverings and Switch
* If device supports the 'Brightness Characteristic', then the ability to set a brightness is included.
* This plugin does not have any devices or accessories that are visible from Homekit, and does not need to be added on the Home app.
* The plugin does not need to be installed in your 'main' homebridge instance.  It can be installed in any 'Homebridge' instance in your setup.

Alexa device names are the same as the homebridge device names.

This only supports accessories connected via a homebridge plugin, any 'Homekit' accessories are not supported, and will never be supported.

# Voice commands supported

* Alexa, discover devices
* Alexa, turn on _______
* Alexa, turn off _______
* Alexa, set ______ to 50
* Alexa, what is the temperature in the ______
* Alexa, dim ________
* Alexa, brighten ________

# Getting access to the Alexa homebridge-alexa homeskill beta

Please send me a direct message via the Slack for Homebridge with your Amazon login to be enrolled.  I will then enroll yourself into the beta.

# Installation of homebridge-alexa

Alexa Home Skill configuration

1. To enable Alexa Homeskill account linking you need to create an account for yourself at https://homebridge.cloudwatch.net

2. Search for the homebridge skill on the Alexa App/Web site, and link you Amazon account to the account you created above.  If you can't find the HomeBridge HomeSkill, you need be setup on the BETA test.  Please send me a direct message via the Slack for Homebridge with your Amazon login to be enrolled.

Plugin Installation

The setup of the plugin is very straight forward, and requires enabling insecure mode of each homebridge instance you want to control from Alexa.

3. All homebridge instances that you want to control from Alexa need to run in insecure mode with -I included on the command line.  How you make this change will depend on your installation of homebridge, and how you start homebridge.  If you start from the command line, it would look like this:

```
homebridge -I
```

If your using systemd to manage homebridge, the -I is added to the file /etc/default/homebridge in the line, HOMEBRIDGE_OPTS ie.

```
# Defaults / Configuration options for homebridge
# The following settings tells homebridge where to find the config.json file and where to persist the data (i.e. pairing and others)
HOMEBRIDGE_OPTS=-I

# If you uncomment the following line, homebridge will log more
# You can display this via systemd's journalctl: journalctl -f -u homebridge
#DEBUG=
```

4. Set this up as a usual plugin, except it doesn't have any devices ;-)  I'm just reusing the runtime and configuration file management. And it only needs to installed once if you have multiple homeridge's installed.  It will autodiscover the others.

```
sudo npm install -g homebridge-alexa
```

In the event of issues or errors during install ie gyp WARN EACCES user "root" does not have permission to access the dev dir

Please try this instead

```
sudo npm install -g —unsafe-perm homebridge-alexa
```

5. Login and password in the config.json, are the credentials you created earlier for the https://homebridge.cloudwatch.net website.   This only needs to be completed for one instance of homebridge in your environment, it will discover the accessories connected to your other homebridges automatically.

6. Restart homebridge, and ask Alexa to discovery devices.

# Upgrading from the previous version of homebridge-alexa

If you had installed the previous version of homebridge-alexa with the special version of homebridge and HAP-NodeJS, it can disabled without reinstalling homebridge.  You can disable it by removing the configuration parameter ssdp from your config.json.  This will disable the previous version.

```
"ssdp": 1900
```

# config.json

```
"platforms": [
  {
    "platform": "Alexa",
    "name": "Alexa",
    "username": "....",
    "password": "...."
  }
],
```

## Required parameters

* username - Login created for the skill linking website https://homebridge.cloudwatch.net
* password - Login created for the skill linking website https://homebridge.cloudwatch.net

## Optional parameters

* pin - If you had changed your homebridge pin from the default of "pin": "031-45-154"

# Issues, Questions or Problems

* I have created a slack channel at (https://homebridgeteam.slack.com/messages/hap-alexa/) to troubleshoot issues.

* When logging an issue, please include a DEBUG log with your issue.

```
DEBUG=alexa* homebridge -I
```

## Troubleshooting Tips

I have started recording troubleshooting tips here based on issues seen by the community [Troubleshooting](Troubleshooting.MD).

## Known Issues

* ~~'There was a problem' displayed in the Amazon Alexa App.  This is a known issue, and will be resolved during the beta.~~
* ~~Blinds are not currently supported~~

* Colours not currently supported
* All homebridge PIN's in your setup need to be set to the same value.

# Previous version of homebridge-alexa

* The old version is still available and the instructions for installation can be found  [here.](V1_README.md)

# Roadmap

See https://github.com/NorthernMan54/homebridge-alexa/issues/52

# Credits

* Ben Hardill - For the inspiration behind the design.
* Chrisx9 - German translation
