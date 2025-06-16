
serve:
	@cd docs && npm install
	@cd docs && npx tailwindcss -i ./input.css -o ./output.css --watch &
	@cd docs && npx live-server

release:
	@git add .
	@git commit -am "New release!" || true
	@git push
