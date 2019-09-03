AWS_PROFILE := prod-kore

sync:
	AWS_PROFILE=${AWS_PROFILE} aws s3 sync . s3://cachelab.co/ --exclude ".DS_Store"
