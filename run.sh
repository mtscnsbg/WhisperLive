ANNOTATION="-20240301_1500"
VERSION="v0.3.1"
PROJECT_NAME="whisper-live"
IMAGE_TAG=$PROJECT_NAME:$VERSION$ANNOTATION

docker run -d -v $HOME/models/whisper/huggingface:/root/.cache/huggingface --name $PROJECT_NAME --gpus all -p 9090:9090 $IMAGE_TAG