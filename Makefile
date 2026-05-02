.PHONY: push deploy

# Pushes to GitLab (source of truth), CI handles GitHub mirror
push:
	@echo "--> Pushing to GitLab..."
	git push origin main
	git push origin --tags

# Local deploy (optional, Portainer/Docker handles prod)
deploy:
	docker compose up -d --build
