#!/bin/sh
set -e

if [ ! -d dist/app ]; then
  echo "ERROR: folder dist/app tidak ditemukan, tidak ada yang bisa di-deploy"
  exit 1
fi

if [ -z "$DB_PASSWORD" ]; then
  echo "ERROR: DB_PASSWORD belum diset"
  exit 1
fi

echo "Deploying commit ${GITHUB_SHA:-local} dari branch ${GITHUB_REF_NAME:-local}"
echo "Isi paket:"
ls dist/app
echo "Deploy selesai (simulasi)"
