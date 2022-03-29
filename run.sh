#!/bin/sh

pip install -r /workspace/requirements.txt

if [[ "$MODE" == "debug" ]]  
then
  export FLASK_APP=mngwrapper
  export FLASK_ENV=development
  flask run --host=0.0.0.0 --port=8080
else
  waitress-serve --call ${APP}:create_app
fi
