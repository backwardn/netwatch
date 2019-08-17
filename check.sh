#!/bin/sh

go install ./...
go mod tidy

go install honnef.co/go/tools/cmd/staticcheck

go vet ./...
staticcheck ./...

go test ./...