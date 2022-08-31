.PHONY = shell image

shell:
	docker run --rm -it atlas-demo bash

image:
	docker build -t atlas-demo .

depends:
	luarocks --tree .luarocks make app-1-1.rockspec
