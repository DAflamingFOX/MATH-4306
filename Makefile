# SRC_DIR := src
BUILD_DIR := build
ARTIFACT_DIR := artifacts

# Get all .tex files in source directory.
# TEX_FILES := $(filter-out $(SRC_DIR)/preamble.tex, $(wildcard $(SRC_DIR)/*.tex))
TEX_FILES := $(wildcard *.tex)
# Generate all .pdf files based on .tex files
PDF_FILES := $(patsubst %.tex, $(BUILD_DIR)/%.pdf, $(TEX_FILES))

LATEXMK := latexmk -pdflua -interaction=nonstopmode -nobibtex -outdir=$(BUILD_DIR) -out2dir=$(ARTIFACT_DIR)

# Compile all PDF files.
.PHONY: all
all: $(PDF_FILES)

# Create the build directory.
$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

# Compile the LaTeX document.
$(BUILD_DIR)/%.pdf: %.tex | $(BUILD_DIR)
	$(LATEXMK) $<

# Clean all build files
.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
	rm -rf $(ARTIFACT_DIR)