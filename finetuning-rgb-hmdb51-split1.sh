CUDA_VISIBLE_DEVICES=0,1 python train.py --dataset HMDB51 --modality RGB --only_RGB --split 1  \
--n_classes 51 --n_finetune_classes 51 --learning_rate 0.0001 --n_workers 32 --checkpoint 1 \
--batch_size 16 --log 1 --sample_duration 64 --n_epochs 3000 \
--model resnext --model_depth 101 --ft_begin_index 4 \
--frame_dir "dataset/HMDB51_MARS/" \
--annotation_path "dataset/HMDB51_labels" \
--pretrain_path "/mnt/datasets/lijun/MARS_sta-3-238/trained_models/HMDB51/RGB_HMDB51_64f.pth" \
--result_path "results-hmdb51-rgb-split1/"  2>&1 |tee log/finetuning-rgb-hmdb51-split1.log
