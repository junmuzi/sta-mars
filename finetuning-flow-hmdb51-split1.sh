CUDA_VISIBLE_DEVICES=2,3 python train.py --dataset HMDB51 --modality Flow --split 1  \
--n_classes 51 --n_finetune_classes 51 --learning_rate 0.0001 --n_workers 32 --checkpoint 1 \
--batch_size 32 --log 1 --sample_duration 64 --n_epochs 3000 \
--model resnext --model_depth 101 --ft_begin_index 4 \
--frame_dir "dataset/HMDB51_MARS/" \
--annotation_path "dataset/HMDB51_labels" \
--pretrain_path "trained_models/HMDB51/Flow_HMDB51_64f.pth" \
--result_path "results-hmdb51-flow-split1/" --checkpoint 1 2>&1 |tee log/finetuning-flow-hmdb51-split1.log
