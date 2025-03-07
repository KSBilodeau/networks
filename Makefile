CC = cargo
MAKEFLAGS += --silent

run: pre_kill run_server
	cargo run --quiet --bin webclient

run_server:
	cargo run --quiet --bin webserver& sleep 5

pre_kill:
	-pkill webserver

build:
	cargo build

clean:
	cargo clean