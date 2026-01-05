#!/bin/bash

if [ "$MY_APP" = "prod" ]; then
  echo "Production mode"
else
  echo "Development mode"
fi
