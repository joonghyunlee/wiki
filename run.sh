#!/bin/bash

docker run -v `pwd`:/wiki -p 4567:80 --name gollum gollum
