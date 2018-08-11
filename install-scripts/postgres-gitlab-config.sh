#!/bin/bash
#
# Configura postgres para uso com o gitlab
#

# cria usuario
sudo -u postgres psql -d template1 -c "CREATE ROLE git WITH CREATEDB LOGIN";
# cria extensão pg_trgm obrigatório no gitlab
sudo -u postgres psql -d template1 -c "CREATE EXTENSION IF NOT EXISTS pg_trgm;"
# cria banco de dados para o usuario
sudo -u postgres psql -d template1 -c "CREATE DATABASE gitlab OWNER git;"
sudo -u postgres psql -d postgres -c "ALTER ROLE git WITH ENCRYPTED PASSWORD 'gitLabUser8';"


