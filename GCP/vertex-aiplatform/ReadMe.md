# Overview
Sample provisioning of google cloud vertex ai platform.

# Some command to understand configuration

### Quota update for long running request
`gcloud alpha services quota update --service=aiplatform.googleapis.com --consumer=projects/<project_id> --metric=aiplatform.googleapis.com/job_or_lro_submission_requests --unit=1/min/{project}/{region} --value=100 --force`

### Quota update for online prediction request per base model
`gcloud alpha services quota update --service=aiplatform.googleapis.com --consumer=projects/<project_id> --metric=aiplatform.googleapis.com/online_prediction_requests_per_base_model --dimensions=region=us-central1 --dimensions=base_model=text-bison --unit=1/min/{project}/{region}/{base_model} --value=70`

### Get Quota List
`gcloud alpha services quota list --service=aiplatform.googleapis.com --consumer=projects/<project_id>`
`gcloud resource-manager quotas list --service=aiplatform.googleapis.com`