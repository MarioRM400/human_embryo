@echo off
call "C:\Users\PC KAIJU\miniconda3\condabin\activate.bat"
call conda deactivate
call conda activate tracking

cd C:\ConceivableProjects\egg_in_stripper\v5\Yolov5 
python train.py --batch 40 --epochs 80 --hyp "..\Yamls\hyp.basic.yaml" --optimizer SGD --device cuda:0 --cfg "..\Yamls\yolov5l_classes_config.yaml" --data "..\Yamls\data_location.yaml" --imgsz 640 --weights "..\Weights\pre.pt" --cache