.PHONY: test
test:
	./scripts/run_tests.sh

.PHONY: publish-html
publish-html:
	surge ./build/js-web/unfold-shape https://unfold-it.surge.sh