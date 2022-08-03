FROM public.ecr.aws/lambda/nodejs:12

ENV AWS_DEFAULT_REGION = "ap-south-1"

WORKDIR ${LAMBDA_TASK_ROOT}

COPY package.json ${LAMBDA_TASK_ROOT}

RUN npm install

COPY . ${LAMBDA_TASK_ROOT}

CMD [ "index.handler" ]
