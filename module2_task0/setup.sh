#!/usr/bin/bash
wget https://go.dev/dl/go1.19.5.linux-amd64.tar.gz && tar -xf go1.19.5.linux-amd64.tar.gz && rm go1.19.5.linux-amd64.tar.gz && cp go/bin/go /usr/bin/go && mv go /usr/local/go
go get github.com/gorilla/mux
