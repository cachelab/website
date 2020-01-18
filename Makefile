VERSION := 1.0.3

sync:
	AWS_PROFILE=${CACHE_LAB_AWS_PROFILE} aws s3 sync . s3://${CACHE_LAB_SITE_BUCKET}/ \
	--exclude "*.DS_Store*" \
	--exclude ".gitignore" \
	--exclude "Makefile" \
	--exclude "*.md" \
	--exclude ".git/*"

tag:
	git tag v${VERSION}
	git push origin --tags
