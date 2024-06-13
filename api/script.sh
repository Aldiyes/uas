#!/bin/sh

npx prisma generate && npx prisma migrate deploy

npx next dev -H api -p 3030