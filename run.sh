#!/bin/sh
pip install -r /workspace/requirements.txt
waitress-serve --call '${APP}:create_app'
