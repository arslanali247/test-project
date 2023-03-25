image: node:10.15.0
pipelines:
  branches:
    '{Dev,deployment}':
      - step:
          name: Deploy to dev
          deployment: staging
          script:
            - echo "Deploying staging"
            - pipe: atlassian/ssh-run:0.4.1
              variables:
                SSH_USER: $DEPLOYMENT_USER
                SERVER: $DEPLOYMENT_SERVER
                SSH_KEY: $DEPLOYMENT_KEY
                MODE: 'script'
                COMMAND: 'deploy-dev.sh'
            - echo "Deployed staging"
    master:
      - step:
          name: "Build and Test"
          caches:
            - node
          script:
            - echo "For the future"
      - step:
          name: Deploy to prod
          deployment: production
          trigger: manual
          script:
            - echo "Deploying prod"
            - pipe: atlassian/ssh-run:0.4.1
              variables:
                SSH_USER: $DEPLOYMENT_USER
                SERVER: $DEPLOYMENT_SERVER
                SSH_KEY: $DEPLOYMENT_KEY
                MODE: 'script'
                COMMAND: 'deploy-prod.sh'
            - echo "Deployed prod"
