
if [ $# -eq 0 ]; then
	PLATFORM="x86_64-linux"
else
	PLATFORM="$1"
fi

echo "${PLATFORM}"

# {"version": "1.2.89", "sha1": "5ca3dd134cc960c35ecefe12f6dc81a48f212d40"}
SHA1=$(curl -s http://d.defold.com/stable/info.json | sed 's/.*sha1": "\(.*\)".*/\1/')
echo "Using Defold dmengine_headless version ${SHA1}"

#DMENGINE_URL="http://d.defold.com/archive/${SHA1}/engine/linux/dmengine_headless"
DMENGINE_URL="http://d.defold.com/archive/stable/${SHA1}/engine/${PLATFORM}/dmengine_headless"
BOB_URL="http://d.defold.com/archive/stable/${SHA1}/bob/bob.jar"

DM_FILE=dmengine_headless
if [ ! -f "$DM_FILE" ]; then
    echo "Downloading ${DMENGINE_URL}"
    curl -v -o ${DM_FILE} ${DMENGINE_URL}
    chmod +x ${DM_FILE}
fi

BOB_FILE=bob.jar
if [ ! -f "$BOB_FILE" ]; then
    echo "Downloading ${BOB_URL}"
    curl -v -o ${BOB_FILE} ${BOB_URL}
fi

echo "Running bob.jar"
java -jar bob.jar --debug --settings test.ini build

echo "Starting dmengine_headless"
./dmengine_headless
