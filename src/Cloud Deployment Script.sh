#For 3 nodes Machines 

gcloud dataproc clusters create cluster-fd9b --region us-central1 --zone us-central1-b /
--master-machine-type n1-standard-4 --master-boot-disk-size 500 --num-workers 2 --worker-machine-type n1-standard-4 /
--worker-boot-disk-size 100 /
--image-version 2.0-debian10 /
--max-idle 345600s --scopes 'https://www.googleapis.com/auth/cloud-platform' --project sde-course-project

#For Single Node Machine 

gcloud dataproc clusters create cluster-fd9b --region us-central1 --zone us-central1-b /
--master-machine-type n1-standard-4 --master-boot-disk-size 500 --worker-machine-type n1-standard-4 /
--worker-boot-disk-size 100 /
--image-version 2.0-debian10 /
--max-idle 345600s --scopes 'https://www.googleapis.com/auth/cloud-platform' --project sde-course-project


#Connect to VM 

gcloud compute ssh sde-spark-cluster-m --project=sde-course-project --zone=us-central1-a -- -D 1080 -N

