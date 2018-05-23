PROD_BUCKET=southside.ctl.columbia.edu
S3CMD ?= s3cmd
S3_FLAGS ?= --acl-public --delete-removed --no-progress --no-mime-magic --guess-mime-type

all: deploy-prod

deploy-prod:
	$(S3CMD) $(S3_FLAGS) sync ./* s3://$(PROD_BUCKET)/

.PHONY: deploy-prod
