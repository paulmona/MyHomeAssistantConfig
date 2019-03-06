#/bin/bash
docker run --rm -v "${PWD}:/config:ro" homeassistant/home-assistant:latest /bin/sh -c "python -m homeassistant --config /config --script check_config --info light"