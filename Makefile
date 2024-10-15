.PHONY: all clean debug release run

BUILD_DIR := build
DEBUG_DIR := $(BUILD_DIR)/debug
RELEASE_DIR := $(BUILD_DIR)/release

all: debug release run

debug: | $(DEBUG_DIR)
	cd $(DEBUG_DIR) && cmake -DCMAKE_BUILD_TYPE=Debug -DDEBUG=ON ../.. && make
	@echo "Debug build completed."

release: | $(RELEASE_DIR)
	cd $(RELEASE_DIR) && cmake -DCMAKE_BUILD_TYPE=Release ../.. && make
	@echo "Release build completed."

$(DEBUG_DIR) $(RELEASE_DIR):
	mkdir -p $@

run: debug release
	@echo "Running debug build:"
	$(DEBUG_DIR)/test_app
	@echo "\nRunning release build:"
	$(RELEASE_DIR)/test_app

clean:
	rm -rf $(BUILD_DIR)