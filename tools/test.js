var message = {
  "directive": {
    "header": {
      "namespace": "Alexa.ThermostatController",
      "name": "SetTargetTemperature",
      "payloadVersion": "3",
      "messageId": "1bd5d003-31b9-476f-ad03-71d471922820",
      "correlationToken": "dFMb0z+PgpgdDmluhJ1LddFvSqZ/jCc8ptlAKulUj90jSqg=="
    },
    "endpoint": {
      "scope": {
        "type": "BearerToken",
        "token": "access-token-from-skill"
      },
      "endpointId": "endpoint-001",
      "cookie": {}
    },
    "payload": {
      "lowerSetpoint": {
        "value": 68.0,
        "scale": "FAHRENHEIT"
      },
      "upperSetpoint": {
        "value": 78.0,
        "scale": "FAHRENHEIT"
      }
    }
  }
};

var action = message.directive.header.name;
var payloads = message.directive.payload;

console.log("Payloads", payloads);
for (var index in payloads) {
  console.log(index, payloads[index]);
}
