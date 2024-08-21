#/bin/bash

function gpu_pd_6 {
   	echo "running podman gpu=all"
	podman run -dt  --device=nvidia.com/gpu=all -v /opt/eyemetric/fr/sites/pv_app:/home/streaming/app  --name paravision-streaming6 -p 5000:5000 -p 5050:5050 -p 5051:5051  --shm-size=6g containers.paravision.ai/streaming/streaming:v6.0.0-tensorrt
}

function run_pd_PV {
   	echo "running podman gpu=all"
	podman run -dt  --device=nvidia.com/gpu=all  --name paravision-streaming8 -p 5000:5000 -p 5050:5050 -p 5051:5051 -e PV_INFERENCE_WORKERS=1,1 -e PV_POSTPROCESSOR_WORKERS=1,1  --shm-size=6g containers.paravision.ai/streaming/streaming:v8.0.1-tensorrt
}

function gpu_pd_01 {
	 podman run --rm     --device nvidia.com/gpu=0   --device nvidia.com/gpu=1  --security-opt=label=disable ubuntu  nvidia-smi -L
}

function gpu_pd_all {
	 podman run --rm     --device nvidia.com/gpu=all  --security-opt=label=disable ubuntu  nvidia-smi -L
}

function gpu_dk_all {
    sudo docker run --rm -ti --runtime=nvidia  -e NVIDIA_VISIBLE_DEVICES=nvidia.com/gpu=all ubuntu nvidia-smi -L
}

function gpu_dk {
sudo docker run --rm --gpus all  -d --name paravision-streaming8 -p 5000:5000 -p 5050:5050 -p 5051:5051 --shm-size=6g  -v /opt/eyemetric/fr/sites/pv_app:/home/streaming/app  containers.paravision.ai/streaming/streaming:v8.0.1-tensorrt
}


function ident {
docker run --name ident-v4 \
  -e POSTGRES_URI="postgresql://admin:admin@192.168.3.168:5432/identity?sslmode=disable" \
  -e HTTP_PROXY="on" \
  -e TZ="EST" \
  -p 5656:5656 \
  -p 8080:8080 \
   docker.io/eyemetricfr/identity:v4.0.0

}

function run_play {
	ansible-playbook paravision-dkup.yml
	ansible-playbook safr-dkup.yml
}



