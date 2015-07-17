all: auto/directories.svg

auto/%.svg: %.dot
	dot $< -Tsvg | grep -v 'polygon fill="white"' > $@
	
