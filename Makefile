server:
	python -m SimpleHTTPServer
clean:
	rm -rf bb-q20/*
	rm -rf bb-q100/*

compress: 	
	@tar -czf pa2.tar.gz bb-q20 bb-q100 http *.py README.md run.sh