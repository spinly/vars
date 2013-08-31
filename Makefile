
build: components node_modules   vars.styl
	@component build --dev --use stylus

node_modules: package.json
	@npm install

components: component.json
	@component install --dev

clean:
	rm -fr build components

.PHONY: clean
