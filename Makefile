.PHONY = deploy

deploy:
	git push heroku main

depends:
	luarocks --tree .luarocks make app-1-1.rockspec
