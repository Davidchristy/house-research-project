clean:
	rm -rf cdk.out

deploy:
	cdk deploy

install:
	pip install --no-cache-dir --upgrade pip \
    pip install --no-cache-dir -r requirements.txt
