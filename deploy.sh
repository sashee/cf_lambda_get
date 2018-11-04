deploy() { mkdir -p .tmp && aws cloudformation package --template-file main.yml --s3-bucket $1 --output-template-file .tmp/output.yml && aws cloudformation deploy --template-file .tmp/output.yml --stack-name $2 --capabilities CAPABILITY_IAM && rm -rf .tmp ; }

deploy $1 $2
