#!/usr/bin/env sh

echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "unionpos/hugo container docker-entrypoint.sh"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

DIR=/docker-entrypoint.d
# is scripts exist in DIR run them
if [[ -d "$DIR" ]]
then
  /bin/run-parts --verbose "$DIR"
fi

echo "$@"
exec "$@"
