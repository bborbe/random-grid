
precommit: test format

.PHONY: test
test:
	flutter test

simulator:
	open -a Simulator

run: 
	flutter run

release:
	flutter run --release

format:
	flutter format lib

deps: 
	flutter pub get