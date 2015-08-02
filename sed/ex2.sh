#!/usr/bin/env bash
ls /usr/bin | sed -n '/^.a.$/p' > ex2.log
