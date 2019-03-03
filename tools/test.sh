echo "dyson_accessories"

node parseAccessories.js ~/Code/alexaAwsBackend/samples/dyson_accessories.json > after.json ; diff ~/Code/alexaAwsBackend/samples/dyson.json after.json

echo "penny"

node parseAccessories.js ~/Code/alexaAwsBackend/samples/penny_accessories.json > after.json ; diff ~/Code/alexaAwsBackend/samples/penny.json after.json

echo "apple_tv"

node parseAccessories.js ~/Code/alexaAwsBackend/samples/apple_tv_accessories.json > after.json ; diff ~/Code/alexaAwsBackend/samples/apple_tv.json after.json

echo "mi-light"

node parseAccessories.js ~/Code/alexaAwsBackend/samples/mi-light_accessories.json > after.json ; diff ~/Code/alexaAwsBackend/samples/mi-light.json after.json

echo "ikea"

node parseAccessories.js ~/Code/alexaAwsBackend/samples/ikea_accessories.json > after.json ; diff ~/Code/alexaAwsBackend/samples/ikea.json after.json

echo "Sensors"

node parseAccessories.js ~/Code/alexaAwsBackend/samples/sensor_accessories.json > after.json ; diff ~/Code/alexaAwsBackend/samples/sensor.json after.json

echo "Leonard"

node parseAccessories.js ~/Code/alexaAwsBackend/samples/leonard_51827.json > after.json ; diff ~/Code/alexaAwsBackend/samples/leonard.json after.json

echo "Howard"

node parseAccessories.js ~/Code/alexaAwsBackend/samples/howard_dump.json > after.json ; diff ~/Code/alexaAwsBackend/samples/howard.json after.json

echo "bose soundlink"

node parseAccessories.js ~/Code/alexaAwsBackend/samples/bose_soundlink.json > after.json ; diff ~/Code/alexaAwsBackend/samples/bose.json after.json

echo "Heater Cooler"

node parseAccessories.js ~/Code/alexaAwsBackend/samples/heater_cooler_discovery.json > after.json ; diff ~/Code/alexaAwsBackend/samples/heater.json after.json
